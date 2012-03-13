.class Lcom/sec/android/app/callsetting/allcalls/WhiteList$4;
.super Ljava/lang/Object;
.source "WhiteList.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/callsetting/allcalls/WhiteList;->softkeyLeftRun(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/callsetting/allcalls/WhiteList;


# direct methods
.method constructor <init>(Lcom/sec/android/app/callsetting/allcalls/WhiteList;)V
    .locals 0
    .parameter

    .prologue
    .line 314
    iput-object p1, p0, Lcom/sec/android/app/callsetting/allcalls/WhiteList$4;->this$0:Lcom/sec/android/app/callsetting/allcalls/WhiteList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/16 v6, 0x8

    .line 316
    const/4 v2, 0x0

    .line 318
    .local v2, isDeleted:Z
    iget-object v3, p0, Lcom/sec/android/app/callsetting/allcalls/WhiteList$4;->this$0:Lcom/sec/android/app/callsetting/allcalls/WhiteList;

    #getter for: Lcom/sec/android/app/callsetting/allcalls/WhiteList;->list:Landroid/widget/ListView;
    invoke-static {v3}, Lcom/sec/android/app/callsetting/allcalls/WhiteList;->access$700(Lcom/sec/android/app/callsetting/allcalls/WhiteList;)Landroid/widget/ListView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/ListView;->getCount()I

    move-result v3

    add-int/lit8 v1, v3, -0x1

    .local v1, i:I
    :goto_0
    if-lez v1, :cond_1

    .line 319
    iget-object v3, p0, Lcom/sec/android/app/callsetting/allcalls/WhiteList$4;->this$0:Lcom/sec/android/app/callsetting/allcalls/WhiteList;

    #getter for: Lcom/sec/android/app/callsetting/allcalls/WhiteList;->list:Landroid/widget/ListView;
    invoke-static {v3}, Lcom/sec/android/app/callsetting/allcalls/WhiteList;->access$700(Lcom/sec/android/app/callsetting/allcalls/WhiteList;)Landroid/widget/ListView;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/widget/ListView;->isItemChecked(I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 328
    iget-object v3, p0, Lcom/sec/android/app/callsetting/allcalls/WhiteList$4;->this$0:Lcom/sec/android/app/callsetting/allcalls/WhiteList;

    #getter for: Lcom/sec/android/app/callsetting/allcalls/WhiteList;->mAutoRejectNumList:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/sec/android/app/callsetting/allcalls/WhiteList;->access$900(Lcom/sec/android/app/callsetting/allcalls/WhiteList;)Ljava/util/ArrayList;

    move-result-object v3

    add-int/lit8 v4, v1, -0x1

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 330
    iget-object v3, p0, Lcom/sec/android/app/callsetting/allcalls/WhiteList$4;->this$0:Lcom/sec/android/app/callsetting/allcalls/WhiteList;

    #getter for: Lcom/sec/android/app/callsetting/allcalls/WhiteList;->mAutoRejectItemList:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/sec/android/app/callsetting/allcalls/WhiteList;->access$100(Lcom/sec/android/app/callsetting/allcalls/WhiteList;)Ljava/util/ArrayList;

    move-result-object v3

    add-int/lit8 v4, v1, -0x1

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/android/app/callsetting/allcalls/WhiteList$AutoRejectItem;

    iget-object v3, v3, Lcom/sec/android/app/callsetting/allcalls/WhiteList$AutoRejectItem;->id:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 332
    .local v0, del_id:I
    iget-object v3, p0, Lcom/sec/android/app/callsetting/allcalls/WhiteList$4;->this$0:Lcom/sec/android/app/callsetting/allcalls/WhiteList;

    #calls: Lcom/sec/android/app/callsetting/allcalls/WhiteList;->deleteAutoRejectNumber(I)V
    invoke-static {v3, v0}, Lcom/sec/android/app/callsetting/allcalls/WhiteList;->access$1000(Lcom/sec/android/app/callsetting/allcalls/WhiteList;I)V

    .line 333
    iget-object v3, p0, Lcom/sec/android/app/callsetting/allcalls/WhiteList$4;->this$0:Lcom/sec/android/app/callsetting/allcalls/WhiteList;

    #getter for: Lcom/sec/android/app/callsetting/allcalls/WhiteList;->mAutoRejectItemList:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/sec/android/app/callsetting/allcalls/WhiteList;->access$100(Lcom/sec/android/app/callsetting/allcalls/WhiteList;)Ljava/util/ArrayList;

    move-result-object v3

    add-int/lit8 v4, v1, -0x1

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 335
    const/4 v2, 0x1

    .line 318
    .end local v0           #del_id:I
    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 339
    :cond_1
    if-nez v2, :cond_2

    .line 341
    const-string v3, "WhitetList"

    const-string v4, "softkeyLeftRun - no item"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 357
    :goto_1
    return-void

    .line 345
    :cond_2
    iget-object v3, p0, Lcom/sec/android/app/callsetting/allcalls/WhiteList$4;->this$0:Lcom/sec/android/app/callsetting/allcalls/WhiteList;

    iget-object v4, p0, Lcom/sec/android/app/callsetting/allcalls/WhiteList$4;->this$0:Lcom/sec/android/app/callsetting/allcalls/WhiteList;

    const v5, 0x7f07009b

    invoke-virtual {v4, v5}, Lcom/sec/android/app/callsetting/allcalls/WhiteList;->getString(I)Ljava/lang/String;

    move-result-object v4

    #calls: Lcom/sec/android/app/callsetting/allcalls/WhiteList;->displayToast(Ljava/lang/String;)V
    invoke-static {v3, v4}, Lcom/sec/android/app/callsetting/allcalls/WhiteList;->access$1100(Lcom/sec/android/app/callsetting/allcalls/WhiteList;Ljava/lang/String;)V

    .line 347
    iget-object v3, p0, Lcom/sec/android/app/callsetting/allcalls/WhiteList$4;->this$0:Lcom/sec/android/app/callsetting/allcalls/WhiteList;

    #getter for: Lcom/sec/android/app/callsetting/allcalls/WhiteList;->selectAll:Landroid/widget/LinearLayout;
    invoke-static {v3}, Lcom/sec/android/app/callsetting/allcalls/WhiteList;->access$1200(Lcom/sec/android/app/callsetting/allcalls/WhiteList;)Landroid/widget/LinearLayout;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 348
    iget-object v3, p0, Lcom/sec/android/app/callsetting/allcalls/WhiteList$4;->this$0:Lcom/sec/android/app/callsetting/allcalls/WhiteList;

    #getter for: Lcom/sec/android/app/callsetting/allcalls/WhiteList;->mSoftkeyView:Lcom/sec/android/touchwiz/widget/TwSoftkeyView;
    invoke-static {v3}, Lcom/sec/android/app/callsetting/allcalls/WhiteList;->access$1300(Lcom/sec/android/app/callsetting/allcalls/WhiteList;)Lcom/sec/android/touchwiz/widget/TwSoftkeyView;

    move-result-object v3

    invoke-virtual {v3, v6}, Lcom/sec/android/touchwiz/widget/TwSoftkeyView;->setVisibility(I)V

    .line 349
    iget-object v3, p0, Lcom/sec/android/app/callsetting/allcalls/WhiteList$4;->this$0:Lcom/sec/android/app/callsetting/allcalls/WhiteList;

    #getter for: Lcom/sec/android/app/callsetting/allcalls/WhiteList;->mAutoRejectItemList:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/sec/android/app/callsetting/allcalls/WhiteList;->access$100(Lcom/sec/android/app/callsetting/allcalls/WhiteList;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/16 v4, 0x1e

    if-ge v3, v4, :cond_3

    .line 350
    iget-object v3, p0, Lcom/sec/android/app/callsetting/allcalls/WhiteList$4;->this$0:Lcom/sec/android/app/callsetting/allcalls/WhiteList;

    #getter for: Lcom/sec/android/app/callsetting/allcalls/WhiteList;->createItem:Landroid/widget/LinearLayout;
    invoke-static {v3}, Lcom/sec/android/app/callsetting/allcalls/WhiteList;->access$1400(Lcom/sec/android/app/callsetting/allcalls/WhiteList;)Landroid/widget/LinearLayout;

    move-result-object v3

    invoke-virtual {v3, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 355
    :goto_2
    iget-object v3, p0, Lcom/sec/android/app/callsetting/allcalls/WhiteList$4;->this$0:Lcom/sec/android/app/callsetting/allcalls/WhiteList;

    #getter for: Lcom/sec/android/app/callsetting/allcalls/WhiteList;->list:Landroid/widget/ListView;
    invoke-static {v3}, Lcom/sec/android/app/callsetting/allcalls/WhiteList;->access$700(Lcom/sec/android/app/callsetting/allcalls/WhiteList;)Landroid/widget/ListView;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/android/app/callsetting/allcalls/WhiteList$4;->this$0:Lcom/sec/android/app/callsetting/allcalls/WhiteList;

    #getter for: Lcom/sec/android/app/callsetting/allcalls/WhiteList;->autoRejectAdapter:Lcom/sec/android/app/callsetting/allcalls/WhiteList$AutoRejectAdapter;
    invoke-static {v4}, Lcom/sec/android/app/callsetting/allcalls/WhiteList;->access$000(Lcom/sec/android/app/callsetting/allcalls/WhiteList;)Lcom/sec/android/app/callsetting/allcalls/WhiteList$AutoRejectAdapter;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 356
    iget-object v3, p0, Lcom/sec/android/app/callsetting/allcalls/WhiteList$4;->this$0:Lcom/sec/android/app/callsetting/allcalls/WhiteList;

    #setter for: Lcom/sec/android/app/callsetting/allcalls/WhiteList;->mScreenType:I
    invoke-static {v3, v7}, Lcom/sec/android/app/callsetting/allcalls/WhiteList;->access$1502(Lcom/sec/android/app/callsetting/allcalls/WhiteList;I)I

    goto :goto_1

    .line 352
    :cond_3
    iget-object v3, p0, Lcom/sec/android/app/callsetting/allcalls/WhiteList$4;->this$0:Lcom/sec/android/app/callsetting/allcalls/WhiteList;

    #getter for: Lcom/sec/android/app/callsetting/allcalls/WhiteList;->createItem:Landroid/widget/LinearLayout;
    invoke-static {v3}, Lcom/sec/android/app/callsetting/allcalls/WhiteList;->access$1400(Lcom/sec/android/app/callsetting/allcalls/WhiteList;)Landroid/widget/LinearLayout;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_2
.end method
