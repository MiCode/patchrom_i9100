.class final Landroid/webkit/WebViewDatabaseClassic;
.super Landroid/webkit/WebViewDatabase;
.source "WebViewDatabaseClassic.java"


# static fields
.field private static final CACHE_DATABASE_FILE:Ljava/lang/String; = "webviewCache.db"

.field private static final DATABASE_FILE:Ljava/lang/String; = "webview.db"

.field private static final DATABASE_VERSION:I = 0xb

.field private static final FORMDATA_NAME_COL:Ljava/lang/String; = "name"

.field private static final FORMDATA_URLID_COL:Ljava/lang/String; = "urlid"

.field private static final FORMDATA_VALUE_COL:Ljava/lang/String; = "value"

.field private static final FORMURL_URL_COL:Ljava/lang/String; = "url"

.field private static final HTTPAUTH_HOST_COL:Ljava/lang/String; = "host"

.field private static final HTTPAUTH_PASSWORD_COL:Ljava/lang/String; = "password"

.field private static final HTTPAUTH_REALM_COL:Ljava/lang/String; = "realm"

.field private static final HTTPAUTH_USERNAME_COL:Ljava/lang/String; = "username"

.field private static final ID_COL:Ljava/lang/String; = "_id"

.field private static final ID_PROJECTION:[Ljava/lang/String; = null

.field private static final LOGTAG:Ljava/lang/String; = "WebViewDatabaseClassic"

.field private static final PASSWORD_HOST_COL:Ljava/lang/String; = "host"

.field private static final PASSWORD_PASSWORD_COL:Ljava/lang/String; = "password"

.field private static final PASSWORD_USERNAME_COL:Ljava/lang/String; = "username"

.field private static final TABLE_FORMDATA_ID:I = 0x2

.field private static final TABLE_FORMURL_ID:I = 0x1

.field private static final TABLE_HTTPAUTH_ID:I = 0x3

.field private static final TABLE_PASSWORD_ID:I

.field private static final mTableNames:[Ljava/lang/String;

.field private static sDatabase:Landroid/database/sqlite/SQLiteDatabase;

.field private static sInstance:Landroid/webkit/WebViewDatabaseClassic;


# instance fields
.field private final mFormLock:Ljava/lang/Object;

.field private final mHttpAuthLock:Ljava/lang/Object;

.field private mInitialized:Z

.field private final mPasswordLock:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v0, 0x0

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 54
    sput-object v0, Landroid/webkit/WebViewDatabaseClassic;->sInstance:Landroid/webkit/WebViewDatabaseClassic;

    .line 56
    sput-object v0, Landroid/webkit/WebViewDatabaseClassic;->sDatabase:Landroid/database/sqlite/SQLiteDatabase;

    .line 63
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "password"

    aput-object v1, v0, v3

    const-string v1, "formurl"

    aput-object v1, v0, v4

    const/4 v1, 0x2

    const-string v2, "formdata"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "httpauth"

    aput-object v2, v0, v1

    sput-object v0, Landroid/webkit/WebViewDatabaseClassic;->mTableNames:[Ljava/lang/String;

    .line 76
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    sput-object v0, Landroid/webkit/WebViewDatabaseClassic;->ID_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 102
    invoke-direct {p0}, Landroid/webkit/WebViewDatabase;-><init>()V

    .line 59
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/webkit/WebViewDatabaseClassic;->mPasswordLock:Ljava/lang/Object;

    .line 60
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/webkit/WebViewDatabaseClassic;->mFormLock:Ljava/lang/Object;

    .line 61
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/webkit/WebViewDatabaseClassic;->mHttpAuthLock:Ljava/lang/Object;

    .line 100
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/webkit/WebViewDatabaseClassic;->mInitialized:Z

    .line 103
    new-instance v0, Landroid/webkit/WebViewDatabaseClassic$1;

    invoke-direct {v0, p0, p1}, Landroid/webkit/WebViewDatabaseClassic$1;-><init>(Landroid/webkit/WebViewDatabaseClassic;Landroid/content/Context;)V

    invoke-virtual {v0}, Landroid/webkit/WebViewDatabaseClassic$1;->start()V

    .line 111
    return-void
.end method

.method static synthetic access$000(Landroid/webkit/WebViewDatabaseClassic;Landroid/content/Context;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 35
    invoke-direct {p0, p1}, Landroid/webkit/WebViewDatabaseClassic;->init(Landroid/content/Context;)V

    return-void
.end method

.method private checkInitialized()Z
    .locals 3

    .prologue
    .line 273
    monitor-enter p0

    .line 274
    :goto_0
    :try_start_0
    iget-boolean v1, p0, Landroid/webkit/WebViewDatabaseClassic;->mInitialized:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    .line 276
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 277
    :catch_0
    move-exception v0

    .line 278
    .local v0, e:Ljava/lang/InterruptedException;
    :try_start_2
    const-string v1, "WebViewDatabaseClassic"

    const-string v2, "Caught exception while checking initialization"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 280
    const-string v1, "WebViewDatabaseClassic"

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 283
    .end local v0           #e:Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    :cond_0
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 284
    sget-object v1, Landroid/webkit/WebViewDatabaseClassic;->sDatabase:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    :goto_1
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Landroid/webkit/WebViewDatabaseClassic;
    .locals 2
    .parameter "context"

    .prologue
    .line 114
    const-class v1, Landroid/webkit/WebViewDatabaseClassic;

    monitor-enter v1

    :try_start_0
    sget-object v0, Landroid/webkit/WebViewDatabaseClassic;->sInstance:Landroid/webkit/WebViewDatabaseClassic;

    if-nez v0, :cond_0

    .line 115
    new-instance v0, Landroid/webkit/WebViewDatabaseClassic;

    invoke-direct {v0, p0}, Landroid/webkit/WebViewDatabaseClassic;-><init>(Landroid/content/Context;)V

    sput-object v0, Landroid/webkit/WebViewDatabaseClassic;->sInstance:Landroid/webkit/WebViewDatabaseClassic;

    .line 117
    :cond_0
    sget-object v0, Landroid/webkit/WebViewDatabaseClassic;->sInstance:Landroid/webkit/WebViewDatabaseClassic;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 114
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private hasEntries(I)Z
    .locals 13
    .parameter "tableId"

    .prologue
    const/4 v11, 0x1

    const/4 v12, 0x0

    .line 288
    invoke-direct {p0}, Landroid/webkit/WebViewDatabaseClassic;->checkInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 303
    :goto_0
    return v12

    .line 292
    :cond_0
    const/4 v8, 0x0

    .line 293
    .local v8, cursor:Landroid/database/Cursor;
    const/4 v10, 0x0

    .line 295
    .local v10, ret:Z
    :try_start_0
    sget-object v0, Landroid/webkit/WebViewDatabaseClassic;->sDatabase:Landroid/database/sqlite/SQLiteDatabase;

    sget-object v1, Landroid/webkit/WebViewDatabaseClassic;->mTableNames:[Ljava/lang/String;

    aget-object v1, v1, p1

    sget-object v2, Landroid/webkit/WebViewDatabaseClassic;->ID_PROJECTION:[Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 297
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-ne v0, v11, :cond_2

    move v10, v11

    .line 301
    :goto_1
    if-eqz v8, :cond_1

    :goto_2
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_1
    move v12, v10

    .line 303
    goto :goto_0

    :cond_2
    move v10, v12

    .line 297
    goto :goto_1

    .line 298
    :catch_0
    move-exception v9

    .line 299
    .local v9, e:Ljava/lang/IllegalStateException;
    :try_start_1
    const-string v0, "WebViewDatabaseClassic"

    const-string v1, "hasEntries"

    invoke-static {v0, v1, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 301
    if-eqz v8, :cond_1

    goto :goto_2

    .end local v9           #e:Ljava/lang/IllegalStateException;
    :catchall_0
    move-exception v0

    if-eqz v8, :cond_3

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v0
.end method

.method private declared-synchronized init(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 121
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Landroid/webkit/WebViewDatabaseClassic;->mInitialized:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 133
    :goto_0
    monitor-exit p0

    return-void

    .line 125
    :cond_0
    :try_start_1
    invoke-direct {p0, p1}, Landroid/webkit/WebViewDatabaseClassic;->initDatabase(Landroid/content/Context;)V

    .line 128
    const-string/jumbo v0, "webviewCache.db"

    invoke-virtual {p1, v0}, Landroid/content/Context;->deleteDatabase(Ljava/lang/String;)Z

    .line 131
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/webkit/WebViewDatabaseClassic;->mInitialized:Z

    .line 132
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 121
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private initDatabase(Landroid/content/Context;)V
    .locals 6
    .parameter "context"

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 137
    :try_start_0
    const-string/jumbo v1, "webview.db"

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {p1, v1, v2, v3}, Landroid/content/Context;->openOrCreateDatabase(Ljava/lang/String;ILandroid/database/sqlite/SQLiteDatabase$CursorFactory;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    sput-object v1, Landroid/webkit/WebViewDatabaseClassic;->sDatabase:Landroid/database/sqlite/SQLiteDatabase;
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 148
    :cond_0
    :goto_0
    sget-object v1, Landroid/webkit/WebViewDatabaseClassic;->sDatabase:Landroid/database/sqlite/SQLiteDatabase;

    if-nez v1, :cond_2

    .line 149
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/webkit/WebViewDatabaseClassic;->mInitialized:Z

    .line 150
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    .line 163
    :cond_1
    :goto_1
    return-void

    .line 138
    :catch_0
    move-exception v0

    .line 140
    .local v0, e:Landroid/database/sqlite/SQLiteException;
    const-string/jumbo v1, "webview.db"

    invoke-virtual {p1, v1}, Landroid/content/Context;->deleteDatabase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 141
    const-string/jumbo v1, "webview.db"

    invoke-virtual {p1, v1, v4, v5}, Landroid/content/Context;->openOrCreateDatabase(Ljava/lang/String;ILandroid/database/sqlite/SQLiteDatabase$CursorFactory;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    sput-object v1, Landroid/webkit/WebViewDatabaseClassic;->sDatabase:Landroid/database/sqlite/SQLiteDatabase;

    goto :goto_0

    .line 154
    .end local v0           #e:Landroid/database/sqlite/SQLiteException;
    :cond_2
    sget-object v1, Landroid/webkit/WebViewDatabaseClassic;->sDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->getVersion()I

    move-result v1

    const/16 v2, 0xb

    if-eq v1, v2, :cond_1

    .line 155
    sget-object v1, Landroid/webkit/WebViewDatabaseClassic;->sDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransactionNonExclusive()V

    .line 157
    :try_start_1
    invoke-static {}, Landroid/webkit/WebViewDatabaseClassic;->upgradeDatabase()V

    .line 158
    sget-object v1, Landroid/webkit/WebViewDatabaseClassic;->sDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 160
    sget-object v1, Landroid/webkit/WebViewDatabaseClassic;->sDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto :goto_1

    :catchall_0
    move-exception v1

    sget-object v2, Landroid/webkit/WebViewDatabaseClassic;->sDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v1
.end method

.method private static upgradeDatabase()V
    .locals 2

    .prologue
    .line 166
    invoke-static {}, Landroid/webkit/WebViewDatabaseClassic;->upgradeDatabaseToV10()V

    .line 167
    invoke-static {}, Landroid/webkit/WebViewDatabaseClassic;->upgradeDatabaseFromV10ToV11()V

    .line 170
    sget-object v0, Landroid/webkit/WebViewDatabaseClassic;->sDatabase:Landroid/database/sqlite/SQLiteDatabase;

    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->setVersion(I)V

    .line 171
    return-void
.end method

.method private static upgradeDatabaseFromV10ToV11()V
    .locals 14

    .prologue
    const/4 v13, 0x1

    const/4 v2, 0x0

    .line 174
    sget-object v0, Landroid/webkit/WebViewDatabaseClassic;->sDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->getVersion()I

    move-result v10

    .line 176
    .local v10, oldVersion:I
    const/16 v0, 0xb

    if-lt v10, v0, :cond_0

    .line 200
    :goto_0
    return-void

    .line 183
    :cond_0
    sget-object v0, Landroid/webkit/WebViewDatabaseClassic;->sDatabase:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "DROP TABLE IF EXISTS cookies"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 186
    sget-object v0, Landroid/webkit/WebViewDatabaseClassic;->sDatabase:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "DROP TABLE IF EXISTS cache"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 189
    sget-object v0, Landroid/webkit/WebViewDatabaseClassic;->sDatabase:Landroid/database/sqlite/SQLiteDatabase;

    sget-object v1, Landroid/webkit/WebViewDatabaseClassic;->mTableNames:[Ljava/lang/String;

    aget-object v1, v1, v13

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    move-object v6, v2

    move-object v7, v2

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 191
    .local v8, c:Landroid/database/Cursor;
    :goto_1
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 192
    const-string v0, "_id"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v12

    .line 193
    .local v12, urlId:Ljava/lang/String;
    const-string/jumbo v0, "url"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 194
    .local v11, url:Ljava/lang/String;
    new-instance v9, Landroid/content/ContentValues;

    invoke-direct {v9, v13}, Landroid/content/ContentValues;-><init>(I)V

    .line 195
    .local v9, cv:Landroid/content/ContentValues;
    const-string/jumbo v0, "url"

    invoke-static {v11}, Landroid/webkit/WebTextView;->urlForAutoCompleteData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 196
    sget-object v0, Landroid/webkit/WebViewDatabaseClassic;->sDatabase:Landroid/database/sqlite/SQLiteDatabase;

    sget-object v1, Landroid/webkit/WebViewDatabaseClassic;->mTableNames:[Ljava/lang/String;

    aget-object v1, v1, v13

    const-string v2, "_id=?"

    new-array v3, v13, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v12, v3, v4

    invoke-virtual {v0, v1, v9, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_1

    .line 199
    .end local v9           #cv:Landroid/content/ContentValues;
    .end local v11           #url:Ljava/lang/String;
    .end local v12           #urlId:Ljava/lang/String;
    :cond_1
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto :goto_0
.end method

.method private static upgradeDatabaseToV10()V
    .locals 8

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v4, 0x3

    .line 203
    sget-object v1, Landroid/webkit/WebViewDatabaseClassic;->sDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->getVersion()I

    move-result v0

    .line 205
    .local v0, oldVersion:I
    const/16 v1, 0xa

    if-lt v0, v1, :cond_0

    .line 268
    :goto_0
    return-void

    .line 210
    :cond_0
    if-eqz v0, :cond_1

    .line 211
    const-string v1, "WebViewDatabaseClassic"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Upgrading database from version "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0xb

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", which will destroy old data"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    :cond_1
    const/16 v1, 0x9

    if-ne v1, v0, :cond_2

    .line 217
    sget-object v1, Landroid/webkit/WebViewDatabaseClassic;->sDatabase:Landroid/database/sqlite/SQLiteDatabase;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DROP TABLE IF EXISTS "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Landroid/webkit/WebViewDatabaseClassic;->mTableNames:[Ljava/lang/String;

    aget-object v3, v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 219
    sget-object v1, Landroid/webkit/WebViewDatabaseClassic;->sDatabase:Landroid/database/sqlite/SQLiteDatabase;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CREATE TABLE "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Landroid/webkit/WebViewDatabaseClassic;->mTableNames:[Ljava/lang/String;

    aget-object v3, v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "_id"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " INTEGER PRIMARY KEY, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "host"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " TEXT, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "realm"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " TEXT, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "username"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " TEXT, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "password"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " TEXT,"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " UNIQUE ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "host"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "realm"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") ON CONFLICT REPLACE);"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 229
    :cond_2
    sget-object v1, Landroid/webkit/WebViewDatabaseClassic;->sDatabase:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "DROP TABLE IF EXISTS cookies"

    invoke-virtual {v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 230
    sget-object v1, Landroid/webkit/WebViewDatabaseClassic;->sDatabase:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "DROP TABLE IF EXISTS cache"

    invoke-virtual {v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 231
    sget-object v1, Landroid/webkit/WebViewDatabaseClassic;->sDatabase:Landroid/database/sqlite/SQLiteDatabase;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DROP TABLE IF EXISTS "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Landroid/webkit/WebViewDatabaseClassic;->mTableNames:[Ljava/lang/String;

    aget-object v3, v3, v6

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 233
    sget-object v1, Landroid/webkit/WebViewDatabaseClassic;->sDatabase:Landroid/database/sqlite/SQLiteDatabase;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DROP TABLE IF EXISTS "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Landroid/webkit/WebViewDatabaseClassic;->mTableNames:[Ljava/lang/String;

    aget-object v3, v3, v7

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 235
    sget-object v1, Landroid/webkit/WebViewDatabaseClassic;->sDatabase:Landroid/database/sqlite/SQLiteDatabase;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DROP TABLE IF EXISTS "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Landroid/webkit/WebViewDatabaseClassic;->mTableNames:[Ljava/lang/String;

    aget-object v3, v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 237
    sget-object v1, Landroid/webkit/WebViewDatabaseClassic;->sDatabase:Landroid/database/sqlite/SQLiteDatabase;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DROP TABLE IF EXISTS "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Landroid/webkit/WebViewDatabaseClassic;->mTableNames:[Ljava/lang/String;

    aget-object v3, v3, v5

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 241
    sget-object v1, Landroid/webkit/WebViewDatabaseClassic;->sDatabase:Landroid/database/sqlite/SQLiteDatabase;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CREATE TABLE "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Landroid/webkit/WebViewDatabaseClassic;->mTableNames:[Ljava/lang/String;

    aget-object v3, v3, v6

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "_id"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " INTEGER PRIMARY KEY, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "url"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " TEXT"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ");"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 246
    sget-object v1, Landroid/webkit/WebViewDatabaseClassic;->sDatabase:Landroid/database/sqlite/SQLiteDatabase;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CREATE TABLE "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Landroid/webkit/WebViewDatabaseClassic;->mTableNames:[Ljava/lang/String;

    aget-object v3, v3, v7

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "_id"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " INTEGER PRIMARY KEY, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "urlid"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " INTEGER, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "name"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " TEXT, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "value"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " TEXT,"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " UNIQUE ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "urlid"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "name"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "value"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") ON CONFLICT IGNORE);"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 254
    sget-object v1, Landroid/webkit/WebViewDatabaseClassic;->sDatabase:Landroid/database/sqlite/SQLiteDatabase;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CREATE TABLE "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Landroid/webkit/WebViewDatabaseClassic;->mTableNames:[Ljava/lang/String;

    aget-object v3, v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "_id"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " INTEGER PRIMARY KEY, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "host"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " TEXT, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "realm"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " TEXT, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "username"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " TEXT, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "password"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " TEXT,"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " UNIQUE ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "host"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "realm"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") ON CONFLICT REPLACE);"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 262
    sget-object v1, Landroid/webkit/WebViewDatabaseClassic;->sDatabase:Landroid/database/sqlite/SQLiteDatabase;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CREATE TABLE "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Landroid/webkit/WebViewDatabaseClassic;->mTableNames:[Ljava/lang/String;

    aget-object v3, v3, v5

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "_id"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " INTEGER PRIMARY KEY, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "host"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " TEXT, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "username"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " TEXT, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "password"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " TEXT,"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " UNIQUE ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "host"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "username"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") ON CONFLICT REPLACE);"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    goto/16 :goto_0
.end method


# virtual methods
.method public clearFormData()V
    .locals 5

    .prologue
    .line 615
    invoke-direct {p0}, Landroid/webkit/WebViewDatabaseClassic;->checkInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 623
    :goto_0
    return-void

    .line 619
    :cond_0
    iget-object v1, p0, Landroid/webkit/WebViewDatabaseClassic;->mFormLock:Ljava/lang/Object;

    monitor-enter v1

    .line 620
    :try_start_0
    sget-object v0, Landroid/webkit/WebViewDatabaseClassic;->sDatabase:Landroid/database/sqlite/SQLiteDatabase;

    sget-object v2, Landroid/webkit/WebViewDatabaseClassic;->mTableNames:[Ljava/lang/String;

    const/4 v3, 0x1

    aget-object v2, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 621
    sget-object v0, Landroid/webkit/WebViewDatabaseClassic;->sDatabase:Landroid/database/sqlite/SQLiteDatabase;

    sget-object v2, Landroid/webkit/WebViewDatabaseClassic;->mTableNames:[Ljava/lang/String;

    const/4 v3, 0x2

    aget-object v2, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 622
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public clearHttpAuthUsernamePassword()V
    .locals 5

    .prologue
    .line 485
    invoke-direct {p0}, Landroid/webkit/WebViewDatabaseClassic;->checkInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 492
    :goto_0
    return-void

    .line 489
    :cond_0
    iget-object v1, p0, Landroid/webkit/WebViewDatabaseClassic;->mHttpAuthLock:Ljava/lang/Object;

    monitor-enter v1

    .line 490
    :try_start_0
    sget-object v0, Landroid/webkit/WebViewDatabaseClassic;->sDatabase:Landroid/database/sqlite/SQLiteDatabase;

    sget-object v2, Landroid/webkit/WebViewDatabaseClassic;->mTableNames:[Ljava/lang/String;

    const/4 v3, 0x3

    aget-object v2, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 491
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public clearUsernamePassword()V
    .locals 5

    .prologue
    .line 388
    invoke-direct {p0}, Landroid/webkit/WebViewDatabaseClassic;->checkInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 395
    :goto_0
    return-void

    .line 392
    :cond_0
    iget-object v1, p0, Landroid/webkit/WebViewDatabaseClassic;->mPasswordLock:Ljava/lang/Object;

    monitor-enter v1

    .line 393
    :try_start_0
    sget-object v0, Landroid/webkit/WebViewDatabaseClassic;->sDatabase:Landroid/database/sqlite/SQLiteDatabase;

    sget-object v2, Landroid/webkit/WebViewDatabaseClassic;->mTableNames:[Ljava/lang/String;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 394
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method getFormData(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 19
    .parameter "url"
    .parameter "name"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 554
    new-instance v17, Ljava/util/ArrayList;

    invoke-direct/range {v17 .. v17}, Ljava/util/ArrayList;-><init>()V

    .line 555
    .local v17, values:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    invoke-direct/range {p0 .. p0}, Landroid/webkit/WebViewDatabaseClassic;->checkInitialized()Z

    move-result v1

    if-nez v1, :cond_1

    .line 596
    :cond_0
    :goto_0
    return-object v17

    .line 559
    :cond_1
    const-string v13, "(url == ?)"

    .line 560
    .local v13, urlSelection:Ljava/lang/String;
    const-string v11, "(urlid == ?) AND (name == ?)"

    .line 562
    .local v11, dataSelection:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewDatabaseClassic;->mFormLock:Ljava/lang/Object;

    move-object/from16 v18, v0

    monitor-enter v18

    .line 563
    const/4 v9, 0x0

    .line 565
    .local v9, cursor:Landroid/database/Cursor;
    :try_start_0
    sget-object v1, Landroid/webkit/WebViewDatabaseClassic;->sDatabase:Landroid/database/sqlite/SQLiteDatabase;

    sget-object v2, Landroid/webkit/WebViewDatabaseClassic;->mTableNames:[Ljava/lang/String;

    const/4 v3, 0x1

    aget-object v2, v2, v3

    sget-object v3, Landroid/webkit/WebViewDatabaseClassic;->ID_PROJECTION:[Ljava/lang/String;

    const-string v4, "(url == ?)"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object p1, v5, v6

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v1 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 568
    :cond_2
    :goto_1
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 569
    const-string v1, "_id"

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getLong(I)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v14

    .line 570
    .local v14, urlid:J
    const/4 v10, 0x0

    .line 572
    .local v10, dataCursor:Landroid/database/Cursor;
    :try_start_1
    sget-object v1, Landroid/webkit/WebViewDatabaseClassic;->sDatabase:Landroid/database/sqlite/SQLiteDatabase;

    sget-object v2, Landroid/webkit/WebViewDatabaseClassic;->mTableNames:[Ljava/lang/String;

    const/4 v3, 0x2

    aget-object v2, v2, v3

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "_id"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-string/jumbo v5, "value"

    aput-object v5, v3, v4

    const-string v4, "(urlid == ?) AND (name == ?)"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    invoke-static {v14, v15}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    aput-object p2, v5, v6

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v1 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 578
    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 579
    const-string/jumbo v1, "value"

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v16

    .line 582
    .local v16, valueCol:I
    :cond_3
    move/from16 v0, v16

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, v17

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 583
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v1

    if-nez v1, :cond_3

    .line 588
    .end local v16           #valueCol:I
    :cond_4
    if-eqz v10, :cond_2

    :try_start_2
    invoke-interface {v10}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    .line 591
    .end local v10           #dataCursor:Landroid/database/Cursor;
    .end local v14           #urlid:J
    :catch_0
    move-exception v12

    .line 592
    .local v12, e:Ljava/lang/IllegalStateException;
    :try_start_3
    const-string v1, "WebViewDatabaseClassic"

    const-string v2, "getFormData cursor"

    invoke-static {v1, v2, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 594
    if-eqz v9, :cond_5

    :try_start_4
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 596
    .end local v12           #e:Ljava/lang/IllegalStateException;
    :cond_5
    :goto_2
    monitor-exit v18

    goto/16 :goto_0

    .line 597
    :catchall_0
    move-exception v1

    monitor-exit v18
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v1

    .line 585
    .restart local v10       #dataCursor:Landroid/database/Cursor;
    .restart local v14       #urlid:J
    :catch_1
    move-exception v12

    .line 586
    .restart local v12       #e:Ljava/lang/IllegalStateException;
    :try_start_5
    const-string v1, "WebViewDatabaseClassic"

    const-string v2, "getFormData dataCursor"

    invoke-static {v1, v2, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 588
    if-eqz v10, :cond_2

    :try_start_6
    invoke-interface {v10}, Landroid/database/Cursor;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1
    .catch Ljava/lang/IllegalStateException; {:try_start_6 .. :try_end_6} :catch_0

    goto :goto_1

    .line 594
    .end local v10           #dataCursor:Landroid/database/Cursor;
    .end local v12           #e:Ljava/lang/IllegalStateException;
    .end local v14           #urlid:J
    :catchall_1
    move-exception v1

    if-eqz v9, :cond_6

    :try_start_7
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    :cond_6
    throw v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 588
    .restart local v10       #dataCursor:Landroid/database/Cursor;
    .restart local v14       #urlid:J
    :catchall_2
    move-exception v1

    if-eqz v10, :cond_7

    :try_start_8
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    :cond_7
    throw v1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1
    .catch Ljava/lang/IllegalStateException; {:try_start_8 .. :try_end_8} :catch_0

    .line 594
    .end local v10           #dataCursor:Landroid/database/Cursor;
    .end local v14           #urlid:J
    :cond_8
    if-eqz v9, :cond_5

    :try_start_9
    invoke-interface {v9}, Landroid/database/Cursor;->close()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    goto :goto_2
.end method

.method getHttpAuthUsernamePassword(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;
    .locals 13
    .parameter "host"
    .parameter "realm"

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v1, 0x0

    const/4 v10, 0x0

    .line 438
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    invoke-direct {p0}, Landroid/webkit/WebViewDatabaseClassic;->checkInitialized()Z

    move-result v0

    if-nez v0, :cond_1

    .line 466
    :cond_0
    :goto_0
    return-object v10

    .line 442
    :cond_1
    new-array v2, v4, [Ljava/lang/String;

    const-string/jumbo v0, "username"

    aput-object v0, v2, v1

    const-string/jumbo v0, "password"

    aput-object v0, v2, v3

    .line 445
    .local v2, columns:[Ljava/lang/String;
    const-string v11, "(host == ?) AND (realm == ?)"

    .line 447
    .local v11, selection:Ljava/lang/String;
    iget-object v12, p0, Landroid/webkit/WebViewDatabaseClassic;->mHttpAuthLock:Ljava/lang/Object;

    monitor-enter v12

    .line 448
    const/4 v10, 0x0

    .line 449
    .local v10, ret:[Ljava/lang/String;
    const/4 v8, 0x0

    .line 451
    .local v8, cursor:Landroid/database/Cursor;
    :try_start_0
    sget-object v0, Landroid/webkit/WebViewDatabaseClassic;->sDatabase:Landroid/database/sqlite/SQLiteDatabase;

    sget-object v1, Landroid/webkit/WebViewDatabaseClassic;->mTableNames:[Ljava/lang/String;

    const/4 v3, 0x3

    aget-object v1, v1, v3

    const-string v3, "(host == ?) AND (realm == ?)"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    const/4 v5, 0x1

    aput-object p2, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 454
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 455
    const/4 v0, 0x2

    new-array v10, v0, [Ljava/lang/String;

    .line 456
    const/4 v0, 0x0

    const-string/jumbo v1, "username"

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v10, v0

    .line 458
    const/4 v0, 0x1

    const-string/jumbo v1, "password"

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v10, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 464
    :cond_2
    if-eqz v8, :cond_3

    :try_start_1
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 466
    :cond_3
    :goto_1
    monitor-exit v12

    goto :goto_0

    .line 467
    :catchall_0
    move-exception v0

    monitor-exit v12
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 461
    :catch_0
    move-exception v9

    .line 462
    .local v9, e:Ljava/lang/IllegalStateException;
    :try_start_2
    const-string v0, "WebViewDatabaseClassic"

    const-string v1, "getHttpAuthUsernamePassword"

    invoke-static {v0, v1, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 464
    if-eqz v8, :cond_3

    :try_start_3
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .end local v9           #e:Ljava/lang/IllegalStateException;
    :catchall_1
    move-exception v0

    if-eqz v8, :cond_4

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_4
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
.end method

.method getUsernamePassword(Ljava/lang/String;)[Ljava/lang/String;
    .locals 13
    .parameter "schemePlusHost"

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v10, 0x0

    const/4 v1, 0x0

    .line 342
    if-eqz p1, :cond_0

    invoke-direct {p0}, Landroid/webkit/WebViewDatabaseClassic;->checkInitialized()Z

    move-result v0

    if-nez v0, :cond_1

    .line 369
    :cond_0
    :goto_0
    return-object v10

    .line 346
    :cond_1
    new-array v2, v4, [Ljava/lang/String;

    const-string/jumbo v0, "username"

    aput-object v0, v2, v1

    const-string/jumbo v0, "password"

    aput-object v0, v2, v3

    .line 349
    .local v2, columns:[Ljava/lang/String;
    const-string v11, "(host == ?)"

    .line 350
    .local v11, selection:Ljava/lang/String;
    iget-object v12, p0, Landroid/webkit/WebViewDatabaseClassic;->mPasswordLock:Ljava/lang/Object;

    monitor-enter v12

    .line 351
    const/4 v10, 0x0

    .line 352
    .local v10, ret:[Ljava/lang/String;
    const/4 v8, 0x0

    .line 354
    .local v8, cursor:Landroid/database/Cursor;
    :try_start_0
    sget-object v0, Landroid/webkit/WebViewDatabaseClassic;->sDatabase:Landroid/database/sqlite/SQLiteDatabase;

    sget-object v1, Landroid/webkit/WebViewDatabaseClassic;->mTableNames:[Ljava/lang/String;

    const/4 v3, 0x0

    aget-object v1, v1, v3

    const-string v3, "(host == ?)"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 357
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 358
    const/4 v0, 0x2

    new-array v10, v0, [Ljava/lang/String;

    .line 359
    const/4 v0, 0x0

    const-string/jumbo v1, "username"

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v10, v0

    .line 361
    const/4 v0, 0x1

    const-string/jumbo v1, "password"

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v10, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 367
    :cond_2
    if-eqz v8, :cond_3

    :try_start_1
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 369
    :cond_3
    :goto_1
    monitor-exit v12

    goto :goto_0

    .line 370
    :catchall_0
    move-exception v0

    monitor-exit v12
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 364
    :catch_0
    move-exception v9

    .line 365
    .local v9, e:Ljava/lang/IllegalStateException;
    :try_start_2
    const-string v0, "WebViewDatabaseClassic"

    const-string v1, "getUsernamePassword"

    invoke-static {v0, v1, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 367
    if-eqz v8, :cond_3

    :try_start_3
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .end local v9           #e:Ljava/lang/IllegalStateException;
    :catchall_1
    move-exception v0

    if-eqz v8, :cond_4

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_4
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
.end method

.method public hasFormData()Z
    .locals 2

    .prologue
    .line 605
    iget-object v1, p0, Landroid/webkit/WebViewDatabaseClassic;->mFormLock:Ljava/lang/Object;

    monitor-enter v1

    .line 606
    const/4 v0, 0x1

    :try_start_0
    invoke-direct {p0, v0}, Landroid/webkit/WebViewDatabaseClassic;->hasEntries(I)Z

    move-result v0

    monitor-exit v1

    return v0

    .line 607
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public hasHttpAuthUsernamePassword()Z
    .locals 2

    .prologue
    .line 475
    iget-object v1, p0, Landroid/webkit/WebViewDatabaseClassic;->mHttpAuthLock:Ljava/lang/Object;

    monitor-enter v1

    .line 476
    const/4 v0, 0x3

    :try_start_0
    invoke-direct {p0, v0}, Landroid/webkit/WebViewDatabaseClassic;->hasEntries(I)Z

    move-result v0

    monitor-exit v1

    return v0

    .line 477
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public hasUsernamePassword()Z
    .locals 2

    .prologue
    .line 378
    iget-object v1, p0, Landroid/webkit/WebViewDatabaseClassic;->mPasswordLock:Ljava/lang/Object;

    monitor-enter v1

    .line 379
    const/4 v0, 0x0

    :try_start_0
    invoke-direct {p0, v0}, Landroid/webkit/WebViewDatabaseClassic;->hasEntries(I)Z

    move-result v0

    monitor-exit v1

    return v0

    .line 380
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method setFormData(Ljava/lang/String;Ljava/util/HashMap;)V
    .locals 20
    .parameter "url"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 506
    .local p2, formdata:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    invoke-direct/range {p0 .. p0}, Landroid/webkit/WebViewDatabaseClassic;->checkInitialized()Z

    move-result v1

    if-nez v1, :cond_1

    .line 544
    :cond_0
    :goto_0
    return-void

    .line 510
    :cond_1
    const-string v15, "(url == ?)"

    .line 511
    .local v15, selection:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewDatabaseClassic;->mFormLock:Ljava/lang/Object;

    move-object/from16 v19, v0

    monitor-enter v19

    .line 512
    const-wide/16 v17, -0x1

    .line 513
    .local v17, urlid:J
    const/4 v10, 0x0

    .line 515
    .local v10, cursor:Landroid/database/Cursor;
    :try_start_0
    sget-object v1, Landroid/webkit/WebViewDatabaseClassic;->sDatabase:Landroid/database/sqlite/SQLiteDatabase;

    sget-object v2, Landroid/webkit/WebViewDatabaseClassic;->mTableNames:[Ljava/lang/String;

    const/4 v3, 0x1

    aget-object v2, v2, v3

    sget-object v3, Landroid/webkit/WebViewDatabaseClassic;->ID_PROJECTION:[Ljava/lang/String;

    const-string v4, "(url == ?)"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object p1, v5, v6

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v1 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 518
    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 519
    const-string v1, "_id"

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getLong(I)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v17

    .line 529
    :goto_1
    if-eqz v10, :cond_2

    :try_start_1
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 531
    :cond_2
    :goto_2
    const-wide/16 v1, 0x0

    cmp-long v1, v17, v1

    if-ltz v1, :cond_5

    .line 532
    invoke-virtual/range {p2 .. p2}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v16

    .line 533
    .local v16, set:Ljava/util/Set;,"Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;>;"
    invoke-interface/range {v16 .. v16}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v13

    .line 534
    .local v13, iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;>;"
    new-instance v14, Landroid/content/ContentValues;

    invoke-direct {v14}, Landroid/content/ContentValues;-><init>()V

    .line 535
    .local v14, map:Landroid/content/ContentValues;
    const-string/jumbo v1, "urlid"

    invoke-static/range {v17 .. v18}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v14, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 536
    :goto_3
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 537
    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/util/Map$Entry;

    .line 538
    .local v12, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v2, "name"

    invoke-interface {v12}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v14, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 539
    const-string/jumbo v2, "value"

    invoke-interface {v12}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v14, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 540
    sget-object v1, Landroid/webkit/WebViewDatabaseClassic;->sDatabase:Landroid/database/sqlite/SQLiteDatabase;

    sget-object v2, Landroid/webkit/WebViewDatabaseClassic;->mTableNames:[Ljava/lang/String;

    const/4 v3, 0x2

    aget-object v2, v2, v3

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v14}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    goto :goto_3

    .line 543
    .end local v12           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v13           #iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;>;"
    .end local v14           #map:Landroid/content/ContentValues;
    .end local v16           #set:Ljava/util/Set;,"Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;>;"
    :catchall_0
    move-exception v1

    monitor-exit v19
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 521
    :cond_3
    :try_start_2
    new-instance v9, Landroid/content/ContentValues;

    invoke-direct {v9}, Landroid/content/ContentValues;-><init>()V

    .line 522
    .local v9, c:Landroid/content/ContentValues;
    const-string/jumbo v1, "url"

    move-object/from16 v0, p1

    invoke-virtual {v9, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 523
    sget-object v1, Landroid/webkit/WebViewDatabaseClassic;->sDatabase:Landroid/database/sqlite/SQLiteDatabase;

    sget-object v2, Landroid/webkit/WebViewDatabaseClassic;->mTableNames:[Ljava/lang/String;

    const/4 v3, 0x1

    aget-object v2, v2, v3

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v9}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_0

    move-result-wide v17

    goto :goto_1

    .line 526
    .end local v9           #c:Landroid/content/ContentValues;
    :catch_0
    move-exception v11

    .line 527
    .local v11, e:Ljava/lang/IllegalStateException;
    :try_start_3
    const-string v1, "WebViewDatabaseClassic"

    const-string/jumbo v2, "setFormData"

    invoke-static {v1, v2, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 529
    if-eqz v10, :cond_2

    :try_start_4
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    goto :goto_2

    .end local v11           #e:Ljava/lang/IllegalStateException;
    :catchall_1
    move-exception v1

    if-eqz v10, :cond_4

    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    :cond_4
    throw v1

    .line 543
    :cond_5
    monitor-exit v19
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_0
.end method

.method setHttpAuthUsernamePassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .parameter "host"
    .parameter "realm"
    .parameter "username"
    .parameter "password"

    .prologue
    .line 413
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    invoke-direct {p0}, Landroid/webkit/WebViewDatabaseClassic;->checkInitialized()Z

    move-result v1

    if-nez v1, :cond_1

    .line 426
    :cond_0
    :goto_0
    return-void

    .line 417
    :cond_1
    iget-object v2, p0, Landroid/webkit/WebViewDatabaseClassic;->mHttpAuthLock:Ljava/lang/Object;

    monitor-enter v2

    .line 418
    :try_start_0
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 419
    .local v0, c:Landroid/content/ContentValues;
    const-string v1, "host"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 420
    const-string/jumbo v1, "realm"

    invoke-virtual {v0, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 421
    const-string/jumbo v1, "username"

    invoke-virtual {v0, v1, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 422
    const-string/jumbo v1, "password"

    invoke-virtual {v0, v1, p4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 423
    sget-object v1, Landroid/webkit/WebViewDatabaseClassic;->sDatabase:Landroid/database/sqlite/SQLiteDatabase;

    sget-object v3, Landroid/webkit/WebViewDatabaseClassic;->mTableNames:[Ljava/lang/String;

    const/4 v4, 0x3

    aget-object v3, v3, v4

    const-string v4, "host"

    invoke-virtual {v1, v3, v4, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 425
    monitor-exit v2

    goto :goto_0

    .end local v0           #c:Landroid/content/ContentValues;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method setUsernamePassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .parameter "schemePlusHost"
    .parameter "username"
    .parameter "password"

    .prologue
    .line 320
    if-eqz p1, :cond_0

    invoke-direct {p0}, Landroid/webkit/WebViewDatabaseClassic;->checkInitialized()Z

    move-result v1

    if-nez v1, :cond_1

    .line 332
    :cond_0
    :goto_0
    return-void

    .line 324
    :cond_1
    iget-object v2, p0, Landroid/webkit/WebViewDatabaseClassic;->mPasswordLock:Ljava/lang/Object;

    monitor-enter v2

    .line 325
    :try_start_0
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 326
    .local v0, c:Landroid/content/ContentValues;
    const-string v1, "host"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 327
    const-string/jumbo v1, "username"

    invoke-virtual {v0, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 328
    const-string/jumbo v1, "password"

    invoke-virtual {v0, v1, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 329
    sget-object v1, Landroid/webkit/WebViewDatabaseClassic;->sDatabase:Landroid/database/sqlite/SQLiteDatabase;

    sget-object v3, Landroid/webkit/WebViewDatabaseClassic;->mTableNames:[Ljava/lang/String;

    const/4 v4, 0x0

    aget-object v3, v3, v4

    const-string v4, "host"

    invoke-virtual {v1, v3, v4, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 331
    monitor-exit v2

    goto :goto_0

    .end local v0           #c:Landroid/content/ContentValues;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
