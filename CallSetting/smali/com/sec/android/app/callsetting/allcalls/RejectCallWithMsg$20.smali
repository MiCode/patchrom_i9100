.class Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg$20;
.super Ljava/lang/Object;
.source "RejectCallWithMsg.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg;->deleteDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg;


# direct methods
.method constructor <init>(Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg;)V
    .locals 0
    .parameter

    .prologue
    .line 966
    iput-object p1, p0, Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg$20;->this$0:Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .parameter "dialog"
    .parameter "arg1"

    .prologue
    .line 969
    iget-object v1, p0, Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg$20;->this$0:Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg;

    #getter for: Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg;->rejectMsgListID:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg;->access$600(Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg;)Ljava/util/ArrayList;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg$20;->this$0:Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg;

    #getter for: Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg;->mSelectedItem:I
    invoke-static {v2}, Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg;->access$000(Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg;)I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 970
    .local v0, del_id:I
    iget-object v1, p0, Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg$20;->this$0:Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg;

    #calls: Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg;->deleteRejectMessage(I)V
    invoke-static {v1, v0}, Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg;->access$800(Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg;I)V

    .line 971
    iget-object v1, p0, Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg$20;->this$0:Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg;

    #getter for: Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg;->rejectMsgList:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg;->access$500(Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg;)Ljava/util/ArrayList;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg$20;->this$0:Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg;

    #getter for: Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg;->mSelectedItem:I
    invoke-static {v2}, Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg;->access$000(Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg;)I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 972
    iget-object v1, p0, Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg$20;->this$0:Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg;

    #getter for: Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg;->rejectMsgListID:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg;->access$600(Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg;)Ljava/util/ArrayList;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg$20;->this$0:Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg;

    #getter for: Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg;->mSelectedItem:I
    invoke-static {v2}, Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg;->access$000(Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg;)I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 974
    iget-object v1, p0, Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg$20;->this$0:Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg;

    iget-object v2, p0, Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg$20;->this$0:Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg;

    const v3, 0x7f07009b

    invoke-virtual {v2, v3}, Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg;->getString(I)Ljava/lang/String;

    move-result-object v2

    #calls: Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg;->displayToast(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg;->access$1000(Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg;Ljava/lang/String;)V

    .line 975
    iget-object v1, p0, Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg$20;->this$0:Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg;

    #getter for: Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg;->mListAdapter:Landroid/widget/ArrayAdapter;
    invoke-static {v1}, Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg;->access$1100(Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg;)Landroid/widget/ArrayAdapter;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ArrayAdapter;->notifyDataSetInvalidated()V

    .line 976
    iget-object v1, p0, Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg$20;->this$0:Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg;

    iget-object v1, v1, Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg;->listView:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg$20;->this$0:Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg;

    #getter for: Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg;->mListAdapter:Landroid/widget/ArrayAdapter;
    invoke-static {v2}, Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg;->access$1100(Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg;)Landroid/widget/ArrayAdapter;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 977
    return-void
.end method
