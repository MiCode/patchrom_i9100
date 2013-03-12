.class public Landroid/content/ContentProviderClient;
.super Ljava/lang/Object;
.source "ContentProviderClient.java"


# instance fields
.field private final mContentProvider:Landroid/content/IContentProvider;

.field private final mContentResolver:Landroid/content/ContentResolver;

.field private mReleased:Z

.field private final mStable:Z


# direct methods
.method constructor <init>(Landroid/content/ContentResolver;Landroid/content/IContentProvider;Z)V
    .locals 0
    .parameter "contentResolver"
    .parameter "contentProvider"
    .parameter "stable"

    .prologue
    .line 55
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 56
    iput-object p2, p0, Landroid/content/ContentProviderClient;->mContentProvider:Landroid/content/IContentProvider;

    .line 57
    iput-object p1, p0, Landroid/content/ContentProviderClient;->mContentResolver:Landroid/content/ContentResolver;

    .line 58
    iput-boolean p3, p0, Landroid/content/ContentProviderClient;->mStable:Z

    .line 59
    return-void
.end method


# virtual methods
.method public applyBatch(Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentProviderOperation;",
            ">;)[",
            "Landroid/content/ContentProviderResult;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;,
            Landroid/content/OperationApplicationException;
        }
    .end annotation

    .prologue
    .line 225
    .local p1, operations:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    :try_start_0
    iget-object v1, p0, Landroid/content/ContentProviderClient;->mContentProvider:Landroid/content/IContentProvider;

    invoke-interface {v1, p1}, Landroid/content/IContentProvider;->applyBatch(Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;
    :try_end_0
    .catch Landroid/os/DeadObjectException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 226
    :catch_0
    move-exception v0

    .line 227
    .local v0, e:Landroid/os/DeadObjectException;
    iget-boolean v1, p0, Landroid/content/ContentProviderClient;->mStable:Z

    if-nez v1, :cond_0

    .line 228
    iget-object v1, p0, Landroid/content/ContentProviderClient;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v2, p0, Landroid/content/ContentProviderClient;->mContentProvider:Landroid/content/IContentProvider;

    invoke-virtual {v1, v2}, Landroid/content/ContentResolver;->unstableProviderDied(Landroid/content/IContentProvider;)V

    .line 230
    :cond_0
    throw v0
.end method

.method public bulkInsert(Landroid/net/Uri;[Landroid/content/ContentValues;)I
    .locals 3
    .parameter "url"
    .parameter "initialValues"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 134
    :try_start_0
    iget-object v1, p0, Landroid/content/ContentProviderClient;->mContentProvider:Landroid/content/IContentProvider;

    invoke-interface {v1, p1, p2}, Landroid/content/IContentProvider;->bulkInsert(Landroid/net/Uri;[Landroid/content/ContentValues;)I
    :try_end_0
    .catch Landroid/os/DeadObjectException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 135
    :catch_0
    move-exception v0

    .line 136
    .local v0, e:Landroid/os/DeadObjectException;
    iget-boolean v1, p0, Landroid/content/ContentProviderClient;->mStable:Z

    if-nez v1, :cond_0

    .line 137
    iget-object v1, p0, Landroid/content/ContentProviderClient;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v2, p0, Landroid/content/ContentProviderClient;->mContentProvider:Landroid/content/IContentProvider;

    invoke-virtual {v1, v2}, Landroid/content/ContentResolver;->unstableProviderDied(Landroid/content/IContentProvider;)V

    .line 139
    :cond_0
    throw v0
.end method

.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 3
    .parameter "url"
    .parameter "selection"
    .parameter "selectionArgs"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 147
    :try_start_0
    iget-object v1, p0, Landroid/content/ContentProviderClient;->mContentProvider:Landroid/content/IContentProvider;

    invoke-interface {v1, p1, p2, p3}, Landroid/content/IContentProvider;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/DeadObjectException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 148
    :catch_0
    move-exception v0

    .line 149
    .local v0, e:Landroid/os/DeadObjectException;
    iget-boolean v1, p0, Landroid/content/ContentProviderClient;->mStable:Z

    if-nez v1, :cond_0

    .line 150
    iget-object v1, p0, Landroid/content/ContentProviderClient;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v2, p0, Landroid/content/ContentProviderClient;->mContentProvider:Landroid/content/IContentProvider;

    invoke-virtual {v1, v2}, Landroid/content/ContentResolver;->unstableProviderDied(Landroid/content/IContentProvider;)V

    .line 152
    :cond_0
    throw v0
.end method

.method public getLocalContentProvider()Landroid/content/ContentProvider;
    .locals 1

    .prologue
    .line 263
    iget-object v0, p0, Landroid/content/ContentProviderClient;->mContentProvider:Landroid/content/IContentProvider;

    invoke-static {v0}, Landroid/content/ContentProvider;->coerceToLocalContentProvider(Landroid/content/IContentProvider;)Landroid/content/ContentProvider;

    move-result-object v0

    return-object v0
.end method

.method public getStreamTypes(Landroid/net/Uri;Ljava/lang/String;)[Ljava/lang/String;
    .locals 3
    .parameter "url"
    .parameter "mimeTypeFilter"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 109
    :try_start_0
    iget-object v1, p0, Landroid/content/ContentProviderClient;->mContentProvider:Landroid/content/IContentProvider;

    invoke-interface {v1, p1, p2}, Landroid/content/IContentProvider;->getStreamTypes(Landroid/net/Uri;Ljava/lang/String;)[Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/DeadObjectException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 110
    :catch_0
    move-exception v0

    .line 111
    .local v0, e:Landroid/os/DeadObjectException;
    iget-boolean v1, p0, Landroid/content/ContentProviderClient;->mStable:Z

    if-nez v1, :cond_0

    .line 112
    iget-object v1, p0, Landroid/content/ContentProviderClient;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v2, p0, Landroid/content/ContentProviderClient;->mContentProvider:Landroid/content/IContentProvider;

    invoke-virtual {v1, v2}, Landroid/content/ContentResolver;->unstableProviderDied(Landroid/content/IContentProvider;)V

    .line 114
    :cond_0
    throw v0
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 3
    .parameter "url"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 97
    :try_start_0
    iget-object v1, p0, Landroid/content/ContentProviderClient;->mContentProvider:Landroid/content/IContentProvider;

    invoke-interface {v1, p1}, Landroid/content/IContentProvider;->getType(Landroid/net/Uri;)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/DeadObjectException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 98
    :catch_0
    move-exception v0

    .line 99
    .local v0, e:Landroid/os/DeadObjectException;
    iget-boolean v1, p0, Landroid/content/ContentProviderClient;->mStable:Z

    if-nez v1, :cond_0

    .line 100
    iget-object v1, p0, Landroid/content/ContentProviderClient;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v2, p0, Landroid/content/ContentProviderClient;->mContentProvider:Landroid/content/IContentProvider;

    invoke-virtual {v1, v2}, Landroid/content/ContentResolver;->unstableProviderDied(Landroid/content/IContentProvider;)V

    .line 102
    :cond_0
    throw v0
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 3
    .parameter "url"
    .parameter "initialValues"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 122
    :try_start_0
    iget-object v1, p0, Landroid/content/ContentProviderClient;->mContentProvider:Landroid/content/IContentProvider;

    invoke-interface {v1, p1, p2}, Landroid/content/IContentProvider;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_0
    .catch Landroid/os/DeadObjectException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 123
    :catch_0
    move-exception v0

    .line 124
    .local v0, e:Landroid/os/DeadObjectException;
    iget-boolean v1, p0, Landroid/content/ContentProviderClient;->mStable:Z

    if-nez v1, :cond_0

    .line 125
    iget-object v1, p0, Landroid/content/ContentProviderClient;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v2, p0, Landroid/content/ContentProviderClient;->mContentProvider:Landroid/content/IContentProvider;

    invoke-virtual {v1, v2}, Landroid/content/ContentResolver;->unstableProviderDied(Landroid/content/IContentProvider;)V

    .line 127
    :cond_0
    throw v0
.end method

.method public openAssetFile(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;
    .locals 3
    .parameter "url"
    .parameter "mode"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;,
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 198
    :try_start_0
    iget-object v1, p0, Landroid/content/ContentProviderClient;->mContentProvider:Landroid/content/IContentProvider;

    invoke-interface {v1, p1, p2}, Landroid/content/IContentProvider;->openAssetFile(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;
    :try_end_0
    .catch Landroid/os/DeadObjectException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 199
    :catch_0
    move-exception v0

    .line 200
    .local v0, e:Landroid/os/DeadObjectException;
    iget-boolean v1, p0, Landroid/content/ContentProviderClient;->mStable:Z

    if-nez v1, :cond_0

    .line 201
    iget-object v1, p0, Landroid/content/ContentProviderClient;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v2, p0, Landroid/content/ContentProviderClient;->mContentProvider:Landroid/content/IContentProvider;

    invoke-virtual {v1, v2}, Landroid/content/ContentResolver;->unstableProviderDied(Landroid/content/IContentProvider;)V

    .line 203
    :cond_0
    throw v0
.end method

.method public openFile(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;
    .locals 3
    .parameter "url"
    .parameter "mode"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;,
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 179
    :try_start_0
    iget-object v1, p0, Landroid/content/ContentProviderClient;->mContentProvider:Landroid/content/IContentProvider;

    invoke-interface {v1, p1, p2}, Landroid/content/IContentProvider;->openFile(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;
    :try_end_0
    .catch Landroid/os/DeadObjectException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 180
    :catch_0
    move-exception v0

    .line 181
    .local v0, e:Landroid/os/DeadObjectException;
    iget-boolean v1, p0, Landroid/content/ContentProviderClient;->mStable:Z

    if-nez v1, :cond_0

    .line 182
    iget-object v1, p0, Landroid/content/ContentProviderClient;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v2, p0, Landroid/content/ContentProviderClient;->mContentProvider:Landroid/content/IContentProvider;

    invoke-virtual {v1, v2}, Landroid/content/ContentResolver;->unstableProviderDied(Landroid/content/IContentProvider;)V

    .line 184
    :cond_0
    throw v0
.end method

.method public final openTypedAssetFileDescriptor(Landroid/net/Uri;Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/res/AssetFileDescriptor;
    .locals 3
    .parameter "uri"
    .parameter "mimeType"
    .parameter "opts"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;,
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 212
    :try_start_0
    iget-object v1, p0, Landroid/content/ContentProviderClient;->mContentProvider:Landroid/content/IContentProvider;

    invoke-interface {v1, p1, p2, p3}, Landroid/content/IContentProvider;->openTypedAssetFile(Landroid/net/Uri;Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/res/AssetFileDescriptor;
    :try_end_0
    .catch Landroid/os/DeadObjectException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 213
    :catch_0
    move-exception v0

    .line 214
    .local v0, e:Landroid/os/DeadObjectException;
    iget-boolean v1, p0, Landroid/content/ContentProviderClient;->mStable:Z

    if-nez v1, :cond_0

    .line 215
    iget-object v1, p0, Landroid/content/ContentProviderClient;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v2, p0, Landroid/content/ContentProviderClient;->mContentProvider:Landroid/content/IContentProvider;

    invoke-virtual {v1, v2}, Landroid/content/ContentResolver;->unstableProviderDied(Landroid/content/IContentProvider;)V

    .line 217
    :cond_0
    throw v0
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 8
    .parameter "url"
    .parameter "projection"
    .parameter "selection"
    .parameter "selectionArgs"
    .parameter "sortOrder"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 65
    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    :try_start_0
    invoke-virtual/range {v0 .. v6}, Landroid/content/ContentProviderClient;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/database/Cursor;
    :try_end_0
    .catch Landroid/os/DeadObjectException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    .line 66
    :catch_0
    move-exception v7

    .line 67
    .local v7, e:Landroid/os/DeadObjectException;
    iget-boolean v0, p0, Landroid/content/ContentProviderClient;->mStable:Z

    if-nez v0, :cond_0

    .line 68
    iget-object v0, p0, Landroid/content/ContentProviderClient;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Landroid/content/ContentProviderClient;->mContentProvider:Landroid/content/IContentProvider;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unstableProviderDied(Landroid/content/IContentProvider;)V

    .line 70
    :cond_0
    throw v7
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/database/Cursor;
    .locals 8
    .parameter "url"
    .parameter "projection"
    .parameter "selection"
    .parameter "selectionArgs"
    .parameter "sortOrder"
    .parameter "cancellationSignal"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 78
    const/4 v6, 0x0

    .line 79
    .local v6, remoteCancellationSignal:Landroid/os/ICancellationSignal;
    if-eqz p6, :cond_0

    .line 80
    iget-object v0, p0, Landroid/content/ContentProviderClient;->mContentProvider:Landroid/content/IContentProvider;

    invoke-interface {v0}, Landroid/content/IContentProvider;->createCancellationSignal()Landroid/os/ICancellationSignal;

    move-result-object v6

    .line 81
    invoke-virtual {p6, v6}, Landroid/os/CancellationSignal;->setRemote(Landroid/os/ICancellationSignal;)V

    .line 84
    :cond_0
    :try_start_0
    iget-object v0, p0, Landroid/content/ContentProviderClient;->mContentProvider:Landroid/content/IContentProvider;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-interface/range {v0 .. v6}, Landroid/content/IContentProvider;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/ICancellationSignal;)Landroid/database/Cursor;
    :try_end_0
    .catch Landroid/os/DeadObjectException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    .line 86
    :catch_0
    move-exception v7

    .line 87
    .local v7, e:Landroid/os/DeadObjectException;
    iget-boolean v0, p0, Landroid/content/ContentProviderClient;->mStable:Z

    if-nez v0, :cond_1

    .line 88
    iget-object v0, p0, Landroid/content/ContentProviderClient;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Landroid/content/ContentProviderClient;->mContentProvider:Landroid/content/IContentProvider;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unstableProviderDied(Landroid/content/IContentProvider;)V

    .line 90
    :cond_1
    throw v7
.end method

.method public release()Z
    .locals 2

    .prologue
    .line 240
    monitor-enter p0

    .line 241
    :try_start_0
    iget-boolean v0, p0, Landroid/content/ContentProviderClient;->mReleased:Z

    if-eqz v0, :cond_0

    .line 242
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Already released"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 250
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 244
    :cond_0
    const/4 v0, 0x1

    :try_start_1
    iput-boolean v0, p0, Landroid/content/ContentProviderClient;->mReleased:Z

    .line 245
    iget-boolean v0, p0, Landroid/content/ContentProviderClient;->mStable:Z

    if-eqz v0, :cond_1

    .line 246
    iget-object v0, p0, Landroid/content/ContentProviderClient;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Landroid/content/ContentProviderClient;->mContentProvider:Landroid/content/IContentProvider;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->releaseProvider(Landroid/content/IContentProvider;)Z

    move-result v0

    monitor-exit p0

    .line 248
    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Landroid/content/ContentProviderClient;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Landroid/content/ContentProviderClient;->mContentProvider:Landroid/content/IContentProvider;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->releaseUnstableProvider(Landroid/content/IContentProvider;)Z

    move-result v0

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 3
    .parameter "url"
    .parameter "values"
    .parameter "selection"
    .parameter "selectionArgs"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 160
    :try_start_0
    iget-object v1, p0, Landroid/content/ContentProviderClient;->mContentProvider:Landroid/content/IContentProvider;

    invoke-interface {v1, p1, p2, p3, p4}, Landroid/content/IContentProvider;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/DeadObjectException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 161
    :catch_0
    move-exception v0

    .line 162
    .local v0, e:Landroid/os/DeadObjectException;
    iget-boolean v1, p0, Landroid/content/ContentProviderClient;->mStable:Z

    if-nez v1, :cond_0

    .line 163
    iget-object v1, p0, Landroid/content/ContentProviderClient;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v2, p0, Landroid/content/ContentProviderClient;->mContentProvider:Landroid/content/IContentProvider;

    invoke-virtual {v1, v2}, Landroid/content/ContentResolver;->unstableProviderDied(Landroid/content/IContentProvider;)V

    .line 165
    :cond_0
    throw v0
.end method
