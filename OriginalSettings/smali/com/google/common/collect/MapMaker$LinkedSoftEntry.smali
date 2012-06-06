.class Lcom/google/common/collect/MapMaker$LinkedSoftEntry;
.super Lcom/google/common/collect/MapMaker$SoftEntry;
.source "MapMaker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/MapMaker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "LinkedSoftEntry"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/MapMaker$SoftEntry",
        "<TK;TV;>;"
    }
.end annotation


# instance fields
.field final next:Lcom/google/common/collect/MapMaker$ReferenceEntry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/MapMaker$ReferenceEntry",
            "<TK;TV;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/google/common/collect/CustomConcurrentHashMap$Internals;Ljava/lang/Object;ILcom/google/common/collect/MapMaker$ReferenceEntry;)V
    .locals 0
    .parameter
    .parameter
    .parameter "hash"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/CustomConcurrentHashMap$Internals",
            "<TK;TV;",
            "Lcom/google/common/collect/MapMaker$ReferenceEntry",
            "<TK;TV;>;>;TK;I",
            "Lcom/google/common/collect/MapMaker$ReferenceEntry",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .line 978
    .local p0, this:Lcom/google/common/collect/MapMaker$LinkedSoftEntry;,"Lcom/google/common/collect/MapMaker$LinkedSoftEntry<TK;TV;>;"
    .local p1, internals:Lcom/google/common/collect/CustomConcurrentHashMap$Internals;,"Lcom/google/common/collect/CustomConcurrentHashMap$Internals<TK;TV;Lcom/google/common/collect/MapMaker$ReferenceEntry<TK;TV;>;>;"
    .local p2, key:Ljava/lang/Object;,"TK;"
    .local p4, next:Lcom/google/common/collect/MapMaker$ReferenceEntry;,"Lcom/google/common/collect/MapMaker$ReferenceEntry<TK;TV;>;"
    invoke-direct {p0, p1, p2, p3}, Lcom/google/common/collect/MapMaker$SoftEntry;-><init>(Lcom/google/common/collect/CustomConcurrentHashMap$Internals;Ljava/lang/Object;I)V

    .line 979
    iput-object p4, p0, Lcom/google/common/collect/MapMaker$LinkedSoftEntry;->next:Lcom/google/common/collect/MapMaker$ReferenceEntry;

    .line 980
    return-void
.end method


# virtual methods
.method public getNext()Lcom/google/common/collect/MapMaker$ReferenceEntry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/MapMaker$ReferenceEntry",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 985
    .local p0, this:Lcom/google/common/collect/MapMaker$LinkedSoftEntry;,"Lcom/google/common/collect/MapMaker$LinkedSoftEntry<TK;TV;>;"
    iget-object v0, p0, Lcom/google/common/collect/MapMaker$LinkedSoftEntry;->next:Lcom/google/common/collect/MapMaker$ReferenceEntry;

    return-object v0
.end method
