.class Lcom/sec/android/app/callsetting/allcalls/BlackList$AutoRejectAdapter$4;
.super Ljava/lang/Object;
.source "BlackList.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/callsetting/allcalls/BlackList$AutoRejectAdapter;->drawNormalScreen(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sec/android/app/callsetting/allcalls/BlackList$AutoRejectAdapter;

.field final synthetic val$item:Lcom/sec/android/app/callsetting/allcalls/BlackList$AutoRejectItem;


# direct methods
.method constructor <init>(Lcom/sec/android/app/callsetting/allcalls/BlackList$AutoRejectAdapter;Lcom/sec/android/app/callsetting/allcalls/BlackList$AutoRejectItem;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 845
    iput-object p1, p0, Lcom/sec/android/app/callsetting/allcalls/BlackList$AutoRejectAdapter$4;->this$1:Lcom/sec/android/app/callsetting/allcalls/BlackList$AutoRejectAdapter;

    iput-object p2, p0, Lcom/sec/android/app/callsetting/allcalls/BlackList$AutoRejectAdapter$4;->val$item:Lcom/sec/android/app/callsetting/allcalls/BlackList$AutoRejectItem;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .parameter "v"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 847
    iget-object v2, p0, Lcom/sec/android/app/callsetting/allcalls/BlackList$AutoRejectAdapter$4;->val$item:Lcom/sec/android/app/callsetting/allcalls/BlackList$AutoRejectItem;

    iget-object v2, v2, Lcom/sec/android/app/callsetting/allcalls/BlackList$AutoRejectItem;->id:Ljava/lang/String;

    if-nez v2, :cond_2

    .line 848
    iget-object v5, p0, Lcom/sec/android/app/callsetting/allcalls/BlackList$AutoRejectAdapter$4;->val$item:Lcom/sec/android/app/callsetting/allcalls/BlackList$AutoRejectItem;

    iget-object v2, p0, Lcom/sec/android/app/callsetting/allcalls/BlackList$AutoRejectAdapter$4;->val$item:Lcom/sec/android/app/callsetting/allcalls/BlackList$AutoRejectItem;

    iget v2, v2, Lcom/sec/android/app/callsetting/allcalls/BlackList$AutoRejectItem;->checked:I

    if-lez v2, :cond_0

    move v2, v3

    :goto_0
    iput v2, v5, Lcom/sec/android/app/callsetting/allcalls/BlackList$AutoRejectItem;->checked:I

    .line 849
    iget-object v2, p0, Lcom/sec/android/app/callsetting/allcalls/BlackList$AutoRejectAdapter$4;->this$1:Lcom/sec/android/app/callsetting/allcalls/BlackList$AutoRejectAdapter;

    iget-object v2, v2, Lcom/sec/android/app/callsetting/allcalls/BlackList$AutoRejectAdapter;->this$0:Lcom/sec/android/app/callsetting/allcalls/BlackList;

    #getter for: Lcom/sec/android/app/callsetting/allcalls/BlackList;->mListView:Landroid/widget/ListView;
    invoke-static {v2}, Lcom/sec/android/app/callsetting/allcalls/BlackList;->access$1000(Lcom/sec/android/app/callsetting/allcalls/BlackList;)Landroid/widget/ListView;

    move-result-object v2

    iget-object v5, p0, Lcom/sec/android/app/callsetting/allcalls/BlackList$AutoRejectAdapter$4;->this$1:Lcom/sec/android/app/callsetting/allcalls/BlackList$AutoRejectAdapter;

    iget-object v5, v5, Lcom/sec/android/app/callsetting/allcalls/BlackList$AutoRejectAdapter;->this$0:Lcom/sec/android/app/callsetting/allcalls/BlackList;

    #getter for: Lcom/sec/android/app/callsetting/allcalls/BlackList;->mHeaderViewCount:I
    invoke-static {v5}, Lcom/sec/android/app/callsetting/allcalls/BlackList;->access$1100(Lcom/sec/android/app/callsetting/allcalls/BlackList;)I

    move-result v5

    invoke-virtual {v2, v5}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    const v5, 0x7f080017

    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    .line 853
    .local v0, checkbox:Landroid/widget/CheckBox;
    iget-object v2, p0, Lcom/sec/android/app/callsetting/allcalls/BlackList$AutoRejectAdapter$4;->val$item:Lcom/sec/android/app/callsetting/allcalls/BlackList$AutoRejectItem;

    iget v2, v2, Lcom/sec/android/app/callsetting/allcalls/BlackList$AutoRejectItem;->checked:I

    if-eqz v2, :cond_1

    :goto_1
    invoke-virtual {v0, v4}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 854
    iget-object v2, p0, Lcom/sec/android/app/callsetting/allcalls/BlackList$AutoRejectAdapter$4;->this$1:Lcom/sec/android/app/callsetting/allcalls/BlackList$AutoRejectAdapter;

    iget-object v2, v2, Lcom/sec/android/app/callsetting/allcalls/BlackList$AutoRejectAdapter;->this$0:Lcom/sec/android/app/callsetting/allcalls/BlackList;

    invoke-virtual {v2}, Lcom/sec/android/app/callsetting/allcalls/BlackList;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "unknown_mode"

    iget-object v4, p0, Lcom/sec/android/app/callsetting/allcalls/BlackList$AutoRejectAdapter$4;->val$item:Lcom/sec/android/app/callsetting/allcalls/BlackList$AutoRejectItem;

    iget v4, v4, Lcom/sec/android/app/callsetting/allcalls/BlackList$AutoRejectItem;->checked:I

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 868
    .end local v0           #checkbox:Landroid/widget/CheckBox;
    :goto_2
    return-void

    :cond_0
    move v2, v4

    .line 848
    goto :goto_0

    .restart local v0       #checkbox:Landroid/widget/CheckBox;
    :cond_1
    move v4, v3

    .line 853
    goto :goto_1

    .line 858
    .end local v0           #checkbox:Landroid/widget/CheckBox;
    :cond_2
    const/4 v1, 0x0

    .line 859
    .local v1, i:I
    :goto_3
    iget-object v2, p0, Lcom/sec/android/app/callsetting/allcalls/BlackList$AutoRejectAdapter$4;->this$1:Lcom/sec/android/app/callsetting/allcalls/BlackList$AutoRejectAdapter;

    iget-object v2, v2, Lcom/sec/android/app/callsetting/allcalls/BlackList$AutoRejectAdapter;->this$0:Lcom/sec/android/app/callsetting/allcalls/BlackList;

    #getter for: Lcom/sec/android/app/callsetting/allcalls/BlackList;->mAutoRejectItemList:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/sec/android/app/callsetting/allcalls/BlackList;->access$400(Lcom/sec/android/app/callsetting/allcalls/BlackList;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_3

    .line 860
    iget-object v2, p0, Lcom/sec/android/app/callsetting/allcalls/BlackList$AutoRejectAdapter$4;->this$1:Lcom/sec/android/app/callsetting/allcalls/BlackList$AutoRejectAdapter;

    iget-object v2, v2, Lcom/sec/android/app/callsetting/allcalls/BlackList$AutoRejectAdapter;->this$0:Lcom/sec/android/app/callsetting/allcalls/BlackList;

    #getter for: Lcom/sec/android/app/callsetting/allcalls/BlackList;->mAutoRejectItemList:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/sec/android/app/callsetting/allcalls/BlackList;->access$400(Lcom/sec/android/app/callsetting/allcalls/BlackList;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/callsetting/allcalls/BlackList$AutoRejectItem;

    iget-object v2, v2, Lcom/sec/android/app/callsetting/allcalls/BlackList$AutoRejectItem;->reject_num:Ljava/lang/String;

    iget-object v3, p0, Lcom/sec/android/app/callsetting/allcalls/BlackList$AutoRejectAdapter$4;->val$item:Lcom/sec/android/app/callsetting/allcalls/BlackList$AutoRejectItem;

    iget-object v3, v3, Lcom/sec/android/app/callsetting/allcalls/BlackList$AutoRejectItem;->reject_num:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/sec/android/app/callsetting/allcalls/BlackList$AutoRejectAdapter$4;->this$1:Lcom/sec/android/app/callsetting/allcalls/BlackList$AutoRejectAdapter;

    iget-object v2, v2, Lcom/sec/android/app/callsetting/allcalls/BlackList$AutoRejectAdapter;->this$0:Lcom/sec/android/app/callsetting/allcalls/BlackList;

    #getter for: Lcom/sec/android/app/callsetting/allcalls/BlackList;->mAutoRejectItemList:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/sec/android/app/callsetting/allcalls/BlackList;->access$400(Lcom/sec/android/app/callsetting/allcalls/BlackList;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/callsetting/allcalls/BlackList$AutoRejectItem;

    iget v2, v2, Lcom/sec/android/app/callsetting/allcalls/BlackList$AutoRejectItem;->matched:I

    iget-object v3, p0, Lcom/sec/android/app/callsetting/allcalls/BlackList$AutoRejectAdapter$4;->val$item:Lcom/sec/android/app/callsetting/allcalls/BlackList$AutoRejectItem;

    iget v3, v3, Lcom/sec/android/app/callsetting/allcalls/BlackList$AutoRejectItem;->matched:I

    if-ne v2, v3, :cond_4

    .line 864
    :cond_3
    iget-object v2, p0, Lcom/sec/android/app/callsetting/allcalls/BlackList$AutoRejectAdapter$4;->this$1:Lcom/sec/android/app/callsetting/allcalls/BlackList$AutoRejectAdapter;

    iget-object v2, v2, Lcom/sec/android/app/callsetting/allcalls/BlackList$AutoRejectAdapter;->this$0:Lcom/sec/android/app/callsetting/allcalls/BlackList;

    #setter for: Lcom/sec/android/app/callsetting/allcalls/BlackList;->mSelectedItem:I
    invoke-static {v2, v1}, Lcom/sec/android/app/callsetting/allcalls/BlackList;->access$702(Lcom/sec/android/app/callsetting/allcalls/BlackList;I)I

    .line 865
    iget-object v2, p0, Lcom/sec/android/app/callsetting/allcalls/BlackList$AutoRejectAdapter$4;->this$1:Lcom/sec/android/app/callsetting/allcalls/BlackList$AutoRejectAdapter;

    iget-object v2, v2, Lcom/sec/android/app/callsetting/allcalls/BlackList$AutoRejectAdapter;->this$0:Lcom/sec/android/app/callsetting/allcalls/BlackList;

    #calls: Lcom/sec/android/app/callsetting/allcalls/BlackList;->callMatchCriteriaToEditNum()V
    invoke-static {v2}, Lcom/sec/android/app/callsetting/allcalls/BlackList;->access$1700(Lcom/sec/android/app/callsetting/allcalls/BlackList;)V

    goto :goto_2

    .line 859
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_3
.end method
