.class Lcom/sec/android/app/callsetting/allcalls/PrefixDialingList$PrefixNumAdapter$1;
.super Ljava/lang/Object;
.source "PrefixDialingList.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/callsetting/allcalls/PrefixDialingList$PrefixNumAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sec/android/app/callsetting/allcalls/PrefixDialingList$PrefixNumAdapter;

.field final synthetic val$item:Lcom/sec/android/app/callsetting/allcalls/PrefixDialingList$PrefixItem;


# direct methods
.method constructor <init>(Lcom/sec/android/app/callsetting/allcalls/PrefixDialingList$PrefixNumAdapter;Lcom/sec/android/app/callsetting/allcalls/PrefixDialingList$PrefixItem;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 760
    iput-object p1, p0, Lcom/sec/android/app/callsetting/allcalls/PrefixDialingList$PrefixNumAdapter$1;->this$1:Lcom/sec/android/app/callsetting/allcalls/PrefixDialingList$PrefixNumAdapter;

    iput-object p2, p0, Lcom/sec/android/app/callsetting/allcalls/PrefixDialingList$PrefixNumAdapter$1;->val$item:Lcom/sec/android/app/callsetting/allcalls/PrefixDialingList$PrefixItem;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 8
    .parameter "v"

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 764
    const-string v3, "Prefix"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "id = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/sec/android/app/callsetting/allcalls/PrefixDialingList$PrefixNumAdapter$1;->val$item:Lcom/sec/android/app/callsetting/allcalls/PrefixDialingList$PrefixItem;

    iget v5, v5, Lcom/sec/android/app/callsetting/allcalls/PrefixDialingList$PrefixItem;->id:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " number = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/sec/android/app/callsetting/allcalls/PrefixDialingList$PrefixNumAdapter$1;->val$item:Lcom/sec/android/app/callsetting/allcalls/PrefixDialingList$PrefixItem;

    iget-object v5, v5, Lcom/sec/android/app/callsetting/allcalls/PrefixDialingList$PrefixItem;->prefix_num:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " checked = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/sec/android/app/callsetting/allcalls/PrefixDialingList$PrefixNumAdapter$1;->val$item:Lcom/sec/android/app/callsetting/allcalls/PrefixDialingList$PrefixItem;

    iget v5, v5, Lcom/sec/android/app/callsetting/allcalls/PrefixDialingList$PrefixItem;->checked:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 766
    iget-object v3, p0, Lcom/sec/android/app/callsetting/allcalls/PrefixDialingList$PrefixNumAdapter$1;->val$item:Lcom/sec/android/app/callsetting/allcalls/PrefixDialingList$PrefixItem;

    iget v3, v3, Lcom/sec/android/app/callsetting/allcalls/PrefixDialingList$PrefixItem;->checked:I

    if-lez v3, :cond_1

    .line 790
    :cond_0
    return-void

    .line 768
    :cond_1
    iget-object v3, p0, Lcom/sec/android/app/callsetting/allcalls/PrefixDialingList$PrefixNumAdapter$1;->val$item:Lcom/sec/android/app/callsetting/allcalls/PrefixDialingList$PrefixItem;

    iput v6, v3, Lcom/sec/android/app/callsetting/allcalls/PrefixDialingList$PrefixItem;->checked:I

    .line 770
    const v3, 0x7f080033

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RadioButton;

    .line 771
    .local v1, radio:Landroid/widget/RadioButton;
    invoke-virtual {v1, v6}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 773
    iget-object v3, p0, Lcom/sec/android/app/callsetting/allcalls/PrefixDialingList$PrefixNumAdapter$1;->val$item:Lcom/sec/android/app/callsetting/allcalls/PrefixDialingList$PrefixItem;

    iget v2, v3, Lcom/sec/android/app/callsetting/allcalls/PrefixDialingList$PrefixItem;->id:I

    .line 774
    .local v2, update_id:I
    iget-object v3, p0, Lcom/sec/android/app/callsetting/allcalls/PrefixDialingList$PrefixNumAdapter$1;->this$1:Lcom/sec/android/app/callsetting/allcalls/PrefixDialingList$PrefixNumAdapter;

    iget-object v3, v3, Lcom/sec/android/app/callsetting/allcalls/PrefixDialingList$PrefixNumAdapter;->this$0:Lcom/sec/android/app/callsetting/allcalls/PrefixDialingList;

    iget-object v4, p0, Lcom/sec/android/app/callsetting/allcalls/PrefixDialingList$PrefixNumAdapter$1;->val$item:Lcom/sec/android/app/callsetting/allcalls/PrefixDialingList$PrefixItem;

    iget-object v4, v4, Lcom/sec/android/app/callsetting/allcalls/PrefixDialingList$PrefixItem;->prefix_num:Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    #calls: Lcom/sec/android/app/callsetting/allcalls/PrefixDialingList;->updatePrefixNumber(Ljava/lang/String;Ljava/lang/Integer;I)V
    invoke-static {v3, v4, v5, v2}, Lcom/sec/android/app/callsetting/allcalls/PrefixDialingList;->access$1000(Lcom/sec/android/app/callsetting/allcalls/PrefixDialingList;Ljava/lang/String;Ljava/lang/Integer;I)V

    .line 776
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v3, p0, Lcom/sec/android/app/callsetting/allcalls/PrefixDialingList$PrefixNumAdapter$1;->this$1:Lcom/sec/android/app/callsetting/allcalls/PrefixDialingList$PrefixNumAdapter;

    #getter for: Lcom/sec/android/app/callsetting/allcalls/PrefixDialingList$PrefixNumAdapter;->prefixNumList:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/sec/android/app/callsetting/allcalls/PrefixDialingList$PrefixNumAdapter;->access$1100(Lcom/sec/android/app/callsetting/allcalls/PrefixDialingList$PrefixNumAdapter;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_0

    .line 778
    iget-object v3, p0, Lcom/sec/android/app/callsetting/allcalls/PrefixDialingList$PrefixNumAdapter$1;->this$1:Lcom/sec/android/app/callsetting/allcalls/PrefixDialingList$PrefixNumAdapter;

    #getter for: Lcom/sec/android/app/callsetting/allcalls/PrefixDialingList$PrefixNumAdapter;->prefixNumList:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/sec/android/app/callsetting/allcalls/PrefixDialingList$PrefixNumAdapter;->access$1100(Lcom/sec/android/app/callsetting/allcalls/PrefixDialingList$PrefixNumAdapter;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/android/app/callsetting/allcalls/PrefixDialingList$PrefixItem;

    iget-object v3, v3, Lcom/sec/android/app/callsetting/allcalls/PrefixDialingList$PrefixItem;->prefix_num:Ljava/lang/String;

    iget-object v4, p0, Lcom/sec/android/app/callsetting/allcalls/PrefixDialingList$PrefixNumAdapter$1;->val$item:Lcom/sec/android/app/callsetting/allcalls/PrefixDialingList$PrefixItem;

    iget-object v4, v4, Lcom/sec/android/app/callsetting/allcalls/PrefixDialingList$PrefixItem;->prefix_num:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/sec/android/app/callsetting/allcalls/PrefixDialingList$PrefixNumAdapter$1;->this$1:Lcom/sec/android/app/callsetting/allcalls/PrefixDialingList$PrefixNumAdapter;

    #getter for: Lcom/sec/android/app/callsetting/allcalls/PrefixDialingList$PrefixNumAdapter;->prefixNumList:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/sec/android/app/callsetting/allcalls/PrefixDialingList$PrefixNumAdapter;->access$1100(Lcom/sec/android/app/callsetting/allcalls/PrefixDialingList$PrefixNumAdapter;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/android/app/callsetting/allcalls/PrefixDialingList$PrefixItem;

    iget v3, v3, Lcom/sec/android/app/callsetting/allcalls/PrefixDialingList$PrefixItem;->checked:I

    if-eqz v3, :cond_2

    .line 781
    iget-object v3, p0, Lcom/sec/android/app/callsetting/allcalls/PrefixDialingList$PrefixNumAdapter$1;->this$1:Lcom/sec/android/app/callsetting/allcalls/PrefixDialingList$PrefixNumAdapter;

    #getter for: Lcom/sec/android/app/callsetting/allcalls/PrefixDialingList$PrefixNumAdapter;->prefixNumList:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/sec/android/app/callsetting/allcalls/PrefixDialingList$PrefixNumAdapter;->access$1100(Lcom/sec/android/app/callsetting/allcalls/PrefixDialingList$PrefixNumAdapter;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/android/app/callsetting/allcalls/PrefixDialingList$PrefixItem;

    iput v7, v3, Lcom/sec/android/app/callsetting/allcalls/PrefixDialingList$PrefixItem;->checked:I

    .line 782
    iget-object v3, p0, Lcom/sec/android/app/callsetting/allcalls/PrefixDialingList$PrefixNumAdapter$1;->this$1:Lcom/sec/android/app/callsetting/allcalls/PrefixDialingList$PrefixNumAdapter;

    #getter for: Lcom/sec/android/app/callsetting/allcalls/PrefixDialingList$PrefixNumAdapter;->prefixNumList:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/sec/android/app/callsetting/allcalls/PrefixDialingList$PrefixNumAdapter;->access$1100(Lcom/sec/android/app/callsetting/allcalls/PrefixDialingList$PrefixNumAdapter;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/android/app/callsetting/allcalls/PrefixDialingList$PrefixItem;

    iget v2, v3, Lcom/sec/android/app/callsetting/allcalls/PrefixDialingList$PrefixItem;->id:I

    .line 783
    iget-object v3, p0, Lcom/sec/android/app/callsetting/allcalls/PrefixDialingList$PrefixNumAdapter$1;->this$1:Lcom/sec/android/app/callsetting/allcalls/PrefixDialingList$PrefixNumAdapter;

    iget-object v4, v3, Lcom/sec/android/app/callsetting/allcalls/PrefixDialingList$PrefixNumAdapter;->this$0:Lcom/sec/android/app/callsetting/allcalls/PrefixDialingList;

    iget-object v3, p0, Lcom/sec/android/app/callsetting/allcalls/PrefixDialingList$PrefixNumAdapter$1;->this$1:Lcom/sec/android/app/callsetting/allcalls/PrefixDialingList$PrefixNumAdapter;

    #getter for: Lcom/sec/android/app/callsetting/allcalls/PrefixDialingList$PrefixNumAdapter;->prefixNumList:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/sec/android/app/callsetting/allcalls/PrefixDialingList$PrefixNumAdapter;->access$1100(Lcom/sec/android/app/callsetting/allcalls/PrefixDialingList$PrefixNumAdapter;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/android/app/callsetting/allcalls/PrefixDialingList$PrefixItem;

    iget-object v3, v3, Lcom/sec/android/app/callsetting/allcalls/PrefixDialingList$PrefixItem;->prefix_num:Ljava/lang/String;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    #calls: Lcom/sec/android/app/callsetting/allcalls/PrefixDialingList;->updatePrefixNumber(Ljava/lang/String;Ljava/lang/Integer;I)V
    invoke-static {v4, v3, v5, v2}, Lcom/sec/android/app/callsetting/allcalls/PrefixDialingList;->access$1000(Lcom/sec/android/app/callsetting/allcalls/PrefixDialingList;Ljava/lang/String;Ljava/lang/Integer;I)V

    .line 785
    iget-object v3, p0, Lcom/sec/android/app/callsetting/allcalls/PrefixDialingList$PrefixNumAdapter$1;->this$1:Lcom/sec/android/app/callsetting/allcalls/PrefixDialingList$PrefixNumAdapter;

    invoke-virtual {v3}, Lcom/sec/android/app/callsetting/allcalls/PrefixDialingList$PrefixNumAdapter;->notifyDataSetChanged()V

    .line 776
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method
