.class Lcom/google/common/collect/MapMaker$WeakValueReference;
.super Lcom/google/common/base/FinalizableWeakReference;
.source "MapMaker.java"

# interfaces
.implements Lcom/google/common/collect/MapMaker$ValueReference;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/MapMaker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "WeakValueReference"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/base/FinalizableWeakReference",
        "<TV;>;",
        "Lcom/google/common/collect/MapMaker$ValueReference",
        "<TK;TV;>;"
    }
.end annotation


# instance fields
.field final entry:Lcom/google/common/collect/MapMaker$ReferenceEntry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/MapMaker$ReferenceEntry",
            "<TK;TV;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/Object;Lcom/google/common/collect/MapMaker$ReferenceEntry;)V
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;",
            "Lcom/google/common/collect/MapMaker$ReferenceEntry",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .line 1054
    .local p0, this:Lcom/google/common/collect/MapMaker$WeakValueReference;,"Lcom/google/common/collect/MapMaker$WeakValueReference<TK;TV;>;"
    .local p1, referent:Ljava/lang/Object;,"TV;"
    .local p2, entry:Lcom/google/common/collect/MapMaker$ReferenceEntry;,"Lcom/google/common/collect/MapMaker$ReferenceEntry<TK;TV;>;"
    sget-object v0, Lcom/google/common/collect/MapMaker$QueueHolder;->queue:Lcom/google/common/base/FinalizableReferenceQueue;

    invoke-direct {p0, p1, v0}, Lcom/google/common/base/FinalizableWeakReference;-><init>(Ljava/lang/Object;Lcom/google/common/base/FinalizableReferenceQueue;)V

    .line 1055
    iput-object p2, p0, Lcom/google/common/collect/MapMaker$WeakValueReference;->entry:Lcom/google/common/collect/MapMaker$ReferenceEntry;

    .line 1056
    return-void
.end method


# virtual methods
.method public copyFor(Lcom/google/common/collect/MapMaker$ReferenceEntry;)Lcom/google/common/collect/MapMaker$ValueReference;
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/MapMaker$ReferenceEntry",
            "<TK;TV;>;)",
            "Lcom/google/common/collect/MapMaker$ValueReference",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 1064
    .local p0, this:Lcom/google/common/collect/MapMaker$WeakValueReference;,"Lcom/google/common/collect/MapMaker$WeakValueReference<TK;TV;>;"
    .local p1, entry:Lcom/google/common/collect/MapMaker$ReferenceEntry;,"Lcom/google/common/collect/MapMaker$ReferenceEntry<TK;TV;>;"
    new-instance v0, Lcom/google/common/collect/MapMaker$WeakValueReference;

    invoke-virtual {p0}, Lcom/google/common/collect/MapMaker$WeakValueReference;->get()Ljava/lang/Object;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/google/common/collect/MapMaker$WeakValueReference;-><init>(Ljava/lang/Object;Lcom/google/common/collect/MapMaker$ReferenceEntry;)V

    return-object v0
.end method

.method public finalizeReferent()V
    .locals 1

    .prologue
    .line 1059
    .local p0, this:Lcom/google/common/collect/MapMaker$WeakValueReference;,"Lcom/google/common/collect/MapMaker$WeakValueReference<TK;TV;>;"
    iget-object v0, p0, Lcom/google/common/collect/MapMaker$WeakValueReference;->entry:Lcom/google/common/collect/MapMaker$ReferenceEntry;

    invoke-interface {v0}, Lcom/google/common/collect/MapMaker$ReferenceEntry;->valueReclaimed()V

    .line 1060
    return-void
.end method

.method public waitForValue()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .prologue
    .line 1068
    .local p0, this:Lcom/google/common/collect/MapMaker$WeakValueReference;,"Lcom/google/common/collect/MapMaker$WeakValueReference<TK;TV;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/MapMaker$WeakValueReference;->get()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
