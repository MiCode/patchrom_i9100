.class Lcom/sec/android/app/fm/DeleteFileActivity$2;
.super Ljava/lang/Object;
.source "DeleteFileActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


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
    .line 164
    iput-object p1, p0, Lcom/sec/android/app/fm/DeleteFileActivity$2;->this$0:Lcom/sec/android/app/fm/DeleteFileActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4
    .parameter
    .parameter "view"
    .parameter "position"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 168
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    invoke-static {}, Lcom/sec/android/app/fm/DeleteFileActivity;->access$200()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " item clicked"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    const v1, 0x7f070091

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    .line 171
    .local v0, checkBox:Landroid/widget/CheckBox;
    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 172
    iget-object v1, p0, Lcom/sec/android/app/fm/DeleteFileActivity$2;->this$0:Lcom/sec/android/app/fm/DeleteFileActivity;

    #getter for: Lcom/sec/android/app/fm/DeleteFileActivity;->mSelectedItems:Ljava/util/HashMap;
    invoke-static {v1}, Lcom/sec/android/app/fm/DeleteFileActivity;->access$100(Lcom/sec/android/app/fm/DeleteFileActivity;)Ljava/util/HashMap;

    move-result-object v1

    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 176
    :goto_0
    iget-object v1, p0, Lcom/sec/android/app/fm/DeleteFileActivity$2;->this$0:Lcom/sec/android/app/fm/DeleteFileActivity;

    #getter for: Lcom/sec/android/app/fm/DeleteFileActivity;->mCheckBoxSelectAll:Landroid/widget/CheckBox;
    invoke-static {v1}, Lcom/sec/android/app/fm/DeleteFileActivity;->access$400(Lcom/sec/android/app/fm/DeleteFileActivity;)Landroid/widget/CheckBox;

    move-result-object v2

    iget-object v1, p0, Lcom/sec/android/app/fm/DeleteFileActivity$2;->this$0:Lcom/sec/android/app/fm/DeleteFileActivity;

    #getter for: Lcom/sec/android/app/fm/DeleteFileActivity;->mSelectedItems:Ljava/util/HashMap;
    invoke-static {v1}, Lcom/sec/android/app/fm/DeleteFileActivity;->access$100(Lcom/sec/android/app/fm/DeleteFileActivity;)Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v1

    iget-object v3, p0, Lcom/sec/android/app/fm/DeleteFileActivity$2;->this$0:Lcom/sec/android/app/fm/DeleteFileActivity;

    iget-object v3, v3, Lcom/sec/android/app/fm/RecordedFileListActivity;->mAdapter:Landroid/widget/CursorAdapter;

    invoke-virtual {v3}, Landroid/widget/CursorAdapter;->getCount()I

    move-result v3

    if-ne v1, v3, :cond_1

    const/4 v1, 0x1

    :goto_1
    invoke-virtual {v2, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 178
    invoke-virtual {v0}, Landroid/widget/CheckBox;->performClick()Z

    .line 180
    iget-object v1, p0, Lcom/sec/android/app/fm/DeleteFileActivity$2;->this$0:Lcom/sec/android/app/fm/DeleteFileActivity;

    invoke-virtual {v1}, Lcom/sec/android/app/fm/DeleteFileActivity;->invalidateOptionsMenu()V

    .line 181
    return-void

    .line 174
    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/fm/DeleteFileActivity$2;->this$0:Lcom/sec/android/app/fm/DeleteFileActivity;

    #getter for: Lcom/sec/android/app/fm/DeleteFileActivity;->mSelectedItems:Ljava/util/HashMap;
    invoke-static {v1}, Lcom/sec/android/app/fm/DeleteFileActivity;->access$100(Lcom/sec/android/app/fm/DeleteFileActivity;)Ljava/util/HashMap;

    move-result-object v2

    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 176
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method
