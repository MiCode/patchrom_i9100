.class public Lcom/sec/android/app/fm/data/RTPTagDBAdapter;
.super Ljava/lang/Object;
.source "RTPTagDBAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/fm/data/RTPTagDBAdapter$DatabaseHelper;
    }
.end annotation


# static fields
.field private static sInstance:Lcom/sec/android/app/fm/data/RTPTagDBAdapter;


# instance fields
.field private mDb:Landroid/database/sqlite/SQLiteDatabase;

.field private mDbHelper:Lcom/sec/android/app/fm/data/RTPTagDBAdapter$DatabaseHelper;

.field musicTagList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/app/fm/ui/RTPTagList;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 63
    const/4 v0, 0x0

    sput-object v0, Lcom/sec/android/app/fm/data/RTPTagDBAdapter;->sInstance:Lcom/sec/android/app/fm/data/RTPTagDBAdapter;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 18
    return-void
.end method

.method private getDBFirstIndex()I
    .locals 12

    .prologue
    const/4 v11, 0x0

    const/4 v10, -0x1

    const/4 v3, 0x0

    .line 213
    const/4 v9, 0x0

    .line 214
    .local v9, index:I
    iget-object v0, p0, Lcom/sec/android/app/fm/data/RTPTagDBAdapter;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "RTPHistory"

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/String;

    const-string v4, "_id"

    aput-object v4, v2, v11

    const/4 v4, 0x1

    const-string v5, "title"

    aput-object v5, v2, v4

    const/4 v4, 0x2

    const-string v5, "album"

    aput-object v5, v2, v4

    const/4 v4, 0x3

    const-string v5, "artist"

    aput-object v5, v2, v4

    const/4 v4, 0x4

    const-string v5, "band"

    aput-object v5, v2, v4

    const-string v7, "_id DESC"

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 217
    .local v8, cursor:Landroid/database/Cursor;
    if-nez v8, :cond_0

    move v0, v10

    .line 226
    :goto_0
    return v0

    .line 219
    :cond_0
    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-nez v0, :cond_1

    .line 220
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    move v0, v10

    .line 221
    goto :goto_0

    .line 223
    :cond_1
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    .line 224
    invoke-interface {v8, v11}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    .line 225
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    move v0, v9

    .line 226
    goto :goto_0
.end method

.method private getDBLastIndex()I
    .locals 12

    .prologue
    const/4 v11, 0x0

    const/4 v10, -0x1

    const/4 v3, 0x0

    .line 230
    const/4 v9, 0x0

    .line 231
    .local v9, index:I
    iget-object v0, p0, Lcom/sec/android/app/fm/data/RTPTagDBAdapter;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "RTPHistory"

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/String;

    const-string v4, "_id"

    aput-object v4, v2, v11

    const/4 v4, 0x1

    const-string v5, "title"

    aput-object v5, v2, v4

    const/4 v4, 0x2

    const-string v5, "album"

    aput-object v5, v2, v4

    const/4 v4, 0x3

    const-string v5, "artist"

    aput-object v5, v2, v4

    const/4 v4, 0x4

    const-string v5, "band"

    aput-object v5, v2, v4

    const-string v7, "_id DESC"

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 234
    .local v8, cursor:Landroid/database/Cursor;
    if-nez v8, :cond_0

    move v0, v10

    .line 243
    :goto_0
    return v0

    .line 236
    :cond_0
    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-nez v0, :cond_1

    .line 237
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    move v0, v10

    .line 238
    goto :goto_0

    .line 240
    :cond_1
    invoke-interface {v8}, Landroid/database/Cursor;->moveToLast()Z

    .line 241
    invoke-interface {v8, v11}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    .line 242
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    move v0, v9

    .line 243
    goto :goto_0
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/sec/android/app/fm/data/RTPTagDBAdapter;
    .locals 2
    .parameter "context"

    .prologue
    .line 66
    const-class v1, Lcom/sec/android/app/fm/data/RTPTagDBAdapter;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/sec/android/app/fm/data/RTPTagDBAdapter;->sInstance:Lcom/sec/android/app/fm/data/RTPTagDBAdapter;

    if-nez v0, :cond_0

    .line 67
    new-instance v0, Lcom/sec/android/app/fm/data/RTPTagDBAdapter;

    invoke-direct {v0}, Lcom/sec/android/app/fm/data/RTPTagDBAdapter;-><init>()V

    sput-object v0, Lcom/sec/android/app/fm/data/RTPTagDBAdapter;->sInstance:Lcom/sec/android/app/fm/data/RTPTagDBAdapter;

    .line 68
    sget-object v0, Lcom/sec/android/app/fm/data/RTPTagDBAdapter;->sInstance:Lcom/sec/android/app/fm/data/RTPTagDBAdapter;

    invoke-direct {v0, p0}, Lcom/sec/android/app/fm/data/RTPTagDBAdapter;->open(Landroid/content/Context;)V

    .line 71
    :cond_0
    sget-object v0, Lcom/sec/android/app/fm/data/RTPTagDBAdapter;->sInstance:Lcom/sec/android/app/fm/data/RTPTagDBAdapter;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 66
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private open(Landroid/content/Context;)V
    .locals 3
    .parameter "context"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/database/SQLException;
        }
    .end annotation

    .prologue
    .line 282
    new-instance v1, Lcom/sec/android/app/fm/data/RTPTagDBAdapter$DatabaseHelper;

    invoke-direct {v1, p1}, Lcom/sec/android/app/fm/data/RTPTagDBAdapter$DatabaseHelper;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/sec/android/app/fm/data/RTPTagDBAdapter;->mDbHelper:Lcom/sec/android/app/fm/data/RTPTagDBAdapter$DatabaseHelper;

    .line 284
    :try_start_0
    iget-object v1, p0, Lcom/sec/android/app/fm/data/RTPTagDBAdapter;->mDbHelper:Lcom/sec/android/app/fm/data/RTPTagDBAdapter$DatabaseHelper;

    invoke-virtual {v1}, Lcom/sec/android/app/fm/data/RTPTagDBAdapter$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/fm/data/RTPTagDBAdapter;->mDb:Landroid/database/sqlite/SQLiteDatabase;
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 289
    :goto_0
    return-void

    .line 285
    :catch_0
    move-exception v0

    .line 286
    .local v0, exception:Landroid/database/sqlite/SQLiteException;
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "open failed"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public append(Lcom/sec/android/app/fm/ui/RTPTagList;)V
    .locals 6
    .parameter "musicTags"

    .prologue
    .line 93
    const/4 v5, 0x1

    invoke-virtual {p1, v5}, Lcom/sec/android/app/fm/ui/RTPTagList;->getTagWithCode(I)Lcom/sec/android/app/fm/ui/RTPTag;

    move-result-object v3

    .line 94
    .local v3, tag:Lcom/sec/android/app/fm/ui/RTPTag;
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Lcom/sec/android/app/fm/ui/RTPTag;->getInfo()Ljava/lang/String;

    move-result-object v4

    .line 96
    .local v4, title:Ljava/lang/String;
    :goto_0
    const/4 v5, 0x2

    invoke-virtual {p1, v5}, Lcom/sec/android/app/fm/ui/RTPTagList;->getTagWithCode(I)Lcom/sec/android/app/fm/ui/RTPTag;

    move-result-object v3

    .line 97
    if-eqz v3, :cond_1

    invoke-virtual {v3}, Lcom/sec/android/app/fm/ui/RTPTag;->getInfo()Ljava/lang/String;

    move-result-object v0

    .line 99
    .local v0, album:Ljava/lang/String;
    :goto_1
    const/4 v5, 0x4

    invoke-virtual {p1, v5}, Lcom/sec/android/app/fm/ui/RTPTagList;->getTagWithCode(I)Lcom/sec/android/app/fm/ui/RTPTag;

    move-result-object v3

    .line 100
    if-eqz v3, :cond_2

    invoke-virtual {v3}, Lcom/sec/android/app/fm/ui/RTPTag;->getInfo()Ljava/lang/String;

    move-result-object v1

    .line 102
    .local v1, artist:Ljava/lang/String;
    :goto_2
    const/16 v5, 0x9

    invoke-virtual {p1, v5}, Lcom/sec/android/app/fm/ui/RTPTagList;->getTagWithCode(I)Lcom/sec/android/app/fm/ui/RTPTag;

    move-result-object v3

    .line 103
    if-eqz v3, :cond_3

    invoke-virtual {v3}, Lcom/sec/android/app/fm/ui/RTPTag;->getInfo()Ljava/lang/String;

    move-result-object v2

    .line 105
    .local v2, band:Ljava/lang/String;
    :goto_3
    invoke-virtual {p0, v4, v0, v1, v2}, Lcom/sec/android/app/fm/data/RTPTagDBAdapter;->append(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    return-void

    .line 94
    .end local v0           #album:Ljava/lang/String;
    .end local v1           #artist:Ljava/lang/String;
    .end local v2           #band:Ljava/lang/String;
    .end local v4           #title:Ljava/lang/String;
    :cond_0
    const-string v4, ""

    goto :goto_0

    .line 97
    .restart local v4       #title:Ljava/lang/String;
    :cond_1
    const-string v0, ""

    goto :goto_1

    .line 100
    .restart local v0       #album:Ljava/lang/String;
    :cond_2
    const-string v1, ""

    goto :goto_2

    .line 103
    .restart local v1       #artist:Ljava/lang/String;
    :cond_3
    const-string v2, ""

    goto :goto_3
.end method

.method public append(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .parameter "title"
    .parameter "album"
    .parameter "artist"
    .parameter "band"

    .prologue
    .line 113
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 114
    .local v1, values:Landroid/content/ContentValues;
    const-string v2, "title"

    invoke-virtual {v1, v2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    const-string v2, "album"

    invoke-virtual {v1, v2, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    const-string v2, "artist"

    invoke-virtual {v1, v2, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    const-string v2, "band"

    invoke-virtual {v1, v2, p4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    iget-object v2, p0, Lcom/sec/android/app/fm/data/RTPTagDBAdapter;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 121
    :try_start_0
    iget-object v2, p0, Lcom/sec/android/app/fm/data/RTPTagDBAdapter;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "RTPHistory"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4, v1}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 122
    iget-object v2, p0, Lcom/sec/android/app/fm/data/RTPTagDBAdapter;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 126
    iget-object v2, p0, Lcom/sec/android/app/fm/data/RTPTagDBAdapter;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 129
    :goto_0
    return-void

    .line 123
    :catch_0
    move-exception v0

    .line 124
    .local v0, anyDbError:Landroid/database/SQLException;
    :try_start_1
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v3, "append failed"

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 126
    iget-object v2, p0, Lcom/sec/android/app/fm/data/RTPTagDBAdapter;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto :goto_0

    .end local v0           #anyDbError:Landroid/database/SQLException;
    :catchall_0
    move-exception v2

    iget-object v3, p0, Lcom/sec/android/app/fm/data/RTPTagDBAdapter;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v2
.end method

.method public count()I
    .locals 10

    .prologue
    const/4 v3, 0x0

    .line 158
    iget-object v0, p0, Lcom/sec/android/app/fm/data/RTPTagDBAdapter;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "RTPHistory"

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "_id"

    aput-object v5, v2, v4

    const/4 v4, 0x1

    const-string v5, "title"

    aput-object v5, v2, v4

    const/4 v4, 0x2

    const-string v5, "album"

    aput-object v5, v2, v4

    const/4 v4, 0x3

    const-string v5, "artist"

    aput-object v5, v2, v4

    const/4 v4, 0x4

    const-string v5, "band"

    aput-object v5, v2, v4

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    move-object v7, v3

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 161
    .local v9, cursor:Landroid/database/Cursor;
    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I

    move-result v8

    .line 163
    .local v8, count:I
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 164
    const/4 v9, 0x0

    .line 166
    return v8
.end method

.method public delete(Lcom/sec/android/app/fm/ui/RTPTagList;)I
    .locals 11
    .parameter "tagList"

    .prologue
    const/4 v10, 0x4

    const/4 v9, 0x3

    const/4 v8, 0x0

    const/4 v7, 0x2

    const/4 v6, 0x1

    .line 170
    const-string v4, "title=? and album=? and artist=? and band=?"

    .line 172
    .local v4, whereClause:Ljava/lang/String;
    new-array v3, v10, [Ljava/lang/String;

    const-string v5, ""

    aput-object v5, v3, v8

    const-string v5, ""

    aput-object v5, v3, v6

    const-string v5, ""

    aput-object v5, v3, v7

    const-string v5, ""

    aput-object v5, v3, v9

    .line 174
    .local v3, whereArgs:[Ljava/lang/String;
    const/4 v1, 0x0

    .line 176
    .local v1, ret:I
    invoke-virtual {p1, v6}, Lcom/sec/android/app/fm/ui/RTPTagList;->getTagWithCode(I)Lcom/sec/android/app/fm/ui/RTPTag;

    move-result-object v2

    .line 177
    .local v2, tag:Lcom/sec/android/app/fm/ui/RTPTag;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/sec/android/app/fm/ui/RTPTag;->getInfo()Ljava/lang/String;

    move-result-object v5

    :goto_0
    aput-object v5, v3, v8

    .line 178
    invoke-virtual {p1, v7}, Lcom/sec/android/app/fm/ui/RTPTagList;->getTagWithCode(I)Lcom/sec/android/app/fm/ui/RTPTag;

    move-result-object v2

    .line 179
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lcom/sec/android/app/fm/ui/RTPTag;->getInfo()Ljava/lang/String;

    move-result-object v5

    :goto_1
    aput-object v5, v3, v6

    .line 180
    invoke-virtual {p1, v10}, Lcom/sec/android/app/fm/ui/RTPTagList;->getTagWithCode(I)Lcom/sec/android/app/fm/ui/RTPTag;

    move-result-object v2

    .line 181
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Lcom/sec/android/app/fm/ui/RTPTag;->getInfo()Ljava/lang/String;

    move-result-object v5

    :goto_2
    aput-object v5, v3, v7

    .line 182
    const/16 v5, 0x9

    invoke-virtual {p1, v5}, Lcom/sec/android/app/fm/ui/RTPTagList;->getTagWithCode(I)Lcom/sec/android/app/fm/ui/RTPTag;

    move-result-object v2

    .line 183
    if-eqz v2, :cond_3

    invoke-virtual {v2}, Lcom/sec/android/app/fm/ui/RTPTag;->getInfo()Ljava/lang/String;

    move-result-object v5

    :goto_3
    aput-object v5, v3, v9

    .line 185
    iget-object v5, p0, Lcom/sec/android/app/fm/data/RTPTagDBAdapter;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 187
    :try_start_0
    iget-object v5, p0, Lcom/sec/android/app/fm/data/RTPTagDBAdapter;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v6, "RTPHistory"

    invoke-virtual {v5, v6, v4, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    .line 188
    iget-object v5, p0, Lcom/sec/android/app/fm/data/RTPTagDBAdapter;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 192
    iget-object v5, p0, Lcom/sec/android/app/fm/data/RTPTagDBAdapter;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 194
    :goto_4
    return v1

    .line 177
    :cond_0
    const-string v5, ""

    goto :goto_0

    .line 179
    :cond_1
    const-string v5, ""

    goto :goto_1

    .line 181
    :cond_2
    const-string v5, ""

    goto :goto_2

    .line 183
    :cond_3
    const-string v5, ""

    goto :goto_3

    .line 189
    :catch_0
    move-exception v0

    .line 190
    .local v0, anyDbError:Landroid/database/SQLException;
    :try_start_1
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v6, "delete failed"

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 192
    iget-object v5, p0, Lcom/sec/android/app/fm/data/RTPTagDBAdapter;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto :goto_4

    .end local v0           #anyDbError:Landroid/database/SQLException;
    :catchall_0
    move-exception v5

    iget-object v6, p0, Lcom/sec/android/app/fm/data/RTPTagDBAdapter;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v6}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v5
.end method

.method public deleteLast()V
    .locals 5

    .prologue
    .line 198
    const-string v2, "_id=?"

    .line 199
    .local v2, whereClause:Ljava/lang/String;
    const/4 v3, 0x1

    new-array v1, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    invoke-direct {p0}, Lcom/sec/android/app/fm/data/RTPTagDBAdapter;->getDBLastIndex()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v3

    .line 201
    .local v1, whereArgs:[Ljava/lang/String;
    iget-object v3, p0, Lcom/sec/android/app/fm/data/RTPTagDBAdapter;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 203
    :try_start_0
    iget-object v3, p0, Lcom/sec/android/app/fm/data/RTPTagDBAdapter;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v4, "RTPHistory"

    invoke-virtual {v3, v4, v2, v1}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 204
    iget-object v3, p0, Lcom/sec/android/app/fm/data/RTPTagDBAdapter;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 208
    iget-object v3, p0, Lcom/sec/android/app/fm/data/RTPTagDBAdapter;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 210
    :goto_0
    return-void

    .line 205
    :catch_0
    move-exception v0

    .line 206
    .local v0, anyDbError:Landroid/database/SQLException;
    :try_start_1
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v4, "delete failed"

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 208
    iget-object v3, p0, Lcom/sec/android/app/fm/data/RTPTagDBAdapter;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto :goto_0

    .end local v0           #anyDbError:Landroid/database/SQLException;
    :catchall_0
    move-exception v3

    iget-object v4, p0, Lcom/sec/android/app/fm/data/RTPTagDBAdapter;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v3
.end method

.method public getMusicTags()Ljava/util/ArrayList;
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/app/fm/ui/RTPTagList;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v14, 0x3

    const/4 v13, 0x4

    const/4 v12, 0x2

    const/4 v11, 0x1

    const/4 v3, 0x0

    .line 247
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/fm/data/RTPTagDBAdapter;->musicTagList:Ljava/util/ArrayList;

    .line 249
    iget-object v0, p0, Lcom/sec/android/app/fm/data/RTPTagDBAdapter;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "RTPHistory"

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "_id"

    aput-object v5, v2, v4

    const-string v4, "title"

    aput-object v4, v2, v11

    const-string v4, "album"

    aput-object v4, v2, v12

    const-string v4, "artist"

    aput-object v4, v2, v14

    const-string v4, "band"

    aput-object v4, v2, v13

    const-string v7, "_id DESC"

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 252
    .local v8, cursor:Landroid/database/Cursor;
    if-nez v8, :cond_0

    .line 274
    :goto_0
    return-object v3

    .line 255
    :cond_0
    const/4 v9, 0x0

    .local v9, i:I
    :goto_1
    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-ge v9, v0, :cond_1

    .line 256
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    .line 257
    new-instance v10, Lcom/sec/android/app/fm/ui/RTPTagList;

    invoke-direct {v10}, Lcom/sec/android/app/fm/ui/RTPTagList;-><init>()V

    .line 259
    .local v10, musicTags:Lcom/sec/android/app/fm/ui/RTPTagList;
    new-instance v0, Lcom/sec/android/app/fm/ui/RTPTag;

    invoke-interface {v8, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v11, v1}, Lcom/sec/android/app/fm/ui/RTPTag;-><init>(ILjava/lang/String;)V

    invoke-virtual {v10, v0}, Lcom/sec/android/app/fm/ui/RTPTagList;->addTag(Lcom/sec/android/app/fm/ui/RTPTag;)Z

    .line 261
    new-instance v0, Lcom/sec/android/app/fm/ui/RTPTag;

    invoke-interface {v8, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v12, v1}, Lcom/sec/android/app/fm/ui/RTPTag;-><init>(ILjava/lang/String;)V

    invoke-virtual {v10, v0}, Lcom/sec/android/app/fm/ui/RTPTagList;->addTag(Lcom/sec/android/app/fm/ui/RTPTag;)Z

    .line 263
    new-instance v0, Lcom/sec/android/app/fm/ui/RTPTag;

    invoke-interface {v8, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v13, v1}, Lcom/sec/android/app/fm/ui/RTPTag;-><init>(ILjava/lang/String;)V

    invoke-virtual {v10, v0}, Lcom/sec/android/app/fm/ui/RTPTagList;->addTag(Lcom/sec/android/app/fm/ui/RTPTag;)Z

    .line 265
    new-instance v0, Lcom/sec/android/app/fm/ui/RTPTag;

    const/16 v1, 0x9

    invoke-interface {v8, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/fm/ui/RTPTag;-><init>(ILjava/lang/String;)V

    invoke-virtual {v10, v0}, Lcom/sec/android/app/fm/ui/RTPTagList;->addTag(Lcom/sec/android/app/fm/ui/RTPTag;)Z

    .line 268
    iget-object v0, p0, Lcom/sec/android/app/fm/data/RTPTagDBAdapter;->musicTagList:Ljava/util/ArrayList;

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 255
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 271
    .end local v10           #musicTags:Lcom/sec/android/app/fm/ui/RTPTagList;
    :cond_1
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 272
    const/4 v8, 0x0

    .line 274
    iget-object v3, p0, Lcom/sec/android/app/fm/data/RTPTagDBAdapter;->musicTagList:Ljava/util/ArrayList;

    goto :goto_0
.end method

.method public updateFirst(Lcom/sec/android/app/fm/ui/RTPTagList;)V
    .locals 13
    .parameter "tagList"

    .prologue
    const/4 v12, 0x1

    const/4 v11, 0x0

    .line 292
    new-instance v7, Landroid/content/ContentValues;

    invoke-direct {v7}, Landroid/content/ContentValues;-><init>()V

    .line 293
    .local v7, values:Landroid/content/ContentValues;
    const-string v9, "_id=?"

    .line 294
    .local v9, whereClause:Ljava/lang/String;
    new-array v8, v12, [Ljava/lang/String;

    const-string v10, ""

    aput-object v10, v8, v11

    .line 295
    .local v8, whereArgs:[Ljava/lang/String;
    invoke-direct {p0}, Lcom/sec/android/app/fm/data/RTPTagDBAdapter;->getDBFirstIndex()I

    move-result v4

    .line 300
    .local v4, firstIndex:I
    if-gez v4, :cond_0

    .line 328
    :goto_0
    return-void

    .line 303
    :cond_0
    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v11

    .line 305
    invoke-virtual {p1, v12}, Lcom/sec/android/app/fm/ui/RTPTagList;->getTagWithCode(I)Lcom/sec/android/app/fm/ui/RTPTag;

    move-result-object v5

    .line 306
    .local v5, tag:Lcom/sec/android/app/fm/ui/RTPTag;
    if-eqz v5, :cond_1

    invoke-virtual {v5}, Lcom/sec/android/app/fm/ui/RTPTag;->getInfo()Ljava/lang/String;

    move-result-object v6

    .line 307
    .local v6, title:Ljava/lang/String;
    :goto_1
    const/4 v10, 0x2

    invoke-virtual {p1, v10}, Lcom/sec/android/app/fm/ui/RTPTagList;->getTagWithCode(I)Lcom/sec/android/app/fm/ui/RTPTag;

    move-result-object v5

    .line 308
    if-eqz v5, :cond_2

    invoke-virtual {v5}, Lcom/sec/android/app/fm/ui/RTPTag;->getInfo()Ljava/lang/String;

    move-result-object v0

    .line 309
    .local v0, album:Ljava/lang/String;
    :goto_2
    const/4 v10, 0x4

    invoke-virtual {p1, v10}, Lcom/sec/android/app/fm/ui/RTPTagList;->getTagWithCode(I)Lcom/sec/android/app/fm/ui/RTPTag;

    move-result-object v5

    .line 310
    if-eqz v5, :cond_3

    invoke-virtual {v5}, Lcom/sec/android/app/fm/ui/RTPTag;->getInfo()Ljava/lang/String;

    move-result-object v2

    .line 311
    .local v2, artist:Ljava/lang/String;
    :goto_3
    const/16 v10, 0x9

    invoke-virtual {p1, v10}, Lcom/sec/android/app/fm/ui/RTPTagList;->getTagWithCode(I)Lcom/sec/android/app/fm/ui/RTPTag;

    move-result-object v5

    .line 312
    if-eqz v5, :cond_4

    invoke-virtual {v5}, Lcom/sec/android/app/fm/ui/RTPTag;->getInfo()Ljava/lang/String;

    move-result-object v3

    .line 314
    .local v3, band:Ljava/lang/String;
    :goto_4
    const-string v10, "title"

    invoke-virtual {v7, v10, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 315
    const-string v10, "album"

    invoke-virtual {v7, v10, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 316
    const-string v10, "artist"

    invoke-virtual {v7, v10, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 317
    const-string v10, "band"

    invoke-virtual {v7, v10, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 319
    iget-object v10, p0, Lcom/sec/android/app/fm/data/RTPTagDBAdapter;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v10}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 321
    :try_start_0
    iget-object v10, p0, Lcom/sec/android/app/fm/data/RTPTagDBAdapter;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v11, "RTPHistory"

    invoke-virtual {v10, v11, v7, v9, v8}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 322
    iget-object v10, p0, Lcom/sec/android/app/fm/data/RTPTagDBAdapter;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v10}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 326
    iget-object v10, p0, Lcom/sec/android/app/fm/data/RTPTagDBAdapter;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v10}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto :goto_0

    .line 306
    .end local v0           #album:Ljava/lang/String;
    .end local v2           #artist:Ljava/lang/String;
    .end local v3           #band:Ljava/lang/String;
    .end local v6           #title:Ljava/lang/String;
    :cond_1
    const-string v6, ""

    goto :goto_1

    .line 308
    .restart local v6       #title:Ljava/lang/String;
    :cond_2
    const-string v0, ""

    goto :goto_2

    .line 310
    .restart local v0       #album:Ljava/lang/String;
    :cond_3
    const-string v2, ""

    goto :goto_3

    .line 312
    .restart local v2       #artist:Ljava/lang/String;
    :cond_4
    const-string v3, ""

    goto :goto_4

    .line 323
    .restart local v3       #band:Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 324
    .local v1, anyDbError:Landroid/database/SQLException;
    :try_start_1
    sget-object v10, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v11, "delete failed"

    invoke-virtual {v10, v11}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 326
    iget-object v10, p0, Lcom/sec/android/app/fm/data/RTPTagDBAdapter;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v10}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto :goto_0

    .end local v1           #anyDbError:Landroid/database/SQLException;
    :catchall_0
    move-exception v10

    iget-object v11, p0, Lcom/sec/android/app/fm/data/RTPTagDBAdapter;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v11}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v10
.end method
