.class public Landroid/media/MediaInserter;
.super Ljava/lang/Object;
.source "MediaInserter.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "MediaScanner_MediaInserter"


# instance fields
.field private mBufferSizePerUri:I

.field private mMediaScanner:Landroid/media/MediaScanner;

.field private mProvider:Landroid/content/IContentProvider;

.field private mRowMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/net/Uri;",
            "Ljava/util/List",
            "<",
            "Landroid/content/ContentValues;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/IContentProvider;ILandroid/media/MediaScanner;)V
    .locals 1
    .parameter "provider"
    .parameter "bufferSizePerUri"
    .parameter "scanner"

    .prologue
    .line 52
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 41
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/media/MediaInserter;->mRowMap:Ljava/util/HashMap;

    .line 53
    iput-object p1, p0, Landroid/media/MediaInserter;->mProvider:Landroid/content/IContentProvider;

    .line 54
    iput p2, p0, Landroid/media/MediaInserter;->mBufferSizePerUri:I

    .line 55
    iput-object p3, p0, Landroid/media/MediaInserter;->mMediaScanner:Landroid/media/MediaScanner;

    .line 56
    return-void
.end method

.method private flush(Landroid/net/Uri;)V
    .locals 5
    .parameter "tableUri"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 78
    iget-object v2, p0, Landroid/media/MediaInserter;->mRowMap:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 79
    .local v0, list:Ljava/util/List;,"Ljava/util/List<Landroid/content/ContentValues;>;"
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    .line 80
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    new-array v1, v2, [Landroid/content/ContentValues;

    .line 81
    .local v1, valuesArray:[Landroid/content/ContentValues;
    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    .end local v1           #valuesArray:[Landroid/content/ContentValues;
    check-cast v1, [Landroid/content/ContentValues;

    .line 83
    .restart local v1       #valuesArray:[Landroid/content/ContentValues;
    iget-object v2, p0, Landroid/media/MediaInserter;->mProvider:Landroid/content/IContentProvider;

    invoke-interface {v2, p1, v1}, Landroid/content/IContentProvider;->bulkInsert(Landroid/net/Uri;[Landroid/content/ContentValues;)I

    .line 84
    const-string v2, "MediaScanner_MediaInserter"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Bulk Insert Flushed. Uri : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", count : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    iget-object v2, p0, Landroid/media/MediaInserter;->mMediaScanner:Landroid/media/MediaScanner;

    if-eqz v2, :cond_0

    iget-object v2, p0, Landroid/media/MediaInserter;->mMediaScanner:Landroid/media/MediaScanner;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, p1, v3}, Landroid/media/MediaScanner;->addFlushedItems(Landroid/net/Uri;I)V

    .line 87
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 89
    .end local v1           #valuesArray:[Landroid/content/ContentValues;
    :cond_1
    return-void
.end method


# virtual methods
.method public flushAll()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 71
    iget-object v2, p0, Landroid/media/MediaInserter;->mRowMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/Uri;

    .line 72
    .local v1, tableUri:Landroid/net/Uri;
    invoke-direct {p0, v1}, Landroid/media/MediaInserter;->flush(Landroid/net/Uri;)V

    goto :goto_0

    .line 74
    .end local v1           #tableUri:Landroid/net/Uri;
    :cond_0
    iget-object v2, p0, Landroid/media/MediaInserter;->mRowMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->clear()V

    .line 75
    return-void
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)V
    .locals 3
    .parameter "tableUri"
    .parameter "values"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 59
    iget-object v1, p0, Landroid/media/MediaInserter;->mRowMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 60
    .local v0, list:Ljava/util/List;,"Ljava/util/List<Landroid/content/ContentValues;>;"
    if-nez v0, :cond_0

    .line 61
    new-instance v0, Ljava/util/ArrayList;

    .end local v0           #list:Ljava/util/List;,"Ljava/util/List<Landroid/content/ContentValues;>;"
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 62
    .restart local v0       #list:Ljava/util/List;,"Ljava/util/List<Landroid/content/ContentValues;>;"
    iget-object v1, p0, Landroid/media/MediaInserter;->mRowMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    :cond_0
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1, p2}, Landroid/content/ContentValues;-><init>(Landroid/content/ContentValues;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 65
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    iget v2, p0, Landroid/media/MediaInserter;->mBufferSizePerUri:I

    if-lt v1, v2, :cond_1

    .line 66
    invoke-direct {p0, p1}, Landroid/media/MediaInserter;->flush(Landroid/net/Uri;)V

    .line 68
    :cond_1
    return-void
.end method
