.class Lcom/sec/android/app/fm/RecordedFileListPlayerActivity$19;
.super Ljava/lang/Object;
.source "RecordedFileListPlayerActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V
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
    .line 1937
    iput-object p1, p0, Lcom/sec/android/app/fm/RecordedFileListPlayerActivity$19;->this$0:Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1942
    iget-object v0, p0, Lcom/sec/android/app/fm/RecordedFileListPlayerActivity$19;->this$0:Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;

    #getter for: Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;->mRecordedFileListView:Landroid/widget/ListView;
    invoke-static {v0}, Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;->access$1400(Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;)Landroid/widget/ListView;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/fm/RecordedFileListPlayerActivity$19;->this$0:Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;

    #getter for: Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;->curPos:I
    invoke-static {v1}, Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;->access$1300(Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->smoothScrollToPosition(I)V

    .line 1943
    return-void
.end method
