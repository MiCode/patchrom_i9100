.class Lcom/sec/android/app/fm/RenameChannelActivity$1;
.super Lcom/sec/android/app/fm/MainActivity$Callback;
.source "RenameChannelActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/fm/RenameChannelActivity;
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
    .line 70
    iput-object p1, p0, Lcom/sec/android/app/fm/RenameChannelActivity$1;->this$0:Lcom/sec/android/app/fm/RenameChannelActivity;

    invoke-direct {p0}, Lcom/sec/android/app/fm/MainActivity$Callback;-><init>()V

    return-void
.end method


# virtual methods
.method public notifyUI()V
    .locals 2

    .prologue
    .line 87
    sget-object v0, Lcom/sec/android/app/fm/MainActivity;->_instance:Lcom/sec/android/app/fm/MainActivity;

    const-string v1, "RenameChannel Activity : notify UI"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/fm/MainActivity;->log(Ljava/lang/String;)V

    .line 88
    iget-object v0, p0, Lcom/sec/android/app/fm/RenameChannelActivity$1;->this$0:Lcom/sec/android/app/fm/RenameChannelActivity;

    #getter for: Lcom/sec/android/app/fm/RenameChannelActivity;->mAdapter:Landroid/widget/BaseAdapter;
    invoke-static {v0}, Lcom/sec/android/app/fm/RenameChannelActivity;->access$000(Lcom/sec/android/app/fm/RenameChannelActivity;)Landroid/widget/BaseAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 89
    iget-object v0, p0, Lcom/sec/android/app/fm/RenameChannelActivity$1;->this$0:Lcom/sec/android/app/fm/RenameChannelActivity;

    #getter for: Lcom/sec/android/app/fm/RenameChannelActivity;->mAdapter:Landroid/widget/BaseAdapter;
    invoke-static {v0}, Lcom/sec/android/app/fm/RenameChannelActivity;->access$000(Lcom/sec/android/app/fm/RenameChannelActivity;)Landroid/widget/BaseAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 90
    :cond_0
    return-void
.end method

.method public onOff(I)V
    .locals 1
    .parameter "reasonCode"

    .prologue
    .line 72
    iget-object v0, p0, Lcom/sec/android/app/fm/RenameChannelActivity$1;->this$0:Lcom/sec/android/app/fm/RenameChannelActivity;

    #getter for: Lcom/sec/android/app/fm/RenameChannelActivity;->mAdapter:Landroid/widget/BaseAdapter;
    invoke-static {v0}, Lcom/sec/android/app/fm/RenameChannelActivity;->access$000(Lcom/sec/android/app/fm/RenameChannelActivity;)Landroid/widget/BaseAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 73
    iget-object v0, p0, Lcom/sec/android/app/fm/RenameChannelActivity$1;->this$0:Lcom/sec/android/app/fm/RenameChannelActivity;

    #getter for: Lcom/sec/android/app/fm/RenameChannelActivity;->mAdapter:Landroid/widget/BaseAdapter;
    invoke-static {v0}, Lcom/sec/android/app/fm/RenameChannelActivity;->access$000(Lcom/sec/android/app/fm/RenameChannelActivity;)Landroid/widget/BaseAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 74
    :cond_0
    return-void
.end method

.method public onOn()V
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/sec/android/app/fm/RenameChannelActivity$1;->this$0:Lcom/sec/android/app/fm/RenameChannelActivity;

    #getter for: Lcom/sec/android/app/fm/RenameChannelActivity;->mAdapter:Landroid/widget/BaseAdapter;
    invoke-static {v0}, Lcom/sec/android/app/fm/RenameChannelActivity;->access$000(Lcom/sec/android/app/fm/RenameChannelActivity;)Landroid/widget/BaseAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 78
    iget-object v0, p0, Lcom/sec/android/app/fm/RenameChannelActivity$1;->this$0:Lcom/sec/android/app/fm/RenameChannelActivity;

    #getter for: Lcom/sec/android/app/fm/RenameChannelActivity;->mAdapter:Landroid/widget/BaseAdapter;
    invoke-static {v0}, Lcom/sec/android/app/fm/RenameChannelActivity;->access$000(Lcom/sec/android/app/fm/RenameChannelActivity;)Landroid/widget/BaseAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 79
    :cond_0
    return-void
.end method

.method public onTune(J)V
    .locals 1
    .parameter "frequency"

    .prologue
    .line 82
    iget-object v0, p0, Lcom/sec/android/app/fm/RenameChannelActivity$1;->this$0:Lcom/sec/android/app/fm/RenameChannelActivity;

    #getter for: Lcom/sec/android/app/fm/RenameChannelActivity;->mAdapter:Landroid/widget/BaseAdapter;
    invoke-static {v0}, Lcom/sec/android/app/fm/RenameChannelActivity;->access$000(Lcom/sec/android/app/fm/RenameChannelActivity;)Landroid/widget/BaseAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 83
    iget-object v0, p0, Lcom/sec/android/app/fm/RenameChannelActivity$1;->this$0:Lcom/sec/android/app/fm/RenameChannelActivity;

    #getter for: Lcom/sec/android/app/fm/RenameChannelActivity;->mAdapter:Landroid/widget/BaseAdapter;
    invoke-static {v0}, Lcom/sec/android/app/fm/RenameChannelActivity;->access$000(Lcom/sec/android/app/fm/RenameChannelActivity;)Landroid/widget/BaseAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 84
    :cond_0
    return-void
.end method
