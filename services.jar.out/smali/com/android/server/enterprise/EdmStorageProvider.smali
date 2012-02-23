.class Lcom/android/server/enterprise/EdmStorageProvider;
.super Ljava/lang/Object;
.source "EdmStorageProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/enterprise/EdmStorageProvider$SettingNotFoundException;
    }
.end annotation


# static fields
.field private static final mTAG:Ljava/lang/String; = "EdmStorageProvider"


# instance fields
.field private mEdmDbHelper:Lcom/android/server/enterprise/EdmStorageHelper;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 5
    .parameter "context"

    .prologue
    .line 28
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 29
    invoke-static {p1}, Lcom/android/server/enterprise/EdmStorageHelper;->getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/EdmStorageHelper;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/enterprise/EdmStorageProvider;->mEdmDbHelper:Lcom/android/server/enterprise/EdmStorageHelper;

    .line 31
    :try_start_0
    iget-object v2, p0, Lcom/android/server/enterprise/EdmStorageProvider;->mEdmDbHelper:Lcom/android/server/enterprise/EdmStorageHelper;

    invoke-virtual {v2}, Lcom/android/server/enterprise/EdmStorageHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 32
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 36
    .end local v0           #db:Landroid/database/sqlite/SQLiteDatabase;
    :goto_0
    return-void

    .line 33
    :catch_0
    move-exception v1

    .line 34
    .local v1, e:Ljava/lang/Exception;
    const/4 v2, 0x6

    const-string v3, "EdmStorageProvider"

    const-string v4, "Failed to OPEN/CREATE the database"

    invoke-static {v2, v3, v4}, Lcom/android/server/enterprise/Utils;->writeToLog(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method addAdmin(ILjava/lang/String;Z)Z
    .locals 1
    .parameter "iUId"
    .parameter "sName"
    .parameter "bCanRemove"

    .prologue
    .line 308
    iget-object v0, p0, Lcom/android/server/enterprise/EdmStorageProvider;->mEdmDbHelper:Lcom/android/server/enterprise/EdmStorageHelper;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/enterprise/EdmStorageHelper;->addAdmin(ILjava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method deleteDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Z
    .locals 1
    .parameter "sTableName"
    .parameter "sColumns"
    .parameter "sValues"

    .prologue
    .line 393
    iget-object v0, p0, Lcom/android/server/enterprise/EdmStorageProvider;->mEdmDbHelper:Lcom/android/server/enterprise/EdmStorageHelper;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/enterprise/EdmStorageHelper;->deleteDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method getAdminByField(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .parameter "api"
    .parameter "policy"
    .parameter "value"

    .prologue
    .line 327
    iget-object v0, p0, Lcom/android/server/enterprise/EdmStorageProvider;->mEdmDbHelper:Lcom/android/server/enterprise/EdmStorageHelper;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/enterprise/EdmStorageHelper;->getAdminByField(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method getBoolean(ILjava/lang/String;Ljava/lang/String;)Z
    .locals 6
    .parameter "admin"
    .parameter "api"
    .parameter "policy"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/enterprise/EdmStorageProvider$SettingNotFoundException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 189
    const/4 v1, 0x0

    .line 190
    .local v1, result:Z
    iget-object v4, p0, Lcom/android/server/enterprise/EdmStorageProvider;->mEdmDbHelper:Lcom/android/server/enterprise/EdmStorageHelper;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, p2, p3, v5}, Lcom/android/server/enterprise/EdmStorageHelper;->select(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 191
    .local v0, cursor:Landroid/database/Cursor;
    if-nez v0, :cond_0

    .line 192
    new-instance v2, Lcom/android/server/enterprise/EdmStorageProvider$SettingNotFoundException;

    const-string v3, "Admin data is null"

    invoke-direct {v2, v3}, Lcom/android/server/enterprise/EdmStorageProvider$SettingNotFoundException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 194
    :cond_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 195
    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    if-ne v4, v2, :cond_2

    move v1, v2

    .line 197
    :cond_1
    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 198
    return v1

    :cond_2
    move v1, v3

    .line 195
    goto :goto_0
.end method

.method getBooleanList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 6
    .parameter "api"
    .parameter "policy"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 207
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 208
    .local v1, result:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Boolean;>;"
    iget-object v2, p0, Lcom/android/server/enterprise/EdmStorageProvider;->mEdmDbHelper:Lcom/android/server/enterprise/EdmStorageHelper;

    const-string v5, ""

    invoke-virtual {v2, p1, p2, v5}, Lcom/android/server/enterprise/EdmStorageHelper;->select(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 209
    .local v0, cursor:Landroid/database/Cursor;
    if-eqz v0, :cond_3

    .line 210
    :cond_0
    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 211
    invoke-interface {v0, v4}, Landroid/database/Cursor;->isNull(I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 212
    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    if-ne v2, v3, :cond_1

    move v2, v3

    :goto_1
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    move v2, v4

    goto :goto_1

    .line 215
    :cond_2
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 217
    :cond_3
    return-object v1
.end method

.method getCursorByAdmin(Ljava/lang/String;I[Ljava/lang/String;)Landroid/database/Cursor;
    .locals 1
    .parameter "sTableName"
    .parameter "Admin"
    .parameter "columns"

    .prologue
    .line 428
    iget-object v0, p0, Lcom/android/server/enterprise/EdmStorageProvider;->mEdmDbHelper:Lcom/android/server/enterprise/EdmStorageHelper;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/enterprise/EdmStorageHelper;->getCursorByAdmin(Ljava/lang/String;I[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method getCursorByAdminAndField(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    .locals 6
    .parameter "sTableName"
    .parameter "Admin"
    .parameter "field"
    .parameter "fieldValue"
    .parameter "columns"

    .prologue
    .line 421
    if-nez p4, :cond_0

    .line 422
    iget-object v0, p0, Lcom/android/server/enterprise/EdmStorageProvider;->mEdmDbHelper:Lcom/android/server/enterprise/EdmStorageHelper;

    invoke-virtual {v0, p1, p2, p5}, Lcom/android/server/enterprise/EdmStorageHelper;->getCursorByAdmin(Ljava/lang/String;I[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 424
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/server/enterprise/EdmStorageProvider;->mEdmDbHelper:Lcom/android/server/enterprise/EdmStorageHelper;

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/enterprise/EdmStorageHelper;->getCursorByAdminAndField(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    goto :goto_0
.end method

.method getDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 1
    .parameter "sTableName"
    .parameter "sColumns"
    .parameter "sValues"
    .parameter "ReturnColumns"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentValues;",
            ">;"
        }
    .end annotation

    .prologue
    .line 366
    iget-object v0, p0, Lcom/android/server/enterprise/EdmStorageProvider;->mEdmDbHelper:Lcom/android/server/enterprise/EdmStorageHelper;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/server/enterprise/EdmStorageHelper;->getDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method getGenericValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "name"

    .prologue
    .line 344
    const/4 v1, 0x0

    .line 345
    .local v1, result:Ljava/lang/String;
    iget-object v2, p0, Lcom/android/server/enterprise/EdmStorageProvider;->mEdmDbHelper:Lcom/android/server/enterprise/EdmStorageHelper;

    invoke-virtual {v2, p1}, Lcom/android/server/enterprise/EdmStorageHelper;->selectGenericTable(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 346
    .local v0, cursor:Landroid/database/Cursor;
    if-eqz v0, :cond_1

    .line 347
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 348
    const/4 v2, 0x0

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 350
    :cond_0
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 352
    :cond_1
    return-object v1
.end method

.method getInt(ILjava/lang/String;Ljava/lang/String;)I
    .locals 4
    .parameter "admin"
    .parameter "api"
    .parameter "policy"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/enterprise/EdmStorageProvider$SettingNotFoundException;
        }
    .end annotation

    .prologue
    .line 138
    const/4 v1, -0x1

    .line 139
    .local v1, result:I
    iget-object v2, p0, Lcom/android/server/enterprise/EdmStorageProvider;->mEdmDbHelper:Lcom/android/server/enterprise/EdmStorageHelper;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, p2, p3, v3}, Lcom/android/server/enterprise/EdmStorageHelper;->select(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 140
    .local v0, cursor:Landroid/database/Cursor;
    if-nez v0, :cond_0

    .line 141
    new-instance v2, Lcom/android/server/enterprise/EdmStorageProvider$SettingNotFoundException;

    const-string v3, "Admin data is null"

    invoke-direct {v2, v3}, Lcom/android/server/enterprise/EdmStorageProvider$SettingNotFoundException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 143
    :cond_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 144
    const/4 v2, 0x0

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    .line 146
    :cond_1
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 147
    return v1
.end method

.method getIntByAdminAndField(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 8
    .parameter "api"
    .parameter "Admin"
    .parameter "field"
    .parameter "fieldValue"
    .parameter "fieldToReturnValue"

    .prologue
    .line 397
    const/4 v7, -0x1

    .line 398
    .local v7, result:I
    iget-object v0, p0, Lcom/android/server/enterprise/EdmStorageProvider;->mEdmDbHelper:Lcom/android/server/enterprise/EdmStorageHelper;

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/enterprise/EdmStorageHelper;->getValueByAdminAndField(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 399
    .local v6, cursor:Landroid/database/Cursor;
    if-eqz v6, :cond_1

    .line 400
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 401
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    .line 403
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 405
    :cond_1
    return v7
.end method

.method getIntList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 5
    .parameter "api"
    .parameter "policy"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 156
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 157
    .local v1, result:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    iget-object v2, p0, Lcom/android/server/enterprise/EdmStorageProvider;->mEdmDbHelper:Lcom/android/server/enterprise/EdmStorageHelper;

    const-string v3, ""

    invoke-virtual {v2, p1, p2, v3}, Lcom/android/server/enterprise/EdmStorageHelper;->select(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 158
    .local v0, cursor:Landroid/database/Cursor;
    if-eqz v0, :cond_2

    .line 159
    :cond_0
    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 160
    invoke-interface {v0, v4}, Landroid/database/Cursor;->isNull(I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 161
    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 164
    :cond_1
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 166
    :cond_2
    return-object v1
.end method

.method getIntList(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 4
    .parameter "api"
    .parameter "field"
    .parameter "fieldValue"
    .parameter "fieldResult"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 461
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 462
    .local v1, result:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    iget-object v2, p0, Lcom/android/server/enterprise/EdmStorageProvider;->mEdmDbHelper:Lcom/android/server/enterprise/EdmStorageHelper;

    invoke-virtual {v2, p1, p2, p3, p4}, Lcom/android/server/enterprise/EdmStorageHelper;->select(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 463
    .local v0, cursor:Landroid/database/Cursor;
    if-eqz v0, :cond_2

    .line 464
    :cond_0
    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 465
    invoke-interface {v0, v3}, Landroid/database/Cursor;->isNull(I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 466
    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 469
    :cond_1
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 471
    :cond_2
    return-object v1
.end method

.method getLongList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 5
    .parameter "api"
    .parameter "policy"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 501
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 502
    .local v1, result:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    iget-object v2, p0, Lcom/android/server/enterprise/EdmStorageProvider;->mEdmDbHelper:Lcom/android/server/enterprise/EdmStorageHelper;

    const-string v3, ""

    invoke-virtual {v2, p1, p2, v3}, Lcom/android/server/enterprise/EdmStorageHelper;->select(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 503
    .local v0, cursor:Landroid/database/Cursor;
    if-eqz v0, :cond_2

    .line 504
    :cond_0
    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 505
    invoke-interface {v0, v4}, Landroid/database/Cursor;->isNull(I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 506
    invoke-interface {v0, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 509
    :cond_1
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 511
    :cond_2
    return-object v1
.end method

.method getLongList(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 5
    .parameter "api"
    .parameter "field"
    .parameter "fieldValue"
    .parameter "fieldResult"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 482
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 483
    .local v1, result:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    iget-object v2, p0, Lcom/android/server/enterprise/EdmStorageProvider;->mEdmDbHelper:Lcom/android/server/enterprise/EdmStorageHelper;

    invoke-virtual {v2, p1, p2, p3, p4}, Lcom/android/server/enterprise/EdmStorageHelper;->select(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 484
    .local v0, cursor:Landroid/database/Cursor;
    if-eqz v0, :cond_2

    .line 485
    :cond_0
    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 486
    invoke-interface {v0, v4}, Landroid/database/Cursor;->isNull(I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 487
    invoke-interface {v0, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 490
    :cond_1
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 492
    :cond_2
    return-object v1
.end method

.method getString(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "admin"
    .parameter "api"
    .parameter "policy"

    .prologue
    .line 63
    const/4 v1, 0x0

    .line 64
    .local v1, result:Ljava/lang/String;
    iget-object v2, p0, Lcom/android/server/enterprise/EdmStorageProvider;->mEdmDbHelper:Lcom/android/server/enterprise/EdmStorageHelper;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, p2, p3, v3}, Lcom/android/server/enterprise/EdmStorageHelper;->select(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 65
    .local v0, cursor:Landroid/database/Cursor;
    if-eqz v0, :cond_1

    .line 66
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 67
    const/4 v2, 0x0

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 69
    :cond_0
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 71
    :cond_1
    return-object v1
.end method

.method getString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "api"
    .parameter "field"
    .parameter "fieldValue"
    .parameter "fieldResult"

    .prologue
    .line 523
    const/4 v1, 0x0

    .line 524
    .local v1, result:Ljava/lang/String;
    iget-object v2, p0, Lcom/android/server/enterprise/EdmStorageProvider;->mEdmDbHelper:Lcom/android/server/enterprise/EdmStorageHelper;

    invoke-virtual {v2, p1, p2, p3, p4}, Lcom/android/server/enterprise/EdmStorageHelper;->select(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 525
    .local v0, cursor:Landroid/database/Cursor;
    if-eqz v0, :cond_1

    .line 526
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 527
    const/4 v2, 0x0

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 529
    :cond_0
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 531
    :cond_1
    return-object v1
.end method

.method getStringByAdminAndField(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .parameter "api"
    .parameter "Admin"
    .parameter "field"
    .parameter "fieldValue"
    .parameter "fieldToReturnValue"

    .prologue
    .line 409
    const/4 v7, 0x0

    .line 410
    .local v7, result:Ljava/lang/String;
    iget-object v0, p0, Lcom/android/server/enterprise/EdmStorageProvider;->mEdmDbHelper:Lcom/android/server/enterprise/EdmStorageHelper;

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/enterprise/EdmStorageHelper;->getValueByAdminAndField(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 411
    .local v6, cursor:Landroid/database/Cursor;
    if-eqz v6, :cond_1

    .line 412
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 413
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 415
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 417
    :cond_1
    return-object v7
.end method

.method getStringList(Ljava/lang/String;[Ljava/lang/String;Ljava/util/HashMap;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 1
    .parameter "tableName"
    .parameter "returnColumns"
    .parameter
    .parameter "orderBy"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Landroid/database/Cursor;"
        }
    .end annotation

    .prologue
    .line 83
    .local p3, fieldsAndValues:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/android/server/enterprise/EdmStorageProvider;->mEdmDbHelper:Lcom/android/server/enterprise/EdmStorageHelper;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/server/enterprise/EdmStorageHelper;->select(Ljava/lang/String;[Ljava/lang/String;Ljava/util/HashMap;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method getStringList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 5
    .parameter "api"
    .parameter "policy"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 93
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 94
    .local v1, result:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    iget-object v2, p0, Lcom/android/server/enterprise/EdmStorageProvider;->mEdmDbHelper:Lcom/android/server/enterprise/EdmStorageHelper;

    const-string v3, ""

    invoke-virtual {v2, p1, p2, v3}, Lcom/android/server/enterprise/EdmStorageHelper;->select(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 95
    .local v0, cursor:Landroid/database/Cursor;
    if-eqz v0, :cond_2

    .line 96
    :cond_0
    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 97
    invoke-interface {v0, v4}, Landroid/database/Cursor;->isNull(I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 98
    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 101
    :cond_1
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 103
    :cond_2
    return-object v1
.end method

.method getValues(ILjava/lang/String;[Ljava/lang/String;)Landroid/content/ContentValues;
    .locals 2
    .parameter "admin"
    .parameter "api"
    .parameter "columns"

    .prologue
    .line 227
    iget-object v0, p0, Lcom/android/server/enterprise/EdmStorageProvider;->mEdmDbHelper:Lcom/android/server/enterprise/EdmStorageHelper;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p2, v1, p3}, Lcom/android/server/enterprise/EdmStorageHelper;->getValues(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentValues;

    move-result-object v0

    return-object v0
.end method

.method getValuesList(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .parameter "api"
    .parameter "columns"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/content/ContentValues;",
            ">;"
        }
    .end annotation

    .prologue
    .line 237
    iget-object v0, p0, Lcom/android/server/enterprise/EdmStorageProvider;->mEdmDbHelper:Lcom/android/server/enterprise/EdmStorageHelper;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/enterprise/EdmStorageHelper;->getValuesList(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method getValuesList(Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;)Ljava/util/List;
    .locals 1
    .parameter "api"
    .parameter "columns"
    .parameter "cvValues"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            "Landroid/content/ContentValues;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/content/ContentValues;",
            ">;"
        }
    .end annotation

    .prologue
    .line 247
    iget-object v0, p0, Lcom/android/server/enterprise/EdmStorageProvider;->mEdmDbHelper:Lcom/android/server/enterprise/EdmStorageHelper;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/enterprise/EdmStorageHelper;->getValuesList(Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method getValuesListBiggerThan(Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;)Ljava/util/List;
    .locals 1
    .parameter "api"
    .parameter "columns"
    .parameter "cvValues"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            "Landroid/content/ContentValues;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/content/ContentValues;",
            ">;"
        }
    .end annotation

    .prologue
    .line 267
    iget-object v0, p0, Lcom/android/server/enterprise/EdmStorageProvider;->mEdmDbHelper:Lcom/android/server/enterprise/EdmStorageHelper;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/enterprise/EdmStorageHelper;->getValuesListBiggerThan(Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method insertConfiguration(Ljava/lang/String;Landroid/content/ContentValues;)V
    .locals 1
    .parameter "sTableName"
    .parameter "cv"

    .prologue
    .line 552
    iget-object v0, p0, Lcom/android/server/enterprise/EdmStorageProvider;->mEdmDbHelper:Lcom/android/server/enterprise/EdmStorageHelper;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/enterprise/EdmStorageHelper;->insertData(Ljava/lang/String;Landroid/content/ContentValues;)Z

    .line 553
    return-void
.end method

.method putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z
    .locals 3
    .parameter "admin"
    .parameter "api"
    .parameter "policy"
    .parameter "value"

    .prologue
    .line 177
    iget-object v1, p0, Lcom/android/server/enterprise/EdmStorageProvider;->mEdmDbHelper:Lcom/android/server/enterprise/EdmStorageHelper;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    if-eqz p4, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, p2, v2, p3, v0}, Lcom/android/server/enterprise/EdmStorageHelper;->insertOrUpdate(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method putDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;)Z
    .locals 1
    .parameter "sTableName"
    .parameter "sColumns"
    .parameter "sValues"
    .parameter "cv"

    .prologue
    .line 380
    iget-object v0, p0, Lcom/android/server/enterprise/EdmStorageProvider;->mEdmDbHelper:Lcom/android/server/enterprise/EdmStorageHelper;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/server/enterprise/EdmStorageHelper;->putDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;)Z

    move-result v0

    return v0
.end method

.method putGenericValue(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .parameter "name"
    .parameter "value"

    .prologue
    .line 336
    iget-object v0, p0, Lcom/android/server/enterprise/EdmStorageProvider;->mEdmDbHelper:Lcom/android/server/enterprise/EdmStorageHelper;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/enterprise/EdmStorageHelper;->insertOrUpdateGenericTable(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method putInt(ILjava/lang/String;Ljava/lang/String;I)Z
    .locals 3
    .parameter "admin"
    .parameter "api"
    .parameter "policy"
    .parameter "value"

    .prologue
    .line 114
    iget-object v0, p0, Lcom/android/server/enterprise/EdmStorageProvider;->mEdmDbHelper:Lcom/android/server/enterprise/EdmStorageHelper;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, p2, v1, p3, v2}, Lcom/android/server/enterprise/EdmStorageHelper;->insertOrUpdate(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method putLong(ILjava/lang/String;Ljava/lang/String;J)Z
    .locals 3
    .parameter "admin"
    .parameter "api"
    .parameter "policy"
    .parameter "value"

    .prologue
    .line 126
    iget-object v0, p0, Lcom/android/server/enterprise/EdmStorageProvider;->mEdmDbHelper:Lcom/android/server/enterprise/EdmStorageHelper;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p4, p5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, p2, v1, p3, v2}, Lcom/android/server/enterprise/EdmStorageHelper;->insertOrUpdate(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method putString(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .parameter "admin"
    .parameter "api"
    .parameter "policy"
    .parameter "value"

    .prologue
    .line 53
    iget-object v0, p0, Lcom/android/server/enterprise/EdmStorageProvider;->mEdmDbHelper:Lcom/android/server/enterprise/EdmStorageHelper;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p2, v1, p3, p4}, Lcom/android/server/enterprise/EdmStorageHelper;->insertOrUpdate(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method putValues(ILjava/lang/String;Landroid/content/ContentValues;)Z
    .locals 2
    .parameter "admin"
    .parameter "api"
    .parameter "cvValues"

    .prologue
    .line 277
    iget-object v0, p0, Lcom/android/server/enterprise/EdmStorageProvider;->mEdmDbHelper:Lcom/android/server/enterprise/EdmStorageHelper;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p2, v1, p3}, Lcom/android/server/enterprise/EdmStorageHelper;->putValues(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)Z

    move-result v0

    return v0
.end method

.method putValues(Ljava/lang/String;Landroid/content/ContentValues;)Z
    .locals 1
    .parameter "api"
    .parameter "cvValues"

    .prologue
    .line 296
    iget-object v0, p0, Lcom/android/server/enterprise/EdmStorageProvider;->mEdmDbHelper:Lcom/android/server/enterprise/EdmStorageHelper;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/enterprise/EdmStorageHelper;->putValues(Ljava/lang/String;Landroid/content/ContentValues;)Z

    move-result v0

    return v0
.end method

.method putValues(Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/ContentValues;)Z
    .locals 1
    .parameter "api"
    .parameter "cvUpdateValues"
    .parameter "cvWhereValues"

    .prologue
    .line 287
    iget-object v0, p0, Lcom/android/server/enterprise/EdmStorageProvider;->mEdmDbHelper:Lcom/android/server/enterprise/EdmStorageHelper;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/enterprise/EdmStorageHelper;->putValues(Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/ContentValues;)Z

    move-result v0

    return v0
.end method

.method putValuesForAdminAndField(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)Z
    .locals 6
    .parameter "sTableName"
    .parameter "Admin"
    .parameter "sColumn"
    .parameter "value"
    .parameter "cvValues"

    .prologue
    .line 432
    iget-object v0, p0, Lcom/android/server/enterprise/EdmStorageProvider;->mEdmDbHelper:Lcom/android/server/enterprise/EdmStorageHelper;

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/enterprise/EdmStorageHelper;->putValuesForAdminAndField(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)Z

    move-result v0

    return v0
.end method

.method putValuesNoUpdate(Ljava/lang/String;Landroid/content/ContentValues;)Z
    .locals 1
    .parameter "tablename"
    .parameter "cv"

    .prologue
    .line 257
    iget-object v0, p0, Lcom/android/server/enterprise/EdmStorageProvider;->mEdmDbHelper:Lcom/android/server/enterprise/EdmStorageHelper;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/enterprise/EdmStorageHelper;->putValuesNoUpdate(Ljava/lang/String;Landroid/content/ContentValues;)Z

    move-result v0

    return v0
.end method

.method remove(Ljava/lang/String;)Z
    .locals 1
    .parameter "sTableName"

    .prologue
    .line 541
    iget-object v0, p0, Lcom/android/server/enterprise/EdmStorageProvider;->mEdmDbHelper:Lcom/android/server/enterprise/EdmStorageHelper;

    invoke-virtual {v0, p1}, Lcom/android/server/enterprise/EdmStorageHelper;->remove(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method removeAdminFromDatabase(I)Z
    .locals 1
    .parameter "uid"

    .prologue
    .line 316
    iget-object v0, p0, Lcom/android/server/enterprise/EdmStorageProvider;->mEdmDbHelper:Lcom/android/server/enterprise/EdmStorageHelper;

    invoke-virtual {v0, p1}, Lcom/android/server/enterprise/EdmStorageHelper;->removeAdmin(I)Z

    move-result v0

    return v0
.end method

.method removeByAdminAndField(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .parameter "sTableName"
    .parameter "Admin"
    .parameter "sColumn"
    .parameter "value"

    .prologue
    .line 444
    iget-object v0, p0, Lcom/android/server/enterprise/EdmStorageProvider;->mEdmDbHelper:Lcom/android/server/enterprise/EdmStorageHelper;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/server/enterprise/EdmStorageHelper;->removeByAdminAndField(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method removeByFields(Ljava/lang/String;Ljava/util/HashMap;)I
    .locals 1
    .parameter "tablename"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 450
    .local p2, fieldsAndValues:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/android/server/enterprise/EdmStorageProvider;->mEdmDbHelper:Lcom/android/server/enterprise/EdmStorageHelper;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/enterprise/EdmStorageHelper;->removeByFields(Ljava/lang/String;Ljava/util/HashMap;)I

    move-result v0

    return v0
.end method

.method removeByFilterSmallerThan(Ljava/lang/String;Landroid/content/ContentValues;)Z
    .locals 1
    .parameter "sTableName"
    .parameter "cvValues"

    .prologue
    .line 563
    iget-object v0, p0, Lcom/android/server/enterprise/EdmStorageProvider;->mEdmDbHelper:Lcom/android/server/enterprise/EdmStorageHelper;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/enterprise/EdmStorageHelper;->removeByFilterSmallerThan(Ljava/lang/String;Landroid/content/ContentValues;)Z

    move-result v0

    return v0
.end method

.method update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/util/HashMap;)I
    .locals 1
    .parameter "tablename"
    .parameter "cv"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/content/ContentValues;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 569
    .local p3, whereParameters:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/android/server/enterprise/EdmStorageProvider;->mEdmDbHelper:Lcom/android/server/enterprise/EdmStorageHelper;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/enterprise/EdmStorageHelper;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/util/HashMap;)I

    move-result v0

    return v0
.end method
