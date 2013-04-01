.class Lcom/sec/android/app/fm/RecordedFileListPlayerActivity$18;
.super Ljava/lang/Object;
.source "RecordedFileListPlayerActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;->createDeleteDialog()Landroid/app/AlertDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;


# direct methods
.method constructor <init>(Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1801
    iput-object p1, p0, Lcom/sec/android/app/fm/RecordedFileListPlayerActivity$18;->this$0:Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 9
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 1805
    invoke-static {}, Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;->access$800()Lcom/sec/android/app/fm/listplayer/FMListPlayerService;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 1806
    invoke-static {}, Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;->access$800()Lcom/sec/android/app/fm/listplayer/FMListPlayerService;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/fm/listplayer/FMListPlayerService;->getContentURI()Landroid/net/Uri;

    move-result-object v0

    .line 1807
    .local v0, playerUri:Landroid/net/Uri;
    sget-object v2, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    iget-object v3, p0, Lcom/sec/android/app/fm/RecordedFileListPlayerActivity$18;->this$0:Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;

    #getter for: Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;->mCurrentSelectedId:J
    invoke-static {v3}, Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;->access$500(Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;)J

    move-result-wide v3

    invoke-static {v2, v3, v4}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    .line 1812
    .local v1, selectedUri:Landroid/net/Uri;
    if-eqz v0, :cond_0

    invoke-virtual {v1, v0}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1814
    const-string v2, "RecordedFileListPlayerActivity"

    const-string v3, "Selected Item is Same with playing item, Stop play"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1816
    iget-object v2, p0, Lcom/sec/android/app/fm/RecordedFileListPlayerActivity$18;->this$0:Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;

    #calls: Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;->stopPlay()V
    invoke-static {v2}, Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;->access$2900(Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;)V

    .line 1819
    :cond_0
    iget-object v2, p0, Lcom/sec/android/app/fm/RecordedFileListPlayerActivity$18;->this$0:Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;

    iget-object v3, p0, Lcom/sec/android/app/fm/RecordedFileListPlayerActivity$18;->this$0:Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;

    #getter for: Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;->mCurrentSelectedId:J
    invoke-static {v3}, Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;->access$500(Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;)J

    move-result-wide v3

    iget-object v5, p0, Lcom/sec/android/app/fm/RecordedFileListPlayerActivity$18;->this$0:Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;

    iget-object v6, p0, Lcom/sec/android/app/fm/RecordedFileListPlayerActivity$18;->this$0:Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;

    #getter for: Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;->mCurrentSelectedId:J
    invoke-static {v6}, Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;->access$500(Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;)J

    move-result-wide v6

    const-string v8, "_data"

    invoke-static {v5, v6, v7, v8}, Lcom/sec/android/app/fm/listplayer/FMListUtil;->getItemString(Landroid/content/Context;JLjava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v3, v4, v5}, Lcom/sec/android/app/fm/listplayer/FMListUtil;->deleteFile(Landroid/content/Context;JLjava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1821
    iget-object v2, p0, Lcom/sec/android/app/fm/RecordedFileListPlayerActivity$18;->this$0:Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;

    invoke-virtual {v2}, Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0a00d1

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Lcom/sec/android/app/fm/listplayer/FMListUtil;->showToast(Landroid/content/Context;II)V

    .line 1826
    :cond_1
    iget-object v2, p0, Lcom/sec/android/app/fm/RecordedFileListPlayerActivity$18;->this$0:Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;

    #getter for: Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;->mListAdapter:Lcom/sec/android/app/fm/data/RecordedFileAdapter;
    invoke-static {v2}, Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;->access$1100(Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;)Lcom/sec/android/app/fm/data/RecordedFileAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/fm/data/RecordedFileAdapter;->notifyDataSetChanged()V

    .line 1828
    iget-object v2, p0, Lcom/sec/android/app/fm/RecordedFileListPlayerActivity$18;->this$0:Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;

    const-wide/16 v3, -0x1

    #setter for: Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;->mCurrentSelectedId:J
    invoke-static {v2, v3, v4}, Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;->access$502(Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;J)J

    .line 1830
    invoke-static {}, Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;->access$800()Lcom/sec/android/app/fm/listplayer/FMListPlayerService;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/fm/listplayer/FMListPlayerService;->isPlaying()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1831
    iget-object v2, p0, Lcom/sec/android/app/fm/RecordedFileListPlayerActivity$18;->this$0:Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;

    #calls: Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;->setFilenameAndDuration()V
    invoke-static {v2}, Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;->access$3000(Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;)V

    .line 1833
    .end local v0           #playerUri:Landroid/net/Uri;
    .end local v1           #selectedUri:Landroid/net/Uri;
    :cond_2
    return-void
.end method
