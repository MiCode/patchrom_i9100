.class Lcom/android/providers/media/MediaProvider$CleanerThread;
.super Ljava/lang/Thread;
.source "MediaProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/providers/media/MediaProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "CleanerThread"
.end annotation


# instance fields
.field private context:Landroid/content/Context;

.field private storage:Landroid/os/storage/StorageVolume;

.field final synthetic this$0:Lcom/android/providers/media/MediaProvider;


# direct methods
.method constructor <init>(Lcom/android/providers/media/MediaProvider;Landroid/os/storage/StorageVolume;Landroid/content/Context;)V
    .locals 0
    .parameter
    .parameter "storage"
    .parameter "context"

    .prologue
    .line 312
    iput-object p1, p0, Lcom/android/providers/media/MediaProvider$CleanerThread;->this$0:Lcom/android/providers/media/MediaProvider;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 313
    iput-object p2, p0, Lcom/android/providers/media/MediaProvider$CleanerThread;->storage:Landroid/os/storage/StorageVolume;

    .line 314
    iput-object p3, p0, Lcom/android/providers/media/MediaProvider$CleanerThread;->context:Landroid/content/Context;

    .line 315
    return-void
.end method


# virtual methods
.method public run()V
    .locals 17

    .prologue
    .line 320
    const-string v13, "CleanerThread"

    move-object/from16 v0, p0

    invoke-super {v0, v13}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 321
    const-wide/16 v1, 0x0

    .local v1, beforeDeletingTime:J
    const-wide/16 v5, 0x0

    .line 322
    .local v5, deletingTime:J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 323
    invoke-static {}, Lcom/android/providers/media/MediaProvider;->access$000()Ljava/lang/String;

    move-result-object v13

    const-string v14, "Start CleanerThread"

    invoke-static {v13, v14}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 325
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/providers/media/MediaProvider$CleanerThread;->this$0:Lcom/android/providers/media/MediaProvider;

    #getter for: Lcom/android/providers/media/MediaProvider;->mDatabases:Ljava/util/HashMap;
    invoke-static {v13}, Lcom/android/providers/media/MediaProvider;->access$300(Lcom/android/providers/media/MediaProvider;)Ljava/util/HashMap;

    move-result-object v14

    monitor-enter v14

    .line 326
    :try_start_0
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/providers/media/MediaProvider$CleanerThread;->this$0:Lcom/android/providers/media/MediaProvider;

    #getter for: Lcom/android/providers/media/MediaProvider;->mDatabases:Ljava/util/HashMap;
    invoke-static {v13}, Lcom/android/providers/media/MediaProvider;->access$300(Lcom/android/providers/media/MediaProvider;)Ljava/util/HashMap;

    move-result-object v13

    const-string v15, "external"

    invoke-virtual {v13, v15}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/providers/media/MediaProvider$DatabaseHelper;

    .line 327
    .local v3, database:Lcom/android/providers/media/MediaProvider$DatabaseHelper;
    monitor-exit v14
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 328
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "file://"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/providers/media/MediaProvider$CleanerThread;->storage:Landroid/os/storage/StorageVolume;

    invoke-virtual {v14}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v9

    .line 329
    .local v9, uri:Landroid/net/Uri;
    const/4 v8, 0x0

    .line 330
    .local v8, result:I
    if-eqz v3, :cond_0

    .line 331
    invoke-virtual {v3}, Lcom/android/providers/media/MediaProvider$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v4

    .line 333
    .local v4, db:Landroid/database/sqlite/SQLiteDatabase;
    :try_start_1
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/providers/media/MediaProvider$CleanerThread;->context:Landroid/content/Context;

    new-instance v14, Landroid/content/Intent;

    const-string v15, "android.intent.action.MEDIA_SCANNER_STARTED"

    invoke-direct {v14, v15, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v13, v14}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 335
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/providers/media/MediaProvider$CleanerThread;->this$0:Lcom/android/providers/media/MediaProvider;

    const/4 v14, 0x1

    #setter for: Lcom/android/providers/media/MediaProvider;->mDisableMtpObjectCallbacks:Z
    invoke-static {v13, v14}, Lcom/android/providers/media/MediaProvider;->access$402(Lcom/android/providers/media/MediaProvider;Z)Z

    .line 336
    invoke-static {}, Lcom/android/providers/media/MediaProvider;->access$000()Ljava/lang/String;

    move-result-object v13

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "deleting all entries for storage "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/providers/media/MediaProvider$CleanerThread;->storage:Landroid/os/storage/StorageVolume;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 340
    new-instance v10, Landroid/content/ContentValues;

    invoke-direct {v10}, Landroid/content/ContentValues;-><init>()V

    .line 341
    .local v10, values:Landroid/content/ContentValues;
    const-string v13, "_data"

    const-string v14, ""

    invoke-virtual {v10, v13, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 342
    const-string v11, "storage_id=?"

    .line 343
    .local v11, where:Ljava/lang/String;
    const/4 v13, 0x1

    new-array v12, v13, [Ljava/lang/String;

    const/4 v13, 0x0

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/providers/media/MediaProvider$CleanerThread;->storage:Landroid/os/storage/StorageVolume;

    invoke-virtual {v14}, Landroid/os/storage/StorageVolume;->getStorageId()I

    move-result v14

    invoke-static {v14}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v14

    aput-object v14, v12, v13

    .line 345
    .local v12, whereArgs:[Ljava/lang/String;
    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 347
    const-string v13, "files"

    invoke-virtual {v4, v13, v10, v11, v12}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 350
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/providers/media/MediaProvider$CleanerThread;->this$0:Lcom/android/providers/media/MediaProvider;

    #calls: Lcom/android/providers/media/MediaProvider;->createAudioDeleteTrigger(Landroid/database/sqlite/SQLiteDatabase;)V
    invoke-static {v13, v4}, Lcom/android/providers/media/MediaProvider;->access$500(Lcom/android/providers/media/MediaProvider;Landroid/database/sqlite/SQLiteDatabase;)V

    .line 353
    const-string v13, "files"

    invoke-virtual {v4, v13, v11, v12}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v8

    .line 356
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/providers/media/MediaProvider$CleanerThread;->this$0:Lcom/android/providers/media/MediaProvider;

    #calls: Lcom/android/providers/media/MediaProvider;->deleteAudioDeleteTrigger(Landroid/database/sqlite/SQLiteDatabase;)V
    invoke-static {v13, v4}, Lcom/android/providers/media/MediaProvider;->access$600(Lcom/android/providers/media/MediaProvider;Landroid/database/sqlite/SQLiteDatabase;)V

    .line 358
    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    .line 360
    invoke-static {}, Lcom/android/providers/media/MediaProvider;->access$000()Ljava/lang/String;

    move-result-object v13

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "deleted for storage "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/providers/media/MediaProvider$CleanerThread;->storage:Landroid/os/storage/StorageVolume;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 365
    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 366
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/providers/media/MediaProvider$CleanerThread;->context:Landroid/content/Context;

    new-instance v14, Landroid/content/Intent;

    const-string v15, "android.intent.action.MEDIA_SCANNER_FINISHED"

    invoke-direct {v14, v15, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v13, v14}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 368
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/providers/media/MediaProvider$CleanerThread;->this$0:Lcom/android/providers/media/MediaProvider;

    const/4 v14, 0x0

    #setter for: Lcom/android/providers/media/MediaProvider;->mDisableMtpObjectCallbacks:Z
    invoke-static {v13, v14}, Lcom/android/providers/media/MediaProvider;->access$402(Lcom/android/providers/media/MediaProvider;Z)Z

    .line 369
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v13

    sub-long v5, v13, v1

    .line 370
    invoke-static {}, Lcom/android/providers/media/MediaProvider;->access$000()Ljava/lang/String;

    move-result-object v13

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Finish CleanerThread. Deleted rows : "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ". Time : "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "ms."

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 373
    .end local v10           #values:Landroid/content/ContentValues;
    .end local v11           #where:Ljava/lang/String;
    .end local v12           #whereArgs:[Ljava/lang/String;
    :goto_0
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/providers/media/MediaProvider$CleanerThread;->context:Landroid/content/Context;

    invoke-virtual {v13}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v13

    const-string v14, "external"

    invoke-static {v14}, Landroid/provider/MediaStore$Audio$Media;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v14

    const/4 v15, 0x0

    invoke-virtual {v13, v14, v15}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 375
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/providers/media/MediaProvider$CleanerThread;->context:Landroid/content/Context;

    invoke-virtual {v13}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v13

    const-string v14, "external"

    invoke-static {v14}, Landroid/provider/MediaStore$Images$Media;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v14

    const/4 v15, 0x0

    invoke-virtual {v13, v14, v15}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 377
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/providers/media/MediaProvider$CleanerThread;->context:Landroid/content/Context;

    invoke-virtual {v13}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v13

    const-string v14, "external"

    invoke-static {v14}, Landroid/provider/MediaStore$Video$Media;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v14

    const/4 v15, 0x0

    invoke-virtual {v13, v14, v15}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 379
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/providers/media/MediaProvider$CleanerThread;->context:Landroid/content/Context;

    invoke-virtual {v13}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v13

    const-string v14, "external"

    invoke-static {v14}, Landroid/provider/MediaStore$Files;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v14

    const/4 v15, 0x0

    invoke-virtual {v13, v14, v15}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 383
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/providers/media/MediaProvider$CleanerThread;->context:Landroid/content/Context;

    invoke-virtual {v13}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v13

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v15, Landroid/provider/MediaStore$Audio$Playlists;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v15}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "/#/members"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v14

    const/4 v15, 0x0

    invoke-virtual {v13, v14, v15}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 387
    .end local v4           #db:Landroid/database/sqlite/SQLiteDatabase;
    :cond_0
    return-void

    .line 327
    .end local v3           #database:Lcom/android/providers/media/MediaProvider$DatabaseHelper;
    .end local v8           #result:I
    .end local v9           #uri:Landroid/net/Uri;
    :catchall_0
    move-exception v13

    :try_start_2
    monitor-exit v14
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v13

    .line 362
    .restart local v3       #database:Lcom/android/providers/media/MediaProvider$DatabaseHelper;
    .restart local v4       #db:Landroid/database/sqlite/SQLiteDatabase;
    .restart local v8       #result:I
    .restart local v9       #uri:Landroid/net/Uri;
    :catch_0
    move-exception v7

    .line 363
    .local v7, e:Ljava/lang/Exception;
    :try_start_3
    invoke-static {}, Lcom/android/providers/media/MediaProvider;->access$000()Ljava/lang/String;

    move-result-object v13

    const-string v14, "exception deleting storage entries"

    invoke-static {v13, v14, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 365
    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 366
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/providers/media/MediaProvider$CleanerThread;->context:Landroid/content/Context;

    new-instance v14, Landroid/content/Intent;

    const-string v15, "android.intent.action.MEDIA_SCANNER_FINISHED"

    invoke-direct {v14, v15, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v13, v14}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 368
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/providers/media/MediaProvider$CleanerThread;->this$0:Lcom/android/providers/media/MediaProvider;

    const/4 v14, 0x0

    #setter for: Lcom/android/providers/media/MediaProvider;->mDisableMtpObjectCallbacks:Z
    invoke-static {v13, v14}, Lcom/android/providers/media/MediaProvider;->access$402(Lcom/android/providers/media/MediaProvider;Z)Z

    .line 369
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v13

    sub-long v5, v13, v1

    .line 370
    invoke-static {}, Lcom/android/providers/media/MediaProvider;->access$000()Ljava/lang/String;

    move-result-object v13

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Finish CleanerThread. Deleted rows : "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ". Time : "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "ms."

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 365
    .end local v7           #e:Ljava/lang/Exception;
    :catchall_1
    move-exception v13

    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 366
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/providers/media/MediaProvider$CleanerThread;->context:Landroid/content/Context;

    new-instance v15, Landroid/content/Intent;

    const-string v16, "android.intent.action.MEDIA_SCANNER_FINISHED"

    move-object/from16 v0, v16

    invoke-direct {v15, v0, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v14, v15}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 368
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/providers/media/MediaProvider$CleanerThread;->this$0:Lcom/android/providers/media/MediaProvider;

    const/4 v15, 0x0

    #setter for: Lcom/android/providers/media/MediaProvider;->mDisableMtpObjectCallbacks:Z
    invoke-static {v14, v15}, Lcom/android/providers/media/MediaProvider;->access$402(Lcom/android/providers/media/MediaProvider;Z)Z

    .line 369
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    sub-long v5, v14, v1

    .line 370
    invoke-static {}, Lcom/android/providers/media/MediaProvider;->access$000()Ljava/lang/String;

    move-result-object v14

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Finish CleanerThread. Deleted rows : "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ". Time : "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "ms."

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    throw v13
.end method
