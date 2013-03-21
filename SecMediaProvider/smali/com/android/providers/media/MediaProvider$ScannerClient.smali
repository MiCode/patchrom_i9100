.class final Lcom/android/providers/media/MediaProvider$ScannerClient;
.super Ljava/lang/Object;
.source "MediaProvider.java"

# interfaces
.implements Landroid/media/MediaScannerConnection$MediaScannerConnectionClient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/providers/media/MediaProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ScannerClient"
.end annotation


# instance fields
.field mDb:Landroid/database/sqlite/SQLiteDatabase;

.field mPath:Ljava/lang/String;

.field mScannerConnection:Landroid/media/MediaScannerConnection;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V
    .locals 1
    .parameter "context"
    .parameter "db"
    .parameter "path"

    .prologue
    .line 4853
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 4849
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/providers/media/MediaProvider$ScannerClient;->mPath:Ljava/lang/String;

    .line 4854
    iput-object p2, p0, Lcom/android/providers/media/MediaProvider$ScannerClient;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    .line 4855
    iput-object p3, p0, Lcom/android/providers/media/MediaProvider$ScannerClient;->mPath:Ljava/lang/String;

    .line 4856
    new-instance v0, Landroid/media/MediaScannerConnection;

    invoke-direct {v0, p1, p0}, Landroid/media/MediaScannerConnection;-><init>(Landroid/content/Context;Landroid/media/MediaScannerConnection$MediaScannerConnectionClient;)V

    iput-object v0, p0, Lcom/android/providers/media/MediaProvider$ScannerClient;->mScannerConnection:Landroid/media/MediaScannerConnection;

    .line 4857
    iget-object v0, p0, Lcom/android/providers/media/MediaProvider$ScannerClient;->mScannerConnection:Landroid/media/MediaScannerConnection;

    invoke-virtual {v0}, Landroid/media/MediaScannerConnection;->connect()V

    .line 4858
    return-void
.end method


# virtual methods
.method public onMediaScannerConnected()V
    .locals 13

    .prologue
    const/4 v12, 0x0

    const/4 v5, 0x0

    .line 4862
    iget-object v0, p0, Lcom/android/providers/media/MediaProvider$ScannerClient;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "files"

    invoke-static {}, Lcom/android/providers/media/MediaProvider;->access$2300()[Ljava/lang/String;

    move-result-object v2

    const-string v3, "_data like ? AND lower(substr(_data,1,?))=lower(?)"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/android/providers/media/MediaProvider$ScannerClient;->mPath:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/%"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v12

    const/4 v6, 0x1

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, ""

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v11, p0, Lcom/android/providers/media/MediaProvider$ScannerClient;->mPath:Ljava/lang/String;

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v11

    add-int/lit8 v11, v11, 0x1

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v4, v6

    const/4 v6, 0x2

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v11, p0, Lcom/android/providers/media/MediaProvider$ScannerClient;->mPath:Ljava/lang/String;

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v11, "/"

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v4, v6

    move-object v6, v5

    move-object v7, v5

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 4868
    .local v8, c:Landroid/database/Cursor;
    :cond_0
    :goto_0
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4869
    invoke-interface {v8, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 4870
    .local v9, d:Ljava/lang/String;
    new-instance v10, Ljava/io/File;

    invoke-direct {v10, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 4871
    .local v10, f:Ljava/io/File;
    invoke-virtual {v10}, Ljava/io/File;->isFile()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4872
    iget-object v0, p0, Lcom/android/providers/media/MediaProvider$ScannerClient;->mScannerConnection:Landroid/media/MediaScannerConnection;

    invoke-virtual {v0, v9, v5}, Landroid/media/MediaScannerConnection;->scanFile(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 4875
    .end local v9           #d:Ljava/lang/String;
    .end local v10           #f:Ljava/io/File;
    :cond_1
    iget-object v0, p0, Lcom/android/providers/media/MediaProvider$ScannerClient;->mScannerConnection:Landroid/media/MediaScannerConnection;

    invoke-virtual {v0}, Landroid/media/MediaScannerConnection;->disconnect()V

    .line 4876
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 4877
    return-void
.end method

.method public onScanCompleted(Ljava/lang/String;Landroid/net/Uri;)V
    .locals 0
    .parameter "path"
    .parameter "uri"

    .prologue
    .line 4881
    return-void
.end method
