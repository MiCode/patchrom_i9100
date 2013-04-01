.class Lcom/sec/android/app/fm/RenameChannelActivity$5;
.super Landroid/content/BroadcastReceiver;
.source "RenameChannelActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/fm/RenameChannelActivity;->registerRestoreReceiver()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/fm/RenameChannelActivity;


# direct methods
.method constructor <init>(Lcom/sec/android/app/fm/RenameChannelActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 546
    iput-object p1, p0, Lcom/sec/android/app/fm/RenameChannelActivity$5;->this$0:Lcom/sec/android/app/fm/RenameChannelActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 551
    iget-object v0, p0, Lcom/sec/android/app/fm/RenameChannelActivity$5;->this$0:Lcom/sec/android/app/fm/RenameChannelActivity;

    #getter for: Lcom/sec/android/app/fm/RenameChannelActivity;->mAdapter:Landroid/widget/BaseAdapter;
    invoke-static {v0}, Lcom/sec/android/app/fm/RenameChannelActivity;->access$000(Lcom/sec/android/app/fm/RenameChannelActivity;)Landroid/widget/BaseAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 552
    iget-object v0, p0, Lcom/sec/android/app/fm/RenameChannelActivity$5;->this$0:Lcom/sec/android/app/fm/RenameChannelActivity;

    #getter for: Lcom/sec/android/app/fm/RenameChannelActivity;->mRenameDialog:Lcom/sec/android/app/fm/ui/RenameDialog;
    invoke-static {v0}, Lcom/sec/android/app/fm/RenameChannelActivity;->access$200(Lcom/sec/android/app/fm/RenameChannelActivity;)Lcom/sec/android/app/fm/ui/RenameDialog;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/fm/RenameChannelActivity$5;->this$0:Lcom/sec/android/app/fm/RenameChannelActivity;

    #getter for: Lcom/sec/android/app/fm/RenameChannelActivity;->mRenameDialog:Lcom/sec/android/app/fm/ui/RenameDialog;
    invoke-static {v0}, Lcom/sec/android/app/fm/RenameChannelActivity;->access$200(Lcom/sec/android/app/fm/RenameChannelActivity;)Lcom/sec/android/app/fm/ui/RenameDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/fm/ui/RenameDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 553
    iget-object v0, p0, Lcom/sec/android/app/fm/RenameChannelActivity$5;->this$0:Lcom/sec/android/app/fm/RenameChannelActivity;

    #getter for: Lcom/sec/android/app/fm/RenameChannelActivity;->mRenameDialog:Lcom/sec/android/app/fm/ui/RenameDialog;
    invoke-static {v0}, Lcom/sec/android/app/fm/RenameChannelActivity;->access$200(Lcom/sec/android/app/fm/RenameChannelActivity;)Lcom/sec/android/app/fm/ui/RenameDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/fm/ui/RenameDialog;->dismiss()V

    .line 555
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/fm/RenameChannelActivity$5;->this$0:Lcom/sec/android/app/fm/RenameChannelActivity;

    #getter for: Lcom/sec/android/app/fm/RenameChannelActivity;->mAdapter:Landroid/widget/BaseAdapter;
    invoke-static {v0}, Lcom/sec/android/app/fm/RenameChannelActivity;->access$000(Lcom/sec/android/app/fm/RenameChannelActivity;)Landroid/widget/BaseAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->getCount()I

    move-result v0

    if-nez v0, :cond_1

    .line 556
    iget-object v0, p0, Lcom/sec/android/app/fm/RenameChannelActivity$5;->this$0:Lcom/sec/android/app/fm/RenameChannelActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/fm/RenameChannelActivity;->finish()V

    .line 561
    :goto_0
    return-void

    .line 559
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/fm/RenameChannelActivity$5;->this$0:Lcom/sec/android/app/fm/RenameChannelActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/fm/RenameChannelActivity;->invalidateOptionsMenu()V

    goto :goto_0
.end method
