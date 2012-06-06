.class final Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;
.super Ljava/util/concurrent/locks/ReentrantLock;
.source "CustomConcurrentHashMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/CustomConcurrentHashMap$Impl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "Segment"
.end annotation


# instance fields
.field volatile count:I

.field modCount:I

.field volatile table:Ljava/util/concurrent/atomic/AtomicReferenceArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReferenceArray",
            "<TE;>;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/google/common/collect/CustomConcurrentHashMap$Impl;

.field threshold:I


# direct methods
.method constructor <init>(Lcom/google/common/collect/CustomConcurrentHashMap$Impl;I)V
    .locals 1
    .parameter
    .parameter "initialCapacity"

    .prologue
    .line 764
    .local p0, this:Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;,"Lcom/google/common/collect/CustomConcurrentHashMap$Impl<TK;TV;TE;>.Segment;"
    iput-object p1, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;->this$0:Lcom/google/common/collect/CustomConcurrentHashMap$Impl;

    invoke-direct {p0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    .line 765
    invoke-virtual {p0, p2}, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;->newEntryArray(I)Ljava/util/concurrent/atomic/AtomicReferenceArray;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;->setTable(Ljava/util/concurrent/atomic/AtomicReferenceArray;)V

    .line 766
    return-void
.end method


# virtual methods
.method clear()V
    .locals 3

    .prologue
    .line 1204
    .local p0, this:Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;,"Lcom/google/common/collect/CustomConcurrentHashMap$Impl<TK;TV;TE;>.Segment;"
    iget v2, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;->count:I

    if-eqz v2, :cond_1

    .line 1205
    invoke-virtual {p0}, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;->lock()V

    .line 1207
    :try_start_0
    iget-object v1, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;->table:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 1208
    .local v1, table:Ljava/util/concurrent/atomic/AtomicReferenceArray;,"Ljava/util/concurrent/atomic/AtomicReferenceArray<TE;>;"
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 1209
    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    .line 1208
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1211
    :cond_0
    iget v2, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;->modCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;->modCount:I

    .line 1212
    const/4 v2, 0x0

    iput v2, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;->count:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1214
    invoke-virtual {p0}, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;->unlock()V

    .line 1217
    .end local v0           #i:I
    .end local v1           #table:Ljava/util/concurrent/atomic/AtomicReferenceArray;,"Ljava/util/concurrent/atomic/AtomicReferenceArray<TE;>;"
    :cond_1
    return-void

    .line 1214
    :catchall_0
    move-exception v2

    invoke-virtual {p0}, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;->unlock()V

    throw v2
.end method

.method containsKey(Ljava/lang/Object;I)Z
    .locals 5
    .parameter "key"
    .parameter "hash"

    .prologue
    .local p0, this:Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;,"Lcom/google/common/collect/CustomConcurrentHashMap$Impl<TK;TV;TE;>.Segment;"
    const/4 v3, 0x0

    .line 823
    iget-object v4, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;->this$0:Lcom/google/common/collect/CustomConcurrentHashMap$Impl;

    iget-object v2, v4, Lcom/google/common/collect/CustomConcurrentHashMap$Impl;->strategy:Lcom/google/common/collect/CustomConcurrentHashMap$Strategy;

    .line 824
    .local v2, s:Lcom/google/common/collect/CustomConcurrentHashMap$Strategy;,"Lcom/google/common/collect/CustomConcurrentHashMap$Strategy<TK;TV;TE;>;"
    iget v4, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;->count:I

    if-eqz v4, :cond_2

    .line 825
    invoke-virtual {p0, p2}, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;->getFirst(I)Ljava/lang/Object;

    move-result-object v0

    .local v0, e:Ljava/lang/Object;,"TE;"
    :goto_0
    if-eqz v0, :cond_2

    .line 826
    invoke-interface {v2, v0}, Lcom/google/common/collect/CustomConcurrentHashMap$Strategy;->getHash(Ljava/lang/Object;)I

    move-result v4

    if-eq v4, p2, :cond_1

    .line 825
    :cond_0
    invoke-interface {v2, v0}, Lcom/google/common/collect/CustomConcurrentHashMap$Strategy;->getNext(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 830
    :cond_1
    invoke-interface {v2, v0}, Lcom/google/common/collect/CustomConcurrentHashMap$Strategy;->getKey(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 831
    .local v1, entryKey:Ljava/lang/Object;,"TK;"
    if-eqz v1, :cond_0

    .line 835
    invoke-interface {v2, v1, p1}, Lcom/google/common/collect/CustomConcurrentHashMap$Strategy;->equalKeys(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 837
    invoke-interface {v2, v0}, Lcom/google/common/collect/CustomConcurrentHashMap$Strategy;->getValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_2

    const/4 v3, 0x1

    .line 842
    .end local v0           #e:Ljava/lang/Object;,"TE;"
    .end local v1           #entryKey:Ljava/lang/Object;,"TK;"
    :cond_2
    return v3
.end method

.method containsValue(Ljava/lang/Object;)Z
    .locals 7
    .parameter "value"

    .prologue
    .line 846
    .local p0, this:Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;,"Lcom/google/common/collect/CustomConcurrentHashMap$Impl<TK;TV;TE;>.Segment;"
    iget-object v6, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;->this$0:Lcom/google/common/collect/CustomConcurrentHashMap$Impl;

    iget-object v4, v6, Lcom/google/common/collect/CustomConcurrentHashMap$Impl;->strategy:Lcom/google/common/collect/CustomConcurrentHashMap$Strategy;

    .line 847
    .local v4, s:Lcom/google/common/collect/CustomConcurrentHashMap$Strategy;,"Lcom/google/common/collect/CustomConcurrentHashMap$Strategy<TK;TV;TE;>;"
    iget v6, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;->count:I

    if-eqz v6, :cond_3

    .line 848
    iget-object v5, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;->table:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 849
    .local v5, table:Ljava/util/concurrent/atomic/AtomicReferenceArray;,"Ljava/util/concurrent/atomic/AtomicReferenceArray<TE;>;"
    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v3

    .line 850
    .local v3, length:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v3, :cond_3

    .line 851
    invoke-virtual {v5, v2}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    .local v0, e:Ljava/lang/Object;,"TE;"
    :goto_1
    if-eqz v0, :cond_2

    .line 852
    invoke-interface {v4, v0}, Lcom/google/common/collect/CustomConcurrentHashMap$Strategy;->getValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 856
    .local v1, entryValue:Ljava/lang/Object;,"TV;"
    if-nez v1, :cond_1

    .line 851
    :cond_0
    invoke-interface {v4, v0}, Lcom/google/common/collect/CustomConcurrentHashMap$Strategy;->getNext(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_1

    .line 860
    :cond_1
    invoke-interface {v4, v1, p1}, Lcom/google/common/collect/CustomConcurrentHashMap$Strategy;->equalValues(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 861
    const/4 v6, 0x1

    .line 867
    .end local v0           #e:Ljava/lang/Object;,"TE;"
    .end local v1           #entryValue:Ljava/lang/Object;,"TV;"
    .end local v2           #i:I
    .end local v3           #length:I
    .end local v5           #table:Ljava/util/concurrent/atomic/AtomicReferenceArray;,"Ljava/util/concurrent/atomic/AtomicReferenceArray<TE;>;"
    :goto_2
    return v6

    .line 850
    .restart local v0       #e:Ljava/lang/Object;,"TE;"
    .restart local v2       #i:I
    .restart local v3       #length:I
    .restart local v5       #table:Ljava/util/concurrent/atomic/AtomicReferenceArray;,"Ljava/util/concurrent/atomic/AtomicReferenceArray<TE;>;"
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 867
    .end local v0           #e:Ljava/lang/Object;,"TE;"
    .end local v2           #i:I
    .end local v3           #length:I
    .end local v5           #table:Ljava/util/concurrent/atomic/AtomicReferenceArray;,"Ljava/util/concurrent/atomic/AtomicReferenceArray<TE;>;"
    :cond_3
    const/4 v6, 0x0

    goto :goto_2
.end method

.method expand()V
    .locals 19

    .prologue
    .line 973
    .local p0, this:Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;,"Lcom/google/common/collect/CustomConcurrentHashMap$Impl<TK;TV;TE;>.Segment;"
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;->table:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 974
    .local v14, oldTable:Ljava/util/concurrent/atomic/AtomicReferenceArray;,"Ljava/util/concurrent/atomic/AtomicReferenceArray<TE;>;"
    invoke-virtual {v14}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v12

    .line 975
    .local v12, oldCapacity:I
    const/high16 v18, 0x4000

    move/from16 v0, v18

    if-lt v12, v0, :cond_0

    .line 1040
    :goto_0
    return-void

    .line 993
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;->this$0:Lcom/google/common/collect/CustomConcurrentHashMap$Impl;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v15, v0, Lcom/google/common/collect/CustomConcurrentHashMap$Impl;->strategy:Lcom/google/common/collect/CustomConcurrentHashMap$Strategy;

    .line 994
    .local v15, s:Lcom/google/common/collect/CustomConcurrentHashMap$Strategy;,"Lcom/google/common/collect/CustomConcurrentHashMap$Strategy<TK;TV;TE;>;"
    shl-int/lit8 v18, v12, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;->newEntryArray(I)Ljava/util/concurrent/atomic/AtomicReferenceArray;

    move-result-object v10

    .line 995
    .local v10, newTable:Ljava/util/concurrent/atomic/AtomicReferenceArray;,"Ljava/util/concurrent/atomic/AtomicReferenceArray<TE;>;"
    invoke-virtual {v10}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v18

    mul-int/lit8 v18, v18, 0x3

    div-int/lit8 v18, v18, 0x4

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;->threshold:I

    .line 996
    invoke-virtual {v10}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v18

    add-int/lit8 v8, v18, -0x1

    .line 997
    .local v8, newMask:I
    const/4 v13, 0x0

    .local v13, oldIndex:I
    :goto_1
    if-ge v13, v12, :cond_6

    .line 1000
    invoke-virtual {v14, v13}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    .line 1002
    .local v3, head:Ljava/lang/Object;,"TE;"
    if-eqz v3, :cond_1

    .line 1003
    invoke-interface {v15, v3}, Lcom/google/common/collect/CustomConcurrentHashMap$Strategy;->getNext(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    .line 1004
    .local v11, next:Ljava/lang/Object;,"TE;"
    invoke-interface {v15, v3}, Lcom/google/common/collect/CustomConcurrentHashMap$Strategy;->getHash(Ljava/lang/Object;)I

    move-result v18

    and-int v4, v18, v8

    .line 1007
    .local v4, headIndex:I
    if-nez v11, :cond_2

    .line 1008
    invoke-virtual {v10, v4, v3}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    .line 997
    .end local v4           #headIndex:I
    .end local v11           #next:Ljava/lang/Object;,"TE;"
    :cond_1
    add-int/lit8 v13, v13, 0x1

    goto :goto_1

    .line 1013
    .restart local v4       #headIndex:I
    .restart local v11       #next:Ljava/lang/Object;,"TE;"
    :cond_2
    move-object/from16 v16, v3

    .line 1014
    .local v16, tail:Ljava/lang/Object;,"TE;"
    move/from16 v17, v4

    .line 1015
    .local v17, tailIndex:I
    move-object v6, v11

    .local v6, last:Ljava/lang/Object;,"TE;"
    :goto_2
    if-eqz v6, :cond_4

    .line 1016
    invoke-interface {v15, v6}, Lcom/google/common/collect/CustomConcurrentHashMap$Strategy;->getHash(Ljava/lang/Object;)I

    move-result v18

    and-int v7, v18, v8

    .line 1017
    .local v7, newIndex:I
    move/from16 v0, v17

    if-eq v7, v0, :cond_3

    .line 1019
    move/from16 v17, v7

    .line 1020
    move-object/from16 v16, v6

    .line 1015
    :cond_3
    invoke-interface {v15, v6}, Lcom/google/common/collect/CustomConcurrentHashMap$Strategy;->getNext(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    goto :goto_2

    .line 1023
    .end local v7           #newIndex:I
    :cond_4
    move/from16 v0, v17

    move-object/from16 v1, v16

    invoke-virtual {v10, v0, v1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    .line 1026
    move-object v2, v3

    .local v2, e:Ljava/lang/Object;,"TE;"
    :goto_3
    move-object/from16 v0, v16

    if-eq v2, v0, :cond_1

    .line 1027
    invoke-interface {v15, v2}, Lcom/google/common/collect/CustomConcurrentHashMap$Strategy;->getKey(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 1028
    .local v5, key:Ljava/lang/Object;,"TK;"
    if-eqz v5, :cond_5

    .line 1029
    invoke-interface {v15, v2}, Lcom/google/common/collect/CustomConcurrentHashMap$Strategy;->getHash(Ljava/lang/Object;)I

    move-result v18

    and-int v7, v18, v8

    .line 1030
    .restart local v7       #newIndex:I
    invoke-virtual {v10, v7}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v9

    .line 1031
    .local v9, newNext:Ljava/lang/Object;,"TE;"
    invoke-interface {v15, v5, v2, v9}, Lcom/google/common/collect/CustomConcurrentHashMap$Strategy;->copyEntry(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v10, v7, v0}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    .line 1026
    .end local v7           #newIndex:I
    .end local v9           #newNext:Ljava/lang/Object;,"TE;"
    :cond_5
    invoke-interface {v15, v2}, Lcom/google/common/collect/CustomConcurrentHashMap$Strategy;->getNext(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_3

    .line 1039
    .end local v2           #e:Ljava/lang/Object;,"TE;"
    .end local v3           #head:Ljava/lang/Object;,"TE;"
    .end local v4           #headIndex:I
    .end local v5           #key:Ljava/lang/Object;,"TK;"
    .end local v6           #last:Ljava/lang/Object;,"TE;"
    .end local v11           #next:Ljava/lang/Object;,"TE;"
    .end local v16           #tail:Ljava/lang/Object;,"TE;"
    .end local v17           #tailIndex:I
    :cond_6
    move-object/from16 v0, p0

    iput-object v10, v0, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;->table:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    goto/16 :goto_0
.end method

.method get(Ljava/lang/Object;I)Ljava/lang/Object;
    .locals 2
    .parameter "key"
    .parameter "hash"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "I)TV;"
        }
    .end annotation

    .prologue
    .line 814
    .local p0, this:Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;,"Lcom/google/common/collect/CustomConcurrentHashMap$Impl<TK;TV;TE;>.Segment;"
    invoke-virtual {p0, p1, p2}, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;->getEntry(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v0

    .line 815
    .local v0, entry:Ljava/lang/Object;,"TE;"
    if-nez v0, :cond_0

    .line 816
    const/4 v1, 0x0

    .line 819
    :goto_0
    return-object v1

    :cond_0
    iget-object v1, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;->this$0:Lcom/google/common/collect/CustomConcurrentHashMap$Impl;

    iget-object v1, v1, Lcom/google/common/collect/CustomConcurrentHashMap$Impl;->strategy:Lcom/google/common/collect/CustomConcurrentHashMap$Strategy;

    invoke-interface {v1, v0}, Lcom/google/common/collect/CustomConcurrentHashMap$Strategy;->getValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_0
.end method

.method public getEntry(Ljava/lang/Object;I)Ljava/lang/Object;
    .locals 4
    .parameter "key"
    .parameter "hash"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "I)TE;"
        }
    .end annotation

    .prologue
    .line 792
    .local p0, this:Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;,"Lcom/google/common/collect/CustomConcurrentHashMap$Impl<TK;TV;TE;>.Segment;"
    iget-object v3, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;->this$0:Lcom/google/common/collect/CustomConcurrentHashMap$Impl;

    iget-object v2, v3, Lcom/google/common/collect/CustomConcurrentHashMap$Impl;->strategy:Lcom/google/common/collect/CustomConcurrentHashMap$Strategy;

    .line 793
    .local v2, s:Lcom/google/common/collect/CustomConcurrentHashMap$Strategy;,"Lcom/google/common/collect/CustomConcurrentHashMap$Strategy<TK;TV;TE;>;"
    iget v3, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;->count:I

    if-eqz v3, :cond_2

    .line 794
    invoke-virtual {p0, p2}, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;->getFirst(I)Ljava/lang/Object;

    move-result-object v0

    .local v0, e:Ljava/lang/Object;,"TE;"
    :goto_0
    if-eqz v0, :cond_2

    .line 795
    invoke-interface {v2, v0}, Lcom/google/common/collect/CustomConcurrentHashMap$Strategy;->getHash(Ljava/lang/Object;)I

    move-result v3

    if-eq v3, p2, :cond_1

    .line 794
    :cond_0
    invoke-interface {v2, v0}, Lcom/google/common/collect/CustomConcurrentHashMap$Strategy;->getNext(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 799
    :cond_1
    invoke-interface {v2, v0}, Lcom/google/common/collect/CustomConcurrentHashMap$Strategy;->getKey(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 800
    .local v1, entryKey:Ljava/lang/Object;,"TK;"
    if-eqz v1, :cond_0

    .line 804
    invoke-interface {v2, v1, p1}, Lcom/google/common/collect/CustomConcurrentHashMap$Strategy;->equalKeys(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 810
    .end local v0           #e:Ljava/lang/Object;,"TE;"
    .end local v1           #entryKey:Ljava/lang/Object;,"TK;"
    :goto_1
    return-object v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method getFirst(I)Ljava/lang/Object;
    .locals 2
    .parameter "hash"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    .prologue
    .line 785
    .local p0, this:Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;,"Lcom/google/common/collect/CustomConcurrentHashMap$Impl<TK;TV;TE;>.Segment;"
    iget-object v0, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;->table:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 786
    .local v0, table:Ljava/util/concurrent/atomic/AtomicReferenceArray;,"Ljava/util/concurrent/atomic/AtomicReferenceArray<TE;>;"
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    and-int/2addr v1, p1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method newEntryArray(I)Ljava/util/concurrent/atomic/AtomicReferenceArray;
    .locals 1
    .parameter "size"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/concurrent/atomic/AtomicReferenceArray",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 769
    .local p0, this:Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;,"Lcom/google/common/collect/CustomConcurrentHashMap$Impl<TK;TV;TE;>.Segment;"
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReferenceArray;

    invoke-direct {v0, p1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;-><init>(I)V

    return-object v0
.end method

.method put(Ljava/lang/Object;ILjava/lang/Object;Z)Ljava/lang/Object;
    .locals 11
    .parameter
    .parameter "hash"
    .parameter
    .parameter "onlyIfAbsent"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;ITV;Z)TV;"
        }
    .end annotation

    .prologue
    .line 925
    .local p0, this:Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;,"Lcom/google/common/collect/CustomConcurrentHashMap$Impl<TK;TV;TE;>.Segment;"
    .local p1, key:Ljava/lang/Object;,"TK;"
    .local p3, value:Ljava/lang/Object;,"TV;"
    iget-object v10, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;->this$0:Lcom/google/common/collect/CustomConcurrentHashMap$Impl;

    iget-object v8, v10, Lcom/google/common/collect/CustomConcurrentHashMap$Impl;->strategy:Lcom/google/common/collect/CustomConcurrentHashMap$Strategy;

    .line 926
    .local v8, s:Lcom/google/common/collect/CustomConcurrentHashMap$Strategy;,"Lcom/google/common/collect/CustomConcurrentHashMap$Strategy<TK;TV;TE;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;->lock()V

    .line 928
    :try_start_0
    iget v0, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;->count:I

    .line 929
    .local v0, count:I
    add-int/lit8 v1, v0, 0x1

    .end local v0           #count:I
    .local v1, count:I
    iget v10, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;->threshold:I

    if-le v0, v10, :cond_0

    .line 930
    invoke-virtual {p0}, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;->expand()V

    .line 933
    :cond_0
    iget-object v9, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;->table:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 934
    .local v9, table:Ljava/util/concurrent/atomic/AtomicReferenceArray;,"Ljava/util/concurrent/atomic/AtomicReferenceArray<TE;>;"
    invoke-virtual {v9}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v10

    add-int/lit8 v10, v10, -0x1

    and-int v6, p2, v10

    .line 936
    .local v6, index:I
    invoke-virtual {v9, v6}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    .line 939
    .local v5, first:Ljava/lang/Object;,"TE;"
    move-object v2, v5

    .local v2, e:Ljava/lang/Object;,"TE;"
    :goto_0
    if-eqz v2, :cond_3

    .line 940
    invoke-interface {v8, v2}, Lcom/google/common/collect/CustomConcurrentHashMap$Strategy;->getKey(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 941
    .local v3, entryKey:Ljava/lang/Object;,"TK;"
    invoke-interface {v8, v2}, Lcom/google/common/collect/CustomConcurrentHashMap$Strategy;->getHash(Ljava/lang/Object;)I

    move-result v10

    if-ne v10, p2, :cond_2

    if-eqz v3, :cond_2

    invoke-interface {v8, p1, v3}, Lcom/google/common/collect/CustomConcurrentHashMap$Strategy;->equalKeys(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 947
    invoke-interface {v8, v2}, Lcom/google/common/collect/CustomConcurrentHashMap$Strategy;->getValue(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v4

    .line 948
    .local v4, entryValue:Ljava/lang/Object;,"TV;"
    if-eqz p4, :cond_1

    if-eqz v4, :cond_1

    .line 965
    invoke-virtual {p0}, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;->unlock()V

    .end local v3           #entryKey:Ljava/lang/Object;,"TK;"
    .end local v4           #entryValue:Ljava/lang/Object;,"TV;"
    :goto_1
    return-object v4

    .line 952
    .restart local v3       #entryKey:Ljava/lang/Object;,"TK;"
    .restart local v4       #entryValue:Ljava/lang/Object;,"TV;"
    :cond_1
    :try_start_1
    invoke-interface {v8, v2, p3}, Lcom/google/common/collect/CustomConcurrentHashMap$Strategy;->setValue(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 965
    invoke-virtual {p0}, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;->unlock()V

    goto :goto_1

    .line 939
    .end local v4           #entryValue:Ljava/lang/Object;,"TV;"
    :cond_2
    :try_start_2
    invoke-interface {v8, v2}, Lcom/google/common/collect/CustomConcurrentHashMap$Strategy;->getNext(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_0

    .line 958
    .end local v3           #entryKey:Ljava/lang/Object;,"TK;"
    :cond_3
    iget v10, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;->modCount:I

    add-int/lit8 v10, v10, 0x1

    iput v10, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;->modCount:I

    .line 959
    invoke-interface {v8, p1, p2, v5}, Lcom/google/common/collect/CustomConcurrentHashMap$Strategy;->newEntry(Ljava/lang/Object;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    .line 960
    .local v7, newEntry:Ljava/lang/Object;,"TE;"
    invoke-interface {v8, v7, p3}, Lcom/google/common/collect/CustomConcurrentHashMap$Strategy;->setValue(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 961
    invoke-virtual {v9, v6, v7}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    .line 962
    iput v1, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;->count:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 963
    const/4 v4, 0x0

    .line 965
    invoke-virtual {p0}, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;->unlock()V

    goto :goto_1

    .end local v1           #count:I
    .end local v2           #e:Ljava/lang/Object;,"TE;"
    .end local v5           #first:Ljava/lang/Object;,"TE;"
    .end local v6           #index:I
    .end local v7           #newEntry:Ljava/lang/Object;,"TE;"
    .end local v9           #table:Ljava/util/concurrent/atomic/AtomicReferenceArray;,"Ljava/util/concurrent/atomic/AtomicReferenceArray<TE;>;"
    :catchall_0
    move-exception v10

    invoke-virtual {p0}, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;->unlock()V

    throw v10
.end method

.method remove(Ljava/lang/Object;I)Ljava/lang/Object;
    .locals 12
    .parameter "key"
    .parameter "hash"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "I)TV;"
        }
    .end annotation

    .prologue
    .line 1043
    .local p0, this:Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;,"Lcom/google/common/collect/CustomConcurrentHashMap$Impl<TK;TV;TE;>.Segment;"
    iget-object v11, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;->this$0:Lcom/google/common/collect/CustomConcurrentHashMap$Impl;

    iget-object v9, v11, Lcom/google/common/collect/CustomConcurrentHashMap$Impl;->strategy:Lcom/google/common/collect/CustomConcurrentHashMap$Strategy;

    .line 1044
    .local v9, s:Lcom/google/common/collect/CustomConcurrentHashMap$Strategy;,"Lcom/google/common/collect/CustomConcurrentHashMap$Strategy<TK;TV;TE;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;->lock()V

    .line 1046
    :try_start_0
    iget v11, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;->count:I

    add-int/lit8 v0, v11, -0x1

    .line 1047
    .local v0, count:I
    iget-object v10, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;->table:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 1048
    .local v10, table:Ljava/util/concurrent/atomic/AtomicReferenceArray;,"Ljava/util/concurrent/atomic/AtomicReferenceArray<TE;>;"
    invoke-virtual {v10}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v11

    add-int/lit8 v11, v11, -0x1

    and-int v5, p2, v11

    .line 1049
    .local v5, index:I
    invoke-virtual {v10, v5}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    .line 1051
    .local v4, first:Ljava/lang/Object;,"TE;"
    move-object v1, v4

    .local v1, e:Ljava/lang/Object;,"TE;"
    :goto_0
    if-eqz v1, :cond_3

    .line 1052
    invoke-interface {v9, v1}, Lcom/google/common/collect/CustomConcurrentHashMap$Strategy;->getKey(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 1053
    .local v2, entryKey:Ljava/lang/Object;,"TK;"
    invoke-interface {v9, v1}, Lcom/google/common/collect/CustomConcurrentHashMap$Strategy;->getHash(Ljava/lang/Object;)I

    move-result v11

    if-ne v11, p2, :cond_2

    if-eqz v2, :cond_2

    invoke-interface {v9, v2, p1}, Lcom/google/common/collect/CustomConcurrentHashMap$Strategy;->equalKeys(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_2

    .line 1055
    iget-object v11, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;->this$0:Lcom/google/common/collect/CustomConcurrentHashMap$Impl;

    iget-object v11, v11, Lcom/google/common/collect/CustomConcurrentHashMap$Impl;->strategy:Lcom/google/common/collect/CustomConcurrentHashMap$Strategy;

    invoke-interface {v11, v1}, Lcom/google/common/collect/CustomConcurrentHashMap$Strategy;->getValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 1059
    .local v3, entryValue:Ljava/lang/Object;,"TV;"
    iget v11, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;->modCount:I

    add-int/lit8 v11, v11, 0x1

    iput v11, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;->modCount:I

    .line 1060
    invoke-interface {v9, v1}, Lcom/google/common/collect/CustomConcurrentHashMap$Strategy;->getNext(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    .line 1061
    .local v6, newFirst:Ljava/lang/Object;,"TE;"
    move-object v7, v4

    .local v7, p:Ljava/lang/Object;,"TE;"
    :goto_1
    if-eq v7, v1, :cond_1

    .line 1062
    invoke-interface {v9, v7}, Lcom/google/common/collect/CustomConcurrentHashMap$Strategy;->getKey(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    .line 1063
    .local v8, pKey:Ljava/lang/Object;,"TK;"
    if-eqz v8, :cond_0

    .line 1064
    invoke-interface {v9, v8, v7, v6}, Lcom/google/common/collect/CustomConcurrentHashMap$Strategy;->copyEntry(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    .line 1061
    :cond_0
    invoke-interface {v9, v7}, Lcom/google/common/collect/CustomConcurrentHashMap$Strategy;->getNext(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    goto :goto_1

    .line 1069
    .end local v8           #pKey:Ljava/lang/Object;,"TK;"
    :cond_1
    invoke-virtual {v10, v5, v6}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    .line 1070
    iput v0, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;->count:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1077
    invoke-virtual {p0}, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;->unlock()V

    .end local v2           #entryKey:Ljava/lang/Object;,"TK;"
    .end local v3           #entryValue:Ljava/lang/Object;,"TV;"
    .end local v6           #newFirst:Ljava/lang/Object;,"TE;"
    .end local v7           #p:Ljava/lang/Object;,"TE;"
    :goto_2
    return-object v3

    .line 1051
    .restart local v2       #entryKey:Ljava/lang/Object;,"TK;"
    :cond_2
    :try_start_1
    invoke-interface {v9, v1}, Lcom/google/common/collect/CustomConcurrentHashMap$Strategy;->getNext(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v1

    goto :goto_0

    .line 1075
    .end local v2           #entryKey:Ljava/lang/Object;,"TK;"
    :cond_3
    const/4 v3, 0x0

    .line 1077
    invoke-virtual {p0}, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;->unlock()V

    goto :goto_2

    .end local v0           #count:I
    .end local v1           #e:Ljava/lang/Object;,"TE;"
    .end local v4           #first:Ljava/lang/Object;,"TE;"
    .end local v5           #index:I
    .end local v10           #table:Ljava/util/concurrent/atomic/AtomicReferenceArray;,"Ljava/util/concurrent/atomic/AtomicReferenceArray<TE;>;"
    :catchall_0
    move-exception v11

    invoke-virtual {p0}, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;->unlock()V

    throw v11
.end method

.method remove(Ljava/lang/Object;ILjava/lang/Object;)Z
    .locals 12
    .parameter "key"
    .parameter "hash"
    .parameter "value"

    .prologue
    .line 1082
    .local p0, this:Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;,"Lcom/google/common/collect/CustomConcurrentHashMap$Impl<TK;TV;TE;>.Segment;"
    iget-object v11, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;->this$0:Lcom/google/common/collect/CustomConcurrentHashMap$Impl;

    iget-object v9, v11, Lcom/google/common/collect/CustomConcurrentHashMap$Impl;->strategy:Lcom/google/common/collect/CustomConcurrentHashMap$Strategy;

    .line 1083
    .local v9, s:Lcom/google/common/collect/CustomConcurrentHashMap$Strategy;,"Lcom/google/common/collect/CustomConcurrentHashMap$Strategy<TK;TV;TE;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;->lock()V

    .line 1085
    :try_start_0
    iget v11, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;->count:I

    add-int/lit8 v0, v11, -0x1

    .line 1086
    .local v0, count:I
    iget-object v10, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;->table:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 1087
    .local v10, table:Ljava/util/concurrent/atomic/AtomicReferenceArray;,"Ljava/util/concurrent/atomic/AtomicReferenceArray<TE;>;"
    invoke-virtual {v10}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v11

    add-int/lit8 v11, v11, -0x1

    and-int v5, p2, v11

    .line 1088
    .local v5, index:I
    invoke-virtual {v10, v5}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    .line 1090
    .local v4, first:Ljava/lang/Object;,"TE;"
    move-object v1, v4

    .local v1, e:Ljava/lang/Object;,"TE;"
    :goto_0
    if-eqz v1, :cond_5

    .line 1091
    invoke-interface {v9, v1}, Lcom/google/common/collect/CustomConcurrentHashMap$Strategy;->getKey(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 1092
    .local v2, entryKey:Ljava/lang/Object;,"TK;"
    invoke-interface {v9, v1}, Lcom/google/common/collect/CustomConcurrentHashMap$Strategy;->getHash(Ljava/lang/Object;)I

    move-result v11

    if-ne v11, p2, :cond_4

    if-eqz v2, :cond_4

    invoke-interface {v9, v2, p1}, Lcom/google/common/collect/CustomConcurrentHashMap$Strategy;->equalKeys(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_4

    .line 1094
    iget-object v11, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;->this$0:Lcom/google/common/collect/CustomConcurrentHashMap$Impl;

    iget-object v11, v11, Lcom/google/common/collect/CustomConcurrentHashMap$Impl;->strategy:Lcom/google/common/collect/CustomConcurrentHashMap$Strategy;

    invoke-interface {v11, v1}, Lcom/google/common/collect/CustomConcurrentHashMap$Strategy;->getValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 1095
    .local v3, entryValue:Ljava/lang/Object;,"TV;"
    if-eq p3, v3, :cond_0

    if-eqz p3, :cond_3

    if-eqz v3, :cond_3

    invoke-interface {v9, v3, p3}, Lcom/google/common/collect/CustomConcurrentHashMap$Strategy;->equalValues(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_3

    .line 1100
    :cond_0
    iget v11, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;->modCount:I

    add-int/lit8 v11, v11, 0x1

    iput v11, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;->modCount:I

    .line 1101
    invoke-interface {v9, v1}, Lcom/google/common/collect/CustomConcurrentHashMap$Strategy;->getNext(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    .line 1102
    .local v6, newFirst:Ljava/lang/Object;,"TE;"
    move-object v7, v4

    .local v7, p:Ljava/lang/Object;,"TE;"
    :goto_1
    if-eq v7, v1, :cond_2

    .line 1103
    invoke-interface {v9, v7}, Lcom/google/common/collect/CustomConcurrentHashMap$Strategy;->getKey(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    .line 1104
    .local v8, pKey:Ljava/lang/Object;,"TK;"
    if-eqz v8, :cond_1

    .line 1105
    invoke-interface {v9, v8, v7, v6}, Lcom/google/common/collect/CustomConcurrentHashMap$Strategy;->copyEntry(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    .line 1102
    :cond_1
    invoke-interface {v9, v7}, Lcom/google/common/collect/CustomConcurrentHashMap$Strategy;->getNext(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    goto :goto_1

    .line 1110
    .end local v8           #pKey:Ljava/lang/Object;,"TK;"
    :cond_2
    invoke-virtual {v10, v5, v6}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    .line 1111
    iput v0, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;->count:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1112
    const/4 v11, 0x1

    .line 1121
    invoke-virtual {p0}, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;->unlock()V

    .end local v2           #entryKey:Ljava/lang/Object;,"TK;"
    .end local v3           #entryValue:Ljava/lang/Object;,"TV;"
    .end local v6           #newFirst:Ljava/lang/Object;,"TE;"
    .end local v7           #p:Ljava/lang/Object;,"TE;"
    :goto_2
    return v11

    .line 1114
    .restart local v2       #entryKey:Ljava/lang/Object;,"TK;"
    .restart local v3       #entryValue:Ljava/lang/Object;,"TV;"
    :cond_3
    const/4 v11, 0x0

    .line 1121
    invoke-virtual {p0}, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;->unlock()V

    goto :goto_2

    .line 1090
    .end local v3           #entryValue:Ljava/lang/Object;,"TV;"
    :cond_4
    :try_start_1
    invoke-interface {v9, v1}, Lcom/google/common/collect/CustomConcurrentHashMap$Strategy;->getNext(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v1

    goto :goto_0

    .line 1119
    .end local v2           #entryKey:Ljava/lang/Object;,"TK;"
    :cond_5
    const/4 v11, 0x0

    .line 1121
    invoke-virtual {p0}, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;->unlock()V

    goto :goto_2

    .end local v0           #count:I
    .end local v1           #e:Ljava/lang/Object;,"TE;"
    .end local v4           #first:Ljava/lang/Object;,"TE;"
    .end local v5           #index:I
    .end local v10           #table:Ljava/util/concurrent/atomic/AtomicReferenceArray;,"Ljava/util/concurrent/atomic/AtomicReferenceArray<TE;>;"
    :catchall_0
    move-exception v11

    invoke-virtual {p0}, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;->unlock()V

    throw v11
.end method

.method public removeEntry(Ljava/lang/Object;I)Z
    .locals 10
    .parameter
    .parameter "hash"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;I)Z"
        }
    .end annotation

    .prologue
    .line 1168
    .local p0, this:Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;,"Lcom/google/common/collect/CustomConcurrentHashMap$Impl<TK;TV;TE;>.Segment;"
    .local p1, entry:Ljava/lang/Object;,"TE;"
    iget-object v9, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;->this$0:Lcom/google/common/collect/CustomConcurrentHashMap$Impl;

    iget-object v7, v9, Lcom/google/common/collect/CustomConcurrentHashMap$Impl;->strategy:Lcom/google/common/collect/CustomConcurrentHashMap$Strategy;

    .line 1169
    .local v7, s:Lcom/google/common/collect/CustomConcurrentHashMap$Strategy;,"Lcom/google/common/collect/CustomConcurrentHashMap$Strategy<TK;TV;TE;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;->lock()V

    .line 1171
    :try_start_0
    iget v9, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;->count:I

    add-int/lit8 v0, v9, -0x1

    .line 1172
    .local v0, count:I
    iget-object v8, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;->table:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 1173
    .local v8, table:Ljava/util/concurrent/atomic/AtomicReferenceArray;,"Ljava/util/concurrent/atomic/AtomicReferenceArray<TE;>;"
    invoke-virtual {v8}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v9

    add-int/lit8 v9, v9, -0x1

    and-int v3, p2, v9

    .line 1174
    .local v3, index:I
    invoke-virtual {v8, v3}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    .line 1176
    .local v2, first:Ljava/lang/Object;,"TE;"
    move-object v1, v2

    .local v1, e:Ljava/lang/Object;,"TE;"
    :goto_0
    if-eqz v1, :cond_3

    .line 1177
    invoke-interface {v7, v1}, Lcom/google/common/collect/CustomConcurrentHashMap$Strategy;->getHash(Ljava/lang/Object;)I

    move-result v9

    if-ne v9, p2, :cond_2

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 1181
    iget v9, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;->modCount:I

    add-int/lit8 v9, v9, 0x1

    iput v9, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;->modCount:I

    .line 1182
    invoke-interface {v7, v1}, Lcom/google/common/collect/CustomConcurrentHashMap$Strategy;->getNext(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 1183
    .local v4, newFirst:Ljava/lang/Object;,"TE;"
    move-object v5, v2

    .local v5, p:Ljava/lang/Object;,"TE;"
    :goto_1
    if-eq v5, v1, :cond_1

    .line 1184
    invoke-interface {v7, v5}, Lcom/google/common/collect/CustomConcurrentHashMap$Strategy;->getKey(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    .line 1185
    .local v6, pKey:Ljava/lang/Object;,"TK;"
    if-eqz v6, :cond_0

    .line 1186
    invoke-interface {v7, v6, v5, v4}, Lcom/google/common/collect/CustomConcurrentHashMap$Strategy;->copyEntry(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 1183
    :cond_0
    invoke-interface {v7, v5}, Lcom/google/common/collect/CustomConcurrentHashMap$Strategy;->getNext(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    goto :goto_1

    .line 1191
    .end local v6           #pKey:Ljava/lang/Object;,"TK;"
    :cond_1
    invoke-virtual {v8, v3, v4}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    .line 1192
    iput v0, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;->count:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1193
    const/4 v9, 0x1

    .line 1199
    invoke-virtual {p0}, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;->unlock()V

    .end local v4           #newFirst:Ljava/lang/Object;,"TE;"
    .end local v5           #p:Ljava/lang/Object;,"TE;"
    :goto_2
    return v9

    .line 1176
    :cond_2
    :try_start_1
    invoke-interface {v7, v1}, Lcom/google/common/collect/CustomConcurrentHashMap$Strategy;->getNext(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v1

    goto :goto_0

    .line 1197
    :cond_3
    const/4 v9, 0x0

    .line 1199
    invoke-virtual {p0}, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;->unlock()V

    goto :goto_2

    .end local v0           #count:I
    .end local v1           #e:Ljava/lang/Object;,"TE;"
    .end local v2           #first:Ljava/lang/Object;,"TE;"
    .end local v3           #index:I
    .end local v8           #table:Ljava/util/concurrent/atomic/AtomicReferenceArray;,"Ljava/util/concurrent/atomic/AtomicReferenceArray<TE;>;"
    :catchall_0
    move-exception v9

    invoke-virtual {p0}, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;->unlock()V

    throw v9
.end method

.method public removeEntry(Ljava/lang/Object;ILjava/lang/Object;)Z
    .locals 12
    .parameter
    .parameter "hash"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;ITV;)Z"
        }
    .end annotation

    .prologue
    .local p0, this:Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;,"Lcom/google/common/collect/CustomConcurrentHashMap$Impl<TK;TV;TE;>.Segment;"
    .local p1, entry:Ljava/lang/Object;,"TE;"
    .local p3, value:Ljava/lang/Object;,"TV;"
    const/4 v10, 0x0

    .line 1126
    iget-object v11, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;->this$0:Lcom/google/common/collect/CustomConcurrentHashMap$Impl;

    iget-object v8, v11, Lcom/google/common/collect/CustomConcurrentHashMap$Impl;->strategy:Lcom/google/common/collect/CustomConcurrentHashMap$Strategy;

    .line 1127
    .local v8, s:Lcom/google/common/collect/CustomConcurrentHashMap$Strategy;,"Lcom/google/common/collect/CustomConcurrentHashMap$Strategy<TK;TV;TE;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;->lock()V

    .line 1129
    :try_start_0
    iget v11, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;->count:I

    add-int/lit8 v0, v11, -0x1

    .line 1130
    .local v0, count:I
    iget-object v9, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;->table:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 1131
    .local v9, table:Ljava/util/concurrent/atomic/AtomicReferenceArray;,"Ljava/util/concurrent/atomic/AtomicReferenceArray<TE;>;"
    invoke-virtual {v9}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v11

    add-int/lit8 v11, v11, -0x1

    and-int v4, p2, v11

    .line 1132
    .local v4, index:I
    invoke-virtual {v9, v4}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    .line 1134
    .local v3, first:Ljava/lang/Object;,"TE;"
    move-object v1, v3

    .local v1, e:Ljava/lang/Object;,"TE;"
    :goto_0
    if-eqz v1, :cond_5

    .line 1135
    invoke-interface {v8, v1}, Lcom/google/common/collect/CustomConcurrentHashMap$Strategy;->getHash(Ljava/lang/Object;)I

    move-result v11

    if-ne v11, p2, :cond_4

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_4

    .line 1136
    invoke-interface {v8, v1}, Lcom/google/common/collect/CustomConcurrentHashMap$Strategy;->getValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 1137
    .local v2, entryValue:Ljava/lang/Object;,"TV;"
    if-eq v2, p3, :cond_0

    if-eqz p3, :cond_3

    invoke-interface {v8, v2, p3}, Lcom/google/common/collect/CustomConcurrentHashMap$Strategy;->equalValues(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_3

    .line 1142
    :cond_0
    iget v10, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;->modCount:I

    add-int/lit8 v10, v10, 0x1

    iput v10, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;->modCount:I

    .line 1143
    invoke-interface {v8, v1}, Lcom/google/common/collect/CustomConcurrentHashMap$Strategy;->getNext(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 1144
    .local v5, newFirst:Ljava/lang/Object;,"TE;"
    move-object v6, v3

    .local v6, p:Ljava/lang/Object;,"TE;"
    :goto_1
    if-eq v6, v1, :cond_2

    .line 1145
    invoke-interface {v8, v6}, Lcom/google/common/collect/CustomConcurrentHashMap$Strategy;->getKey(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    .line 1146
    .local v7, pKey:Ljava/lang/Object;,"TK;"
    if-eqz v7, :cond_1

    .line 1147
    invoke-interface {v8, v7, v6, v5}, Lcom/google/common/collect/CustomConcurrentHashMap$Strategy;->copyEntry(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 1144
    :cond_1
    invoke-interface {v8, v6}, Lcom/google/common/collect/CustomConcurrentHashMap$Strategy;->getNext(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    goto :goto_1

    .line 1152
    .end local v7           #pKey:Ljava/lang/Object;,"TK;"
    :cond_2
    invoke-virtual {v9, v4, v5}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    .line 1153
    iput v0, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;->count:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1154
    const/4 v10, 0x1

    .line 1163
    invoke-virtual {p0}, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;->unlock()V

    .end local v2           #entryValue:Ljava/lang/Object;,"TV;"
    .end local v5           #newFirst:Ljava/lang/Object;,"TE;"
    .end local v6           #p:Ljava/lang/Object;,"TE;"
    :goto_2
    return v10

    .restart local v2       #entryValue:Ljava/lang/Object;,"TV;"
    :cond_3
    invoke-virtual {p0}, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;->unlock()V

    goto :goto_2

    .line 1134
    .end local v2           #entryValue:Ljava/lang/Object;,"TV;"
    :cond_4
    :try_start_1
    invoke-interface {v8, v1}, Lcom/google/common/collect/CustomConcurrentHashMap$Strategy;->getNext(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v1

    goto :goto_0

    .line 1163
    :cond_5
    invoke-virtual {p0}, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;->unlock()V

    goto :goto_2

    .end local v0           #count:I
    .end local v1           #e:Ljava/lang/Object;,"TE;"
    .end local v3           #first:Ljava/lang/Object;,"TE;"
    .end local v4           #index:I
    .end local v9           #table:Ljava/util/concurrent/atomic/AtomicReferenceArray;,"Ljava/util/concurrent/atomic/AtomicReferenceArray<TE;>;"
    :catchall_0
    move-exception v10

    invoke-virtual {p0}, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;->unlock()V

    throw v10
.end method

.method replace(Ljava/lang/Object;ILjava/lang/Object;)Ljava/lang/Object;
    .locals 6
    .parameter
    .parameter "hash"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;ITV;)TV;"
        }
    .end annotation

    .prologue
    .local p0, this:Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;,"Lcom/google/common/collect/CustomConcurrentHashMap$Impl<TK;TV;TE;>.Segment;"
    .local p1, key:Ljava/lang/Object;,"TK;"
    .local p3, newValue:Ljava/lang/Object;,"TV;"
    const/4 v4, 0x0

    .line 899
    iget-object v5, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;->this$0:Lcom/google/common/collect/CustomConcurrentHashMap$Impl;

    iget-object v3, v5, Lcom/google/common/collect/CustomConcurrentHashMap$Impl;->strategy:Lcom/google/common/collect/CustomConcurrentHashMap$Strategy;

    .line 900
    .local v3, s:Lcom/google/common/collect/CustomConcurrentHashMap$Strategy;,"Lcom/google/common/collect/CustomConcurrentHashMap$Strategy<TK;TV;TE;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;->lock()V

    .line 902
    :try_start_0
    invoke-virtual {p0, p2}, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;->getFirst(I)Ljava/lang/Object;

    move-result-object v0

    .local v0, e:Ljava/lang/Object;,"TE;"
    :goto_0
    if-eqz v0, :cond_2

    .line 903
    invoke-interface {v3, v0}, Lcom/google/common/collect/CustomConcurrentHashMap$Strategy;->getKey(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 904
    .local v1, entryKey:Ljava/lang/Object;,"TK;"
    invoke-interface {v3, v0}, Lcom/google/common/collect/CustomConcurrentHashMap$Strategy;->getHash(Ljava/lang/Object;)I

    move-result v5

    if-ne v5, p2, :cond_1

    if-eqz v1, :cond_1

    invoke-interface {v3, p1, v1}, Lcom/google/common/collect/CustomConcurrentHashMap$Strategy;->equalKeys(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 908
    invoke-interface {v3, v0}, Lcom/google/common/collect/CustomConcurrentHashMap$Strategy;->getValue(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 909
    .local v2, entryValue:Ljava/lang/Object;,"TV;"
    if-nez v2, :cond_0

    .line 920
    invoke-virtual {p0}, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;->unlock()V

    move-object v2, v4

    .end local v1           #entryKey:Ljava/lang/Object;,"TK;"
    .end local v2           #entryValue:Ljava/lang/Object;,"TV;"
    :goto_1
    return-object v2

    .line 913
    .restart local v1       #entryKey:Ljava/lang/Object;,"TK;"
    .restart local v2       #entryValue:Ljava/lang/Object;,"TV;"
    :cond_0
    :try_start_1
    invoke-interface {v3, v0, p3}, Lcom/google/common/collect/CustomConcurrentHashMap$Strategy;->setValue(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 920
    invoke-virtual {p0}, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;->unlock()V

    goto :goto_1

    .line 902
    .end local v2           #entryValue:Ljava/lang/Object;,"TV;"
    :cond_1
    :try_start_2
    invoke-interface {v3, v0}, Lcom/google/common/collect/CustomConcurrentHashMap$Strategy;->getNext(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v0

    goto :goto_0

    .line 920
    .end local v1           #entryKey:Ljava/lang/Object;,"TK;"
    :cond_2
    invoke-virtual {p0}, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;->unlock()V

    move-object v2, v4

    goto :goto_1

    .end local v0           #e:Ljava/lang/Object;,"TE;"
    :catchall_0
    move-exception v4

    invoke-virtual {p0}, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;->unlock()V

    throw v4
.end method

.method replace(Ljava/lang/Object;ILjava/lang/Object;Ljava/lang/Object;)Z
    .locals 6
    .parameter
    .parameter "hash"
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;ITV;TV;)Z"
        }
    .end annotation

    .prologue
    .local p0, this:Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;,"Lcom/google/common/collect/CustomConcurrentHashMap$Impl<TK;TV;TE;>.Segment;"
    .local p1, key:Ljava/lang/Object;,"TK;"
    .local p3, oldValue:Ljava/lang/Object;,"TV;"
    .local p4, newValue:Ljava/lang/Object;,"TV;"
    const/4 v4, 0x0

    .line 871
    iget-object v5, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;->this$0:Lcom/google/common/collect/CustomConcurrentHashMap$Impl;

    iget-object v3, v5, Lcom/google/common/collect/CustomConcurrentHashMap$Impl;->strategy:Lcom/google/common/collect/CustomConcurrentHashMap$Strategy;

    .line 872
    .local v3, s:Lcom/google/common/collect/CustomConcurrentHashMap$Strategy;,"Lcom/google/common/collect/CustomConcurrentHashMap$Strategy<TK;TV;TE;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;->lock()V

    .line 874
    :try_start_0
    invoke-virtual {p0, p2}, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;->getFirst(I)Ljava/lang/Object;

    move-result-object v0

    .local v0, e:Ljava/lang/Object;,"TE;"
    :goto_0
    if-eqz v0, :cond_2

    .line 875
    invoke-interface {v3, v0}, Lcom/google/common/collect/CustomConcurrentHashMap$Strategy;->getKey(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 876
    .local v1, entryKey:Ljava/lang/Object;,"TK;"
    invoke-interface {v3, v0}, Lcom/google/common/collect/CustomConcurrentHashMap$Strategy;->getHash(Ljava/lang/Object;)I

    move-result v5

    if-ne v5, p2, :cond_1

    if-eqz v1, :cond_1

    invoke-interface {v3, p1, v1}, Lcom/google/common/collect/CustomConcurrentHashMap$Strategy;->equalKeys(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 880
    invoke-interface {v3, v0}, Lcom/google/common/collect/CustomConcurrentHashMap$Strategy;->getValue(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 881
    .local v2, entryValue:Ljava/lang/Object;,"TV;"
    if-nez v2, :cond_0

    .line 894
    invoke-virtual {p0}, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;->unlock()V

    .end local v1           #entryKey:Ljava/lang/Object;,"TK;"
    .end local v2           #entryValue:Ljava/lang/Object;,"TV;"
    :goto_1
    return v4

    .line 885
    .restart local v1       #entryKey:Ljava/lang/Object;,"TK;"
    .restart local v2       #entryValue:Ljava/lang/Object;,"TV;"
    :cond_0
    :try_start_1
    invoke-interface {v3, v2, p3}, Lcom/google/common/collect/CustomConcurrentHashMap$Strategy;->equalValues(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 886
    invoke-interface {v3, v0, p4}, Lcom/google/common/collect/CustomConcurrentHashMap$Strategy;->setValue(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 887
    const/4 v4, 0x1

    .line 894
    invoke-virtual {p0}, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;->unlock()V

    goto :goto_1

    .line 874
    .end local v2           #entryValue:Ljava/lang/Object;,"TV;"
    :cond_1
    :try_start_2
    invoke-interface {v3, v0}, Lcom/google/common/collect/CustomConcurrentHashMap$Strategy;->getNext(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v0

    goto :goto_0

    .line 894
    .end local v1           #entryKey:Ljava/lang/Object;,"TK;"
    :cond_2
    invoke-virtual {p0}, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;->unlock()V

    goto :goto_1

    .end local v0           #e:Ljava/lang/Object;,"TE;"
    :catchall_0
    move-exception v4

    invoke-virtual {p0}, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;->unlock()V

    throw v4
.end method

.method setTable(Ljava/util/concurrent/atomic/AtomicReferenceArray;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/atomic/AtomicReferenceArray",
            "<TE;>;)V"
        }
    .end annotation

    .prologue
    .line 777
    .local p0, this:Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;,"Lcom/google/common/collect/CustomConcurrentHashMap$Impl<TK;TV;TE;>.Segment;"
    .local p1, newTable:Ljava/util/concurrent/atomic/AtomicReferenceArray;,"Ljava/util/concurrent/atomic/AtomicReferenceArray<TE;>;"
    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v0

    mul-int/lit8 v0, v0, 0x3

    div-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;->threshold:I

    .line 778
    iput-object p1, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;->table:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 779
    return-void
.end method
