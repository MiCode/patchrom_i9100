.class Lcom/google/common/collect/MapMaker$NullOutputExceptionReference;
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
    name = "NullOutputExceptionReference"
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
.field final message:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0
    .parameter "message"

    .prologue
    .line 801
    .local p0, this:Lcom/google/common/collect/MapMaker$NullOutputExceptionReference;,"Lcom/google/common/collect/MapMaker$NullOutputExceptionReference<TK;TV;>;"
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 802
    iput-object p1, p0, Lcom/google/common/collect/MapMaker$NullOutputExceptionReference;->message:Ljava/lang/String;

    .line 803
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
    .line 809
    .local p0, this:Lcom/google/common/collect/MapMaker$NullOutputExceptionReference;,"Lcom/google/common/collect/MapMaker$NullOutputExceptionReference<TK;TV;>;"
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
    .line 805
    .local p0, this:Lcom/google/common/collect/MapMaker$NullOutputExceptionReference;,"Lcom/google/common/collect/MapMaker$NullOutputExceptionReference<TK;TV;>;"
    const/4 v0, 0x0

    return-object v0
.end method

.method public waitForValue()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .prologue
    .line 812
    .local p0, this:Lcom/google/common/collect/MapMaker$NullOutputExceptionReference;,"Lcom/google/common/collect/MapMaker$NullOutputExceptionReference<TK;TV;>;"
    new-instance v0, Lcom/google/common/collect/NullOutputException;

    iget-object v1, p0, Lcom/google/common/collect/MapMaker$NullOutputExceptionReference;->message:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/google/common/collect/NullOutputException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
