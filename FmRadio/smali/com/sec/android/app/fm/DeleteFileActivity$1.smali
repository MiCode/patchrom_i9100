.class Lcom/sec/android/app/fm/DeleteFileActivity$1;
.super Landroid/os/Handler;
.source "DeleteFileActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/fm/DeleteFileActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/fm/DeleteFileActivity;


# direct methods
.method constructor <init>(Lcom/sec/android/app/fm/DeleteFileActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 140
    iput-object p1, p0, Lcom/sec/android/app/fm/DeleteFileActivity$1;->this$0:Lcom/sec/android/app/fm/DeleteFileActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .parameter "msg"

    .prologue
    .line 143
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 159
    :goto_0
    return-void

    .line 145
    :pswitch_0
    invoke-static {}, Lcom/sec/android/app/fm/DeleteFileActivity;->access$200()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Delete thread started"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 148
    :pswitch_1
    invoke-static {}, Lcom/sec/android/app/fm/DeleteFileActivity;->access$200()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Delete thread finished"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    iget-object v0, p0, Lcom/sec/android/app/fm/DeleteFileActivity$1;->this$0:Lcom/sec/android/app/fm/DeleteFileActivity;

    #getter for: Lcom/sec/android/app/fm/DeleteFileActivity;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/sec/android/app/fm/DeleteFileActivity;->access$300(Lcom/sec/android/app/fm/DeleteFileActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 150
    iget-object v0, p0, Lcom/sec/android/app/fm/DeleteFileActivity$1;->this$0:Lcom/sec/android/app/fm/DeleteFileActivity;

    #getter for: Lcom/sec/android/app/fm/DeleteFileActivity;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/sec/android/app/fm/DeleteFileActivity;->access$300(Lcom/sec/android/app/fm/DeleteFileActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->cancel()V

    .line 151
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/fm/DeleteFileActivity$1;->this$0:Lcom/sec/android/app/fm/DeleteFileActivity;

    #getter for: Lcom/sec/android/app/fm/DeleteFileActivity;->mSelectedItems:Ljava/util/HashMap;
    invoke-static {v0}, Lcom/sec/android/app/fm/DeleteFileActivity;->access$100(Lcom/sec/android/app/fm/DeleteFileActivity;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 152
    iget-object v0, p0, Lcom/sec/android/app/fm/DeleteFileActivity$1;->this$0:Lcom/sec/android/app/fm/DeleteFileActivity;

    #getter for: Lcom/sec/android/app/fm/DeleteFileActivity;->mCheckBoxSelectAll:Landroid/widget/CheckBox;
    invoke-static {v0}, Lcom/sec/android/app/fm/DeleteFileActivity;->access$400(Lcom/sec/android/app/fm/DeleteFileActivity;)Landroid/widget/CheckBox;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 153
    iget-object v0, p0, Lcom/sec/android/app/fm/DeleteFileActivity$1;->this$0:Lcom/sec/android/app/fm/DeleteFileActivity;

    iget-object v0, v0, Lcom/sec/android/app/fm/RecordedFileListActivity;->mAdapter:Landroid/widget/CursorAdapter;

    invoke-virtual {v0}, Landroid/widget/CursorAdapter;->notifyDataSetChanged()V

    .line 155
    iget-object v0, p0, Lcom/sec/android/app/fm/DeleteFileActivity$1;->this$0:Lcom/sec/android/app/fm/DeleteFileActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/fm/DeleteFileActivity;->finish()V

    goto :goto_0

    .line 143
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
