.class Lcom/sec/android/app/fm/RemoveChannelActivity$3;
.super Ljava/lang/Object;
.source "RemoveChannelActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/fm/RemoveChannelActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/fm/RemoveChannelActivity;


# direct methods
.method constructor <init>(Lcom/sec/android/app/fm/RemoveChannelActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 210
    iput-object p1, p0, Lcom/sec/android/app/fm/RemoveChannelActivity$3;->this$0:Lcom/sec/android/app/fm/RemoveChannelActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3
    .parameter
    .parameter "arg1"
    .parameter "arg2"
    .parameter "arg3"
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
    .local p1, arg0:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    const/4 v2, 0x0

    .line 215
    const v1, 0x7f07000c

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    .line 217
    .local v0, chBox:Landroid/widget/CheckBox;
    invoke-virtual {v0}, Landroid/widget/CheckBox;->toggle()V

    .line 218
    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 219
    iget-object v1, p0, Lcom/sec/android/app/fm/RemoveChannelActivity$3;->this$0:Lcom/sec/android/app/fm/RemoveChannelActivity;

    #getter for: Lcom/sec/android/app/fm/RemoveChannelActivity;->mAllChList:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/sec/android/app/fm/RemoveChannelActivity;->access$600(Lcom/sec/android/app/fm/RemoveChannelActivity;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/fm/RemoveChannelActivity$ChannelInfo;

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/sec/android/app/fm/RemoveChannelActivity$ChannelInfo;->willDeleted:Z

    .line 227
    :goto_0
    iget-object v1, p0, Lcom/sec/android/app/fm/RemoveChannelActivity$3;->this$0:Lcom/sec/android/app/fm/RemoveChannelActivity;

    #calls: Lcom/sec/android/app/fm/RemoveChannelActivity;->checkSelection()V
    invoke-static {v1}, Lcom/sec/android/app/fm/RemoveChannelActivity;->access$700(Lcom/sec/android/app/fm/RemoveChannelActivity;)V

    .line 228
    iget-object v1, p0, Lcom/sec/android/app/fm/RemoveChannelActivity$3;->this$0:Lcom/sec/android/app/fm/RemoveChannelActivity;

    #getter for: Lcom/sec/android/app/fm/RemoveChannelActivity;->mAdapter:Landroid/widget/BaseAdapter;
    invoke-static {v1}, Lcom/sec/android/app/fm/RemoveChannelActivity;->access$000(Lcom/sec/android/app/fm/RemoveChannelActivity;)Landroid/widget/BaseAdapter;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 229
    iget-object v1, p0, Lcom/sec/android/app/fm/RemoveChannelActivity$3;->this$0:Lcom/sec/android/app/fm/RemoveChannelActivity;

    invoke-virtual {v1}, Lcom/sec/android/app/fm/RemoveChannelActivity;->invalidateOptionsMenu()V

    .line 230
    return-void

    .line 221
    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/fm/RemoveChannelActivity$3;->this$0:Lcom/sec/android/app/fm/RemoveChannelActivity;

    #getter for: Lcom/sec/android/app/fm/RemoveChannelActivity;->mAllChList:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/sec/android/app/fm/RemoveChannelActivity;->access$600(Lcom/sec/android/app/fm/RemoveChannelActivity;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/fm/RemoveChannelActivity$ChannelInfo;

    iput-boolean v2, v1, Lcom/sec/android/app/fm/RemoveChannelActivity$ChannelInfo;->willDeleted:Z

    .line 223
    iget-object v1, p0, Lcom/sec/android/app/fm/RemoveChannelActivity$3;->this$0:Lcom/sec/android/app/fm/RemoveChannelActivity;

    #setter for: Lcom/sec/android/app/fm/RemoveChannelActivity;->mSelectAll:Z
    invoke-static {v1, v2}, Lcom/sec/android/app/fm/RemoveChannelActivity;->access$102(Lcom/sec/android/app/fm/RemoveChannelActivity;Z)Z

    goto :goto_0
.end method
