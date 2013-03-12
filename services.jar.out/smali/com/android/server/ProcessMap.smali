.class public Lcom/android/server/ProcessMap;
.super Ljava/lang/Object;
.source "ProcessMap.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field final mMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/util/SparseArray",
            "<TE;>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 23
    .local p0, this:Lcom/android/server/ProcessMap;,"Lcom/android/server/ProcessMap<TE;>;"
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 24
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/ProcessMap;->mMap:Ljava/util/HashMap;

    return-void
.end method


# virtual methods
.method public get(Ljava/lang/String;I)Ljava/lang/Object;
    .locals 2
    .parameter "name"
    .parameter "uid"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)TE;"
        }
    .end annotation

    .prologue
    .line 28
    .local p0, this:Lcom/android/server/ProcessMap;,"Lcom/android/server/ProcessMap<TE;>;"
    iget-object v1, p0, Lcom/android/server/ProcessMap;->mMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/SparseArray;

    .line 29
    .local v0, uids:Landroid/util/SparseArray;,"Landroid/util/SparseArray<TE;>;"
    if-nez v0, :cond_0

    const/4 v1, 0x0

    .line 30
    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    goto :goto_0
.end method

.method public getMap()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/util/SparseArray",
            "<TE;>;>;"
        }
    .end annotation

    .prologue
    .line 54
    .local p0, this:Lcom/android/server/ProcessMap;,"Lcom/android/server/ProcessMap<TE;>;"
    iget-object v0, p0, Lcom/android/server/ProcessMap;->mMap:Ljava/util/HashMap;

    return-object v0
.end method

.method public put(Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .parameter "name"
    .parameter "uid"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "ITE;)TE;"
        }
    .end annotation

    .prologue
    .line 34
    .local p0, this:Lcom/android/server/ProcessMap;,"Lcom/android/server/ProcessMap<TE;>;"
    .local p3, value:Ljava/lang/Object;,"TE;"
    iget-object v1, p0, Lcom/android/server/ProcessMap;->mMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/SparseArray;

    .line 35
    .local v0, uids:Landroid/util/SparseArray;,"Landroid/util/SparseArray<TE;>;"
    if-nez v0, :cond_0

    .line 36
    new-instance v0, Landroid/util/SparseArray;

    .end local v0           #uids:Landroid/util/SparseArray;,"Landroid/util/SparseArray<TE;>;"
    const/4 v1, 0x2

    invoke-direct {v0, v1}, Landroid/util/SparseArray;-><init>(I)V

    .line 37
    .restart local v0       #uids:Landroid/util/SparseArray;,"Landroid/util/SparseArray<TE;>;"
    iget-object v1, p0, Lcom/android/server/ProcessMap;->mMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    :cond_0
    invoke-virtual {v0, p2, p3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 40
    return-object p3
.end method

.method public remove(Ljava/lang/String;I)V
    .locals 2
    .parameter "name"
    .parameter "uid"

    .prologue
    .line 44
    .local p0, this:Lcom/android/server/ProcessMap;,"Lcom/android/server/ProcessMap<TE;>;"
    iget-object v1, p0, Lcom/android/server/ProcessMap;->mMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/SparseArray;

    .line 45
    .local v0, uids:Landroid/util/SparseArray;,"Landroid/util/SparseArray<TE;>;"
    if-eqz v0, :cond_0

    .line 46
    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->remove(I)V

    .line 47
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-nez v1, :cond_0

    .line 48
    iget-object v1, p0, Lcom/android/server/ProcessMap;->mMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    :cond_0
    return-void
.end method
