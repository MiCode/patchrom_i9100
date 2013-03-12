.class public Lcom/sec/android/internal/ims/external/ErrorTableDataOperation;
.super Ljava/lang/Object;
.source "ErrorTableDataOperation.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 47
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public deleteExistingRow(Landroid/content/ContentResolver;)I
    .locals 5
    .parameter "r1"

    .prologue
    const/4 v4, 0x0

    .line 75
    const/4 v1, 0x0

    .local v1, rowCount:I
    const/4 v2, 0x0

    .line 76
    .local v2, x:I
    invoke-virtual {p0, p1}, Lcom/sec/android/internal/ims/external/ErrorTableDataOperation;->getRowCount(Landroid/content/ContentResolver;)I

    move-result v1

    .line 77
    const-string v0, "_id =1"

    .line 78
    .local v0, queryString:Ljava/lang/String;
    if-lez v1, :cond_0

    .line 80
    sget-object v3, Lcom/sec/android/internal/ims/external/ErrorTableDetails$User;->DB_ERROR_TABLE_DEL_URI:Landroid/net/Uri;

    invoke-virtual {p1, v3, v4, v4}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    .line 82
    :cond_0
    return v2
.end method

.method public getAllData(Landroid/content/ContentResolver;)Lcom/sec/android/internal/ims/external/ErrorTableData;
    .locals 9
    .parameter "r1"

    .prologue
    const/4 v2, 0x0

    .line 259
    const-string v0, "Get All Data _________"

    invoke-virtual {p0, v0}, Lcom/sec/android/internal/ims/external/ErrorTableDataOperation;->log(Ljava/lang/String;)V

    .line 261
    const/4 v8, 0x0

    .line 262
    .local v8, errData:Lcom/sec/android/internal/ims/external/ErrorTableData;
    sget-object v1, Lcom/sec/android/internal/ims/external/ErrorTableDetails$User;->DB_ERROR_TABLE_TABLE_URI:Landroid/net/Uri;

    move-object v0, p1

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 265
    .local v6, c1:Landroid/database/Cursor;
    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 267
    new-instance v8, Lcom/sec/android/internal/ims/external/ErrorTableData;

    .end local v8           #errData:Lcom/sec/android/internal/ims/external/ErrorTableData;
    invoke-direct {v8}, Lcom/sec/android/internal/ims/external/ErrorTableData;-><init>()V

    .line 269
    .restart local v8       #errData:Lcom/sec/android/internal/ims/external/ErrorTableData;
    invoke-interface {v6}, Landroid/database/Cursor;->moveToLast()Z

    .line 271
    const-string v0, "Timestamp"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    .line 272
    .local v7, coordIdx:I
    invoke-interface {v6, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v8, Lcom/sec/android/internal/ims/external/ErrorTableData;->mTimestamp:Ljava/lang/String;

    .line 277
    const-string v0, "ErrorCode"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    .line 278
    invoke-interface {v6, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v8, Lcom/sec/android/internal/ims/external/ErrorTableData;->mErrorCode:Ljava/lang/String;

    .line 280
    const-string v0, "ErrorString"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    .line 281
    invoke-interface {v6, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v8, Lcom/sec/android/internal/ims/external/ErrorTableData;->mErrorString:Ljava/lang/String;

    .line 324
    .end local v7           #coordIdx:I
    :cond_0
    if-eqz v6, :cond_1

    .line 325
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 327
    :cond_1
    return-object v8
.end method

.method public getRowCount(Landroid/content/ContentResolver;)I
    .locals 8
    .parameter "r1"

    .prologue
    const/4 v2, 0x0

    .line 57
    const/4 v7, 0x0

    .line 58
    .local v7, r:I
    sget-object v1, Lcom/sec/android/internal/ims/external/ErrorTableDetails$User;->DB_ERROR_TABLE_TABLE_URI:Landroid/net/Uri;

    move-object v0, p1

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 60
    .local v6, c:Landroid/database/Cursor;
    if-eqz v6, :cond_0

    .line 62
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v7

    .line 63
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 65
    :cond_0
    return v7
.end method

.method public insertDataIntoDB(Lcom/sec/android/internal/ims/external/ErrorTableData;Landroid/content/ContentResolver;)Landroid/net/Uri;
    .locals 15
    .parameter "errData"
    .parameter "r1"

    .prologue
    .line 92
    const/4 v13, 0x0

    .line 93
    .local v13, uri:Landroid/net/Uri;
    if-eqz p1, :cond_3

    if-eqz p2, :cond_3

    .line 95
    const/4 v8, 0x0

    .line 96
    .local v8, cnt:I
    const/4 v12, 0x0

    .local v12, r:I
    const/4 v11, 0x0

    .line 97
    .local v11, j:I
    const/4 v7, 0x0

    .line 98
    .local v7, c1:Landroid/database/Cursor;
    new-instance v14, Landroid/content/ContentValues;

    invoke-direct {v14}, Landroid/content/ContentValues;-><init>()V

    .line 99
    .local v14, values:Landroid/content/ContentValues;
    const/4 v1, 0x5

    new-array v10, v1, [Lcom/sec/android/internal/ims/external/ErrorTableData;

    .line 102
    .local v10, exist_ErrData:[Lcom/sec/android/internal/ims/external/ErrorTableData;
    sget-object v2, Lcom/sec/android/internal/ims/external/ErrorTableDetails$User;->DB_ERROR_TABLE_TABLE_URI:Landroid/net/Uri;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v1, p2

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 104
    const-string v1, "insertDataIntoDB __________"

    invoke-virtual {p0, v1}, Lcom/sec/android/internal/ims/external/ErrorTableDataOperation;->log(Ljava/lang/String;)V

    .line 105
    if-eqz v7, :cond_3

    .line 107
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v12

    .line 108
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "count db exist = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/sec/android/internal/ims/external/ErrorTableDataOperation;->log(Ljava/lang/String;)V

    .line 110
    if-lez v12, :cond_1

    .line 112
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "There are already existing records r = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/sec/android/internal/ims/external/ErrorTableDataOperation;->log(Ljava/lang/String;)V

    .line 114
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    .line 116
    const/4 v8, 0x0

    :goto_0
    if-ge v8, v12, :cond_0

    .line 118
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getting records record NO :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/sec/android/internal/ims/external/ErrorTableDataOperation;->log(Ljava/lang/String;)V

    .line 120
    new-instance v1, Lcom/sec/android/internal/ims/external/ErrorTableData;

    invoke-direct {v1}, Lcom/sec/android/internal/ims/external/ErrorTableData;-><init>()V

    aput-object v1, v10, v11

    .line 122
    const-string v1, "Timestamp"

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    .line 123
    .local v9, coordIdx:I
    aget-object v1, v10, v11

    invoke-interface {v7, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/sec/android/internal/ims/external/ErrorTableData;->mTimestamp:Ljava/lang/String;

    .line 124
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " time stamp = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    aget-object v2, v10, v11

    iget-object v2, v2, Lcom/sec/android/internal/ims/external/ErrorTableData;->mTimestamp:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/sec/android/internal/ims/external/ErrorTableDataOperation;->log(Ljava/lang/String;)V

    .line 129
    const-string v1, "ErrorCode"

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    .line 130
    aget-object v1, v10, v11

    invoke-interface {v7, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/sec/android/internal/ims/external/ErrorTableData;->mErrorCode:Ljava/lang/String;

    .line 132
    const-string v1, "ErrorString"

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    .line 133
    aget-object v1, v10, v11

    invoke-interface {v7, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/sec/android/internal/ims/external/ErrorTableData;->mErrorString:Ljava/lang/String;

    .line 135
    const-string v1, "insertDataIntoDB __________"

    invoke-virtual {p0, v1}, Lcom/sec/android/internal/ims/external/ErrorTableDataOperation;->log(Ljava/lang/String;)V

    .line 137
    add-int/lit8 v11, v11, 0x1

    .line 116
    add-int/lit8 v8, v8, 0x1

    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_0

    .line 141
    .end local v9           #coordIdx:I
    :cond_0
    move-object/from16 v0, p2

    invoke-virtual {p0, v0}, Lcom/sec/android/internal/ims/external/ErrorTableDataOperation;->deleteExistingRow(Landroid/content/ContentResolver;)I

    .line 143
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Writing New Value to DB_____TimeStamp = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/sec/android/internal/ims/external/ErrorTableData;->mTimestamp:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/sec/android/internal/ims/external/ErrorTableDataOperation;->log(Ljava/lang/String;)V

    .line 144
    const-string v1, "Timestamp"

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/sec/android/internal/ims/external/ErrorTableData;->mTimestamp:Ljava/lang/String;

    invoke-virtual {v14, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/sec/android/internal/ims/external/ErrorTableData;->mTimestamp:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/sec/android/internal/ims/external/ErrorTableDataOperation;->log(Ljava/lang/String;)V

    .line 148
    const-string v1, "ErrorCode"

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/sec/android/internal/ims/external/ErrorTableData;->mErrorCode:Ljava/lang/String;

    invoke-virtual {v14, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 149
    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/sec/android/internal/ims/external/ErrorTableData;->mErrorCode:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/sec/android/internal/ims/external/ErrorTableDataOperation;->log(Ljava/lang/String;)V

    .line 150
    const-string v1, "ErrorString"

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/sec/android/internal/ims/external/ErrorTableData;->mErrorString:Ljava/lang/String;

    invoke-virtual {v14, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 151
    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/sec/android/internal/ims/external/ErrorTableData;->mErrorString:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/sec/android/internal/ims/external/ErrorTableDataOperation;->log(Ljava/lang/String;)V

    .line 152
    sget-object v1, Lcom/sec/android/internal/ims/external/ErrorTableDetails$User;->DB_ERROR_TABLE_TABLE_URI:Landroid/net/Uri;

    move-object/from16 v0, p2

    invoke-virtual {v0, v1, v14}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v13

    .line 153
    const/4 v11, 0x1

    .line 154
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Writing New Value - first value inserted -"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/sec/android/internal/ims/external/ErrorTableData;->mTimestamp:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/sec/android/internal/ims/external/ErrorTableDataOperation;->log(Ljava/lang/String;)V

    .line 155
    const/4 v8, 0x0

    :goto_1
    if-ge v8, v12, :cond_2

    const/4 v1, 0x5

    if-ge v11, v1, :cond_2

    .line 159
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Writing Next Values -"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    aget-object v2, v10, v8

    iget-object v2, v2, Lcom/sec/android/internal/ims/external/ErrorTableData;->mTimestamp:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/sec/android/internal/ims/external/ErrorTableDataOperation;->log(Ljava/lang/String;)V

    .line 160
    const-string v1, "Timestamp"

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    aget-object v2, v10, v8

    iget-object v2, v2, Lcom/sec/android/internal/ims/external/ErrorTableData;->mTimestamp:Ljava/lang/String;

    invoke-virtual {v14, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 162
    const-string v1, "ErrorCode"

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    aget-object v2, v10, v8

    iget-object v2, v2, Lcom/sec/android/internal/ims/external/ErrorTableData;->mErrorCode:Ljava/lang/String;

    invoke-virtual {v14, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 163
    const-string v1, "ErrorString"

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    aget-object v2, v10, v8

    iget-object v2, v2, Lcom/sec/android/internal/ims/external/ErrorTableData;->mErrorString:Ljava/lang/String;

    invoke-virtual {v14, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 164
    sget-object v1, Lcom/sec/android/internal/ims/external/ErrorTableDetails$User;->DB_ERROR_TABLE_TABLE_URI:Landroid/net/Uri;

    move-object/from16 v0, p2

    invoke-virtual {v0, v1, v14}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v13

    .line 165
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " Inserted values to DB time stamp = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    aget-object v2, v10, v8

    iget-object v2, v2, Lcom/sec/android/internal/ims/external/ErrorTableData;->mTimestamp:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/sec/android/internal/ims/external/ErrorTableDataOperation;->log(Ljava/lang/String;)V

    .line 155
    add-int/lit8 v8, v8, 0x1

    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    .line 172
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Writing New Value to DB_____TimeStamp = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/sec/android/internal/ims/external/ErrorTableData;->mTimestamp:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/sec/android/internal/ims/external/ErrorTableDataOperation;->log(Ljava/lang/String;)V

    .line 173
    const-string v1, "Timestamp"

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/sec/android/internal/ims/external/ErrorTableData;->mTimestamp:Ljava/lang/String;

    invoke-virtual {v14, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 174
    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/sec/android/internal/ims/external/ErrorTableData;->mTimestamp:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/sec/android/internal/ims/external/ErrorTableDataOperation;->log(Ljava/lang/String;)V

    .line 177
    const-string v1, "ErrorCode"

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/sec/android/internal/ims/external/ErrorTableData;->mErrorCode:Ljava/lang/String;

    invoke-virtual {v14, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 178
    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/sec/android/internal/ims/external/ErrorTableData;->mErrorCode:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/sec/android/internal/ims/external/ErrorTableDataOperation;->log(Ljava/lang/String;)V

    .line 179
    const-string v1, "ErrorString"

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/sec/android/internal/ims/external/ErrorTableData;->mErrorString:Ljava/lang/String;

    invoke-virtual {v14, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 180
    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/sec/android/internal/ims/external/ErrorTableData;->mErrorString:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/sec/android/internal/ims/external/ErrorTableDataOperation;->log(Ljava/lang/String;)V

    .line 181
    sget-object v1, Lcom/sec/android/internal/ims/external/ErrorTableDetails$User;->DB_ERROR_TABLE_TABLE_URI:Landroid/net/Uri;

    move-object/from16 v0, p2

    invoke-virtual {v0, v1, v14}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v13

    .line 183
    :cond_2
    const-string v1, "insertDataIntoDB __"

    invoke-virtual {p0, v1}, Lcom/sec/android/internal/ims/external/ErrorTableDataOperation;->log(Ljava/lang/String;)V

    .line 184
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 248
    .end local v7           #c1:Landroid/database/Cursor;
    .end local v8           #cnt:I
    .end local v10           #exist_ErrData:[Lcom/sec/android/internal/ims/external/ErrorTableData;
    .end local v11           #j:I
    .end local v12           #r:I
    .end local v14           #values:Landroid/content/ContentValues;
    :cond_3
    return-object v13
.end method

.method log(Ljava/lang/String;)V
    .locals 1
    .parameter "str"

    .prologue
    .line 332
    const-string v0, "ErrorTableDataOperation"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 333
    return-void
.end method
