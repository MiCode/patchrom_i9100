.class Lcom/sec/android/app/fm/RecordedFileListPlayerActivity$16;
.super Ljava/lang/Object;
.source "RecordedFileListPlayerActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;->createRenameDialog()Lcom/sec/android/app/fm/ui/RenameDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field MAX_PATH_LENGTH:I

.field final synthetic this$0:Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;

.field final synthetic val$prevFile:Ljava/io/File;

.field final synthetic val$prevFileName:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;Ljava/lang/String;Ljava/io/File;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1730
    iput-object p1, p0, Lcom/sec/android/app/fm/RecordedFileListPlayerActivity$16;->this$0:Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;

    iput-object p2, p0, Lcom/sec/android/app/fm/RecordedFileListPlayerActivity$16;->val$prevFileName:Ljava/lang/String;

    iput-object p3, p0, Lcom/sec/android/app/fm/RecordedFileListPlayerActivity$16;->val$prevFile:Ljava/io/File;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 1732
    const/16 v0, 0xf0

    iput v0, p0, Lcom/sec/android/app/fm/RecordedFileListPlayerActivity$16;->MAX_PATH_LENGTH:I

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

    .line 1736
    packed-switch p2, :pswitch_data_0

    .line 1780
    :goto_0
    return-void

    .line 1738
    :pswitch_0
    new-instance v2, Ljava/lang/StringBuffer;

    iget-object v4, p0, Lcom/sec/android/app/fm/RecordedFileListPlayerActivity$16;->this$0:Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;

    iget-object v4, v4, Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;->mRenameDialog:Lcom/sec/android/app/fm/ui/RenameDialog;

    invoke-virtual {v4}, Lcom/sec/android/app/fm/ui/RenameDialog;->getText()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 1739
    .local v2, destFileName:Ljava/lang/StringBuffer;
    iget-object v4, p0, Lcom/sec/android/app/fm/RecordedFileListPlayerActivity$16;->val$prevFileName:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v4

    if-nez v4, :cond_0

    .line 1740
    iget-object v4, p0, Lcom/sec/android/app/fm/RecordedFileListPlayerActivity$16;->this$0:Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;

    invoke-virtual {v4}, Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, v8, v9}, Lcom/sec/android/app/fm/listplayer/FMListUtil;->showToast(Landroid/content/Context;II)V

    goto :goto_0

    .line 1743
    :cond_0
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->length()I

    move-result v4

    if-gtz v4, :cond_1

    .line 1744
    iget-object v4, p0, Lcom/sec/android/app/fm/RecordedFileListPlayerActivity$16;->this$0:Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;

    invoke-virtual {v4}, Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f0a00c1

    invoke-static {v4, v5, v9}, Lcom/sec/android/app/fm/listplayer/FMListUtil;->showToast(Landroid/content/Context;II)V

    goto :goto_0

    .line 1747
    :cond_1
    iget-object v4, p0, Lcom/sec/android/app/fm/RecordedFileListPlayerActivity$16;->val$prevFile:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->isFile()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1748
    iget-object v4, p0, Lcom/sec/android/app/fm/RecordedFileListPlayerActivity$16;->val$prevFile:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "."

    invoke-virtual {v4, v5}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v3

    .line 1749
    .local v3, index:I
    const/4 v4, -0x1

    if-eq v3, v4, :cond_2

    .line 1750
    iget-object v4, p0, Lcom/sec/android/app/fm/RecordedFileListPlayerActivity$16;->val$prevFile:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/sec/android/app/fm/RecordedFileListPlayerActivity$16;->val$prevFile:Ljava/io/File;

    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "."

    invoke-virtual {v5, v6}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v5

    iget-object v6, p0, Lcom/sec/android/app/fm/RecordedFileListPlayerActivity$16;->val$prevFile:Ljava/io/File;

    invoke-virtual {v6}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1752
    .end local v3           #index:I
    :cond_2
    new-instance v1, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/sec/android/app/fm/RecordedFileListPlayerActivity$16;->val$prevFile:Ljava/io/File;

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/sec/android/app/fm/RecordedFileListPlayerActivity$16;->val$prevFile:Ljava/io/File;

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

    .line 1754
    .local v1, destFile:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    iget v5, p0, Lcom/sec/android/app/fm/RecordedFileListPlayerActivity$16;->MAX_PATH_LENGTH:I

    if-le v4, v5, :cond_3

    .line 1755
    iget-object v4, p0, Lcom/sec/android/app/fm/RecordedFileListPlayerActivity$16;->this$0:Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;

    invoke-virtual {v4}, Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    iget-object v5, p0, Lcom/sec/android/app/fm/RecordedFileListPlayerActivity$16;->this$0:Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;

    const v6, 0x7f0a00b5

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/16 v8, 0x32

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v9

    invoke-virtual {v5, v6, v7}, Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v9}, Lcom/sec/android/app/fm/listplayer/FMListUtil;->showToast(Landroid/content/Context;Ljava/lang/String;I)V

    goto/16 :goto_0

    .line 1757
    :cond_3
    invoke-static {v1}, Lcom/sec/android/app/fm/listplayer/FMListUtil;->isExistFile(Ljava/io/File;)I

    move-result v4

    sget v5, Lcom/sec/android/app/fm/listplayer/FMListUtil;->FUNC_RETURN_CORRECT:I

    if-ne v4, v5, :cond_4

    .line 1758
    iget-object v4, p0, Lcom/sec/android/app/fm/RecordedFileListPlayerActivity$16;->this$0:Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;

    invoke-virtual {v4}, Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, v8, v9}, Lcom/sec/android/app/fm/listplayer/FMListUtil;->showToast(Landroid/content/Context;II)V

    goto/16 :goto_0

    .line 1761
    :cond_4
    iget-object v4, p0, Lcom/sec/android/app/fm/RecordedFileListPlayerActivity$16;->this$0:Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;

    invoke-virtual {v4}, Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {}, Lcom/sec/android/app/fm/listplayer/FMListUtil;->getCurrentSaveId()J

    move-result-wide v5

    const-string v7, "_data"

    invoke-static {v4, v5, v6, v7}, Lcom/sec/android/app/fm/listplayer/FMListUtil;->getItemString(Landroid/content/Context;JLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1763
    .local v0, Curpath:Ljava/lang/String;
    if-eqz v0, :cond_5

    .line 1764
    iget-object v4, p0, Lcom/sec/android/app/fm/RecordedFileListPlayerActivity$16;->this$0:Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;

    invoke-virtual {v4}, Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {}, Lcom/sec/android/app/fm/listplayer/FMListUtil;->getCurrentSaveId()J

    move-result-wide v5

    iget-object v7, p0, Lcom/sec/android/app/fm/RecordedFileListPlayerActivity$16;->this$0:Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;

    iget-object v7, v7, Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;->mRenameDialog:Lcom/sec/android/app/fm/ui/RenameDialog;

    invoke-virtual {v7}, Lcom/sec/android/app/fm/ui/RenameDialog;->getText()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v5, v6, v0, v7}, Lcom/sec/android/app/fm/listplayer/FMListUtil;->renameFile(Landroid/content/Context;JLjava/lang/String;Ljava/lang/String;)Z

    .line 1767
    :cond_5
    iget-object v4, p0, Lcom/sec/android/app/fm/RecordedFileListPlayerActivity$16;->this$0:Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;

    #getter for: Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;->mPlayerTitleView:Landroid/widget/TextView;
    invoke-static {v4}, Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;->access$2800(Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;)Landroid/widget/TextView;

    move-result-object v4

    if-eqz v4, :cond_6

    iget-object v4, p0, Lcom/sec/android/app/fm/RecordedFileListPlayerActivity$16;->this$0:Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;

    #getter for: Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;->mPlayerTitleView:Landroid/widget/TextView;
    invoke-static {v4}, Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;->access$2800(Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;)Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/TextView;->getVisibility()I

    move-result v4

    if-nez v4, :cond_6

    invoke-static {}, Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;->access$800()Lcom/sec/android/app/fm/listplayer/FMListPlayerService;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/app/fm/listplayer/FMListPlayerService;->getCurrentPlayingId()J

    move-result-wide v4

    invoke-static {}, Lcom/sec/android/app/fm/listplayer/FMListUtil;->getCurrentSaveId()J

    move-result-wide v6

    cmp-long v4, v4, v6

    if-nez v4, :cond_6

    .line 1770
    iget-object v4, p0, Lcom/sec/android/app/fm/RecordedFileListPlayerActivity$16;->this$0:Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;

    #getter for: Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;->mPlayerTitleView:Landroid/widget/TextView;
    invoke-static {v4}, Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;->access$2800(Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;)Landroid/widget/TextView;

    move-result-object v4

    iget-object v5, p0, Lcom/sec/android/app/fm/RecordedFileListPlayerActivity$16;->this$0:Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;

    iget-object v5, v5, Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;->mRenameDialog:Lcom/sec/android/app/fm/ui/RenameDialog;

    invoke-virtual {v5}, Lcom/sec/android/app/fm/ui/RenameDialog;->getText()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1773
    :cond_6
    iget-object v4, p0, Lcom/sec/android/app/fm/RecordedFileListPlayerActivity$16;->this$0:Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;

    #getter for: Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;->mListAdapter:Lcom/sec/android/app/fm/data/RecordedFileAdapter;
    invoke-static {v4}, Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;->access$1100(Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;)Lcom/sec/android/app/fm/data/RecordedFileAdapter;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/app/fm/data/RecordedFileAdapter;->notifyDataSetChanged()V

    .line 1774
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    goto/16 :goto_0

    .line 1736
    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_0
    .end packed-switch
.end method
