.class Lcom/sec/android/app/fm/RenameChannelActivity$2;
.super Ljava/lang/Object;
.source "RenameChannelActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/fm/RenameChannelActivity;->onCreate(Landroid/os/Bundle;)V
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
    .line 170
    iput-object p1, p0, Lcom/sec/android/app/fm/RenameChannelActivity$2;->this$0:Lcom/sec/android/app/fm/RenameChannelActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
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
    .line 176
    .local p1, arg0:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    iget-object v1, p0, Lcom/sec/android/app/fm/RenameChannelActivity$2;->this$0:Lcom/sec/android/app/fm/RenameChannelActivity;

    sget-object v0, Lcom/sec/android/app/fm/MainActivity;->_instance:Lcom/sec/android/app/fm/MainActivity;

    iget-object v0, v0, Lcom/sec/android/app/fm/MainActivity;->mChannelList:Ljava/util/ArrayList;

    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/fm/data/Channel;

    #setter for: Lcom/sec/android/app/fm/RenameChannelActivity;->mSelectedChannel:Lcom/sec/android/app/fm/data/Channel;
    invoke-static {v1, v0}, Lcom/sec/android/app/fm/RenameChannelActivity;->access$102(Lcom/sec/android/app/fm/RenameChannelActivity;Lcom/sec/android/app/fm/data/Channel;)Lcom/sec/android/app/fm/data/Channel;

    .line 184
    iget-object v0, p0, Lcom/sec/android/app/fm/RenameChannelActivity$2;->this$0:Lcom/sec/android/app/fm/RenameChannelActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/fm/RenameChannelActivity;->showDialog(I)V

    .line 186
    return-void
.end method
