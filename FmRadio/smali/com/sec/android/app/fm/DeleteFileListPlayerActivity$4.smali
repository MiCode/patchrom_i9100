.class Lcom/sec/android/app/fm/DeleteFileListPlayerActivity$4;
.super Landroid/database/DataSetObserver;
.source "DeleteFileListPlayerActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/fm/DeleteFileListPlayerActivity;->listBinding()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/fm/DeleteFileListPlayerActivity;


# direct methods
.method constructor <init>(Lcom/sec/android/app/fm/DeleteFileListPlayerActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 311
    iput-object p1, p0, Lcom/sec/android/app/fm/DeleteFileListPlayerActivity$4;->this$0:Lcom/sec/android/app/fm/DeleteFileListPlayerActivity;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 13

    .prologue
    const/4 v12, 0x0

    const/4 v1, 0x0

    .line 315
    iget-object v0, p0, Lcom/sec/android/app/fm/DeleteFileListPlayerActivity$4;->this$0:Lcom/sec/android/app/fm/DeleteFileListPlayerActivity;

    #getter for: Lcom/sec/android/app/fm/DeleteFileListPlayerActivity;->mListChange:Z
    invoke-static {v0}, Lcom/sec/android/app/fm/DeleteFileListPlayerActivity;->access$100(Lcom/sec/android/app/fm/DeleteFileListPlayerActivity;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 317
    const/4 v3, 0x0

    .line 318
    .local v3, selection:Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 320
    .local v6, builder:Ljava/lang/StringBuilder;
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    .line 321
    .local v11, idchecker:Ljava/lang/StringBuilder;
    const/4 v9, 0x0

    .local v9, i:I
    :goto_0
    iget-object v0, p0, Lcom/sec/android/app/fm/DeleteFileListPlayerActivity$4;->this$0:Lcom/sec/android/app/fm/DeleteFileListPlayerActivity;

    #getter for: Lcom/sec/android/app/fm/DeleteFileListPlayerActivity;->mCheckedIdArrayList:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/sec/android/app/fm/DeleteFileListPlayerActivity;->access$200(Lcom/sec/android/app/fm/DeleteFileListPlayerActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v9, v0, :cond_1

    .line 322
    if-lez v9, :cond_0

    .line 323
    const-string v0, " or "

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 327
    :goto_1
    const-string v0, "_id"

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/fm/DeleteFileListPlayerActivity$4;->this$0:Lcom/sec/android/app/fm/DeleteFileListPlayerActivity;

    #getter for: Lcom/sec/android/app/fm/DeleteFileListPlayerActivity;->mCheckedIdArrayList:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/sec/android/app/fm/DeleteFileListPlayerActivity;->access$200(Lcom/sec/android/app/fm/DeleteFileListPlayerActivity;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 321
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 325
    :cond_0
    const-string v0, "("

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 330
    :cond_1
    const-string v0, "(_data LIKE \'%.m4a\')"

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " and (mime_type LIKE \'audio/3gpp\')"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " or mime_type LIKE \'audio/amr\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " or mime_type LIKE \'audio/mp4\')"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " and (_size != \'0\')"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " and (recordingtype = 2)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 334
    iget-object v0, p0, Lcom/sec/android/app/fm/DeleteFileListPlayerActivity$4;->this$0:Lcom/sec/android/app/fm/DeleteFileListPlayerActivity;

    #getter for: Lcom/sec/android/app/fm/DeleteFileListPlayerActivity;->mCheckedIdArrayList:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/sec/android/app/fm/DeleteFileListPlayerActivity;->access$200(Lcom/sec/android/app/fm/DeleteFileListPlayerActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 335
    const-string v0, " and "

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 338
    :cond_2
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 339
    const/4 v7, 0x0

    .line 341
    .local v7, cursor:Landroid/database/Cursor;
    :try_start_0
    iget-object v0, p0, Lcom/sec/android/app/fm/DeleteFileListPlayerActivity$4;->this$0:Lcom/sec/android/app/fm/DeleteFileListPlayerActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/fm/DeleteFileListPlayerActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    const/4 v4, 0x0

    const-string v5, "date_modified DESC"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v7

    .line 352
    :cond_3
    :goto_2
    if-nez v7, :cond_7

    .line 353
    iget-object v0, p0, Lcom/sec/android/app/fm/DeleteFileListPlayerActivity$4;->this$0:Lcom/sec/android/app/fm/DeleteFileListPlayerActivity;

    #setter for: Lcom/sec/android/app/fm/DeleteFileListPlayerActivity;->mListChange:Z
    invoke-static {v0, v12}, Lcom/sec/android/app/fm/DeleteFileListPlayerActivity;->access$102(Lcom/sec/android/app/fm/DeleteFileListPlayerActivity;Z)Z

    .line 365
    :goto_3
    iget-object v0, p0, Lcom/sec/android/app/fm/DeleteFileListPlayerActivity$4;->this$0:Lcom/sec/android/app/fm/DeleteFileListPlayerActivity;

    #getter for: Lcom/sec/android/app/fm/DeleteFileListPlayerActivity;->mListAdapter:Lcom/sec/android/app/fm/data/RecordedFileAdapter;
    invoke-static {v0}, Lcom/sec/android/app/fm/DeleteFileListPlayerActivity;->access$300(Lcom/sec/android/app/fm/DeleteFileListPlayerActivity;)Lcom/sec/android/app/fm/data/RecordedFileAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/fm/data/RecordedFileAdapter;->getCount()I

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/sec/android/app/fm/DeleteFileListPlayerActivity$4;->this$0:Lcom/sec/android/app/fm/DeleteFileListPlayerActivity;

    iget-object v0, v0, Lcom/sec/android/app/fm/DeleteFileListPlayerActivity;->mDeletePopup:Landroid/app/AlertDialog;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/sec/android/app/fm/DeleteFileListPlayerActivity$4;->this$0:Lcom/sec/android/app/fm/DeleteFileListPlayerActivity;

    iget-object v0, v0, Lcom/sec/android/app/fm/DeleteFileListPlayerActivity;->mDeletePopup:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_6

    .line 367
    :cond_4
    iget-object v0, p0, Lcom/sec/android/app/fm/DeleteFileListPlayerActivity$4;->this$0:Lcom/sec/android/app/fm/DeleteFileListPlayerActivity;

    #getter for: Lcom/sec/android/app/fm/DeleteFileListPlayerActivity;->mCheckedIdArrayList:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/sec/android/app/fm/DeleteFileListPlayerActivity;->access$200(Lcom/sec/android/app/fm/DeleteFileListPlayerActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget-object v1, p0, Lcom/sec/android/app/fm/DeleteFileListPlayerActivity$4;->this$0:Lcom/sec/android/app/fm/DeleteFileListPlayerActivity;

    #getter for: Lcom/sec/android/app/fm/DeleteFileListPlayerActivity;->mListAdapter:Lcom/sec/android/app/fm/data/RecordedFileAdapter;
    invoke-static {v1}, Lcom/sec/android/app/fm/DeleteFileListPlayerActivity;->access$300(Lcom/sec/android/app/fm/DeleteFileListPlayerActivity;)Lcom/sec/android/app/fm/data/RecordedFileAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/fm/data/RecordedFileAdapter;->getCount()I

    move-result v1

    if-ne v0, v1, :cond_5

    const/4 v12, 0x1

    .line 368
    .local v12, isAll:Z
    :cond_5
    iget-object v0, p0, Lcom/sec/android/app/fm/DeleteFileListPlayerActivity$4;->this$0:Lcom/sec/android/app/fm/DeleteFileListPlayerActivity;

    #getter for: Lcom/sec/android/app/fm/DeleteFileListPlayerActivity;->mSelectAllCheckBox:Landroid/widget/CheckBox;
    invoke-static {v0}, Lcom/sec/android/app/fm/DeleteFileListPlayerActivity;->access$400(Lcom/sec/android/app/fm/DeleteFileListPlayerActivity;)Landroid/widget/CheckBox;

    move-result-object v0

    invoke-virtual {v0, v12}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 376
    .end local v3           #selection:Ljava/lang/String;
    .end local v6           #builder:Ljava/lang/StringBuilder;
    .end local v7           #cursor:Landroid/database/Cursor;
    .end local v9           #i:I
    .end local v11           #idchecker:Ljava/lang/StringBuilder;
    .end local v12           #isAll:Z
    :cond_6
    :goto_4
    return-void

    .line 345
    .restart local v3       #selection:Ljava/lang/String;
    .restart local v6       #builder:Ljava/lang/StringBuilder;
    .restart local v7       #cursor:Landroid/database/Cursor;
    .restart local v9       #i:I
    .restart local v11       #idchecker:Ljava/lang/StringBuilder;
    :catch_0
    move-exception v8

    .line 346
    .local v8, e:Ljava/lang/Exception;
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V

    .line 347
    if-eqz v7, :cond_3

    invoke-interface {v7}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_3

    .line 348
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 349
    const/4 v7, 0x0

    goto :goto_2

    .line 355
    .end local v8           #e:Ljava/lang/Exception;
    :cond_7
    iget-object v0, p0, Lcom/sec/android/app/fm/DeleteFileListPlayerActivity$4;->this$0:Lcom/sec/android/app/fm/DeleteFileListPlayerActivity;

    #getter for: Lcom/sec/android/app/fm/DeleteFileListPlayerActivity;->mCheckedIdArrayList:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/sec/android/app/fm/DeleteFileListPlayerActivity;->access$200(Lcom/sec/android/app/fm/DeleteFileListPlayerActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 356
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    .line 357
    :goto_5
    invoke-interface {v7}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v0

    if-nez v0, :cond_8

    .line 358
    const-string v0, "_id"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    .line 360
    .local v10, id:Ljava/lang/Long;
    iget-object v0, p0, Lcom/sec/android/app/fm/DeleteFileListPlayerActivity$4;->this$0:Lcom/sec/android/app/fm/DeleteFileListPlayerActivity;

    #getter for: Lcom/sec/android/app/fm/DeleteFileListPlayerActivity;->mCheckedIdArrayList:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/sec/android/app/fm/DeleteFileListPlayerActivity;->access$200(Lcom/sec/android/app/fm/DeleteFileListPlayerActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 361
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_5

    .line 363
    .end local v10           #id:Ljava/lang/Long;
    :cond_8
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_3

    .line 371
    .end local v3           #selection:Ljava/lang/String;
    .end local v6           #builder:Ljava/lang/StringBuilder;
    .end local v7           #cursor:Landroid/database/Cursor;
    .end local v9           #i:I
    .end local v11           #idchecker:Ljava/lang/StringBuilder;
    :cond_9
    iget-object v0, p0, Lcom/sec/android/app/fm/DeleteFileListPlayerActivity$4;->this$0:Lcom/sec/android/app/fm/DeleteFileListPlayerActivity;

    iget-object v0, v0, Lcom/sec/android/app/fm/DeleteFileListPlayerActivity;->mDeletePopup:Landroid/app/AlertDialog;

    if-eqz v0, :cond_6

    .line 372
    iget-object v0, p0, Lcom/sec/android/app/fm/DeleteFileListPlayerActivity$4;->this$0:Lcom/sec/android/app/fm/DeleteFileListPlayerActivity;

    iget-object v0, v0, Lcom/sec/android/app/fm/DeleteFileListPlayerActivity;->mDeletePopup:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 373
    iget-object v0, p0, Lcom/sec/android/app/fm/DeleteFileListPlayerActivity$4;->this$0:Lcom/sec/android/app/fm/DeleteFileListPlayerActivity;

    iput-object v1, v0, Lcom/sec/android/app/fm/DeleteFileListPlayerActivity;->mDeletePopup:Landroid/app/AlertDialog;

    goto :goto_4
.end method
