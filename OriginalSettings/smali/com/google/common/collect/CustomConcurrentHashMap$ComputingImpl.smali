.class Lcom/google/common/collect/CustomConcurrentHashMap$ComputingImpl;
.super Lcom/google/common/collect/CustomConcurrentHashMap$Impl;
.source "CustomConcurrentHashMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/CustomConcurrentHashMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ComputingImpl"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        "E:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/CustomConcurrentHashMap$Impl",
        "<TK;TV;TE;>;"
    }
.end annotation


# static fields
.field static final serialVersionUID:J


# instance fields
.field final computer:Lcom/google/common/base/Function;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/base/Function",
            "<-TK;+TV;>;"
        }
    .end annotation
.end field

.field final computingStrategy:Lcom/google/common/collect/CustomConcurrentHashMap$ComputingStrategy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/CustomConcurrentHashMap$ComputingStrategy",
            "<TK;TV;TE;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/google/common/collect/CustomConcurrentHashMap$ComputingStrategy;Lcom/google/common/collect/CustomConcurrentHashMap$Builder;Lcom/google/common/base/Function;)V
    .locals 0
    .parameter
    .parameter "builder"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/CustomConcurrentHashMap$ComputingStrategy",
            "<TK;TV;TE;>;",
            "Lcom/google/common/collect/CustomConcurrentHashMap$Builder;",
            "Lcom/google/common/base/Function",
            "<-TK;+TV;>;)V"
        }
    .end annotation

    .prologue
    .line 1990
    .local p0, this:Lcom/google/common/collect/CustomConcurrentHashMap$ComputingImpl;,"Lcom/google/common/collect/CustomConcurrentHashMap$ComputingImpl<TK;TV;TE;>;"
    .local p1, strategy:Lcom/google/common/collect/CustomConcurrentHashMap$ComputingStrategy;,"Lcom/google/common/collect/CustomConcurrentHashMap$ComputingStrategy<TK;TV;TE;>;"
    .local p3, computer:Lcom/google/common/base/Function;,"Lcom/google/common/base/Function<-TK;+TV;>;"
    invoke-direct {p0, p1, p2}, Lcom/google/common/collect/CustomConcurrentHashMap$Impl;-><init>(Lcom/google/common/collect/CustomConcurrentHashMap$Strategy;Lcom/google/common/collect/CustomConcurrentHashMap$Builder;)V

    .line 1991
    iput-object p1, p0, Lcom/google/common/collect/CustomConcurrentHashMap$ComputingImpl;->computingStrategy:Lcom/google/common/collect/CustomConcurrentHashMap$ComputingStrategy;

    .line 1992
    iput-object p3, p0, Lcom/google/common/collect/CustomConcurrentHashMap$ComputingImpl;->computer:Lcom/google/common/base/Function;

    .line 1993
    return-void
.end method


# virtual methods
.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 17
    .parameter "k"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .prologue
    .line 2006
    .local p0, this:Lcom/google/common/collect/CustomConcurrentHashMap$ComputingImpl;,"Lcom/google/common/collect/CustomConcurrentHashMap$ComputingImpl<TK;TV;TE;>;"
    move-object/from16 v10, p1

    .line 2008
    .local v10, key:Ljava/lang/Object;,"TK;"
    if-nez v10, :cond_0

    .line 2009
    new-instance v15, Ljava/lang/NullPointerException;

    const-string v16, "key"

    invoke-direct/range {v15 .. v16}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v15

    .line 2012
    :cond_0
    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/google/common/collect/CustomConcurrentHashMap$ComputingImpl;->hash(Ljava/lang/Object;)I

    move-result v7

    .line 2013
    .local v7, hash:I
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/google/common/collect/CustomConcurrentHashMap$ComputingImpl;->segmentFor(I)Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;

    move-result-object v11

    .line 2015
    .local v11, segment:Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;,"Lcom/google/common/collect/CustomConcurrentHashMap$Impl<TK;TV;TE;>.Segment;"
    :cond_1
    :goto_0
    invoke-virtual {v11, v10, v7}, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;->getEntry(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v5

    .line 2016
    .local v5, entry:Ljava/lang/Object;,"TE;"
    if-nez v5, :cond_7

    .line 2017
    const/4 v3, 0x0

    .line 2018
    .local v3, created:Z
    invoke-virtual {v11}, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;->lock()V

    .line 2021
    :try_start_0
    invoke-virtual {v11, v10, v7}, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;->getEntry(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v5

    .line 2022
    if-nez v5, :cond_3

    .line 2024
    const/4 v3, 0x1

    .line 2025
    iget v1, v11, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;->count:I

    .line 2026
    .local v1, count:I
    add-int/lit8 v2, v1, 0x1

    .end local v1           #count:I
    .local v2, count:I
    iget v15, v11, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;->threshold:I

    if-le v1, v15, :cond_2

    .line 2027
    invoke-virtual {v11}, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;->expand()V

    .line 2029
    :cond_2
    iget-object v13, v11, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;->table:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 2030
    .local v13, table:Ljava/util/concurrent/atomic/AtomicReferenceArray;,"Ljava/util/concurrent/atomic/AtomicReferenceArray<TE;>;"
    invoke-virtual {v13}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v15

    add-int/lit8 v15, v15, -0x1

    and-int v8, v7, v15

    .line 2031
    .local v8, index:I
    invoke-virtual {v13, v8}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    .line 2032
    .local v6, first:Ljava/lang/Object;,"TE;"
    iget v15, v11, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;->modCount:I

    add-int/lit8 v15, v15, 0x1

    iput v15, v11, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;->modCount:I

    .line 2033
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/common/collect/CustomConcurrentHashMap$ComputingImpl;->computingStrategy:Lcom/google/common/collect/CustomConcurrentHashMap$ComputingStrategy;

    invoke-interface {v15, v10, v7, v6}, Lcom/google/common/collect/CustomConcurrentHashMap$ComputingStrategy;->newEntry(Ljava/lang/Object;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 2034
    invoke-virtual {v13, v8, v5}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    .line 2035
    iput v2, v11, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;->count:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 2038
    .end local v2           #count:I
    .end local v6           #first:Ljava/lang/Object;,"TE;"
    .end local v8           #index:I
    .end local v13           #table:Ljava/util/concurrent/atomic/AtomicReferenceArray;,"Ljava/util/concurrent/atomic/AtomicReferenceArray<TE;>;"
    :cond_3
    invoke-virtual {v11}, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;->unlock()V

    .line 2041
    if-eqz v3, :cond_7

    .line 2043
    const/4 v12, 0x0

    .line 2045
    .local v12, success:Z
    :try_start_1
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/common/collect/CustomConcurrentHashMap$ComputingImpl;->computingStrategy:Lcom/google/common/collect/CustomConcurrentHashMap$ComputingStrategy;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/common/collect/CustomConcurrentHashMap$ComputingImpl;->computer:Lcom/google/common/base/Function;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-interface {v15, v10, v5, v0}, Lcom/google/common/collect/CustomConcurrentHashMap$ComputingStrategy;->compute(Ljava/lang/Object;Ljava/lang/Object;Lcom/google/common/base/Function;)Ljava/lang/Object;

    move-result-object v14

    .line 2046
    .local v14, value:Ljava/lang/Object;,"TV;"
    if-nez v14, :cond_5

    .line 2047
    new-instance v15, Ljava/lang/NullPointerException;

    const-string v16, "compute() returned null unexpectedly"

    invoke-direct/range {v15 .. v16}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v15
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2053
    .end local v14           #value:Ljava/lang/Object;,"TV;"
    :catchall_0
    move-exception v15

    if-nez v12, :cond_4

    .line 2054
    invoke-virtual {v11, v5, v7}, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;->removeEntry(Ljava/lang/Object;I)Z

    :cond_4
    throw v15

    .line 2038
    .end local v12           #success:Z
    :catchall_1
    move-exception v15

    invoke-virtual {v11}, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;->unlock()V

    throw v15

    .line 2050
    .restart local v12       #success:Z
    .restart local v14       #value:Ljava/lang/Object;,"TV;"
    :cond_5
    const/4 v12, 0x1

    .line 2053
    if-nez v12, :cond_6

    .line 2054
    invoke-virtual {v11, v5, v7}, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;->removeEntry(Ljava/lang/Object;I)Z

    .line 2078
    .end local v3           #created:Z
    .end local v12           #success:Z
    :cond_6
    :goto_1
    return-object v14

    .line 2061
    .end local v14           #value:Ljava/lang/Object;,"TV;"
    :cond_7
    const/4 v9, 0x0

    .line 2065
    .local v9, interrupted:Z
    :goto_2
    :try_start_2
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/common/collect/CustomConcurrentHashMap$ComputingImpl;->computingStrategy:Lcom/google/common/collect/CustomConcurrentHashMap$ComputingStrategy;

    invoke-interface {v15, v5}, Lcom/google/common/collect/CustomConcurrentHashMap$ComputingStrategy;->waitForValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    .line 2066
    .restart local v14       #value:Ljava/lang/Object;,"TV;"
    if-nez v14, :cond_8

    .line 2068
    invoke-virtual {v11, v5, v7}, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;->removeEntry(Ljava/lang/Object;I)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0

    .line 2077
    if-eqz v9, :cond_1

    .line 2078
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/Thread;->interrupt()V

    goto/16 :goto_0

    .line 2077
    :cond_8
    if-eqz v9, :cond_6

    .line 2078
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/Thread;->interrupt()V

    goto :goto_1

    .line 2072
    .end local v14           #value:Ljava/lang/Object;,"TV;"
    :catch_0
    move-exception v4

    .line 2073
    .local v4, e:Ljava/lang/InterruptedException;
    const/4 v9, 0x1

    .line 2074
    goto :goto_2

    .line 2077
    .end local v4           #e:Ljava/lang/InterruptedException;
    :catchall_2
    move-exception v15

    if-eqz v9, :cond_9

    .line 2078
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Thread;->interrupt()V

    :cond_9
    throw v15
.end method
