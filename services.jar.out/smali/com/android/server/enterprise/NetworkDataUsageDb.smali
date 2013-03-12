.class Lcom/android/server/enterprise/NetworkDataUsageDb;
.super Ljava/lang/Object;
.source "NetworkDataUsageDb.java"


# static fields
.field public static final MOBILE_DATA_USAGE_RCV:Ljava/lang/String; = "mobiledatausagercv"

.field public static final MOBILE_DATA_USAGE_SEND:Ljava/lang/String; = "mobiledatausagesend"

.field public static final TABLE_NAME:Ljava/lang/String; = "NetworkDataUsage"

.field private static final TAG:Ljava/lang/String; = "NetworkDataUsageDb"

.field public static final UID:Ljava/lang/String; = "_id"

.field public static final WIFI_DATA_USAGE_RCV:Ljava/lang/String; = "wifidatausagesendrcv"

.field public static final WIFI_DATA_USAGE_SEND:Ljava/lang/String; = "wifidatausagesend"


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 117
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 113
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/enterprise/NetworkDataUsageDb;->mContext:Landroid/content/Context;

    .line 119
    iput-object p1, p0, Lcom/android/server/enterprise/NetworkDataUsageDb;->mContext:Landroid/content/Context;

    .line 121
    return-void
.end method

.method private static createDmAppMgrTable(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 4
    .parameter "db"

    .prologue
    .line 417
    :try_start_0
    const-string v1, " (_id integer primary key , mobiledatausagercv long, wifidatausagesendrcv long, mobiledatausagesend long, wifidatausagesend long );"

    .line 427
    .local v1, s:Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "create table NetworkDataUsage"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 429
    const-string v2, "NetworkDataUsageDb"

    const-string v3, "::createDmAppMgrTable: Table is Created "

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 437
    .end local v1           #s:Ljava/lang/String;
    :goto_0
    return-void

    .line 431
    :catch_0
    move-exception v0

    .line 433
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "NetworkDataUsageDb"

    const-string v3, "::createDmAppMgrTable: Exception while table is creating "

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private static getAppControlDB(Landroid/content/Context;)Landroid/database/sqlite/SQLiteDatabase;
    .locals 5
    .parameter "ctx"

    .prologue
    .line 383
    const/4 v0, 0x0

    .line 385
    .local v0, dmappmgrDB:Landroid/database/sqlite/SQLiteDatabase;
    const-string v1, "dmappmgr.db"

    .line 389
    .local v1, dmappmgrDBPath:Ljava/lang/String;
    const/4 v3, 0x0

    const/4 v4, 0x0

    :try_start_0
    invoke-virtual {p0, v1, v3, v4}, Landroid/content/Context;->openOrCreateDatabase(Ljava/lang/String;ILandroid/database/sqlite/SQLiteDatabase$CursorFactory;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 393
    const-string v3, "NetworkDataUsageDb"

    const-string v4, "::getAppControlDB: DB is Created "

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 401
    :goto_0
    if-eqz v0, :cond_0

    const-string v3, "NetworkDataUsage"

    invoke-static {v0, v3}, Lcom/android/server/enterprise/NetworkDataUsageDb;->isTableExists(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 403
    invoke-static {v0}, Lcom/android/server/enterprise/NetworkDataUsageDb;->createDmAppMgrTable(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 407
    :cond_0
    return-object v0

    .line 395
    :catch_0
    move-exception v2

    .line 397
    .local v2, e:Ljava/lang/Exception;
    const-string v3, "NetworkDataUsageDb"

    const-string v4, "::getAppControlDB: Exception to create DB"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private static isTableExists(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Z
    .locals 4
    .parameter "db"
    .parameter "table"

    .prologue
    .line 443
    const/4 v1, 0x0

    .line 445
    .local v1, exists:Z
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_0

    .line 449
    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SELECT 1 FROM "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " WHERE 1=0"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 451
    const/4 v1, 0x1

    .line 453
    const-string v2, "NetworkDataUsageDb"

    const-string v3, "::isTableExists: Table exists "

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 465
    :cond_0
    :goto_0
    return v1

    .line 455
    :catch_0
    move-exception v0

    .line 457
    .local v0, e:Ljava/lang/Exception;
    const/4 v1, 0x0

    .line 459
    const-string v2, "NetworkDataUsageDb"

    const-string v3, "::isTableExists:Table Does not exists "

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public getMobileDataUsage()Ljava/util/Hashtable;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/Integer;",
            "Landroid/app/enterprise/NetworkStats;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 289
    const/4 v8, 0x0

    .line 291
    .local v8, cursor:Landroid/database/Cursor;
    const/4 v0, 0x0

    .line 293
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    const/4 v10, 0x0

    .line 299
    .local v10, map:Ljava/util/Hashtable;,"Ljava/util/Hashtable<Ljava/lang/Integer;Landroid/app/enterprise/NetworkStats;>;"
    :try_start_0
    iget-object v2, p0, Lcom/android/server/enterprise/NetworkDataUsageDb;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/server/enterprise/NetworkDataUsageDb;->getAppControlDB(Landroid/content/Context;)Landroid/database/sqlite/SQLiteDatabase;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 301
    if-nez v0, :cond_2

    .line 359
    if-eqz v8, :cond_0

    .line 361
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 363
    :cond_0
    if-eqz v0, :cond_1

    .line 365
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 373
    :cond_1
    :goto_0
    return-object v1

    .line 307
    :cond_2
    :try_start_1
    const-string v1, "NetworkDataUsage"

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 311
    if-eqz v8, :cond_5

    .line 313
    new-instance v11, Ljava/util/Hashtable;

    invoke-direct {v11}, Ljava/util/Hashtable;-><init>()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 315
    .end local v10           #map:Ljava/util/Hashtable;,"Ljava/util/Hashtable<Ljava/lang/Integer;Landroid/app/enterprise/NetworkStats;>;"
    .local v11, map:Ljava/util/Hashtable;,"Ljava/util/Hashtable<Ljava/lang/Integer;Landroid/app/enterprise/NetworkStats;>;"
    :try_start_2
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 319
    :cond_3
    new-instance v12, Landroid/app/enterprise/NetworkStats;

    invoke-direct {v12}, Landroid/app/enterprise/NetworkStats;-><init>()V

    .line 321
    .local v12, networkStats:Landroid/app/enterprise/NetworkStats;
    const-string v1, "_id"

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, v12, Landroid/app/enterprise/NetworkStats;->uid:I

    .line 325
    const-string v1, "mobiledatausagesend"

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    iput-wide v1, v12, Landroid/app/enterprise/NetworkStats;->mobileTxBytes:J

    .line 329
    const-string v1, "mobiledatausagercv"

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    iput-wide v1, v12, Landroid/app/enterprise/NetworkStats;->mobileRxBytes:J

    .line 333
    const-string v1, "wifidatausagesend"

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    iput-wide v1, v12, Landroid/app/enterprise/NetworkStats;->wifiTxBytes:J

    .line 337
    const-string v1, "wifidatausagesendrcv"

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    iput-wide v1, v12, Landroid/app/enterprise/NetworkStats;->wifiRxBytes:J

    .line 341
    const-string v1, "_id"

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v11, v1, v12}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 345
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    move-result v1

    if-nez v1, :cond_3

    .end local v12           #networkStats:Landroid/app/enterprise/NetworkStats;
    :cond_4
    move-object v10, v11

    .line 359
    .end local v11           #map:Ljava/util/Hashtable;,"Ljava/util/Hashtable<Ljava/lang/Integer;Landroid/app/enterprise/NetworkStats;>;"
    .restart local v10       #map:Ljava/util/Hashtable;,"Ljava/util/Hashtable<Ljava/lang/Integer;Landroid/app/enterprise/NetworkStats;>;"
    :cond_5
    if-eqz v8, :cond_6

    .line 361
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 363
    :cond_6
    if-eqz v0, :cond_7

    .line 365
    :goto_1
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_7
    move-object v1, v10

    .line 373
    goto :goto_0

    .line 351
    :catch_0
    move-exception v9

    .line 353
    .local v9, e:Ljava/lang/Exception;
    :goto_2
    :try_start_3
    const-string v1, "NetworkDataUsageDb"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getMobileDataUsage "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 359
    if-eqz v8, :cond_8

    .line 361
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 363
    :cond_8
    if-eqz v0, :cond_7

    goto :goto_1

    .line 359
    .end local v9           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    :goto_3
    if-eqz v8, :cond_9

    .line 361
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 363
    :cond_9
    if-eqz v0, :cond_a

    .line 365
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 359
    :cond_a
    throw v1

    .end local v10           #map:Ljava/util/Hashtable;,"Ljava/util/Hashtable<Ljava/lang/Integer;Landroid/app/enterprise/NetworkStats;>;"
    .restart local v11       #map:Ljava/util/Hashtable;,"Ljava/util/Hashtable<Ljava/lang/Integer;Landroid/app/enterprise/NetworkStats;>;"
    :catchall_1
    move-exception v1

    move-object v10, v11

    .end local v11           #map:Ljava/util/Hashtable;,"Ljava/util/Hashtable<Ljava/lang/Integer;Landroid/app/enterprise/NetworkStats;>;"
    .restart local v10       #map:Ljava/util/Hashtable;,"Ljava/util/Hashtable<Ljava/lang/Integer;Landroid/app/enterprise/NetworkStats;>;"
    goto :goto_3

    .line 351
    .end local v10           #map:Ljava/util/Hashtable;,"Ljava/util/Hashtable<Ljava/lang/Integer;Landroid/app/enterprise/NetworkStats;>;"
    .restart local v11       #map:Ljava/util/Hashtable;,"Ljava/util/Hashtable<Ljava/lang/Integer;Landroid/app/enterprise/NetworkStats;>;"
    :catch_1
    move-exception v9

    move-object v10, v11

    .end local v11           #map:Ljava/util/Hashtable;,"Ljava/util/Hashtable<Ljava/lang/Integer;Landroid/app/enterprise/NetworkStats;>;"
    .restart local v10       #map:Ljava/util/Hashtable;,"Ljava/util/Hashtable<Ljava/lang/Integer;Landroid/app/enterprise/NetworkStats;>;"
    goto :goto_2
.end method

.method public updateDataUsage(Ljava/util/Hashtable;)Z
    .locals 29
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/Integer;",
            "Landroid/app/enterprise/NetworkStats;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 129
    .local p1, map:Ljava/util/Hashtable;,"Ljava/util/Hashtable<Ljava/lang/Integer;Landroid/app/enterprise/NetworkStats;>;"
    const/16 v17, 0x0

    .line 131
    .local v17, success:Z
    const/4 v6, 0x0

    .line 133
    .local v6, cursor:Landroid/database/Cursor;
    const/4 v7, 0x0

    .line 137
    .local v7, db:Landroid/database/sqlite/SQLiteDatabase;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/NetworkDataUsageDb;->mContext:Landroid/content/Context;

    move-object/from16 v26, v0

    invoke-static/range {v26 .. v26}, Lcom/android/server/enterprise/NetworkDataUsageDb;->getAppControlDB(Landroid/content/Context;)Landroid/database/sqlite/SQLiteDatabase;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v7

    .line 139
    if-nez v7, :cond_1

    .line 269
    if-eqz v6, :cond_0

    .line 271
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_0
    move/from16 v18, v17

    .line 281
    .end local v17           #success:Z
    .local v18, success:I
    :goto_0
    return v18

    .line 145
    .end local v18           #success:I
    .restart local v17       #success:Z
    :cond_1
    if-eqz p1, :cond_7

    :try_start_1
    invoke-virtual/range {p1 .. p1}, Ljava/util/Hashtable;->isEmpty()Z

    move-result v26

    if-nez v26, :cond_7

    .line 147
    invoke-virtual/range {p1 .. p1}, Ljava/util/Hashtable;->keySet()Ljava/util/Set;

    move-result-object v11

    .line 151
    .local v11, keySet:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/Integer;>;"
    invoke-interface {v11}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, i$:Ljava/util/Iterator;
    :cond_2
    :goto_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v26

    if-eqz v26, :cond_7

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    .line 155
    .local v10, key:Ljava/lang/Integer;
    move-object/from16 v0, p1

    invoke-virtual {v0, v10}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroid/app/enterprise/NetworkStats;

    .line 157
    .local v16, networkStats:Landroid/app/enterprise/NetworkStats;
    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "SELECT * FROM NetworkDataUsage WHERE _id = \'"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, "\'"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    const/16 v27, 0x0

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    invoke-virtual {v7, v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 163
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v26

    if-eqz v26, :cond_3

    .line 165
    new-instance v21, Landroid/content/ContentValues;

    invoke-direct/range {v21 .. v21}, Landroid/content/ContentValues;-><init>()V

    .line 169
    .local v21, values:Landroid/content/ContentValues;
    const-string v26, "mobiledatausagesend"

    move-object/from16 v0, v26

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v26

    move/from16 v0, v26

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v14

    .line 173
    .local v14, mobileSendDataUsageInDb:J
    move-object/from16 v0, v16

    iget-wide v0, v0, Landroid/app/enterprise/NetworkStats;->mobileTxBytes:J

    move-wide/from16 v26, v0

    add-long v19, v26, v14

    .line 175
    .local v19, value:J
    const-string v26, "mobiledatausagesend"

    invoke-static/range {v19 .. v20}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v27

    move-object/from16 v0, v21

    move-object/from16 v1, v26

    move-object/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 179
    const-string v26, "mobiledatausagercv"

    move-object/from16 v0, v26

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v26

    move/from16 v0, v26

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v12

    .line 183
    .local v12, mobileRcvDataUsageInDb:J
    move-object/from16 v0, v16

    iget-wide v0, v0, Landroid/app/enterprise/NetworkStats;->mobileRxBytes:J

    move-wide/from16 v26, v0

    add-long v19, v26, v12

    .line 185
    const-string v26, "mobiledatausagercv"

    invoke-static/range {v19 .. v20}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v27

    move-object/from16 v0, v21

    move-object/from16 v1, v26

    move-object/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 189
    const-string v26, "wifidatausagesend"

    move-object/from16 v0, v26

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v26

    move/from16 v0, v26

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v24

    .line 193
    .local v24, wifiSendDataUsageInDb:J
    move-object/from16 v0, v16

    iget-wide v0, v0, Landroid/app/enterprise/NetworkStats;->wifiTxBytes:J

    move-wide/from16 v26, v0

    add-long v19, v26, v24

    .line 195
    const-string v26, "wifidatausagesend"

    invoke-static/range {v19 .. v20}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v27

    move-object/from16 v0, v21

    move-object/from16 v1, v26

    move-object/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 199
    const-string v26, "wifidatausagesendrcv"

    move-object/from16 v0, v26

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v26

    move/from16 v0, v26

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v22

    .line 203
    .local v22, wifiRcvDataUsageInDb:J
    move-object/from16 v0, v16

    iget-wide v0, v0, Landroid/app/enterprise/NetworkStats;->wifiRxBytes:J

    move-wide/from16 v26, v0

    add-long v19, v26, v22

    .line 205
    const-string v26, "wifidatausagesendrcv"

    invoke-static/range {v19 .. v20}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v27

    move-object/from16 v0, v21

    move-object/from16 v1, v26

    move-object/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 209
    const-string v26, "NetworkDataUsage"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "_id = \'"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, "\'"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    const/16 v28, 0x0

    move-object/from16 v0, v26

    move-object/from16 v1, v21

    move-object/from16 v2, v27

    move-object/from16 v3, v28

    invoke-virtual {v7, v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v4

    .line 213
    .local v4, count:I
    if-lez v4, :cond_2

    .line 215
    const/16 v17, 0x1

    goto/16 :goto_1

    .line 223
    .end local v4           #count:I
    .end local v12           #mobileRcvDataUsageInDb:J
    .end local v14           #mobileSendDataUsageInDb:J
    .end local v19           #value:J
    .end local v21           #values:Landroid/content/ContentValues;
    .end local v22           #wifiRcvDataUsageInDb:J
    .end local v24           #wifiSendDataUsageInDb:J
    :cond_3
    new-instance v21, Landroid/content/ContentValues;

    invoke-direct/range {v21 .. v21}, Landroid/content/ContentValues;-><init>()V

    .line 225
    .restart local v21       #values:Landroid/content/ContentValues;
    const-string v26, "_id"

    move-object/from16 v0, v21

    move-object/from16 v1, v26

    invoke-virtual {v0, v1, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 227
    const-string v26, "mobiledatausagesend"

    move-object/from16 v0, v16

    iget-wide v0, v0, Landroid/app/enterprise/NetworkStats;->mobileTxBytes:J

    move-wide/from16 v27, v0

    invoke-static/range {v27 .. v28}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v27

    move-object/from16 v0, v21

    move-object/from16 v1, v26

    move-object/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 231
    const-string v26, "mobiledatausagercv"

    move-object/from16 v0, v16

    iget-wide v0, v0, Landroid/app/enterprise/NetworkStats;->mobileRxBytes:J

    move-wide/from16 v27, v0

    invoke-static/range {v27 .. v28}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v27

    move-object/from16 v0, v21

    move-object/from16 v1, v26

    move-object/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 235
    const-string v26, "wifidatausagesend"

    move-object/from16 v0, v16

    iget-wide v0, v0, Landroid/app/enterprise/NetworkStats;->wifiTxBytes:J

    move-wide/from16 v27, v0

    invoke-static/range {v27 .. v28}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v27

    move-object/from16 v0, v21

    move-object/from16 v1, v26

    move-object/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 239
    const-string v26, "wifidatausagesendrcv"

    move-object/from16 v0, v16

    iget-wide v0, v0, Landroid/app/enterprise/NetworkStats;->wifiRxBytes:J

    move-wide/from16 v27, v0

    invoke-static/range {v27 .. v28}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v27

    move-object/from16 v0, v21

    move-object/from16 v1, v26

    move-object/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 243
    const-string v26, "NetworkDataUsage"

    const/16 v27, 0x0

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    move-object/from16 v2, v21

    invoke-virtual {v7, v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-wide v4

    .line 245
    .local v4, count:J
    const-wide/16 v26, 0x0

    cmp-long v26, v26, v4

    if-gez v26, :cond_2

    .line 247
    const/16 v17, 0x1

    goto/16 :goto_1

    .line 263
    .end local v4           #count:J
    .end local v9           #i$:Ljava/util/Iterator;
    .end local v10           #key:Ljava/lang/Integer;
    .end local v11           #keySet:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/Integer;>;"
    .end local v16           #networkStats:Landroid/app/enterprise/NetworkStats;
    .end local v21           #values:Landroid/content/ContentValues;
    :catch_0
    move-exception v8

    .line 265
    .local v8, e:Ljava/lang/Exception;
    const/16 v17, 0x0

    .line 269
    if-eqz v6, :cond_4

    .line 271
    .end local v8           #e:Ljava/lang/Exception;
    :goto_2
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 275
    :cond_4
    if-eqz v7, :cond_5

    .line 277
    invoke-virtual {v7}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_5
    move/from16 v18, v17

    .line 281
    .restart local v18       #success:I
    goto/16 :goto_0

    .line 269
    .end local v18           #success:I
    :catchall_0
    move-exception v26

    if-eqz v6, :cond_6

    .line 271
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 269
    :cond_6
    throw v26

    :cond_7
    if-eqz v6, :cond_4

    goto :goto_2
.end method
