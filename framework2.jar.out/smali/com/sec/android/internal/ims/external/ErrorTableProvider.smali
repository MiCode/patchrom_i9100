.class public Lcom/sec/android/internal/ims/external/ErrorTableProvider;
.super Landroid/content/ContentProvider;
.source "ErrorTableProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/internal/ims/external/ErrorTableProvider$DatabaseHelper;
    }
.end annotation


# static fields
.field private static final DATABASE_NAME:Ljava/lang/String; = "VTErrorTableContent1.db"

.field private static final DATABASE_VERSION:I = 0x1

.field private static final TABLE_NAME:Ljava/lang/String; = "VTErrorTable"

.field private static final TAG:Ljava/lang/String; = "MyContentProvider"

.field private static dbHelper:Lcom/sec/android/internal/ims/external/ErrorTableProvider$DatabaseHelper;

.field private static sqlDB:Landroid/database/sqlite/SQLiteDatabase;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 55
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    .line 69
    return-void
.end method


# virtual methods
.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 3
    .parameter "uri"
    .parameter "selection"
    .parameter "selectionArgs"

    .prologue
    .line 135
    const/4 v0, 0x0

    .line 137
    .local v0, x:I
    sget-object v1, Lcom/sec/android/internal/ims/external/ErrorTableProvider;->sqlDB:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "VTErrorTable"

    invoke-virtual {v1, v2, p2, p3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 142
    return v0
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 1
    .parameter "uri"

    .prologue
    .line 148
    const/4 v0, 0x0

    return-object v0
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 7
    .parameter "uri"
    .parameter "values"

    .prologue
    const/4 v6, 0x0

    .line 156
    const/4 v2, 0x0

    .line 160
    .local v2, rowUri:Landroid/net/Uri;
    if-eqz p2, :cond_0

    .line 161
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3, p2}, Landroid/content/ContentValues;-><init>(Landroid/content/ContentValues;)V

    .line 174
    .local v3, values1:Landroid/content/ContentValues;
    :goto_0
    sget-object v4, Lcom/sec/android/internal/ims/external/ErrorTableProvider;->sqlDB:Landroid/database/sqlite/SQLiteDatabase;

    const-string v5, "VTErrorTable"

    invoke-virtual {v4, v5, v6, v3}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v0

    .line 175
    .local v0, rowId:J
    const-wide/16 v4, 0x0

    cmp-long v4, v0, v4

    if-lez v4, :cond_1

    .line 177
    sget-object v4, Lcom/sec/android/internal/ims/external/MenuDetails$User;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v4}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v4

    invoke-static {v4, v0, v1}, Landroid/content/ContentUris;->appendId(Landroid/net/Uri$Builder;J)Landroid/net/Uri$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v2

    .line 178
    invoke-virtual {p0}, Lcom/sec/android/internal/ims/external/ErrorTableProvider;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-virtual {v4, v2, v6}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 179
    return-object v2

    .line 163
    .end local v0           #rowId:J
    .end local v3           #values1:Landroid/content/ContentValues;
    :cond_0
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .restart local v3       #values1:Landroid/content/ContentValues;
    goto :goto_0

    .line 181
    .restart local v0       #rowId:J
    :cond_1
    new-instance v4, Landroid/database/SQLException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to insert row into "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/database/SQLException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method public onCreate()Z
    .locals 2

    .prologue
    .line 189
    new-instance v0, Lcom/sec/android/internal/ims/external/ErrorTableProvider$DatabaseHelper;

    invoke-virtual {p0}, Lcom/sec/android/internal/ims/external/ErrorTableProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/sec/android/internal/ims/external/ErrorTableProvider$DatabaseHelper;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/sec/android/internal/ims/external/ErrorTableProvider;->dbHelper:Lcom/sec/android/internal/ims/external/ErrorTableProvider$DatabaseHelper;

    .line 190
    sget-object v0, Lcom/sec/android/internal/ims/external/ErrorTableProvider;->dbHelper:Lcom/sec/android/internal/ims/external/ErrorTableProvider$DatabaseHelper;

    invoke-virtual {v0}, Lcom/sec/android/internal/ims/external/ErrorTableProvider$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    sput-object v0, Lcom/sec/android/internal/ims/external/ErrorTableProvider;->sqlDB:Landroid/database/sqlite/SQLiteDatabase;

    .line 191
    sget-object v0, Lcom/sec/android/internal/ims/external/ErrorTableProvider;->dbHelper:Lcom/sec/android/internal/ims/external/ErrorTableProvider$DatabaseHelper;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 9
    .parameter "uri"
    .parameter "projection"
    .parameter "selection"
    .parameter "selectionArgs"
    .parameter "sortOrder"

    .prologue
    const/4 v4, 0x0

    .line 199
    new-instance v0, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct {v0}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    .line 200
    .local v0, qb:Landroid/database/sqlite/SQLiteQueryBuilder;
    sget-object v2, Lcom/sec/android/internal/ims/external/ErrorTableProvider;->dbHelper:Lcom/sec/android/internal/ims/external/ErrorTableProvider$DatabaseHelper;

    invoke-virtual {v2}, Lcom/sec/android/internal/ims/external/ErrorTableProvider$DatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 201
    .local v1, db:Landroid/database/sqlite/SQLiteDatabase;
    const-string v2, "VTErrorTable"

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    move-object v2, p2

    move-object v3, p3

    move-object v5, v4

    move-object v6, v4

    move-object v7, p5

    .line 202
    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 203
    .local v8, c:Landroid/database/Cursor;
    invoke-virtual {p0}, Lcom/sec/android/internal/ims/external/ErrorTableProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-interface {v8, v2, p1}, Landroid/database/Cursor;->setNotificationUri(Landroid/content/ContentResolver;Landroid/net/Uri;)V

    .line 204
    return-object v8
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 1
    .parameter "uri"
    .parameter "values"
    .parameter "selection"
    .parameter "selectionArgs"

    .prologue
    .line 212
    const/4 v0, 0x0

    return v0
.end method
