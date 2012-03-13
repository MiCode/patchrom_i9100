.class Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg$6;
.super Ljava/lang/Object;
.source "RejectCallWithMsg.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg;->softkeyLeftRun(Landroid/view/View;)V
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
    .line 334
    iput-object p1, p0, Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg$6;->this$0:Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    const/16 v7, 0x8

    .line 336
    const/4 v0, 0x0

    .line 337
    .local v0, checkedNum:I
    const/4 v3, 0x0

    .line 339
    .local v3, isDeleted:Z
    iget-object v4, p0, Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg$6;->this$0:Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg;

    iget-object v4, v4, Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg;->listView:Landroid/widget/ListView;

    invoke-virtual {v4}, Landroid/widget/ListView;->getCount()I

    move-result v4

    add-int/lit8 v2, v4, -0x1

    .local v2, i:I
    :goto_0
    if-ltz v2, :cond_1

    .line 341
    iget-object v4, p0, Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg$6;->this$0:Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg;

    iget-object v4, v4, Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg;->listView:Landroid/widget/ListView;

    invoke-virtual {v4, v2}, Landroid/widget/ListView;->isItemChecked(I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 343
    iget-object v4, p0, Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg$6;->this$0:Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg;

    #getter for: Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg;->rejectMsgListID:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg;->access$600(Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg;)Ljava/util/ArrayList;

    move-result-object v4

    add-int/lit8 v5, v2, -0x1

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 344
    .local v1, del_id:I
    iget-object v4, p0, Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg$6;->this$0:Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg;

    #calls: Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg;->deleteRejectMessage(I)V
    invoke-static {v4, v1}, Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg;->access$800(Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg;I)V

    .line 345
    iget-object v4, p0, Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg$6;->this$0:Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg;

    #getter for: Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg;->rejectMsgList:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg;->access$500(Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg;)Ljava/util/ArrayList;

    move-result-object v4

    add-int/lit8 v5, v2, -0x1

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 346
    iget-object v4, p0, Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg$6;->this$0:Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg;

    #getter for: Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg;->rejectMsgListID:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg;->access$600(Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg;)Ljava/util/ArrayList;

    move-result-object v4

    add-int/lit8 v5, v2, -0x1

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 347
    const/4 v3, 0x1

    .line 348
    iget-object v4, p0, Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg$6;->this$0:Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg;

    #calls: Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg;->updateRejectMessage()V
    invoke-static {v4}, Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg;->access$900(Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg;)V

    .line 339
    .end local v1           #del_id:I
    :cond_0
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 351
    :cond_1
    if-nez v3, :cond_3

    .line 365
    :cond_2
    :goto_1
    return-void

    .line 357
    :cond_3
    iget-object v4, p0, Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg$6;->this$0:Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg;

    iget-object v5, p0, Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg$6;->this$0:Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg;

    const v6, 0x7f07009b

    invoke-virtual {v5, v6}, Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg;->getString(I)Ljava/lang/String;

    move-result-object v5

    #calls: Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg;->displayToast(Ljava/lang/String;)V
    invoke-static {v4, v5}, Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg;->access$1000(Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg;Ljava/lang/String;)V

    .line 358
    iget-object v4, p0, Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg$6;->this$0:Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg;

    #getter for: Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg;->mListAdapter:Landroid/widget/ArrayAdapter;
    invoke-static {v4}, Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg;->access$1100(Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg;)Landroid/widget/ArrayAdapter;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/ArrayAdapter;->notifyDataSetInvalidated()V

    .line 359
    iget-object v4, p0, Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg$6;->this$0:Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg;

    iget-object v4, v4, Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg;->selectAll:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 360
    sget-object v4, Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg;->mSoftkeyView:Lcom/sec/android/touchwiz/widget/TwSoftkeyView;

    invoke-virtual {v4, v7}, Lcom/sec/android/touchwiz/widget/TwSoftkeyView;->setVisibility(I)V

    .line 361
    iget-object v4, p0, Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg$6;->this$0:Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg;

    iget-object v4, v4, Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg;->listView:Landroid/widget/ListView;

    iget-object v5, p0, Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg$6;->this$0:Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg;

    #getter for: Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg;->mListAdapter:Landroid/widget/ArrayAdapter;
    invoke-static {v5}, Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg;->access$1100(Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg;)Landroid/widget/ArrayAdapter;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 362
    iget-object v4, p0, Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg$6;->this$0:Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg;

    #calls: Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg;->updateRejectMessage()V
    invoke-static {v4}, Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg;->access$900(Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg;)V

    .line 363
    iget-object v4, p0, Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg$6;->this$0:Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg;

    #getter for: Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg;->mState:I
    invoke-static {v4}, Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg;->access$200(Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg;)I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_2

    .line 364
    iget-object v4, p0, Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg$6;->this$0:Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg;

    iget-object v4, v4, Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg;->emptyText:Landroid/widget/FrameLayout;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/FrameLayout;->setVisibility(I)V

    goto :goto_1
.end method
