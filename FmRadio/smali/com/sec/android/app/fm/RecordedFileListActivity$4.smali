.class Lcom/sec/android/app/fm/RecordedFileListActivity$4;
.super Ljava/lang/Object;
.source "RecordedFileListActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/fm/RecordedFileListActivity;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/fm/RecordedFileListActivity;


# direct methods
.method constructor <init>(Lcom/sec/android/app/fm/RecordedFileListActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 307
    iput-object p1, p0, Lcom/sec/android/app/fm/RecordedFileListActivity$4;->this$0:Lcom/sec/android/app/fm/RecordedFileListActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 17
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 311
    const/4 v13, -0x1

    move/from16 v0, p2

    if-ne v0, v13, :cond_3

    .line 313
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/app/fm/RecordedFileListActivity$4;->this$0:Lcom/sec/android/app/fm/RecordedFileListActivity;

    #getter for: Lcom/sec/android/app/fm/RecordedFileListActivity;->mCurrentSelectedId:J
    invoke-static {v13}, Lcom/sec/android/app/fm/RecordedFileListActivity;->access$100(Lcom/sec/android/app/fm/RecordedFileListActivity;)J

    move-result-wide v13

    const-wide/16 v15, -0x1

    cmp-long v13, v13, v15

    if-nez v13, :cond_0

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/app/fm/RecordedFileListActivity$4;->this$0:Lcom/sec/android/app/fm/RecordedFileListActivity;

    #getter for: Lcom/sec/android/app/fm/RecordedFileListActivity;->mSavedSelectedId:J
    invoke-static {v13}, Lcom/sec/android/app/fm/RecordedFileListActivity;->access$200(Lcom/sec/android/app/fm/RecordedFileListActivity;)J

    move-result-wide v13

    const-wide/16 v15, -0x1

    cmp-long v13, v13, v15

    if-eqz v13, :cond_0

    .line 314
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/app/fm/RecordedFileListActivity$4;->this$0:Lcom/sec/android/app/fm/RecordedFileListActivity;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/app/fm/RecordedFileListActivity$4;->this$0:Lcom/sec/android/app/fm/RecordedFileListActivity;

    #getter for: Lcom/sec/android/app/fm/RecordedFileListActivity;->mSavedSelectedId:J
    invoke-static {v14}, Lcom/sec/android/app/fm/RecordedFileListActivity;->access$200(Lcom/sec/android/app/fm/RecordedFileListActivity;)J

    move-result-wide v14

    #setter for: Lcom/sec/android/app/fm/RecordedFileListActivity;->mCurrentSelectedId:J
    invoke-static {v13, v14, v15}, Lcom/sec/android/app/fm/RecordedFileListActivity;->access$102(Lcom/sec/android/app/fm/RecordedFileListActivity;J)J

    .line 316
    :cond_0
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/app/fm/RecordedFileListActivity$4;->this$0:Lcom/sec/android/app/fm/RecordedFileListActivity;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/app/fm/RecordedFileListActivity$4;->this$0:Lcom/sec/android/app/fm/RecordedFileListActivity;

    #getter for: Lcom/sec/android/app/fm/RecordedFileListActivity;->mCurrentSelectedId:J
    invoke-static {v14}, Lcom/sec/android/app/fm/RecordedFileListActivity;->access$100(Lcom/sec/android/app/fm/RecordedFileListActivity;)J

    move-result-wide v14

    invoke-virtual {v13, v14, v15}, Lcom/sec/android/app/fm/RecordedFileListActivity;->getfilepath(J)Z

    .line 317
    invoke-static {}, Lcom/sec/android/app/fm/RecordedFileListActivity;->access$300()Ljava/lang/String;

    move-result-object v13

    if-eqz v13, :cond_3

    .line 318
    invoke-static {}, Lcom/sec/android/app/fm/RecordedFileListActivity;->access$300()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v6

    .line 319
    .local v6, len:I
    invoke-static {}, Lcom/sec/android/app/fm/RecordedFileListActivity;->access$300()Ljava/lang/String;

    move-result-object v13

    const/16 v14, 0x2f

    invoke-virtual {v13, v14}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v13

    add-int/lit8 v5, v13, 0x1

    .line 320
    .local v5, fileNameStart:I
    invoke-static {}, Lcom/sec/android/app/fm/RecordedFileListActivity;->access$300()Ljava/lang/String;

    move-result-object v13

    const/16 v14, 0x2e

    invoke-virtual {v13, v14}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v4

    .line 322
    .local v4, fileNameEnd:I
    if-ltz v5, :cond_5

    if-gt v5, v6, :cond_5

    if-ltz v4, :cond_5

    if-gt v4, v6, :cond_5

    move-object/from16 v13, p1

    .line 323
    check-cast v13, Lcom/sec/android/app/fm/ui/RenameDialog;

    invoke-virtual {v13}, Lcom/sec/android/app/fm/ui/RenameDialog;->getText()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    .line 324
    .local v8, newFileName:Ljava/lang/String;
    if-eqz v8, :cond_1

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v13

    if-nez v13, :cond_2

    .line 325
    :cond_1
    invoke-static {}, Lcom/sec/android/app/fm/RecordedFileListActivity;->access$000()Ljava/lang/String;

    move-result-object v13

    const-string v14, "empty file name"

    invoke-static {v13, v14}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 326
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/app/fm/RecordedFileListActivity$4;->this$0:Lcom/sec/android/app/fm/RecordedFileListActivity;

    #getter for: Lcom/sec/android/app/fm/RecordedFileListActivity;->mToast:Landroid/widget/Toast;
    invoke-static {v13}, Lcom/sec/android/app/fm/RecordedFileListActivity;->access$400(Lcom/sec/android/app/fm/RecordedFileListActivity;)Landroid/widget/Toast;

    move-result-object v13

    const v14, 0x7f0a00c1

    invoke-virtual {v13, v14}, Landroid/widget/Toast;->setText(I)V

    .line 327
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/app/fm/RecordedFileListActivity$4;->this$0:Lcom/sec/android/app/fm/RecordedFileListActivity;

    #getter for: Lcom/sec/android/app/fm/RecordedFileListActivity;->mToast:Landroid/widget/Toast;
    invoke-static {v13}, Lcom/sec/android/app/fm/RecordedFileListActivity;->access$400(Lcom/sec/android/app/fm/RecordedFileListActivity;)Landroid/widget/Toast;

    move-result-object v13

    invoke-virtual {v13}, Landroid/widget/Toast;->show()V

    .line 368
    .end local v4           #fileNameEnd:I
    .end local v5           #fileNameStart:I
    .end local v6           #len:I
    .end local v8           #newFileName:Ljava/lang/String;
    :goto_0
    return-void

    .line 331
    .restart local v4       #fileNameEnd:I
    .restart local v5       #fileNameStart:I
    .restart local v6       #len:I
    .restart local v8       #newFileName:Ljava/lang/String;
    :cond_2
    invoke-static {}, Lcom/sec/android/app/fm/RecordedFileListActivity;->access$300()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13, v5, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    .line 332
    .local v10, oldFileName:Ljava/lang/String;
    invoke-static {}, Lcom/sec/android/app/fm/RecordedFileListActivity;->access$300()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13, v10, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v9

    .line 334
    .local v9, newFilePath:Ljava/lang/String;
    new-instance v3, Ljava/io/File;

    invoke-static {}, Lcom/sec/android/app/fm/RecordedFileListActivity;->access$300()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v3, v13}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 335
    .local v3, file:Ljava/io/File;
    new-instance v7, Ljava/io/File;

    invoke-direct {v7, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 337
    .local v7, newFile:Ljava/io/File;
    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v13

    if-nez v13, :cond_4

    .line 339
    :try_start_0
    invoke-virtual {v3, v7}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 341
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/app/fm/RecordedFileListActivity$4;->this$0:Lcom/sec/android/app/fm/RecordedFileListActivity;

    invoke-virtual {v13}, Lcom/sec/android/app/fm/RecordedFileListActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 342
    .local v1, cr:Landroid/content/ContentResolver;
    new-instance v12, Landroid/content/ContentValues;

    invoke-direct {v12}, Landroid/content/ContentValues;-><init>()V

    .line 344
    .local v12, value:Landroid/content/ContentValues;
    const-string v13, "title"

    invoke-virtual {v12, v13, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 345
    const-string v13, "_data"

    invoke-virtual {v12, v13, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 347
    const/4 v13, 0x1

    new-array v11, v13, [Ljava/lang/String;

    const/4 v13, 0x0

    invoke-static {}, Lcom/sec/android/app/fm/RecordedFileListActivity;->access$300()Ljava/lang/String;

    move-result-object v14

    aput-object v14, v11, v13

    .line 349
    .local v11, selectionArgs:[Ljava/lang/String;
    sget-object v13, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const-string v14, "_data LIKE ?"

    invoke-virtual {v1, v13, v12, v14, v11}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 367
    .end local v1           #cr:Landroid/content/ContentResolver;
    .end local v3           #file:Ljava/io/File;
    .end local v4           #fileNameEnd:I
    .end local v5           #fileNameStart:I
    .end local v6           #len:I
    .end local v7           #newFile:Ljava/io/File;
    .end local v8           #newFileName:Ljava/lang/String;
    .end local v9           #newFilePath:Ljava/lang/String;
    .end local v10           #oldFileName:Ljava/lang/String;
    .end local v11           #selectionArgs:[Ljava/lang/String;
    .end local v12           #value:Landroid/content/ContentValues;
    :cond_3
    :goto_1
    invoke-interface/range {p1 .. p1}, Landroid/content/DialogInterface;->dismiss()V

    goto :goto_0

    .line 351
    .restart local v3       #file:Ljava/io/File;
    .restart local v4       #fileNameEnd:I
    .restart local v5       #fileNameStart:I
    .restart local v6       #len:I
    .restart local v7       #newFile:Ljava/io/File;
    .restart local v8       #newFileName:Ljava/lang/String;
    .restart local v9       #newFilePath:Ljava/lang/String;
    .restart local v10       #oldFileName:Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 352
    .local v2, e:Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 355
    .end local v2           #e:Ljava/lang/Exception;
    :cond_4
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/app/fm/RecordedFileListActivity$4;->this$0:Lcom/sec/android/app/fm/RecordedFileListActivity;

    #getter for: Lcom/sec/android/app/fm/RecordedFileListActivity;->mToast:Landroid/widget/Toast;
    invoke-static {v13}, Lcom/sec/android/app/fm/RecordedFileListActivity;->access$400(Lcom/sec/android/app/fm/RecordedFileListActivity;)Landroid/widget/Toast;

    move-result-object v13

    const v14, 0x7f0a00c0

    invoke-virtual {v13, v14}, Landroid/widget/Toast;->setText(I)V

    .line 356
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/app/fm/RecordedFileListActivity$4;->this$0:Lcom/sec/android/app/fm/RecordedFileListActivity;

    #getter for: Lcom/sec/android/app/fm/RecordedFileListActivity;->mToast:Landroid/widget/Toast;
    invoke-static {v13}, Lcom/sec/android/app/fm/RecordedFileListActivity;->access$400(Lcom/sec/android/app/fm/RecordedFileListActivity;)Landroid/widget/Toast;

    move-result-object v13

    invoke-virtual {v13}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 360
    .end local v3           #file:Ljava/io/File;
    .end local v7           #newFile:Ljava/io/File;
    .end local v8           #newFileName:Ljava/lang/String;
    .end local v9           #newFilePath:Ljava/lang/String;
    .end local v10           #oldFileName:Ljava/lang/String;
    :cond_5
    invoke-static {}, Lcom/sec/android/app/fm/RecordedFileListActivity;->access$000()Ljava/lang/String;

    move-result-object v13

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "file name index error "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "~"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method
