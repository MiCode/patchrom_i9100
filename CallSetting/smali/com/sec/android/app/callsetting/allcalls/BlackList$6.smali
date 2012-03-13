.class Lcom/sec/android/app/callsetting/allcalls/BlackList$6;
.super Ljava/lang/Object;
.source "BlackList.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/callsetting/allcalls/BlackList;->softkeyLeftRun(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/callsetting/allcalls/BlackList;


# direct methods
.method constructor <init>(Lcom/sec/android/app/callsetting/allcalls/BlackList;)V
    .locals 0
    .parameter

    .prologue
    .line 392
    iput-object p1, p0, Lcom/sec/android/app/callsetting/allcalls/BlackList$6;->this$0:Lcom/sec/android/app/callsetting/allcalls/BlackList;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 394
    const/4 v2, 0x0

    .line 396
    .local v2, isDeleted:Z
    iget-object v3, p0, Lcom/sec/android/app/callsetting/allcalls/BlackList$6;->this$0:Lcom/sec/android/app/callsetting/allcalls/BlackList;

    const/4 v4, 0x0

    #setter for: Lcom/sec/android/app/callsetting/allcalls/BlackList;->mScreenType:I
    invoke-static {v3, v4}, Lcom/sec/android/app/callsetting/allcalls/BlackList;->access$302(Lcom/sec/android/app/callsetting/allcalls/BlackList;I)I

    .line 397
    iget-object v3, p0, Lcom/sec/android/app/callsetting/allcalls/BlackList$6;->this$0:Lcom/sec/android/app/callsetting/allcalls/BlackList;

    #getter for: Lcom/sec/android/app/callsetting/allcalls/BlackList;->mListView:Landroid/widget/ListView;
    invoke-static {v3}, Lcom/sec/android/app/callsetting/allcalls/BlackList;->access$1000(Lcom/sec/android/app/callsetting/allcalls/BlackList;)Landroid/widget/ListView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/ListView;->getCount()I

    move-result v3

    iget-object v4, p0, Lcom/sec/android/app/callsetting/allcalls/BlackList$6;->this$0:Lcom/sec/android/app/callsetting/allcalls/BlackList;

    #getter for: Lcom/sec/android/app/callsetting/allcalls/BlackList;->mHeaderViewCount:I
    invoke-static {v4}, Lcom/sec/android/app/callsetting/allcalls/BlackList;->access$1100(Lcom/sec/android/app/callsetting/allcalls/BlackList;)I

    move-result v4

    sub-int v1, v3, v4

    .local v1, i:I
    :goto_0
    if-lez v1, :cond_1

    .line 398
    iget-object v3, p0, Lcom/sec/android/app/callsetting/allcalls/BlackList$6;->this$0:Lcom/sec/android/app/callsetting/allcalls/BlackList;

    #getter for: Lcom/sec/android/app/callsetting/allcalls/BlackList;->mListView:Landroid/widget/ListView;
    invoke-static {v3}, Lcom/sec/android/app/callsetting/allcalls/BlackList;->access$1000(Lcom/sec/android/app/callsetting/allcalls/BlackList;)Landroid/widget/ListView;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/widget/ListView;->isItemChecked(I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 399
    iget-object v3, p0, Lcom/sec/android/app/callsetting/allcalls/BlackList$6;->this$0:Lcom/sec/android/app/callsetting/allcalls/BlackList;

    #getter for: Lcom/sec/android/app/callsetting/allcalls/BlackList;->mAutoRejectItemList:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/sec/android/app/callsetting/allcalls/BlackList;->access$400(Lcom/sec/android/app/callsetting/allcalls/BlackList;)Ljava/util/ArrayList;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/android/app/callsetting/allcalls/BlackList$6;->this$0:Lcom/sec/android/app/callsetting/allcalls/BlackList;

    #getter for: Lcom/sec/android/app/callsetting/allcalls/BlackList;->mHeaderViewCount:I
    invoke-static {v4}, Lcom/sec/android/app/callsetting/allcalls/BlackList;->access$1100(Lcom/sec/android/app/callsetting/allcalls/BlackList;)I

    move-result v4

    sub-int v4, v1, v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/android/app/callsetting/allcalls/BlackList$AutoRejectItem;

    iget-object v3, v3, Lcom/sec/android/app/callsetting/allcalls/BlackList$AutoRejectItem;->id:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 401
    .local v0, del_id:I
    iget-object v3, p0, Lcom/sec/android/app/callsetting/allcalls/BlackList$6;->this$0:Lcom/sec/android/app/callsetting/allcalls/BlackList;

    #calls: Lcom/sec/android/app/callsetting/allcalls/BlackList;->deleteAutoRejectNumber(I)V
    invoke-static {v3, v0}, Lcom/sec/android/app/callsetting/allcalls/BlackList;->access$1400(Lcom/sec/android/app/callsetting/allcalls/BlackList;I)V

    .line 402
    iget-object v3, p0, Lcom/sec/android/app/callsetting/allcalls/BlackList$6;->this$0:Lcom/sec/android/app/callsetting/allcalls/BlackList;

    #getter for: Lcom/sec/android/app/callsetting/allcalls/BlackList;->mAutoRejectItemList:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/sec/android/app/callsetting/allcalls/BlackList;->access$400(Lcom/sec/android/app/callsetting/allcalls/BlackList;)Ljava/util/ArrayList;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/android/app/callsetting/allcalls/BlackList$6;->this$0:Lcom/sec/android/app/callsetting/allcalls/BlackList;

    #getter for: Lcom/sec/android/app/callsetting/allcalls/BlackList;->mHeaderViewCount:I
    invoke-static {v4}, Lcom/sec/android/app/callsetting/allcalls/BlackList;->access$1100(Lcom/sec/android/app/callsetting/allcalls/BlackList;)I

    move-result v4

    sub-int v4, v1, v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 403
    const/4 v2, 0x1

    .line 397
    .end local v0           #del_id:I
    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 407
    :cond_1
    if-nez v2, :cond_2

    .line 409
    const-string v3, "BlacktList"

    const-string v4, "softkeyLeftRun - no item"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 415
    :goto_1
    return-void

    .line 413
    :cond_2
    iget-object v3, p0, Lcom/sec/android/app/callsetting/allcalls/BlackList$6;->this$0:Lcom/sec/android/app/callsetting/allcalls/BlackList;

    iget-object v4, p0, Lcom/sec/android/app/callsetting/allcalls/BlackList$6;->this$0:Lcom/sec/android/app/callsetting/allcalls/BlackList;

    const v5, 0x7f07009b

    invoke-virtual {v4, v5}, Lcom/sec/android/app/callsetting/allcalls/BlackList;->getString(I)Ljava/lang/String;

    move-result-object v4

    #calls: Lcom/sec/android/app/callsetting/allcalls/BlackList;->displayToast(Ljava/lang/String;)V
    invoke-static {v3, v4}, Lcom/sec/android/app/callsetting/allcalls/BlackList;->access$1500(Lcom/sec/android/app/callsetting/allcalls/BlackList;Ljava/lang/String;)V

    .line 414
    iget-object v3, p0, Lcom/sec/android/app/callsetting/allcalls/BlackList$6;->this$0:Lcom/sec/android/app/callsetting/allcalls/BlackList;

    #calls: Lcom/sec/android/app/callsetting/allcalls/BlackList;->makeScreen()V
    invoke-static {v3}, Lcom/sec/android/app/callsetting/allcalls/BlackList;->access$1600(Lcom/sec/android/app/callsetting/allcalls/BlackList;)V

    goto :goto_1
.end method
