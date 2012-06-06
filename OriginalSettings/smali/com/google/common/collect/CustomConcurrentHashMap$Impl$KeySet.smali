.class final Lcom/google/common/collect/CustomConcurrentHashMap$Impl$KeySet;
.super Ljava/util/AbstractSet;
.source "CustomConcurrentHashMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/CustomConcurrentHashMap$Impl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "KeySet"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractSet",
        "<TK;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/common/collect/CustomConcurrentHashMap$Impl;


# direct methods
.method constructor <init>(Lcom/google/common/collect/CustomConcurrentHashMap$Impl;)V
    .locals 0
    .parameter

    .prologue
    .line 1790
    .local p0, this:Lcom/google/common/collect/CustomConcurrentHashMap$Impl$KeySet;,"Lcom/google/common/collect/CustomConcurrentHashMap$Impl<TK;TV;TE;>.KeySet;"
    iput-object p1, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$KeySet;->this$0:Lcom/google/common/collect/CustomConcurrentHashMap$Impl;

    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    .line 1813
    .local p0, this:Lcom/google/common/collect/CustomConcurrentHashMap$Impl$KeySet;,"Lcom/google/common/collect/CustomConcurrentHashMap$Impl<TK;TV;TE;>.KeySet;"
    iget-object v0, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$KeySet;->this$0:Lcom/google/common/collect/CustomConcurrentHashMap$Impl;

    invoke-virtual {v0}, Lcom/google/common/collect/CustomConcurrentHashMap$Impl;->clear()V

    .line 1814
    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 1
    .parameter "o"

    .prologue
    .line 1805
    .local p0, this:Lcom/google/common/collect/CustomConcurrentHashMap$Impl$KeySet;,"Lcom/google/common/collect/CustomConcurrentHashMap$Impl<TK;TV;TE;>.KeySet;"
    iget-object v0, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$KeySet;->this$0:Lcom/google/common/collect/CustomConcurrentHashMap$Impl;

    invoke-virtual {v0, p1}, Lcom/google/common/collect/CustomConcurrentHashMap$Impl;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 1801
    .local p0, this:Lcom/google/common/collect/CustomConcurrentHashMap$Impl$KeySet;,"Lcom/google/common/collect/CustomConcurrentHashMap$Impl<TK;TV;TE;>.KeySet;"
    iget-object v0, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$KeySet;->this$0:Lcom/google/common/collect/CustomConcurrentHashMap$Impl;

    invoke-virtual {v0}, Lcom/google/common/collect/CustomConcurrentHashMap$Impl;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<TK;>;"
        }
    .end annotation

    .prologue
    .line 1793
    .local p0, this:Lcom/google/common/collect/CustomConcurrentHashMap$Impl$KeySet;,"Lcom/google/common/collect/CustomConcurrentHashMap$Impl<TK;TV;TE;>.KeySet;"
    new-instance v0, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$KeyIterator;

    iget-object v1, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$KeySet;->this$0:Lcom/google/common/collect/CustomConcurrentHashMap$Impl;

    invoke-direct {v0, v1}, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$KeyIterator;-><init>(Lcom/google/common/collect/CustomConcurrentHashMap$Impl;)V

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 1
    .parameter "o"

    .prologue
    .line 1809
    .local p0, this:Lcom/google/common/collect/CustomConcurrentHashMap$Impl$KeySet;,"Lcom/google/common/collect/CustomConcurrentHashMap$Impl<TK;TV;TE;>.KeySet;"
    iget-object v0, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$KeySet;->this$0:Lcom/google/common/collect/CustomConcurrentHashMap$Impl;

    invoke-virtual {v0, p1}, Lcom/google/common/collect/CustomConcurrentHashMap$Impl;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 1797
    .local p0, this:Lcom/google/common/collect/CustomConcurrentHashMap$Impl$KeySet;,"Lcom/google/common/collect/CustomConcurrentHashMap$Impl<TK;TV;TE;>.KeySet;"
    iget-object v0, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$KeySet;->this$0:Lcom/google/common/collect/CustomConcurrentHashMap$Impl;

    invoke-virtual {v0}, Lcom/google/common/collect/CustomConcurrentHashMap$Impl;->size()I

    move-result v0

    return v0
.end method
