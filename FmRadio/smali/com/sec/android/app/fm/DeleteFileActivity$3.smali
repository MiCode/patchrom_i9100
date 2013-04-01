.class Lcom/sec/android/app/fm/DeleteFileActivity$3;
.super Ljava/lang/Object;
.source "DeleteFileActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/fm/DeleteFileActivity;->initSelectAllView()V
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
    .line 191
    iput-object p1, p0, Lcom/sec/android/app/fm/DeleteFileActivity$3;->this$0:Lcom/sec/android/app/fm/DeleteFileActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7
    .parameter "arg0"

    .prologue
    .line 195
    invoke-static {}, Lcom/sec/android/app/fm/DeleteFileActivity;->access$200()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Select all clicked : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/sec/android/app/fm/DeleteFileActivity$3;->this$0:Lcom/sec/android/app/fm/DeleteFileActivity;

    #getter for: Lcom/sec/android/app/fm/DeleteFileActivity;->mCheckBoxSelectAll:Landroid/widget/CheckBox;
    invoke-static {v6}, Lcom/sec/android/app/fm/DeleteFileActivity;->access$400(Lcom/sec/android/app/fm/DeleteFileActivity;)Landroid/widget/CheckBox;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 196
    iget-object v4, p0, Lcom/sec/android/app/fm/DeleteFileActivity$3;->this$0:Lcom/sec/android/app/fm/DeleteFileActivity;

    #getter for: Lcom/sec/android/app/fm/DeleteFileActivity;->mCheckBoxSelectAll:Landroid/widget/CheckBox;
    invoke-static {v4}, Lcom/sec/android/app/fm/DeleteFileActivity;->access$400(Lcom/sec/android/app/fm/DeleteFileActivity;)Landroid/widget/CheckBox;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 197
    iget-object v4, p0, Lcom/sec/android/app/fm/DeleteFileActivity$3;->this$0:Lcom/sec/android/app/fm/DeleteFileActivity;

    #getter for: Lcom/sec/android/app/fm/DeleteFileActivity;->mSelectedItems:Ljava/util/HashMap;
    invoke-static {v4}, Lcom/sec/android/app/fm/DeleteFileActivity;->access$100(Lcom/sec/android/app/fm/DeleteFileActivity;)Ljava/util/HashMap;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/HashMap;->clear()V

    .line 213
    :goto_0
    iget-object v4, p0, Lcom/sec/android/app/fm/DeleteFileActivity$3;->this$0:Lcom/sec/android/app/fm/DeleteFileActivity;

    #getter for: Lcom/sec/android/app/fm/DeleteFileActivity;->mCheckBoxSelectAll:Landroid/widget/CheckBox;
    invoke-static {v4}, Lcom/sec/android/app/fm/DeleteFileActivity;->access$400(Lcom/sec/android/app/fm/DeleteFileActivity;)Landroid/widget/CheckBox;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/CheckBox;->performClick()Z

    .line 214
    iget-object v4, p0, Lcom/sec/android/app/fm/DeleteFileActivity$3;->this$0:Lcom/sec/android/app/fm/DeleteFileActivity;

    iget-object v4, v4, Lcom/sec/android/app/fm/RecordedFileListActivity;->mAdapter:Landroid/widget/CursorAdapter;

    invoke-virtual {v4}, Landroid/widget/CursorAdapter;->notifyDataSetChanged()V

    .line 215
    iget-object v4, p0, Lcom/sec/android/app/fm/DeleteFileActivity$3;->this$0:Lcom/sec/android/app/fm/DeleteFileActivity;

    invoke-virtual {v4}, Lcom/sec/android/app/fm/DeleteFileActivity;->invalidateOptionsMenu()V

    .line 216
    return-void

    .line 199
    :cond_0
    iget-object v4, p0, Lcom/sec/android/app/fm/DeleteFileActivity$3;->this$0:Lcom/sec/android/app/fm/DeleteFileActivity;

    invoke-virtual {v4}, Lcom/sec/android/app/fm/DeleteFileActivity;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    .line 201
    .local v0, c:Landroid/database/Cursor;
    const-wide/16 v1, -0x1

    .line 203
    .local v1, id:J
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 204
    :goto_1
    invoke-interface {v0}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v4

    if-nez v4, :cond_1

    .line 205
    const-string v4, "_id"

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    .line 206
    const-string v4, "_data"

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 207
    .local v3, tag:Ljava/lang/String;
    iget-object v4, p0, Lcom/sec/android/app/fm/DeleteFileActivity$3;->this$0:Lcom/sec/android/app/fm/DeleteFileActivity;

    #getter for: Lcom/sec/android/app/fm/DeleteFileActivity;->mSelectedItems:Ljava/util/HashMap;
    invoke-static {v4}, Lcom/sec/android/app/fm/DeleteFileActivity;->access$100(Lcom/sec/android/app/fm/DeleteFileActivity;)Ljava/util/HashMap;

    move-result-object v4

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v4, v5, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 208
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_1

    .line 211
    .end local v3           #tag:Ljava/lang/String;
    :cond_1
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_0
.end method
