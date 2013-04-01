.class Lcom/sec/android/app/fm/RecordedFileListActivity$6;
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
    .line 382
    iput-object p1, p0, Lcom/sec/android/app/fm/RecordedFileListActivity$6;->this$0:Lcom/sec/android/app/fm/RecordedFileListActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 6
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    const-wide/16 v4, -0x1

    .line 385
    iget-object v2, p0, Lcom/sec/android/app/fm/RecordedFileListActivity$6;->this$0:Lcom/sec/android/app/fm/RecordedFileListActivity;

    invoke-virtual {v2}, Lcom/sec/android/app/fm/RecordedFileListActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 387
    .local v0, cr:Landroid/content/ContentResolver;
    iget-object v2, p0, Lcom/sec/android/app/fm/RecordedFileListActivity$6;->this$0:Lcom/sec/android/app/fm/RecordedFileListActivity;

    #getter for: Lcom/sec/android/app/fm/RecordedFileListActivity;->mCurrentSelectedId:J
    invoke-static {v2}, Lcom/sec/android/app/fm/RecordedFileListActivity;->access$100(Lcom/sec/android/app/fm/RecordedFileListActivity;)J

    move-result-wide v2

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/app/fm/RecordedFileListActivity$6;->this$0:Lcom/sec/android/app/fm/RecordedFileListActivity;

    #getter for: Lcom/sec/android/app/fm/RecordedFileListActivity;->mSavedSelectedId:J
    invoke-static {v2}, Lcom/sec/android/app/fm/RecordedFileListActivity;->access$200(Lcom/sec/android/app/fm/RecordedFileListActivity;)J

    move-result-wide v2

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    .line 388
    iget-object v2, p0, Lcom/sec/android/app/fm/RecordedFileListActivity$6;->this$0:Lcom/sec/android/app/fm/RecordedFileListActivity;

    iget-object v3, p0, Lcom/sec/android/app/fm/RecordedFileListActivity$6;->this$0:Lcom/sec/android/app/fm/RecordedFileListActivity;

    #getter for: Lcom/sec/android/app/fm/RecordedFileListActivity;->mSavedSelectedId:J
    invoke-static {v3}, Lcom/sec/android/app/fm/RecordedFileListActivity;->access$200(Lcom/sec/android/app/fm/RecordedFileListActivity;)J

    move-result-wide v3

    #setter for: Lcom/sec/android/app/fm/RecordedFileListActivity;->mCurrentSelectedId:J
    invoke-static {v2, v3, v4}, Lcom/sec/android/app/fm/RecordedFileListActivity;->access$102(Lcom/sec/android/app/fm/RecordedFileListActivity;J)J

    .line 390
    :cond_0
    iget-object v2, p0, Lcom/sec/android/app/fm/RecordedFileListActivity$6;->this$0:Lcom/sec/android/app/fm/RecordedFileListActivity;

    iget-object v3, p0, Lcom/sec/android/app/fm/RecordedFileListActivity$6;->this$0:Lcom/sec/android/app/fm/RecordedFileListActivity;

    #getter for: Lcom/sec/android/app/fm/RecordedFileListActivity;->mCurrentSelectedId:J
    invoke-static {v3}, Lcom/sec/android/app/fm/RecordedFileListActivity;->access$100(Lcom/sec/android/app/fm/RecordedFileListActivity;)J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/app/fm/RecordedFileListActivity;->getfilepath(J)Z

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    .line 391
    new-instance v1, Ljava/io/File;

    invoke-static {}, Lcom/sec/android/app/fm/RecordedFileListActivity;->access$300()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 392
    .local v1, target:Ljava/io/File;
    if-eqz v1, :cond_1

    .line 393
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 394
    sget-object v2, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "_id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/android/app/fm/RecordedFileListActivity$6;->this$0:Lcom/sec/android/app/fm/RecordedFileListActivity;

    #getter for: Lcom/sec/android/app/fm/RecordedFileListActivity;->mCurrentSelectedId:J
    invoke-static {v4}, Lcom/sec/android/app/fm/RecordedFileListActivity;->access$100(Lcom/sec/android/app/fm/RecordedFileListActivity;)J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v3, v4}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 397
    .end local v1           #target:Ljava/io/File;
    :cond_1
    return-void
.end method
