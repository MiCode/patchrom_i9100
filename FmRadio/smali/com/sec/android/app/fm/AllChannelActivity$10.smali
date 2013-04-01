.class Lcom/sec/android/app/fm/AllChannelActivity$10;
.super Landroid/content/BroadcastReceiver;
.source "AllChannelActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/fm/AllChannelActivity;->registerRestoreReceiver()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/fm/AllChannelActivity;


# direct methods
.method constructor <init>(Lcom/sec/android/app/fm/AllChannelActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1094
    iput-object p1, p0, Lcom/sec/android/app/fm/AllChannelActivity$10;->this$0:Lcom/sec/android/app/fm/AllChannelActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 1099
    sget-object v0, Lcom/sec/android/app/fm/MainActivity;->_instance:Lcom/sec/android/app/fm/MainActivity;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/sec/android/app/fm/MainActivity;->_instance:Lcom/sec/android/app/fm/MainActivity;

    iget-object v0, v0, Lcom/sec/android/app/fm/MainActivity;->mChannelList:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 1100
    sget-object v0, Lcom/sec/android/app/fm/MainActivity;->_instance:Lcom/sec/android/app/fm/MainActivity;

    iget-object v1, v0, Lcom/sec/android/app/fm/MainActivity;->mChannelList:Ljava/util/ArrayList;

    monitor-enter v1

    .line 1101
    :try_start_0
    iget-object v0, p0, Lcom/sec/android/app/fm/AllChannelActivity$10;->this$0:Lcom/sec/android/app/fm/AllChannelActivity;

    new-instance v2, Lcom/sec/android/app/fm/AllChannelActivity$RadioItemAdapter;

    iget-object v3, p0, Lcom/sec/android/app/fm/AllChannelActivity$10;->this$0:Lcom/sec/android/app/fm/AllChannelActivity;

    iget-object v4, p0, Lcom/sec/android/app/fm/AllChannelActivity$10;->this$0:Lcom/sec/android/app/fm/AllChannelActivity;

    const v5, 0x7f030006

    sget-object v6, Lcom/sec/android/app/fm/MainActivity;->_instance:Lcom/sec/android/app/fm/MainActivity;

    iget-object v6, v6, Lcom/sec/android/app/fm/MainActivity;->mChannelList:Ljava/util/ArrayList;

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/sec/android/app/fm/AllChannelActivity$RadioItemAdapter;-><init>(Lcom/sec/android/app/fm/AllChannelActivity;Landroid/content/Context;ILjava/util/List;)V

    iput-object v2, v0, Lcom/sec/android/app/fm/AllChannelActivity;->mRadioArrayAdapter:Lcom/sec/android/app/fm/AllChannelActivity$RadioItemAdapter;

    .line 1103
    iget-object v0, p0, Lcom/sec/android/app/fm/AllChannelActivity$10;->this$0:Lcom/sec/android/app/fm/AllChannelActivity;

    #getter for: Lcom/sec/android/app/fm/AllChannelActivity;->mChannelListView:Landroid/widget/ListView;
    invoke-static {v0}, Lcom/sec/android/app/fm/AllChannelActivity;->access$800(Lcom/sec/android/app/fm/AllChannelActivity;)Landroid/widget/ListView;

    move-result-object v0

    iget-object v2, p0, Lcom/sec/android/app/fm/AllChannelActivity$10;->this$0:Lcom/sec/android/app/fm/AllChannelActivity;

    iget-object v2, v2, Lcom/sec/android/app/fm/AllChannelActivity;->mRadioArrayAdapter:Lcom/sec/android/app/fm/AllChannelActivity$RadioItemAdapter;

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 1104
    iget-object v0, p0, Lcom/sec/android/app/fm/AllChannelActivity$10;->this$0:Lcom/sec/android/app/fm/AllChannelActivity;

    iget-object v0, v0, Lcom/sec/android/app/fm/AllChannelActivity;->mRadioArrayAdapter:Lcom/sec/android/app/fm/AllChannelActivity$RadioItemAdapter;

    invoke-virtual {v0}, Lcom/sec/android/app/fm/AllChannelActivity$RadioItemAdapter;->notifyDataSetChanged()V

    .line 1105
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1107
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/fm/AllChannelActivity$10;->this$0:Lcom/sec/android/app/fm/AllChannelActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/fm/AllChannelActivity;->invalidateOptionsMenu()V

    .line 1109
    return-void

    .line 1105
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
