.class public Lcom/android/providers/media/SmartSortScanner;
.super Ljava/lang/Object;
.source "SmartSortScanner.java"


# instance fields
.field private mApp:Lcom/android/providers/media/SmartSortContentApp;


# direct methods
.method public constructor <init>(Lcom/android/providers/media/SmartSortContentApp;)V
    .locals 2
    .parameter "app"

    .prologue
    .line 21
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 16
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/providers/media/SmartSortScanner;->mApp:Lcom/android/providers/media/SmartSortContentApp;

    .line 22
    const-string v0, "SmartSortScanner"

    const-string v1, "SmartSortScanner()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 23
    iput-object p1, p0, Lcom/android/providers/media/SmartSortScanner;->mApp:Lcom/android/providers/media/SmartSortContentApp;

    .line 24
    return-void
.end method

.method private scanFile(ILjava/lang/String;)I
    .locals 13
    .parameter "fileid"
    .parameter "filepath"

    .prologue
    .line 79
    const-string v10, "SmartSortScanner"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "scanFile():fileid=("

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "), name=("

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ")"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    const/4 v6, -0x1

    .line 85
    .local v6, object_type:I
    :try_start_0
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v11, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "/"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v9

    .line 86
    .local v9, uri:Landroid/net/Uri;
    iget-object v10, p0, Lcom/android/providers/media/SmartSortScanner;->mApp:Lcom/android/providers/media/SmartSortContentApp;

    invoke-virtual {v10}, Lcom/android/providers/media/SmartSortContentApp;->getEngine()Lcom/samsung/dmc/classifier/document/engine/DocumentClassifierEngine;

    move-result-object v1

    .line 87
    .local v1, documentClassifierEngine:Lcom/samsung/dmc/classifier/document/engine/DocumentClassifierEngine;
    if-eqz v1, :cond_0

    .line 88
    invoke-virtual {v1, v9}, Lcom/samsung/dmc/classifier/document/engine/DocumentClassifierEngine;->imageProcessUri(Landroid/net/Uri;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v6

    .line 95
    .end local v1           #documentClassifierEngine:Lcom/samsung/dmc/classifier/document/engine/DocumentClassifierEngine;
    .end local v9           #uri:Landroid/net/Uri;
    :cond_0
    :goto_0
    if-lez v6, :cond_2

    .line 96
    const-string v10, "SmartSortScanner"

    const-string v11, "this is document."

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    :goto_1
    iget-object v10, p0, Lcom/android/providers/media/SmartSortScanner;->mApp:Lcom/android/providers/media/SmartSortContentApp;

    invoke-virtual {v10}, Lcom/android/providers/media/SmartSortContentApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 104
    .local v0, cr:Landroid/content/ContentResolver;
    if-eqz v0, :cond_1

    .line 105
    new-instance v7, Landroid/content/ContentValues;

    invoke-direct {v7}, Landroid/content/ContentValues;-><init>()V

    .line 106
    .local v7, updateValues:Landroid/content/ContentValues;
    const-string v10, "object_count"

    const/4 v11, 0x1

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v7, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 107
    const-string v10, "external"

    invoke-static {v10}, Landroid/provider/MediaStore$Files;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v10

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "_id="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x0

    invoke-virtual {v0, v10, v7, v11, v12}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v8

    .line 111
    .local v8, updatedNum:I
    const-string v10, "SmartSortScanner"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "updatedNum=("

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ")"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v11, Lcom/android/providers/media/SmartSortColumns;->SMART_SORT_INSERT_URI:Landroid/net/Uri;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "/"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 116
    .local v3, insertRequestUri:Landroid/net/Uri;
    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    .line 117
    .local v5, insertValues:Landroid/content/ContentValues;
    const-string v10, "file_id"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v5, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 118
    const-string v10, "object_type"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v5, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 119
    invoke-virtual {v0, v3, v5}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v4

    .line 121
    .local v4, insertResultUri:Landroid/net/Uri;
    const-string v10, "SmartSortScanner"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "insertResultUri=("

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ")"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    .end local v3           #insertRequestUri:Landroid/net/Uri;
    .end local v4           #insertResultUri:Landroid/net/Uri;
    .end local v5           #insertValues:Landroid/content/ContentValues;
    .end local v7           #updateValues:Landroid/content/ContentValues;
    .end local v8           #updatedNum:I
    :cond_1
    return v6

    .line 90
    .end local v0           #cr:Landroid/content/ContentResolver;
    :catch_0
    move-exception v2

    .line 91
    .local v2, e:Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0

    .line 92
    .end local v2           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v10

    throw v10

    .line 98
    :cond_2
    const-string v10, "SmartSortScanner"

    const-string v11, "this is picture."

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    const/4 v6, 0x0

    goto/16 :goto_1
.end method


# virtual methods
.method protected sync()V
    .locals 12

    .prologue
    const/4 v4, 0x0

    const/4 v11, 0x1

    const/4 v5, 0x0

    .line 30
    const-string v1, "SmartSortScanner"

    const-string v2, "sync()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 32
    iget-object v1, p0, Lcom/android/providers/media/SmartSortScanner;->mApp:Lcom/android/providers/media/SmartSortContentApp;

    invoke-virtual {v1}, Lcom/android/providers/media/SmartSortContentApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 33
    .local v0, cr:Landroid/content/ContentResolver;
    const/4 v7, 0x0

    .line 34
    .local v7, fileid:I
    const/4 v8, 0x0

    .line 37
    .local v8, filepath:Ljava/lang/String;
    iget-object v1, p0, Lcom/android/providers/media/SmartSortScanner;->mApp:Lcom/android/providers/media/SmartSortContentApp;

    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.android.providers.media.SMART_SORT_STARTED"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/android/providers/media/SmartSortContentApp;->sendBroadcast(Landroid/content/Intent;)V

    .line 39
    if-eqz v0, :cond_2

    .line 41
    const-string v1, "external"

    invoke-static {v1}, Landroid/provider/MediaStore$Files;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "_id"

    aput-object v3, v2, v5

    const-string v3, "_data"

    aput-object v3, v2, v11

    const-string v3, "media_type = 1 AND object_count = -1"

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 47
    .local v6, cursor:Landroid/database/Cursor;
    if-eqz v6, :cond_1

    .line 48
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v10

    .line 49
    .local v10, totalNum:I
    const/4 v9, 0x0

    .line 51
    .local v9, scannedNum:I
    if-lez v10, :cond_1

    .line 52
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 54
    :cond_0
    const/4 v1, 0x0

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    .line 55
    const/4 v1, 0x1

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 56
    invoke-direct {p0, v7, v8}, Lcom/android/providers/media/SmartSortScanner;->scanFile(ILjava/lang/String;)I

    .line 57
    add-int/lit8 v9, v9, 0x1

    .line 59
    iget-object v1, p0, Lcom/android/providers/media/SmartSortScanner;->mApp:Lcom/android/providers/media/SmartSortContentApp;

    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.android.providers.media.SMART_SORT_PROGRESS"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Lcom/android/providers/media/SmartSortColumns;->SMART_SORT_PROGRESS_URI:Landroid/net/Uri;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v1, v2}, Lcom/android/providers/media/SmartSortContentApp;->sendBroadcast(Landroid/content/Intent;)V

    .line 62
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-nez v1, :cond_0

    .line 66
    .end local v9           #scannedNum:I
    .end local v10           #totalNum:I
    :cond_1
    if-eqz v6, :cond_2

    .line 67
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 72
    .end local v6           #cursor:Landroid/database/Cursor;
    :cond_2
    iget-object v1, p0, Lcom/android/providers/media/SmartSortScanner;->mApp:Lcom/android/providers/media/SmartSortContentApp;

    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.android.providers.media.SMART_SORT_FINISHED"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/android/providers/media/SmartSortContentApp;->sendBroadcast(Landroid/content/Intent;)V

    .line 73
    return-void

    .line 66
    .restart local v6       #cursor:Landroid/database/Cursor;
    :catchall_0
    move-exception v1

    if-eqz v6, :cond_3

    .line 67
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v1
.end method
