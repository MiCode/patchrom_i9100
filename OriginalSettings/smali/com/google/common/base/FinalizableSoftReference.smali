.class public abstract Lcom/google/common/base/FinalizableSoftReference;
.super Ljava/lang/ref/SoftReference;
.source "FinalizableSoftReference.java"

# interfaces
.implements Lcom/google/common/base/FinalizableReference;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/ref/SoftReference",
        "<TT;>;",
        "Lcom/google/common/base/FinalizableReference;"
    }
.end annotation


# direct methods
.method protected constructor <init>(Ljava/lang/Object;Lcom/google/common/base/FinalizableReferenceQueue;)V
    .locals 1
    .parameter
    .parameter "queue"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lcom/google/common/base/FinalizableReferenceQueue;",
            ")V"
        }
    .end annotation

    .prologue
    .line 40
    .local p0, this:Lcom/google/common/base/FinalizableSoftReference;,"Lcom/google/common/base/FinalizableSoftReference<TT;>;"
    .local p1, referent:Ljava/lang/Object;,"TT;"
    iget-object v0, p2, Lcom/google/common/base/FinalizableReferenceQueue;->queue:Ljava/lang/ref/ReferenceQueue;

    invoke-direct {p0, p1, v0}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;)V

    .line 41
    invoke-virtual {p2}, Lcom/google/common/base/FinalizableReferenceQueue;->cleanUp()V

    .line 42
    return-void
.end method
