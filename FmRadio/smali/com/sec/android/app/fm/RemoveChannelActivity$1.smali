.class Lcom/sec/android/app/fm/RemoveChannelActivity$1;
.super Lcom/sec/android/app/fm/MainActivity$Callback;
.source "RemoveChannelActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/fm/RemoveChannelActivity;
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
    .line 95
    iput-object p1, p0, Lcom/sec/android/app/fm/RemoveChannelActivity$1;->this$0:Lcom/sec/android/app/fm/RemoveChannelActivity;

    invoke-direct {p0}, Lcom/sec/android/app/fm/MainActivity$Callback;-><init>()V

    return-void
.end method


# virtual methods
.method public onOff(I)V
    .locals 1
    .parameter "reasonCode"

    .prologue
    .line 97
    iget-object v0, p0, Lcom/sec/android/app/fm/RemoveChannelActivity$1;->this$0:Lcom/sec/android/app/fm/RemoveChannelActivity;

    #getter for: Lcom/sec/android/app/fm/RemoveChannelActivity;->mAdapter:Landroid/widget/BaseAdapter;
    invoke-static {v0}, Lcom/sec/android/app/fm/RemoveChannelActivity;->access$000(Lcom/sec/android/app/fm/RemoveChannelActivity;)Landroid/widget/BaseAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 98
    iget-object v0, p0, Lcom/sec/android/app/fm/RemoveChannelActivity$1;->this$0:Lcom/sec/android/app/fm/RemoveChannelActivity;

    #getter for: Lcom/sec/android/app/fm/RemoveChannelActivity;->mAdapter:Landroid/widget/BaseAdapter;
    invoke-static {v0}, Lcom/sec/android/app/fm/RemoveChannelActivity;->access$000(Lcom/sec/android/app/fm/RemoveChannelActivity;)Landroid/widget/BaseAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 99
    :cond_0
    return-void
.end method

.method public onTune(J)V
    .locals 1
    .parameter "frequency"

    .prologue
    .line 102
    iget-object v0, p0, Lcom/sec/android/app/fm/RemoveChannelActivity$1;->this$0:Lcom/sec/android/app/fm/RemoveChannelActivity;

    #getter for: Lcom/sec/android/app/fm/RemoveChannelActivity;->mAdapter:Landroid/widget/BaseAdapter;
    invoke-static {v0}, Lcom/sec/android/app/fm/RemoveChannelActivity;->access$000(Lcom/sec/android/app/fm/RemoveChannelActivity;)Landroid/widget/BaseAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 103
    iget-object v0, p0, Lcom/sec/android/app/fm/RemoveChannelActivity$1;->this$0:Lcom/sec/android/app/fm/RemoveChannelActivity;

    #getter for: Lcom/sec/android/app/fm/RemoveChannelActivity;->mAdapter:Landroid/widget/BaseAdapter;
    invoke-static {v0}, Lcom/sec/android/app/fm/RemoveChannelActivity;->access$000(Lcom/sec/android/app/fm/RemoveChannelActivity;)Landroid/widget/BaseAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 104
    :cond_0
    return-void
.end method
