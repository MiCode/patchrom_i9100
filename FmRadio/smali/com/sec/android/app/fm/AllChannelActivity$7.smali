.class Lcom/sec/android/app/fm/AllChannelActivity$7;
.super Ljava/lang/Object;
.source "AllChannelActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/fm/AllChannelActivity;->onCreateDialog(I)Landroid/app/Dialog;
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
    .line 551
    iput-object p1, p0, Lcom/sec/android/app/fm/AllChannelActivity$7;->this$0:Lcom/sec/android/app/fm/AllChannelActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    .line 556
    iget-object v0, p0, Lcom/sec/android/app/fm/AllChannelActivity$7;->this$0:Lcom/sec/android/app/fm/AllChannelActivity;

    #getter for: Lcom/sec/android/app/fm/AllChannelActivity;->mSelectedChannel:Lcom/sec/android/app/fm/data/Channel;
    invoke-static {v0}, Lcom/sec/android/app/fm/AllChannelActivity;->access$300(Lcom/sec/android/app/fm/AllChannelActivity;)Lcom/sec/android/app/fm/data/Channel;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/fm/AllChannelActivity$7;->this$0:Lcom/sec/android/app/fm/AllChannelActivity;

    #getter for: Lcom/sec/android/app/fm/AllChannelActivity;->mSavedSelectedFreq:F
    invoke-static {v0}, Lcom/sec/android/app/fm/AllChannelActivity;->access$400(Lcom/sec/android/app/fm/AllChannelActivity;)F

    move-result v0

    const/high16 v1, -0x4080

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    .line 557
    iget-object v0, p0, Lcom/sec/android/app/fm/AllChannelActivity$7;->this$0:Lcom/sec/android/app/fm/AllChannelActivity;

    sget-object v1, Lcom/sec/android/app/fm/MainActivity;->_instance:Lcom/sec/android/app/fm/MainActivity;

    iget-object v2, p0, Lcom/sec/android/app/fm/AllChannelActivity$7;->this$0:Lcom/sec/android/app/fm/AllChannelActivity;

    #getter for: Lcom/sec/android/app/fm/AllChannelActivity;->mSavedSelectedFreq:F
    invoke-static {v2}, Lcom/sec/android/app/fm/AllChannelActivity;->access$400(Lcom/sec/android/app/fm/AllChannelActivity;)F

    move-result v2

    invoke-virtual {v1, v2}, Lcom/sec/android/app/fm/MainActivity;->getChannel(F)Lcom/sec/android/app/fm/data/Channel;

    move-result-object v1

    #setter for: Lcom/sec/android/app/fm/AllChannelActivity;->mSelectedChannel:Lcom/sec/android/app/fm/data/Channel;
    invoke-static {v0, v1}, Lcom/sec/android/app/fm/AllChannelActivity;->access$302(Lcom/sec/android/app/fm/AllChannelActivity;Lcom/sec/android/app/fm/data/Channel;)Lcom/sec/android/app/fm/data/Channel;

    .line 560
    :cond_0
    sget-object v0, Lcom/sec/android/app/fm/MainActivity;->_instance:Lcom/sec/android/app/fm/MainActivity;

    iget-object v0, v0, Lcom/sec/android/app/fm/MainActivity;->mChannelList:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/sec/android/app/fm/AllChannelActivity$7;->this$0:Lcom/sec/android/app/fm/AllChannelActivity;

    #getter for: Lcom/sec/android/app/fm/AllChannelActivity;->mSelectedChannel:Lcom/sec/android/app/fm/data/Channel;
    invoke-static {v1}, Lcom/sec/android/app/fm/AllChannelActivity;->access$300(Lcom/sec/android/app/fm/AllChannelActivity;)Lcom/sec/android/app/fm/data/Channel;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 561
    iget-object v0, p0, Lcom/sec/android/app/fm/AllChannelActivity$7;->this$0:Lcom/sec/android/app/fm/AllChannelActivity;

    iget-object v0, v0, Lcom/sec/android/app/fm/AllChannelActivity;->mRadioArrayAdapter:Lcom/sec/android/app/fm/AllChannelActivity$RadioItemAdapter;

    invoke-virtual {v0}, Lcom/sec/android/app/fm/AllChannelActivity$RadioItemAdapter;->notifyDataSetChanged()V

    .line 562
    invoke-static {}, Lcom/sec/android/app/fm/data/ChannelStore;->getInstance()Lcom/sec/android/app/fm/data/ChannelStore;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/fm/data/ChannelStore;->store()V

    .line 563
    iget-object v0, p0, Lcom/sec/android/app/fm/AllChannelActivity$7;->this$0:Lcom/sec/android/app/fm/AllChannelActivity;

    #calls: Lcom/sec/android/app/fm/AllChannelActivity;->CheckDelete_Already_Tuened()V
    invoke-static {v0}, Lcom/sec/android/app/fm/AllChannelActivity;->access$500(Lcom/sec/android/app/fm/AllChannelActivity;)V

    .line 564
    return-void
.end method
