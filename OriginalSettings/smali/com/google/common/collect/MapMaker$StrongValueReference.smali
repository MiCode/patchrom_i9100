.class Lcom/google/common/collect/MapMaker$StrongValueReference;
.super Ljava/lang/Object;
.source "MapMaker.java"

# interfaces
.implements Lcom/google/common/collect/MapMaker$ValueReference;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/MapMaker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "StrongValueReference"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/google/common/collect/MapMaker$ValueReference",
        "<TK;TV;>;"
    }
.end annotation


# instance fields
.field final referent:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TV;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/Object;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)V"
        }
    .end annotation

    .prologue
    .line 1102
    .local p0, this:Lcom/google/common/collect/MapMaker$StrongValueReference;,"Lcom/google/common/collect/MapMaker$StrongValueReference<TK;TV;>;"
    .local p1, referent:Ljava/lang/Object;,"TV;"
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 1103
    iput-object p1, p0, Lcom/google/common/collect/MapMaker$StrongValueReference;->referent:Ljava/lang/Object;

    .line 1104
    return-void
.end method


# virtual methods
.method public copyFor(Lcom/google/common/collect/MapMaker$ReferenceEntry;)Lcom/google/common/collect/MapMaker$ValueReference;
    .locals 0
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
    .line 1112
    .local p0, this:Lcom/google/common/collect/MapMaker$StrongValueReference;,"Lcom/google/common/collect/MapMaker$StrongValueReference<TK;TV;>;"
    .local p1, entry:Lcom/google/common/collect/MapMaker$ReferenceEntry;,"Lcom/google/common/collect/MapMaker$ReferenceEntry<TK;TV;>;"
    return-object p0
.end method

.method public get()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .prologue
    .line 1107
    .local p0, this:Lcom/google/common/collect/MapMaker$StrongValueReference;,"Lcom/google/common/collect/MapMaker$StrongValueReference<TK;TV;>;"
    iget-object v0, p0, Lcom/google/common/collect/MapMaker$StrongValueReference;->referent:Ljava/lang/Object;

    return-object v0
.end method

.method public waitForValue()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .prologue
    .line 1116
    .local p0, this:Lcom/google/common/collect/MapMaker$StrongValueReference;,"Lcom/google/common/collect/MapMaker$StrongValueReference<TK;TV;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/MapMaker$StrongValueReference;->get()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
