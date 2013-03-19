.class public Lcom/sec/android/app/camera/gallery/ImageListUber;
.super Ljava/lang/Object;
.source "ImageListUber.java"

# interfaces
.implements Lcom/sec/android/app/camera/gallery/IImageList;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/camera/gallery/ImageListUber$1;,
        Lcom/sec/android/app/camera/gallery/ImageListUber$MergeSlot;,
        Lcom/sec/android/app/camera/gallery/ImageListUber$AscendingComparator;,
        Lcom/sec/android/app/camera/gallery/ImageListUber$DescendingComparator;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ImageListUber"


# instance fields
.field private mLastListIndex:I

.field private final mQueue:Ljava/util/PriorityQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/PriorityQueue",
            "<",
            "Lcom/sec/android/app/camera/gallery/ImageListUber$MergeSlot;",
            ">;"
        }
    .end annotation
.end field

.field private mSkipCounts:[I

.field private mSkipList:[J

.field private mSkipListSize:I

.field private final mSubList:[Lcom/sec/android/app/camera/gallery/IImageList;


# direct methods
.method public constructor <init>([Lcom/sec/android/app/camera/gallery/IImageList;I)V
    .locals 8
    .parameter "sublist"
    .parameter "sort"

    .prologue
    const/4 v7, 0x0

    .line 53
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 54
    invoke-virtual {p1}, [Lcom/sec/android/app/camera/gallery/IImageList;->clone()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Lcom/sec/android/app/camera/gallery/IImageList;

    iput-object v4, p0, Lcom/sec/android/app/camera/gallery/ImageListUber;->mSubList:[Lcom/sec/android/app/camera/gallery/IImageList;

    .line 55
    new-instance v5, Ljava/util/PriorityQueue;

    const/4 v6, 0x4

    const/4 v4, 0x1

    if-ne p2, v4, :cond_1

    new-instance v4, Lcom/sec/android/app/camera/gallery/ImageListUber$AscendingComparator;

    invoke-direct {v4, v7}, Lcom/sec/android/app/camera/gallery/ImageListUber$AscendingComparator;-><init>(Lcom/sec/android/app/camera/gallery/ImageListUber$1;)V

    :goto_0
    invoke-direct {v5, v6, v4}, Ljava/util/PriorityQueue;-><init>(ILjava/util/Comparator;)V

    iput-object v5, p0, Lcom/sec/android/app/camera/gallery/ImageListUber;->mQueue:Ljava/util/PriorityQueue;

    .line 59
    const/16 v4, 0x10

    new-array v4, v4, [J

    iput-object v4, p0, Lcom/sec/android/app/camera/gallery/ImageListUber;->mSkipList:[J

    .line 60
    const/4 v4, 0x0

    iput v4, p0, Lcom/sec/android/app/camera/gallery/ImageListUber;->mSkipListSize:I

    .line 61
    iget-object v4, p0, Lcom/sec/android/app/camera/gallery/ImageListUber;->mSubList:[Lcom/sec/android/app/camera/gallery/IImageList;

    array-length v4, v4

    new-array v4, v4, [I

    iput-object v4, p0, Lcom/sec/android/app/camera/gallery/ImageListUber;->mSkipCounts:[I

    .line 62
    const/4 v4, -0x1

    iput v4, p0, Lcom/sec/android/app/camera/gallery/ImageListUber;->mLastListIndex:I

    .line 63
    iget-object v4, p0, Lcom/sec/android/app/camera/gallery/ImageListUber;->mQueue:Ljava/util/PriorityQueue;

    invoke-virtual {v4}, Ljava/util/PriorityQueue;->clear()V

    .line 64
    const/4 v0, 0x0

    .local v0, i:I
    iget-object v4, p0, Lcom/sec/android/app/camera/gallery/ImageListUber;->mSubList:[Lcom/sec/android/app/camera/gallery/IImageList;

    array-length v2, v4

    .local v2, n:I
    :goto_1
    if-ge v0, v2, :cond_2

    .line 65
    iget-object v4, p0, Lcom/sec/android/app/camera/gallery/ImageListUber;->mSubList:[Lcom/sec/android/app/camera/gallery/IImageList;

    aget-object v1, v4, v0

    .line 66
    .local v1, list:Lcom/sec/android/app/camera/gallery/IImageList;
    new-instance v3, Lcom/sec/android/app/camera/gallery/ImageListUber$MergeSlot;

    invoke-direct {v3, v1, v0}, Lcom/sec/android/app/camera/gallery/ImageListUber$MergeSlot;-><init>(Lcom/sec/android/app/camera/gallery/IImageList;I)V

    .line 67
    .local v3, slot:Lcom/sec/android/app/camera/gallery/ImageListUber$MergeSlot;
    invoke-virtual {v3}, Lcom/sec/android/app/camera/gallery/ImageListUber$MergeSlot;->next()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 68
    iget-object v4, p0, Lcom/sec/android/app/camera/gallery/ImageListUber;->mQueue:Ljava/util/PriorityQueue;

    invoke-virtual {v4, v3}, Ljava/util/PriorityQueue;->add(Ljava/lang/Object;)Z

    .line 64
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 55
    .end local v0           #i:I
    .end local v1           #list:Lcom/sec/android/app/camera/gallery/IImageList;
    .end local v2           #n:I
    .end local v3           #slot:Lcom/sec/android/app/camera/gallery/ImageListUber$MergeSlot;
    :cond_1
    new-instance v4, Lcom/sec/android/app/camera/gallery/ImageListUber$DescendingComparator;

    invoke-direct {v4, v7}, Lcom/sec/android/app/camera/gallery/ImageListUber$DescendingComparator;-><init>(Lcom/sec/android/app/camera/gallery/ImageListUber$1;)V

    goto :goto_0

    .line 70
    .restart local v0       #i:I
    .restart local v2       #n:I
    :cond_2
    return-void
.end method

.method private modifySkipCountForDeletedImage(I)V
    .locals 9
    .parameter "index"

    .prologue
    .line 183
    const/4 v3, 0x0

    .line 184
    .local v3, skipCount:I
    const/4 v0, 0x0

    .local v0, i:I
    iget v1, p0, Lcom/sec/android/app/camera/gallery/ImageListUber;->mSkipListSize:I

    .local v1, n:I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 185
    iget-object v6, p0, Lcom/sec/android/app/camera/gallery/ImageListUber;->mSkipList:[J

    aget-wide v4, v6, v0

    .line 186
    .local v4, v:J
    const-wide/16 v6, -0x1

    and-long/2addr v6, v4

    long-to-int v2, v6

    .line 187
    .local v2, offset:I
    add-int v6, v3, v2

    if-le v6, p1, :cond_1

    .line 188
    iget-object v6, p0, Lcom/sec/android/app/camera/gallery/ImageListUber;->mSkipList:[J

    const-wide/16 v7, 0x1

    sub-long v7, v4, v7

    aput-wide v7, v6, v0

    .line 193
    .end local v2           #offset:I
    .end local v4           #v:J
    :cond_0
    return-void

    .line 191
    .restart local v2       #offset:I
    .restart local v4       #v:J
    :cond_1
    add-int/2addr v3, v2

    .line 184
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private nextMergeSlot()Lcom/sec/android/app/camera/gallery/ImageListUber$MergeSlot;
    .locals 10

    .prologue
    const-wide/16 v8, 0x1

    const/4 v5, 0x0

    .line 149
    iget-object v3, p0, Lcom/sec/android/app/camera/gallery/ImageListUber;->mQueue:Ljava/util/PriorityQueue;

    invoke-virtual {v3}, Ljava/util/PriorityQueue;->poll()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/camera/gallery/ImageListUber$MergeSlot;

    .line 150
    .local v1, slot:Lcom/sec/android/app/camera/gallery/ImageListUber$MergeSlot;
    if-nez v1, :cond_0

    .line 151
    const/4 v1, 0x0

    .line 164
    .end local v1           #slot:Lcom/sec/android/app/camera/gallery/ImageListUber$MergeSlot;
    :goto_0
    return-object v1

    .line 152
    .restart local v1       #slot:Lcom/sec/android/app/camera/gallery/ImageListUber$MergeSlot;
    :cond_0
    iget v3, v1, Lcom/sec/android/app/camera/gallery/ImageListUber$MergeSlot;->mListIndex:I

    iget v4, p0, Lcom/sec/android/app/camera/gallery/ImageListUber;->mLastListIndex:I

    if-ne v3, v4, :cond_1

    .line 153
    iget v3, p0, Lcom/sec/android/app/camera/gallery/ImageListUber;->mSkipListSize:I

    add-int/lit8 v0, v3, -0x1

    .line 154
    .local v0, lastIndex:I
    iget-object v3, p0, Lcom/sec/android/app/camera/gallery/ImageListUber;->mSkipList:[J

    aget-wide v4, v3, v0

    add-long/2addr v4, v8

    aput-wide v4, v3, v0

    goto :goto_0

    .line 156
    .end local v0           #lastIndex:I
    :cond_1
    iget v3, v1, Lcom/sec/android/app/camera/gallery/ImageListUber$MergeSlot;->mListIndex:I

    iput v3, p0, Lcom/sec/android/app/camera/gallery/ImageListUber;->mLastListIndex:I

    .line 157
    iget-object v3, p0, Lcom/sec/android/app/camera/gallery/ImageListUber;->mSkipList:[J

    array-length v3, v3

    iget v4, p0, Lcom/sec/android/app/camera/gallery/ImageListUber;->mSkipListSize:I

    if-ne v3, v4, :cond_2

    .line 158
    iget v3, p0, Lcom/sec/android/app/camera/gallery/ImageListUber;->mSkipListSize:I

    mul-int/lit8 v3, v3, 0x2

    new-array v2, v3, [J

    .line 159
    .local v2, temp:[J
    iget-object v3, p0, Lcom/sec/android/app/camera/gallery/ImageListUber;->mSkipList:[J

    iget v4, p0, Lcom/sec/android/app/camera/gallery/ImageListUber;->mSkipListSize:I

    invoke-static {v3, v5, v2, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 160
    iput-object v2, p0, Lcom/sec/android/app/camera/gallery/ImageListUber;->mSkipList:[J

    .line 162
    .end local v2           #temp:[J
    :cond_2
    iget-object v3, p0, Lcom/sec/android/app/camera/gallery/ImageListUber;->mSkipList:[J

    iget v4, p0, Lcom/sec/android/app/camera/gallery/ImageListUber;->mSkipListSize:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lcom/sec/android/app/camera/gallery/ImageListUber;->mSkipListSize:I

    iget v5, p0, Lcom/sec/android/app/camera/gallery/ImageListUber;->mLastListIndex:I

    int-to-long v5, v5

    const/16 v7, 0x20

    shl-long/2addr v5, v7

    or-long/2addr v5, v8

    aput-wide v5, v3, v4

    goto :goto_0
.end method

.method private removeImage(Lcom/sec/android/app/camera/gallery/IImage;I)Z
    .locals 2
    .parameter "image"
    .parameter "index"

    .prologue
    .line 196
    invoke-interface {p1}, Lcom/sec/android/app/camera/gallery/IImage;->getContainer()Lcom/sec/android/app/camera/gallery/IImageList;

    move-result-object v0

    .line 197
    .local v0, list:Lcom/sec/android/app/camera/gallery/IImageList;
    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/sec/android/app/camera/gallery/IImageList;->removeImage(Lcom/sec/android/app/camera/gallery/IImage;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 198
    invoke-direct {p0, p2}, Lcom/sec/android/app/camera/gallery/ImageListUber;->modifySkipCountForDeletedImage(I)V

    .line 199
    const/4 v1, 0x1

    .line 201
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method public close()V
    .locals 3

    .prologue
    .line 304
    const/4 v0, 0x0

    .local v0, i:I
    iget-object v2, p0, Lcom/sec/android/app/camera/gallery/ImageListUber;->mSubList:[Lcom/sec/android/app/camera/gallery/IImageList;

    array-length v1, v2

    .local v1, n:I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 305
    iget-object v2, p0, Lcom/sec/android/app/camera/gallery/ImageListUber;->mSubList:[Lcom/sec/android/app/camera/gallery/IImageList;

    aget-object v2, v2, v0

    invoke-interface {v2}, Lcom/sec/android/app/camera/gallery/IImageList;->close()V

    .line 304
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 307
    :cond_0
    return-void
.end method

.method public getBucketIds()Ljava/util/HashMap;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 73
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 74
    .local v1, hashMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/sec/android/app/camera/gallery/ImageListUber;->mSubList:[Lcom/sec/android/app/camera/gallery/IImageList;

    .local v0, arr$:[Lcom/sec/android/app/camera/gallery/IImageList;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v4, v0, v2

    .line 75
    .local v4, list:Lcom/sec/android/app/camera/gallery/IImageList;
    invoke-interface {v4}, Lcom/sec/android/app/camera/gallery/IImageList;->getBucketIds()Ljava/util/HashMap;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 74
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 77
    .end local v4           #list:Lcom/sec/android/app/camera/gallery/IImageList;
    :cond_0
    return-object v1
.end method

.method public getCount()I
    .locals 6

    .prologue
    .line 81
    const/4 v1, 0x0

    .line 82
    .local v1, count:I
    iget-object v0, p0, Lcom/sec/android/app/camera/gallery/ImageListUber;->mSubList:[Lcom/sec/android/app/camera/gallery/IImageList;

    .local v0, arr$:[Lcom/sec/android/app/camera/gallery/IImageList;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v4, v0, v2

    .line 83
    .local v4, subList:Lcom/sec/android/app/camera/gallery/IImageList;
    invoke-interface {v4}, Lcom/sec/android/app/camera/gallery/IImageList;->getCount()I

    move-result v5

    add-int/2addr v1, v5

    .line 82
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 85
    .end local v4           #subList:Lcom/sec/android/app/camera/gallery/IImageList;
    :cond_0
    return v1
.end method

.method public getImageAt(I)Lcom/sec/android/app/camera/gallery/IImage;
    .locals 14
    .parameter "index"

    .prologue
    .line 102
    if-ltz p1, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/camera/gallery/ImageListUber;->getCount()I

    move-result v11

    if-le p1, v11, :cond_1

    .line 103
    :cond_0
    new-instance v11, Ljava/lang/IndexOutOfBoundsException;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "index "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " out of range max is "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {p0}, Lcom/sec/android/app/camera/gallery/ImageListUber;->getCount()I

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 107
    :cond_1
    iget-object v5, p0, Lcom/sec/android/app/camera/gallery/ImageListUber;->mSkipCounts:[I

    .line 110
    .local v5, skipCounts:[I
    const/4 v11, 0x0

    invoke-static {v5, v11}, Ljava/util/Arrays;->fill([II)V

    .line 116
    const/4 v4, 0x0

    .line 120
    .local v4, skipCount:I
    const/4 v0, 0x0

    .local v0, i:I
    iget v1, p0, Lcom/sec/android/app/camera/gallery/ImageListUber;->mSkipListSize:I

    .local v1, n:I
    :goto_0
    if-ge v0, v1, :cond_6

    .line 121
    iget-object v11, p0, Lcom/sec/android/app/camera/gallery/ImageListUber;->mSkipList:[J

    aget-wide v8, v11, v0

    .line 123
    .local v8, v:J
    const-wide/16 v11, -0x1

    and-long/2addr v11, v8

    long-to-int v2, v11

    .line 124
    .local v2, offset:I
    const/16 v11, 0x20

    shr-long v11, v8, v11

    long-to-int v10, v11

    .line 125
    .local v10, which:I
    add-int v11, v4, v2

    if-le v11, p1, :cond_3

    .line 126
    iget-object v11, p0, Lcom/sec/android/app/camera/gallery/ImageListUber;->mSkipCounts:[I

    aget v11, v11, v10

    sub-int v12, p1, v4

    add-int v7, v11, v12

    .line 127
    .local v7, subindex:I
    iget-object v11, p0, Lcom/sec/android/app/camera/gallery/ImageListUber;->mSubList:[Lcom/sec/android/app/camera/gallery/IImageList;

    aget-object v11, v11, v10

    invoke-interface {v11, v7}, Lcom/sec/android/app/camera/gallery/IImageList;->getImageAt(I)Lcom/sec/android/app/camera/gallery/IImage;

    move-result-object v3

    .line 141
    .end local v2           #offset:I
    .end local v7           #subindex:I
    .end local v8           #v:J
    .end local v10           #which:I
    :cond_2
    :goto_1
    return-object v3

    .line 129
    .restart local v2       #offset:I
    .restart local v8       #v:J
    .restart local v10       #which:I
    :cond_3
    add-int/2addr v4, v2

    .line 130
    iget-object v11, p0, Lcom/sec/android/app/camera/gallery/ImageListUber;->mSkipCounts:[I

    aget v12, v11, v10

    add-int/2addr v12, v2

    aput v12, v11, v10

    .line 120
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 143
    .end local v2           #offset:I
    .end local v8           #v:J
    .end local v10           #which:I
    .local v6, slot:Lcom/sec/android/app/camera/gallery/ImageListUber$MergeSlot;
    :cond_4
    invoke-virtual {v6}, Lcom/sec/android/app/camera/gallery/ImageListUber$MergeSlot;->next()Z

    move-result v11

    if-eqz v11, :cond_5

    .line 144
    iget-object v11, p0, Lcom/sec/android/app/camera/gallery/ImageListUber;->mQueue:Ljava/util/PriorityQueue;

    invoke-virtual {v11, v6}, Ljava/util/PriorityQueue;->add(Ljava/lang/Object;)Z

    .line 133
    :cond_5
    add-int/lit8 v4, v4, 0x1

    .line 134
    .end local v6           #slot:Lcom/sec/android/app/camera/gallery/ImageListUber$MergeSlot;
    :cond_6
    invoke-direct {p0}, Lcom/sec/android/app/camera/gallery/ImageListUber;->nextMergeSlot()Lcom/sec/android/app/camera/gallery/ImageListUber$MergeSlot;

    move-result-object v6

    .line 135
    .restart local v6       #slot:Lcom/sec/android/app/camera/gallery/ImageListUber$MergeSlot;
    if-nez v6, :cond_7

    .line 136
    const/4 v3, 0x0

    goto :goto_1

    .line 137
    :cond_7
    if-ne v4, p1, :cond_4

    .line 138
    iget-object v3, v6, Lcom/sec/android/app/camera/gallery/ImageListUber$MergeSlot;->mImage:Lcom/sec/android/app/camera/gallery/IImage;

    .line 139
    .local v3, result:Lcom/sec/android/app/camera/gallery/IImage;
    invoke-virtual {v6}, Lcom/sec/android/app/camera/gallery/ImageListUber$MergeSlot;->next()Z

    move-result v11

    if-eqz v11, :cond_2

    .line 140
    iget-object v11, p0, Lcom/sec/android/app/camera/gallery/ImageListUber;->mQueue:Ljava/util/PriorityQueue;

    invoke-virtual {v11, v6}, Ljava/util/PriorityQueue;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method public getImageForUri(Landroid/net/Uri;)Lcom/sec/android/app/camera/gallery/IImage;
    .locals 5
    .parameter "uri"

    .prologue
    .line 168
    iget-object v0, p0, Lcom/sec/android/app/camera/gallery/ImageListUber;->mSubList:[Lcom/sec/android/app/camera/gallery/IImageList;

    .local v0, arr$:[Lcom/sec/android/app/camera/gallery/IImageList;
    array-length v3, v0

    .local v3, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v4, v0, v1

    .line 169
    .local v4, sublist:Lcom/sec/android/app/camera/gallery/IImageList;
    invoke-interface {v4, p1}, Lcom/sec/android/app/camera/gallery/IImageList;->getImageForUri(Landroid/net/Uri;)Lcom/sec/android/app/camera/gallery/IImage;

    move-result-object v2

    .line 170
    .local v2, image:Lcom/sec/android/app/camera/gallery/IImage;
    if-eqz v2, :cond_0

    .line 173
    .end local v2           #image:Lcom/sec/android/app/camera/gallery/IImage;
    .end local v4           #sublist:Lcom/sec/android/app/camera/gallery/IImageList;
    :goto_1
    return-object v2

    .line 168
    .restart local v2       #image:Lcom/sec/android/app/camera/gallery/IImage;
    .restart local v4       #sublist:Lcom/sec/android/app/camera/gallery/IImageList;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 173
    .end local v2           #image:Lcom/sec/android/app/camera/gallery/IImage;
    .end local v4           #sublist:Lcom/sec/android/app/camera/gallery/IImageList;
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public declared-synchronized getImageIndex(Lcom/sec/android/app/camera/gallery/IImage;)I
    .locals 14
    .parameter "image"

    .prologue
    const/4 v11, -0x1

    .line 216
    monitor-enter p0

    :try_start_0
    invoke-interface {p1}, Lcom/sec/android/app/camera/gallery/IImage;->getContainer()Lcom/sec/android/app/camera/gallery/IImageList;

    move-result-object v1

    .line 217
    .local v1, list:Lcom/sec/android/app/camera/gallery/IImageList;
    iget-object v12, p0, Lcom/sec/android/app/camera/gallery/ImageListUber;->mSubList:[Lcom/sec/android/app/camera/gallery/IImageList;

    invoke-static {v12, v1}, Lcom/sec/android/app/camera/Util;->indexOf([Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v2

    .line 218
    .local v2, listIndex:I
    if-ne v2, v11, :cond_0

    .line 219
    new-instance v11, Ljava/lang/IllegalArgumentException;

    invoke-direct {v11}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v11
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 216
    .end local v1           #list:Lcom/sec/android/app/camera/gallery/IImageList;
    .end local v2           #listIndex:I
    :catchall_0
    move-exception v11

    monitor-exit p0

    throw v11

    .line 221
    .restart local v1       #list:Lcom/sec/android/app/camera/gallery/IImageList;
    .restart local v2       #listIndex:I
    :cond_0
    :try_start_1
    invoke-interface {v1, p1}, Lcom/sec/android/app/camera/gallery/IImageList;->getImageIndex(Lcom/sec/android/app/camera/gallery/IImage;)I

    move-result v3

    .line 224
    .local v3, listOffset:I
    const/4 v6, 0x0

    .line 225
    .local v6, skipCount:I
    const/4 v0, 0x0

    .local v0, i:I
    iget v4, p0, Lcom/sec/android/app/camera/gallery/ImageListUber;->mSkipListSize:I

    .local v4, n:I
    :goto_0
    if-ge v0, v4, :cond_6

    .line 226
    iget-object v12, p0, Lcom/sec/android/app/camera/gallery/ImageListUber;->mSkipList:[J

    aget-wide v8, v12, v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 227
    .local v8, value:J
    const-wide/16 v12, -0x1

    and-long/2addr v12, v8

    long-to-int v5, v12

    .line 228
    .local v5, offset:I
    const/16 v12, 0x20

    shr-long v12, v8, v12

    long-to-int v10, v12

    .line 229
    .local v10, which:I
    if-ne v10, v2, :cond_3

    .line 230
    if-ge v3, v5, :cond_2

    .line 231
    add-int v11, v6, v3

    .line 245
    .end local v5           #offset:I
    .end local v8           #value:J
    .end local v10           #which:I
    :cond_1
    :goto_1
    monitor-exit p0

    return v11

    .line 233
    .restart local v5       #offset:I
    .restart local v8       #value:J
    .restart local v10       #which:I
    :cond_2
    sub-int/2addr v3, v5

    .line 235
    :cond_3
    add-int/2addr v6, v5

    .line 225
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 247
    .end local v5           #offset:I
    .end local v8           #value:J
    .end local v10           #which:I
    .local v7, slot:Lcom/sec/android/app/camera/gallery/ImageListUber$MergeSlot;
    :cond_4
    :try_start_2
    invoke-virtual {v7}, Lcom/sec/android/app/camera/gallery/ImageListUber$MergeSlot;->next()Z

    move-result v12

    if-eqz v12, :cond_5

    .line 248
    iget-object v12, p0, Lcom/sec/android/app/camera/gallery/ImageListUber;->mQueue:Ljava/util/PriorityQueue;

    invoke-virtual {v12, v7}, Ljava/util/PriorityQueue;->add(Ljava/lang/Object;)Z

    .line 238
    :cond_5
    add-int/lit8 v6, v6, 0x1

    .line 239
    .end local v7           #slot:Lcom/sec/android/app/camera/gallery/ImageListUber$MergeSlot;
    :cond_6
    invoke-direct {p0}, Lcom/sec/android/app/camera/gallery/ImageListUber;->nextMergeSlot()Lcom/sec/android/app/camera/gallery/ImageListUber$MergeSlot;

    move-result-object v7

    .line 240
    .restart local v7       #slot:Lcom/sec/android/app/camera/gallery/ImageListUber$MergeSlot;
    if-eqz v7, :cond_1

    .line 242
    iget-object v12, v7, Lcom/sec/android/app/camera/gallery/ImageListUber$MergeSlot;->mImage:Lcom/sec/android/app/camera/gallery/IImage;

    if-ne v12, p1, :cond_4

    .line 243
    invoke-virtual {v7}, Lcom/sec/android/app/camera/gallery/ImageListUber$MergeSlot;->next()Z

    move-result v11

    if-eqz v11, :cond_7

    .line 244
    iget-object v11, p0, Lcom/sec/android/app/camera/gallery/ImageListUber;->mQueue:Ljava/util/PriorityQueue;

    invoke-virtual {v11, v7}, Ljava/util/PriorityQueue;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_7
    move v11, v6

    .line 245
    goto :goto_1
.end method

.method public isEmpty()Z
    .locals 5

    .prologue
    .line 89
    iget-object v0, p0, Lcom/sec/android/app/camera/gallery/ImageListUber;->mSubList:[Lcom/sec/android/app/camera/gallery/IImageList;

    .local v0, arr$:[Lcom/sec/android/app/camera/gallery/IImageList;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    .line 90
    .local v3, subList:Lcom/sec/android/app/camera/gallery/IImageList;
    invoke-interface {v3}, Lcom/sec/android/app/camera/gallery/IImageList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    .line 91
    const/4 v4, 0x0

    .line 93
    .end local v3           #subList:Lcom/sec/android/app/camera/gallery/IImageList;
    :goto_1
    return v4

    .line 89
    .restart local v3       #subList:Lcom/sec/android/app/camera/gallery/IImageList;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 93
    .end local v3           #subList:Lcom/sec/android/app/camera/gallery/IImageList;
    :cond_1
    const/4 v4, 0x1

    goto :goto_1
.end method

.method public removeImage(Lcom/sec/android/app/camera/gallery/IImage;)Z
    .locals 1
    .parameter "image"

    .prologue
    .line 205
    invoke-virtual {p0, p1}, Lcom/sec/android/app/camera/gallery/ImageListUber;->getImageIndex(Lcom/sec/android/app/camera/gallery/IImage;)I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/sec/android/app/camera/gallery/ImageListUber;->removeImage(Lcom/sec/android/app/camera/gallery/IImage;I)Z

    move-result v0

    return v0
.end method

.method public removeImageAt(I)Z
    .locals 2
    .parameter "index"

    .prologue
    .line 209
    invoke-virtual {p0, p1}, Lcom/sec/android/app/camera/gallery/ImageListUber;->getImageAt(I)Lcom/sec/android/app/camera/gallery/IImage;

    move-result-object v0

    .line 210
    .local v0, image:Lcom/sec/android/app/camera/gallery/IImage;
    if-nez v0, :cond_0

    .line 211
    const/4 v1, 0x0

    .line 212
    :goto_0
    return v1

    :cond_0
    invoke-direct {p0, v0, p1}, Lcom/sec/android/app/camera/gallery/ImageListUber;->removeImage(Lcom/sec/android/app/camera/gallery/IImage;I)Z

    move-result v1

    goto :goto_0
.end method
