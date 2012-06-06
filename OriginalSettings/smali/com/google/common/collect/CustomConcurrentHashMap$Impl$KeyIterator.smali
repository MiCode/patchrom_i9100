.class final Lcom/google/common/collect/CustomConcurrentHashMap$Impl$KeyIterator;
.super Lcom/google/common/collect/CustomConcurrentHashMap$Impl$HashIterator;
.source "CustomConcurrentHashMap.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/CustomConcurrentHashMap$Impl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "KeyIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/CustomConcurrentHashMap$Impl",
        "<TK;TV;TE;>.HashIterator;",
        "Ljava/util/Iterator",
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
    .line 1729
    .local p0, this:Lcom/google/common/collect/CustomConcurrentHashMap$Impl$KeyIterator;,"Lcom/google/common/collect/CustomConcurrentHashMap$Impl<TK;TV;TE;>.KeyIterator;"
    iput-object p1, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$KeyIterator;->this$0:Lcom/google/common/collect/CustomConcurrentHashMap$Impl;

    invoke-direct {p0, p1}, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$HashIterator;-><init>(Lcom/google/common/collect/CustomConcurrentHashMap$Impl;)V

    return-void
.end method


# virtual methods
.method public next()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    .prologue
    .line 1732
    .local p0, this:Lcom/google/common/collect/CustomConcurrentHashMap$Impl$KeyIterator;,"Lcom/google/common/collect/CustomConcurrentHashMap$Impl<TK;TV;TE;>.KeyIterator;"
    invoke-super {p0}, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$HashIterator;->nextEntry()Lcom/google/common/collect/CustomConcurrentHashMap$Impl$WriteThroughEntry;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$WriteThroughEntry;->getKey()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
