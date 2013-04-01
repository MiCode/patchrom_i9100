.class Lcom/sec/android/app/fm/RemoveChannelActivity$5;
.super Landroid/content/BroadcastReceiver;
.source "RemoveChannelActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/fm/RemoveChannelActivity;->registerRestoreReceiver()V
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
    .line 862
    iput-object p1, p0, Lcom/sec/android/app/fm/RemoveChannelActivity$5;->this$0:Lcom/sec/android/app/fm/RemoveChannelActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 866
    iget-object v0, p0, Lcom/sec/android/app/fm/RemoveChannelActivity$5;->this$0:Lcom/sec/android/app/fm/RemoveChannelActivity;

    const/4 v1, 0x0

    #calls: Lcom/sec/android/app/fm/RemoveChannelActivity;->createScannedList([Z)V
    invoke-static {v0, v1}, Lcom/sec/android/app/fm/RemoveChannelActivity;->access$900(Lcom/sec/android/app/fm/RemoveChannelActivity;[Z)V

    .line 867
    iget-object v0, p0, Lcom/sec/android/app/fm/RemoveChannelActivity$5;->this$0:Lcom/sec/android/app/fm/RemoveChannelActivity;

    new-instance v1, Lcom/sec/android/app/fm/RemoveChannelActivity$MyAdapter;

    iget-object v2, p0, Lcom/sec/android/app/fm/RemoveChannelActivity$5;->this$0:Lcom/sec/android/app/fm/RemoveChannelActivity;

    invoke-direct {v1, v2}, Lcom/sec/android/app/fm/RemoveChannelActivity$MyAdapter;-><init>(Lcom/sec/android/app/fm/RemoveChannelActivity;)V

    #setter for: Lcom/sec/android/app/fm/RemoveChannelActivity;->mAdapter:Landroid/widget/BaseAdapter;
    invoke-static {v0, v1}, Lcom/sec/android/app/fm/RemoveChannelActivity;->access$002(Lcom/sec/android/app/fm/RemoveChannelActivity;Landroid/widget/BaseAdapter;)Landroid/widget/BaseAdapter;

    .line 868
    iget-object v0, p0, Lcom/sec/android/app/fm/RemoveChannelActivity$5;->this$0:Lcom/sec/android/app/fm/RemoveChannelActivity;

    #getter for: Lcom/sec/android/app/fm/RemoveChannelActivity;->mAdapter:Landroid/widget/BaseAdapter;
    invoke-static {v0}, Lcom/sec/android/app/fm/RemoveChannelActivity;->access$000(Lcom/sec/android/app/fm/RemoveChannelActivity;)Landroid/widget/BaseAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->getCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 869
    iget-object v0, p0, Lcom/sec/android/app/fm/RemoveChannelActivity$5;->this$0:Lcom/sec/android/app/fm/RemoveChannelActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/fm/RemoveChannelActivity;->finish()V

    .line 876
    :goto_0
    return-void

    .line 872
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/fm/RemoveChannelActivity$5;->this$0:Lcom/sec/android/app/fm/RemoveChannelActivity;

    #getter for: Lcom/sec/android/app/fm/RemoveChannelActivity;->mChannelListView:Landroid/widget/ListView;
    invoke-static {v0}, Lcom/sec/android/app/fm/RemoveChannelActivity;->access$1000(Lcom/sec/android/app/fm/RemoveChannelActivity;)Landroid/widget/ListView;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/fm/RemoveChannelActivity$5;->this$0:Lcom/sec/android/app/fm/RemoveChannelActivity;

    #getter for: Lcom/sec/android/app/fm/RemoveChannelActivity;->mAdapter:Landroid/widget/BaseAdapter;
    invoke-static {v1}, Lcom/sec/android/app/fm/RemoveChannelActivity;->access$000(Lcom/sec/android/app/fm/RemoveChannelActivity;)Landroid/widget/BaseAdapter;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 873
    iget-object v0, p0, Lcom/sec/android/app/fm/RemoveChannelActivity$5;->this$0:Lcom/sec/android/app/fm/RemoveChannelActivity;

    #calls: Lcom/sec/android/app/fm/RemoveChannelActivity;->checkSelection()V
    invoke-static {v0}, Lcom/sec/android/app/fm/RemoveChannelActivity;->access$700(Lcom/sec/android/app/fm/RemoveChannelActivity;)V

    .line 874
    iget-object v0, p0, Lcom/sec/android/app/fm/RemoveChannelActivity$5;->this$0:Lcom/sec/android/app/fm/RemoveChannelActivity;

    #getter for: Lcom/sec/android/app/fm/RemoveChannelActivity;->mAdapter:Landroid/widget/BaseAdapter;
    invoke-static {v0}, Lcom/sec/android/app/fm/RemoveChannelActivity;->access$000(Lcom/sec/android/app/fm/RemoveChannelActivity;)Landroid/widget/BaseAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 875
    iget-object v0, p0, Lcom/sec/android/app/fm/RemoveChannelActivity$5;->this$0:Lcom/sec/android/app/fm/RemoveChannelActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/fm/RemoveChannelActivity;->invalidateOptionsMenu()V

    goto :goto_0
.end method
