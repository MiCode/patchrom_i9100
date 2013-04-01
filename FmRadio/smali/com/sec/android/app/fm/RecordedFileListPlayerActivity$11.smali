.class Lcom/sec/android/app/fm/RecordedFileListPlayerActivity$11;
.super Landroid/database/DataSetObserver;
.source "RecordedFileListPlayerActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;->listBinding()Z
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
    .line 929
    iput-object p1, p0, Lcom/sec/android/app/fm/RecordedFileListPlayerActivity$11;->this$0:Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 2

    .prologue
    .line 931
    iget-object v0, p0, Lcom/sec/android/app/fm/RecordedFileListPlayerActivity$11;->this$0:Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;

    #getter for: Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;->mListAdapter:Lcom/sec/android/app/fm/data/RecordedFileAdapter;
    invoke-static {v0}, Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;->access$1100(Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;)Lcom/sec/android/app/fm/data/RecordedFileAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/fm/data/RecordedFileAdapter;->getCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 932
    iget-object v0, p0, Lcom/sec/android/app/fm/RecordedFileListPlayerActivity$11;->this$0:Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;

    #getter for: Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;->mPlayerControllerLayout:Landroid/view/ViewGroup;
    invoke-static {v0}, Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;->access$1200(Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;)Landroid/view/ViewGroup;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 935
    :cond_0
    return-void
.end method
