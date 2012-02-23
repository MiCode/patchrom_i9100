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
    .line 38
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 35
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/enterprise/NetworkDataUsageDb;->mContext:Landroid/content/Context;

    .line 39
    iput-object p1, p0, Lcom/android/server/enterprise/NetworkDataUsageDb;->mContext:Landroid/content/Context;

    .line 40
    return-void
.end method

.method private static createDmAppMgrTable(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 4
    .parameter "db"

    .prologue
    .line 197
    :try_start_0
    const-string v1, " (_id integer primary key , mobiledatausagercv long, wifidatausagesendrcv long, mobiledatausagesend long, wifidatausagesend long );"

    .line 202
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

    .line 203
    const-string v2, "NetworkDataUsageDb"

    const-string v3, "::createDmAppMgrTable: Table is Created "

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 207
    .end local v1           #s:Ljava/lang/String;
    :goto_0
    return-void

    .line 204
    :catch_0
    move-exception v0

    .line 205
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
    .line 181
    const/4 v0, 0x0

    .line 182
    .local v0, dmappmgrDB:Landroid/database/sqlite/SQLiteDatabase;
    const-string v1, "dmappmgr.db"

    .line 184
    .local v1, dmappmgrDBPath:Ljava/lang/String;
    const/4 v3, 0x0

    const/4 v4, 0x0

    :try_start_0
    invoke-virtual {p0, v1, v3, v4}, Landroid/content/Context;->openOrCreateDatabase(Ljava/lang/String;ILandroid/database/sqlite/SQLiteDatabase$CursorFactory;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 185
    const-string v3, "NetworkDataUsageDb"

    const-string v4, "::getAppControlDB: DB is Created "

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 189
    :goto_0
    if-eqz v0, :cond_0

    const-string v3, "NetworkDataUsage"

    invoke-static {v0, v3}, Lcom/android/server/enterprise/NetworkDataUsageDb;->isTableExists(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 190
    invoke-static {v0}, Lcom/android/server/enterprise/NetworkDataUsageDb;->createDmAppMgrTable(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 192
    :cond_0
    return-object v0

    .line 186
    :catch_0
    move-exception v2

    .line 187
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
    .line 210
    const/4 v1, 0x0

    .line 211
    .local v1, exists:Z
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_0

    .line 213
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

    .line 214
    const/4 v1, 0x1

    .line 215
    const-string v2, "NetworkDataUsageDb"

    const-string v3, "::isTableExists: Table exists "

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 221
    :cond_0
    :goto_0
    return v1

    .line 216
    :catch_0
    move-exception v0

    .line 217
    .local v0, e:Ljava/lang/Exception;
    const/4 v1, 0x0

    .line 218
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

    .line 131
    const/4 v8, 0x0

    .line 132
    .local v8, cursor:Landroid/database/Cursor;
    const/4 v0, 0x0

    .line 133
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    const/4 v10, 0x0

    .line 137
    .local v10, map:Ljava/util/Hashtable;,"Ljava/util/Hashtable<Ljava/lang/Integer;Landroid/app/enterprise/NetworkStats;>;"
    :try_start_0
    iget-object v2, p0, Lcom/android/server/enterprise/NetworkDataUsageDb;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/server/enterprise/NetworkDataUsageDb;->getAppControlDB(Landroid/content/Context;)Landroid/database/sqlite/SQLiteDatabase;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 138
    if-nez v0, :cond_2

    .line 166
    if-eqz v8, :cond_0

    .line 167
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 168
    :cond_0
    if-eqz v0, :cond_1

    .line 169
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 174
    :cond_1
    :goto_0
    return-object v1

    .line 141
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

    .line 143
    if-eqz v8, :cond_5

    .line 145
    new-instance v11, Ljava/util/Hashtable;

    invoke-direct {v11}, Ljava/util/Hashtable;-><init>()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 146
    .end local v10           #map:Ljava/util/Hashtable;,"Ljava/util/Hashtable<Ljava/lang/Integer;Landroid/app/enterprise/NetworkStats;>;"
    .local v11, map:Ljava/util/Hashtable;,"Ljava/util/Hashtable<Ljava/lang/Integer;Landroid/app/enterprise/NetworkStats;>;"
    :try_start_2
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 150
    :cond_3
    new-instance v12, Landroid/app/enterprise/NetworkStats;

    invoke-direct {v12}, Landroid/app/enterprise/NetworkStats;-><init>()V

    .line 151
    .local v12, networkStats:Landroid/app/enterprise/NetworkStats;
    const-string v1, "_id"

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, v12, Landroid/app/enterprise/NetworkStats;->uid:I

    .line 152
    const-string v1, "mobiledatausagesend"

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    iput-wide v1, v12, Landroid/app/enterprise/NetworkStats;->mobileTxBytes:J

    .line 153
    const-string v1, "mobiledatausagercv"

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    iput-wide v1, v12, Landroid/app/enterprise/NetworkStats;->mobileRxBytes:J

    .line 154
    const-string v1, "wifidatausagesend"

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    iput-wide v1, v12, Landroid/app/enterprise/NetworkStats;->wifiTxBytes:J

    .line 155
    const-string v1, "wifidatausagesendrcv"

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    iput-wide v1, v12, Landroid/app/enterprise/NetworkStats;->wifiRxBytes:J

    .line 156
    const-string v1, "_id"

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v11, v1, v12}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 157
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    move-result v1

    if-nez v1, :cond_3

    .end local v12           #networkStats:Landroid/app/enterprise/NetworkStats;
    :cond_4
    move-object v10, v11

    .line 166
    .end local v11           #map:Ljava/util/Hashtable;,"Ljava/util/Hashtable<Ljava/lang/Integer;Landroid/app/enterprise/NetworkStats;>;"
    .restart local v10       #map:Ljava/util/Hashtable;,"Ljava/util/Hashtable<Ljava/lang/Integer;Landroid/app/enterprise/NetworkStats;>;"
    :cond_5
    if-eqz v8, :cond_6

    .line 167
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 168
    :cond_6
    if-eqz v0, :cond_7

    .line 169
    :goto_1
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_7
    move-object v1, v10

    .line 174
    goto :goto_0

    .line 161
    :catch_0
    move-exception v9

    .line 162
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

    .line 166
    if-eqz v8, :cond_8

    .line 167
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 168
    :cond_8
    if-eqz v0, :cond_7

    goto :goto_1

    .line 166
    .end local v9           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    :goto_3
    if-eqz v8, :cond_9

    .line 167
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 168
    :cond_9
    if-eqz v0, :cond_a

    .line 169
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 166
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

    .line 161
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
    .line 45
    .local p1, map:Ljava/util/Hashtable;,"Ljava/util/Hashtable<Ljava/lang/Integer;Landroid/app/enterprise/NetworkStats;>;"
    const/16 v17, 0x0

    .line 46
    .local v17, success:Z
    const/4 v6, 0x0

    .line 47
    .local v6, cursor:Landroid/database/Cursor;
    const/4 v7, 0x0

    .line 50
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

    .line 51
    if-nez v7, :cond_1

    .line 119
    if-eqz v6, :cond_0

    .line 120
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_0
    move/from16 v18, v17

    .line 125
    .end local v17           #success:Z
    .local v18, success:I
    :goto_0
    return v18

    .line 53
    .end local v18           #success:I
    .restart local v17       #success:Z
    :cond_1
    if-eqz p1, :cond_7

    :try_start_1
    invoke-virtual/range {p1 .. p1}, Ljava/util/Hashtable;->isEmpty()Z

    move-result v26

    if-nez v26, :cond_7

    .line 55
    invoke-virtual/range {p1 .. p1}, Ljava/util/Hashtable;->keySet()Ljava/util/Set;

    move-result-object v11

    .line 57
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

    .line 60
    .local v10, key:Ljava/lang/Integer;
    move-object/from16 v0, p1

    invoke-virtual {v0, v10}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroid/app/enterprise/NetworkStats;

    .line 61
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

    .line 63
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v26

    if-eqz v26, :cond_3

    .line 65
    new-instance v21, Landroid/content/ContentValues;

    invoke-direct/range {v21 .. v21}, Landroid/content/ContentValues;-><init>()V

    .line 67
    .local v21, values:Landroid/content/ContentValues;
    const-string v26, "mobiledatausagesend"

    move-object/from16 v0, v26

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v26

    move/from16 v0, v26

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v14

    .line 68
    .local v14, mobileSendDataUsageInDb:J
    move-object/from16 v0, v16

    iget-wide v0, v0, Landroid/app/enterprise/NetworkStats;->mobileTxBytes:J

    move-wide/from16 v26, v0

    add-long v19, v26, v14

    .line 69
    .local v19, value:J
    const-string v26, "mobiledatausagesend"

    invoke-static/range {v19 .. v20}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v27

    move-object/from16 v0, v21

    move-object/from16 v1, v26

    move-object/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 71
    const-string v26, "mobiledatausagercv"

    move-object/from16 v0, v26

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v26

    move/from16 v0, v26

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v12

    .line 72
    .local v12, mobileRcvDataUsageInDb:J
    move-object/from16 v0, v16

    iget-wide v0, v0, Landroid/app/enterprise/NetworkStats;->mobileRxBytes:J

    move-wide/from16 v26, v0

    add-long v19, v26, v12

    .line 73
    const-string v26, "mobiledatausagercv"

    invoke-static/range {v19 .. v20}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v27

    move-object/from16 v0, v21

    move-object/from16 v1, v26

    move-object/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 75
    const-string v26, "wifidatausagesend"

    move-object/from16 v0, v26

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v26

    move/from16 v0, v26

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v24

    .line 76
    .local v24, wifiSendDataUsageInDb:J
    move-object/from16 v0, v16

    iget-wide v0, v0, Landroid/app/enterprise/NetworkStats;->wifiTxBytes:J

    move-wide/from16 v26, v0

    add-long v19, v26, v24

    .line 77
    const-string v26, "wifidatausagesend"

    invoke-static/range {v19 .. v20}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v27

    move-object/from16 v0, v21

    move-object/from16 v1, v26

    move-object/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 79
    const-string v26, "wifidatausagesendrcv"

    move-object/from16 v0, v26

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v26

    move/from16 v0, v26

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v22

    .line 80
    .local v22, wifiRcvDataUsageInDb:J
    move-object/from16 v0, v16

    iget-wide v0, v0, Landroid/app/enterprise/NetworkStats;->wifiRxBytes:J

    move-wide/from16 v26, v0

    add-long v19, v26, v22

    .line 81
    const-string v26, "wifidatausagesendrcv"

    invoke-static/range {v19 .. v20}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v27

    move-object/from16 v0, v21

    move-object/from16 v1, v26

    move-object/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 84
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

    .line 85
    .local v4, count:I
    if-lez v4, :cond_2

    .line 87
    const/16 v17, 0x1

    goto/16 :goto_1

    .line 93
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

    .line 94
    .restart local v21       #values:Landroid/content/ContentValues;
    const-string v26, "_id"

    move-object/from16 v0, v21

    move-object/from16 v1, v26

    invoke-virtual {v0, v1, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 95
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

    .line 96
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

    .line 97
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

    .line 98
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

    .line 100
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

    .line 101
    .local v4, count:J
    const-wide/16 v26, 0x0

    cmp-long v26, v26, v4

    if-gez v26, :cond_2

    .line 103
    const/16 v17, 0x1

    goto/16 :goto_1

    .line 114
    .end local v4           #count:J
    .end local v9           #i$:Ljava/util/Iterator;
    .end local v10           #key:Ljava/lang/Integer;
    .end local v11           #keySet:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/Integer;>;"
    .end local v16           #networkStats:Landroid/app/enterprise/NetworkStats;
    .end local v21           #values:Landroid/content/ContentValues;
    :catch_0
    move-exception v8

    .line 116
    .local v8, e:Ljava/lang/Exception;
    const/16 v17, 0x0

    .line 119
    if-eqz v6, :cond_4

    .line 120
    .end local v8           #e:Ljava/lang/Exception;
    :goto_2
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 122
    :cond_4
    if-eqz v7, :cond_5

    .line 123
    invoke-virtual {v7}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_5
    move/from16 v18, v17

    .line 125
    .restart local v18       #success:I
    goto/16 :goto_0

    .line 119
    .end local v18           #success:I
    :catchall_0
    move-exception v26

    if-eqz v6, :cond_6

    .line 120
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 119
    :cond_6
    throw v26

    :cond_7
    if-eqz v6, :cond_4

    goto :goto_2
.end method
