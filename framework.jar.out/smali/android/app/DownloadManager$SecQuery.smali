.class public Landroid/app/DownloadManager$SecQuery;
.super Ljava/lang/Object;
.source "DownloadManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/DownloadManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SecQuery"
.end annotation


# static fields
.field public static final ORDER_ASCENDING:I = 0x1

.field public static final ORDER_DESCENDING:I = 0x2


# instance fields
.field private mIds:[J

.field private mOrderByColumn:Ljava/lang/String;

.field private mOrderDirection:I

.field private mStatusFlags:Ljava/lang/Integer;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 913
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 926
    iput-object v0, p0, Landroid/app/DownloadManager$SecQuery;->mIds:[J

    .line 927
    iput-object v0, p0, Landroid/app/DownloadManager$SecQuery;->mStatusFlags:Ljava/lang/Integer;

    .line 928
    const-string v0, "lastmod"

    iput-object v0, p0, Landroid/app/DownloadManager$SecQuery;->mOrderByColumn:Ljava/lang/String;

    .line 929
    const/4 v0, 0x2

    iput v0, p0, Landroid/app/DownloadManager$SecQuery;->mOrderDirection:I

    return-void
.end method

.method private joinStrings(Ljava/lang/String;Ljava/lang/Iterable;)Ljava/lang/String;
    .locals 5
    .parameter "joiner"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Iterable",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 1032
    .local p2, parts:Ljava/lang/Iterable;,"Ljava/lang/Iterable<Ljava/lang/String;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1033
    .local v0, builder:Ljava/lang/StringBuilder;
    const/4 v1, 0x1

    .line 1034
    .local v1, first:Z
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 1035
    .local v3, part:Ljava/lang/String;
    if-nez v1, :cond_0

    .line 1036
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1038
    :cond_0
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1039
    const/4 v1, 0x0

    goto :goto_0

    .line 1041
    .end local v3           #part:Ljava/lang/String;
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method private statusClause(Ljava/lang/String;I)Ljava/lang/String;
    .locals 2
    .parameter "operator"
    .parameter "value"

    .prologue
    .line 1045
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "status"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public orderBy(Ljava/lang/String;I)Landroid/app/DownloadManager$SecQuery;
    .locals 3
    .parameter "column"
    .parameter "direction"

    .prologue
    .line 962
    const/4 v0, 0x1

    if-eq p2, v0, :cond_0

    const/4 v0, 0x2

    if-eq p2, v0, :cond_0

    .line 963
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid direction: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 966
    :cond_0
    const-string v0, "last_modified_timestamp"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 967
    const-string v0, "lastmod"

    iput-object v0, p0, Landroid/app/DownloadManager$SecQuery;->mOrderByColumn:Ljava/lang/String;

    .line 973
    :goto_0
    iput p2, p0, Landroid/app/DownloadManager$SecQuery;->mOrderDirection:I

    .line 974
    return-object p0

    .line 968
    :cond_1
    const-string/jumbo v0, "total_size"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 969
    const-string/jumbo v0, "total_bytes"

    iput-object v0, p0, Landroid/app/DownloadManager$SecQuery;->mOrderByColumn:Ljava/lang/String;

    goto :goto_0

    .line 971
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot order by "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method runQuery(Landroid/content/ContentResolver;[Ljava/lang/String;Landroid/net/Uri;)Landroid/database/Cursor;
    .locals 8
    .parameter "resolver"
    .parameter "projection"
    .parameter "baseUri"

    .prologue
    .line 983
    move-object v1, p3

    .line 984
    .local v1, uri:Landroid/net/Uri;
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 985
    .local v7, selectionParts:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const/4 v4, 0x0

    .line 988
    .local v4, selectionArgs:[Ljava/lang/String;
    iget-object v0, p0, Landroid/app/DownloadManager$SecQuery;->mIds:[J

    if-eqz v0, :cond_0

    .line 989
    iget-object v0, p0, Landroid/app/DownloadManager$SecQuery;->mIds:[J

    invoke-static {v0}, Landroid/app/DownloadManager;->getWhereClauseForIds([J)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 990
    iget-object v0, p0, Landroid/app/DownloadManager$SecQuery;->mIds:[J

    invoke-static {v0}, Landroid/app/DownloadManager;->getWhereArgsForIds([J)[Ljava/lang/String;

    move-result-object v4

    .line 1024
    :cond_0
    const-string v0, " AND "

    invoke-direct {p0, v0, v7}, Landroid/app/DownloadManager$SecQuery;->joinStrings(Ljava/lang/String;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v3

    .line 1025
    .local v3, selection:Ljava/lang/String;
    iget v0, p0, Landroid/app/DownloadManager$SecQuery;->mOrderDirection:I

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    const-string v6, "ASC"

    .line 1026
    .local v6, orderDirection:Ljava/lang/String;
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Landroid/app/DownloadManager$SecQuery;->mOrderByColumn:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .local v5, orderBy:Ljava/lang/String;
    move-object v0, p1

    move-object v2, p2

    .line 1028
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0

    .line 1025
    .end local v5           #orderBy:Ljava/lang/String;
    .end local v6           #orderDirection:Ljava/lang/String;
    :cond_1
    const-string v6, "DESC"

    goto :goto_0
.end method

.method public varargs setFilterById([J)Landroid/app/DownloadManager$SecQuery;
    .locals 0
    .parameter "ids"

    .prologue
    .line 936
    iput-object p1, p0, Landroid/app/DownloadManager$SecQuery;->mIds:[J

    .line 937
    return-object p0
.end method

.method public setFilterByStatus(I)Landroid/app/DownloadManager$SecQuery;
    .locals 1
    .parameter "flags"

    .prologue
    .line 946
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Landroid/app/DownloadManager$SecQuery;->mStatusFlags:Ljava/lang/Integer;

    .line 947
    return-object p0
.end method
