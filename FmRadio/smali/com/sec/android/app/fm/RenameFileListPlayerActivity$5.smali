.class Lcom/sec/android/app/fm/RenameFileListPlayerActivity$5;
.super Ljava/lang/Object;
.source "RenameFileListPlayerActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/fm/RenameFileListPlayerActivity;->createRenameDialog(J)Lcom/sec/android/app/fm/ui/RenameDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field MAX_PATH_LENGTH:I

.field final synthetic this$0:Lcom/sec/android/app/fm/RenameFileListPlayerActivity;

.field final synthetic val$id:J

.field final synthetic val$prevFile:Ljava/io/File;

.field final synthetic val$prevFileName:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/sec/android/app/fm/RenameFileListPlayerActivity;Ljava/lang/String;Ljava/io/File;J)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 364
    iput-object p1, p0, Lcom/sec/android/app/fm/RenameFileListPlayerActivity$5;->this$0:Lcom/sec/android/app/fm/RenameFileListPlayerActivity;

    iput-object p2, p0, Lcom/sec/android/app/fm/RenameFileListPlayerActivity$5;->val$prevFileName:Ljava/lang/String;

    iput-object p3, p0, Lcom/sec/android/app/fm/RenameFileListPlayerActivity$5;->val$prevFile:Ljava/io/File;

    iput-wide p4, p0, Lcom/sec/android/app/fm/RenameFileListPlayerActivity$5;->val$id:J

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 365
    const/16 v0, 0xf0

    iput v0, p0, Lcom/sec/android/app/fm/RenameFileListPlayerActivity$5;->MAX_PATH_LENGTH:I

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 10
    .parameter "dialog"
    .parameter "which"

    .prologue
    const v8, 0x7f0a00c0

    const/4 v9, 0x0

    .line 369
    packed-switch p2, :pswitch_data_0

    .line 410
    :goto_0
    return-void

    .line 371
    :pswitch_0
    new-instance v2, Ljava/lang/StringBuffer;

    iget-object v4, p0, Lcom/sec/android/app/fm/RenameFileListPlayerActivity$5;->this$0:Lcom/sec/android/app/fm/RenameFileListPlayerActivity;

    iget-object v4, v4, Lcom/sec/android/app/fm/RenameFileListPlayerActivity;->mRenameDialog:Lcom/sec/android/app/fm/ui/RenameDialog;

    invoke-virtual {v4}, Lcom/sec/android/app/fm/ui/RenameDialog;->getText()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 372
    .local v2, destFileName:Ljava/lang/StringBuffer;
    iget-object v4, p0, Lcom/sec/android/app/fm/RenameFileListPlayerActivity$5;->val$prevFileName:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v4

    if-nez v4, :cond_0

    .line 373
    iget-object v4, p0, Lcom/sec/android/app/fm/RenameFileListPlayerActivity$5;->this$0:Lcom/sec/android/app/fm/RenameFileListPlayerActivity;

    invoke-virtual {v4}, Lcom/sec/android/app/fm/RenameFileListPlayerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, v8, v9}, Lcom/sec/android/app/fm/listplayer/FMListUtil;->showToast(Landroid/content/Context;II)V

    goto :goto_0

    .line 376
    :cond_0
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->length()I

    move-result v4

    if-gtz v4, :cond_1

    .line 377
    iget-object v4, p0, Lcom/sec/android/app/fm/RenameFileListPlayerActivity$5;->this$0:Lcom/sec/android/app/fm/RenameFileListPlayerActivity;

    invoke-virtual {v4}, Lcom/sec/android/app/fm/RenameFileListPlayerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f0a00c1

    invoke-static {v4, v5, v9}, Lcom/sec/android/app/fm/listplayer/FMListUtil;->showToast(Landroid/content/Context;II)V

    goto :goto_0

    .line 380
    :cond_1
    iget-object v4, p0, Lcom/sec/android/app/fm/RenameFileListPlayerActivity$5;->val$prevFile:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->isFile()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 381
    iget-object v4, p0, Lcom/sec/android/app/fm/RenameFileListPlayerActivity$5;->val$prevFile:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "."

    invoke-virtual {v4, v5}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v3

    .line 382
    .local v3, index:I
    const/4 v4, -0x1

    if-eq v3, v4, :cond_2

    .line 383
    iget-object v4, p0, Lcom/sec/android/app/fm/RenameFileListPlayerActivity$5;->val$prevFile:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/sec/android/app/fm/RenameFileListPlayerActivity$5;->val$prevFile:Ljava/io/File;

    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "."

    invoke-virtual {v5, v6}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v5

    iget-object v6, p0, Lcom/sec/android/app/fm/RenameFileListPlayerActivity$5;->val$prevFile:Ljava/io/File;

    invoke-virtual {v6}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 385
    .end local v3           #index:I
    :cond_2
    new-instance v1, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/sec/android/app/fm/RenameFileListPlayerActivity$5;->val$prevFile:Ljava/io/File;

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/sec/android/app/fm/RenameFileListPlayerActivity$5;->val$prevFile:Ljava/io/File;

    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    const-string v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v6

    add-int/lit8 v6, v6, 0x1

    invoke-virtual {v5, v9, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 387
    .local v1, destFile:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    iget v5, p0, Lcom/sec/android/app/fm/RenameFileListPlayerActivity$5;->MAX_PATH_LENGTH:I

    if-le v4, v5, :cond_3

    .line 388
    iget-object v4, p0, Lcom/sec/android/app/fm/RenameFileListPlayerActivity$5;->this$0:Lcom/sec/android/app/fm/RenameFileListPlayerActivity;

    invoke-virtual {v4}, Lcom/sec/android/app/fm/RenameFileListPlayerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    iget-object v5, p0, Lcom/sec/android/app/fm/RenameFileListPlayerActivity$5;->this$0:Lcom/sec/android/app/fm/RenameFileListPlayerActivity;

    const v6, 0x7f0a00b5

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/16 v8, 0x32

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v9

    invoke-virtual {v5, v6, v7}, Lcom/sec/android/app/fm/RenameFileListPlayerActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v9}, Lcom/sec/android/app/fm/listplayer/FMListUtil;->showToast(Landroid/content/Context;Ljava/lang/String;I)V

    goto/16 :goto_0

    .line 392
    :cond_3
    invoke-static {v1}, Lcom/sec/android/app/fm/listplayer/FMListUtil;->isExistFile(Ljava/io/File;)I

    move-result v4

    sget v5, Lcom/sec/android/app/fm/listplayer/FMListUtil;->FUNC_RETURN_CORRECT:I

    if-ne v4, v5, :cond_4

    .line 393
    iget-object v4, p0, Lcom/sec/android/app/fm/RenameFileListPlayerActivity$5;->this$0:Lcom/sec/android/app/fm/RenameFileListPlayerActivity;

    invoke-virtual {v4}, Lcom/sec/android/app/fm/RenameFileListPlayerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, v8, v9}, Lcom/sec/android/app/fm/listplayer/FMListUtil;->showToast(Landroid/content/Context;II)V

    goto/16 :goto_0

    .line 396
    :cond_4
    iget-object v4, p0, Lcom/sec/android/app/fm/RenameFileListPlayerActivity$5;->this$0:Lcom/sec/android/app/fm/RenameFileListPlayerActivity;

    invoke-virtual {v4}, Lcom/sec/android/app/fm/RenameFileListPlayerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    iget-wide v5, p0, Lcom/sec/android/app/fm/RenameFileListPlayerActivity$5;->val$id:J

    const-string v7, "_data"

    invoke-static {v4, v5, v6, v7}, Lcom/sec/android/app/fm/listplayer/FMListUtil;->getItemString(Landroid/content/Context;JLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 398
    .local v0, Curpath:Ljava/lang/String;
    if-eqz v0, :cond_5

    .line 399
    iget-object v4, p0, Lcom/sec/android/app/fm/RenameFileListPlayerActivity$5;->this$0:Lcom/sec/android/app/fm/RenameFileListPlayerActivity;

    invoke-virtual {v4}, Lcom/sec/android/app/fm/RenameFileListPlayerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    iget-wide v5, p0, Lcom/sec/android/app/fm/RenameFileListPlayerActivity$5;->val$id:J

    iget-object v7, p0, Lcom/sec/android/app/fm/RenameFileListPlayerActivity$5;->this$0:Lcom/sec/android/app/fm/RenameFileListPlayerActivity;

    iget-object v7, v7, Lcom/sec/android/app/fm/RenameFileListPlayerActivity;->mRenameDialog:Lcom/sec/android/app/fm/ui/RenameDialog;

    invoke-virtual {v7}, Lcom/sec/android/app/fm/ui/RenameDialog;->getText()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v5, v6, v0, v7}, Lcom/sec/android/app/fm/listplayer/FMListUtil;->renameFile(Landroid/content/Context;JLjava/lang/String;Ljava/lang/String;)Z

    .line 402
    :cond_5
    iget-object v4, p0, Lcom/sec/android/app/fm/RenameFileListPlayerActivity$5;->this$0:Lcom/sec/android/app/fm/RenameFileListPlayerActivity;

    #getter for: Lcom/sec/android/app/fm/RenameFileListPlayerActivity;->mListAdapter:Lcom/sec/android/app/fm/data/RecordedFileAdapter;
    invoke-static {v4}, Lcom/sec/android/app/fm/RenameFileListPlayerActivity;->access$200(Lcom/sec/android/app/fm/RenameFileListPlayerActivity;)Lcom/sec/android/app/fm/data/RecordedFileAdapter;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/app/fm/data/RecordedFileAdapter;->notifyDataSetChanged()V

    .line 403
    iget-object v4, p0, Lcom/sec/android/app/fm/RenameFileListPlayerActivity$5;->this$0:Lcom/sec/android/app/fm/RenameFileListPlayerActivity;

    iget-object v4, v4, Lcom/sec/android/app/fm/RenameFileListPlayerActivity;->mRenameDialog:Lcom/sec/android/app/fm/ui/RenameDialog;

    invoke-virtual {v4}, Lcom/sec/android/app/fm/ui/RenameDialog;->dismiss()V

    goto/16 :goto_0

    .line 369
    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_0
    .end packed-switch
.end method
