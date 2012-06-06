.class abstract Lcom/google/common/collect/CustomConcurrentHashMap$Impl$HashIterator;
.super Ljava/lang/Object;
.source "CustomConcurrentHashMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/CustomConcurrentHashMap$Impl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x400
    name = "HashIterator"
.end annotation


# instance fields
.field currentTable:Ljava/util/concurrent/atomic/AtomicReferenceArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReferenceArray",
            "<TE;>;"
        }
    .end annotation
.end field

.field lastReturned:Lcom/google/common/collect/CustomConcurrentHashMap$Impl$WriteThroughEntry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/CustomConcurrentHashMap$Impl",
            "<TK;TV;TE;>.WriteThroughEntry;"
        }
    .end annotation
.end field

.field nextEntry:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TE;"
        }
    .end annotation
.end field

.field nextExternal:Lcom/google/common/collect/CustomConcurrentHashMap$Impl$WriteThroughEntry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/CustomConcurrentHashMap$Impl",
            "<TK;TV;TE;>.WriteThroughEntry;"
        }
    .end annotation
.end field

.field nextSegmentIndex:I

.field nextTableIndex:I

.field final synthetic this$0:Lcom/google/common/collect/CustomConcurrentHashMap$Impl;


# direct methods
.method constructor <init>(Lcom/google/common/collect/CustomConcurrentHashMap$Impl;)V
    .locals 1
    .parameter

    .prologue
    .line 1625
    .local p0, this:Lcom/google/common/collect/CustomConcurrentHashMap$Impl$HashIterator;,"Lcom/google/common/collect/CustomConcurrentHashMap$Impl<TK;TV;TE;>.HashIterator;"
    iput-object p1, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$HashIterator;->this$0:Lcom/google/common/collect/CustomConcurrentHashMap$Impl;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 1626
    iget-object v0, p1, Lcom/google/common/collect/CustomConcurrentHashMap$Impl;->segments:[Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$HashIterator;->nextSegmentIndex:I

    .line 1627
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$HashIterator;->nextTableIndex:I

    .line 1628
    invoke-virtual {p0}, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$HashIterator;->advance()V

    .line 1629
    return-void
.end method


# virtual methods
.method final advance()V
    .locals 4

    .prologue
    .line 1636
    .local p0, this:Lcom/google/common/collect/CustomConcurrentHashMap$Impl$HashIterator;,"Lcom/google/common/collect/CustomConcurrentHashMap$Impl<TK;TV;TE;>.HashIterator;"
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$HashIterator;->nextExternal:Lcom/google/common/collect/CustomConcurrentHashMap$Impl$WriteThroughEntry;

    .line 1638
    invoke-virtual {p0}, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$HashIterator;->nextInChain()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1656
    :cond_0
    :goto_0
    return-void

    .line 1642
    :cond_1
    invoke-virtual {p0}, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$HashIterator;->nextInTable()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1646
    :cond_2
    iget v1, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$HashIterator;->nextSegmentIndex:I

    if-ltz v1, :cond_0

    .line 1647
    iget-object v1, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$HashIterator;->this$0:Lcom/google/common/collect/CustomConcurrentHashMap$Impl;

    iget-object v1, v1, Lcom/google/common/collect/CustomConcurrentHashMap$Impl;->segments:[Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;

    iget v2, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$HashIterator;->nextSegmentIndex:I

    add-int/lit8 v3, v2, -0x1

    iput v3, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$HashIterator;->nextSegmentIndex:I

    aget-object v0, v1, v2

    .line 1648
    .local v0, seg:Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;,"Lcom/google/common/collect/CustomConcurrentHashMap$Impl<TK;TV;TE;>.Segment;"
    iget v1, v0, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;->count:I

    if-eqz v1, :cond_2

    .line 1649
    iget-object v1, v0, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;->table:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    iput-object v1, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$HashIterator;->currentTable:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 1650
    iget-object v1, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$HashIterator;->currentTable:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$HashIterator;->nextTableIndex:I

    .line 1651
    invoke-virtual {p0}, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$HashIterator;->nextInTable()Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_0
.end method

.method advanceTo(Ljava/lang/Object;)Z
    .locals 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    .prologue
    .line 1695
    .local p0, this:Lcom/google/common/collect/CustomConcurrentHashMap$Impl$HashIterator;,"Lcom/google/common/collect/CustomConcurrentHashMap$Impl<TK;TV;TE;>.HashIterator;"
    .local p1, entry:Ljava/lang/Object;,"TE;"
    iget-object v3, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$HashIterator;->this$0:Lcom/google/common/collect/CustomConcurrentHashMap$Impl;

    iget-object v1, v3, Lcom/google/common/collect/CustomConcurrentHashMap$Impl;->strategy:Lcom/google/common/collect/CustomConcurrentHashMap$Strategy;

    .line 1696
    .local v1, s:Lcom/google/common/collect/CustomConcurrentHashMap$Strategy;,"Lcom/google/common/collect/CustomConcurrentHashMap$Strategy<TK;TV;TE;>;"
    invoke-interface {v1, p1}, Lcom/google/common/collect/CustomConcurrentHashMap$Strategy;->getKey(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 1697
    .local v0, key:Ljava/lang/Object;,"TK;"
    invoke-interface {v1, p1}, Lcom/google/common/collect/CustomConcurrentHashMap$Strategy;->getValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 1698
    .local v2, value:Ljava/lang/Object;,"TV;"
    if-eqz v0, :cond_0

    if-eqz v2, :cond_0

    .line 1699
    new-instance v3, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$WriteThroughEntry;

    iget-object v4, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$HashIterator;->this$0:Lcom/google/common/collect/CustomConcurrentHashMap$Impl;

    invoke-direct {v3, v4, v0, v2}, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$WriteThroughEntry;-><init>(Lcom/google/common/collect/CustomConcurrentHashMap$Impl;Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object v3, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$HashIterator;->nextExternal:Lcom/google/common/collect/CustomConcurrentHashMap$Impl$WriteThroughEntry;

    .line 1700
    const/4 v3, 0x1

    .line 1703
    :goto_0
    return v3

    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public hasNext()Z
    .locals 1

    .prologue
    .line 1708
    .local p0, this:Lcom/google/common/collect/CustomConcurrentHashMap$Impl$HashIterator;,"Lcom/google/common/collect/CustomConcurrentHashMap$Impl<TK;TV;TE;>.HashIterator;"
    iget-object v0, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$HashIterator;->nextExternal:Lcom/google/common/collect/CustomConcurrentHashMap$Impl$WriteThroughEntry;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method nextEntry()Lcom/google/common/collect/CustomConcurrentHashMap$Impl$WriteThroughEntry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/CustomConcurrentHashMap$Impl",
            "<TK;TV;TE;>.WriteThroughEntry;"
        }
    .end annotation

    .prologue
    .line 1712
    .local p0, this:Lcom/google/common/collect/CustomConcurrentHashMap$Impl$HashIterator;,"Lcom/google/common/collect/CustomConcurrentHashMap$Impl<TK;TV;TE;>.HashIterator;"
    iget-object v0, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$HashIterator;->nextExternal:Lcom/google/common/collect/CustomConcurrentHashMap$Impl$WriteThroughEntry;

    if-nez v0, :cond_0

    .line 1713
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    .line 1715
    :cond_0
    iget-object v0, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$HashIterator;->nextExternal:Lcom/google/common/collect/CustomConcurrentHashMap$Impl$WriteThroughEntry;

    iput-object v0, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$HashIterator;->lastReturned:Lcom/google/common/collect/CustomConcurrentHashMap$Impl$WriteThroughEntry;

    .line 1716
    invoke-virtual {p0}, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$HashIterator;->advance()V

    .line 1717
    iget-object v0, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$HashIterator;->lastReturned:Lcom/google/common/collect/CustomConcurrentHashMap$Impl$WriteThroughEntry;

    return-object v0
.end method

.method nextInChain()Z
    .locals 2

    .prologue
    .line 1663
    .local p0, this:Lcom/google/common/collect/CustomConcurrentHashMap$Impl$HashIterator;,"Lcom/google/common/collect/CustomConcurrentHashMap$Impl<TK;TV;TE;>.HashIterator;"
    iget-object v1, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$HashIterator;->this$0:Lcom/google/common/collect/CustomConcurrentHashMap$Impl;

    iget-object v0, v1, Lcom/google/common/collect/CustomConcurrentHashMap$Impl;->strategy:Lcom/google/common/collect/CustomConcurrentHashMap$Strategy;

    .line 1664
    .local v0, s:Lcom/google/common/collect/CustomConcurrentHashMap$Strategy;,"Lcom/google/common/collect/CustomConcurrentHashMap$Strategy<TK;TV;TE;>;"
    iget-object v1, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$HashIterator;->nextEntry:Ljava/lang/Object;

    if-eqz v1, :cond_1

    .line 1665
    iget-object v1, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$HashIterator;->nextEntry:Ljava/lang/Object;

    invoke-interface {v0, v1}, Lcom/google/common/collect/CustomConcurrentHashMap$Strategy;->getNext(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    iput-object v1, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$HashIterator;->nextEntry:Ljava/lang/Object;

    :goto_0
    iget-object v1, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$HashIterator;->nextEntry:Ljava/lang/Object;

    if-eqz v1, :cond_1

    .line 1667
    iget-object v1, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$HashIterator;->nextEntry:Ljava/lang/Object;

    invoke-virtual {p0, v1}, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$HashIterator;->advanceTo(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1668
    const/4 v1, 0x1

    .line 1672
    :goto_1
    return v1

    .line 1666
    :cond_0
    iget-object v1, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$HashIterator;->nextEntry:Ljava/lang/Object;

    invoke-interface {v0, v1}, Lcom/google/common/collect/CustomConcurrentHashMap$Strategy;->getNext(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    iput-object v1, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$HashIterator;->nextEntry:Ljava/lang/Object;

    goto :goto_0

    .line 1672
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method nextInTable()Z
    .locals 3

    .prologue
    .line 1680
    .local p0, this:Lcom/google/common/collect/CustomConcurrentHashMap$Impl$HashIterator;,"Lcom/google/common/collect/CustomConcurrentHashMap$Impl<TK;TV;TE;>.HashIterator;"
    :cond_0
    iget v0, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$HashIterator;->nextTableIndex:I

    if-ltz v0, :cond_2

    .line 1681
    iget-object v0, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$HashIterator;->currentTable:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    iget v1, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$HashIterator;->nextTableIndex:I

    add-int/lit8 v2, v1, -0x1

    iput v2, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$HashIterator;->nextTableIndex:I

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$HashIterator;->nextEntry:Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 1682
    iget-object v0, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$HashIterator;->nextEntry:Ljava/lang/Object;

    invoke-virtual {p0, v0}, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$HashIterator;->advanceTo(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$HashIterator;->nextInChain()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1683
    :cond_1
    const/4 v0, 0x1

    .line 1687
    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public remove()V
    .locals 2

    .prologue
    .line 1721
    .local p0, this:Lcom/google/common/collect/CustomConcurrentHashMap$Impl$HashIterator;,"Lcom/google/common/collect/CustomConcurrentHashMap$Impl<TK;TV;TE;>.HashIterator;"
    iget-object v0, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$HashIterator;->lastReturned:Lcom/google/common/collect/CustomConcurrentHashMap$Impl$WriteThroughEntry;

    if-nez v0, :cond_0

    .line 1722
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 1724
    :cond_0
    iget-object v0, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$HashIterator;->this$0:Lcom/google/common/collect/CustomConcurrentHashMap$Impl;

    iget-object v1, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$HashIterator;->lastReturned:Lcom/google/common/collect/CustomConcurrentHashMap$Impl$WriteThroughEntry;

    invoke-virtual {v1}, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$WriteThroughEntry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/common/collect/CustomConcurrentHashMap$Impl;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1725
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$HashIterator;->lastReturned:Lcom/google/common/collect/CustomConcurrentHashMap$Impl$WriteThroughEntry;

    .line 1726
    return-void
.end method
