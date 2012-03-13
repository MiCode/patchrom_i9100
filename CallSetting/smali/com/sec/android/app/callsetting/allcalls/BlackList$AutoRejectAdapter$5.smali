.class Lcom/sec/android/app/callsetting/allcalls/BlackList$AutoRejectAdapter$5;
.super Ljava/lang/Object;
.source "BlackList.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


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
    .line 872
    iput-object p1, p0, Lcom/sec/android/app/callsetting/allcalls/BlackList$AutoRejectAdapter$5;->this$1:Lcom/sec/android/app/callsetting/allcalls/BlackList$AutoRejectAdapter;

    iput-object p2, p0, Lcom/sec/android/app/callsetting/allcalls/BlackList$AutoRejectAdapter$5;->val$item:Lcom/sec/android/app/callsetting/allcalls/BlackList$AutoRejectItem;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 5
    .parameter "v"

    .prologue
    const/16 v4, 0x64

    .line 876
    const/4 v0, 0x0

    .line 878
    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/sec/android/app/callsetting/allcalls/BlackList$AutoRejectAdapter$5;->this$1:Lcom/sec/android/app/callsetting/allcalls/BlackList$AutoRejectAdapter;

    iget-object v1, v1, Lcom/sec/android/app/callsetting/allcalls/BlackList$AutoRejectAdapter;->this$0:Lcom/sec/android/app/callsetting/allcalls/BlackList;

    #getter for: Lcom/sec/android/app/callsetting/allcalls/BlackList;->mAutoRejectItemList:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/sec/android/app/callsetting/allcalls/BlackList;->access$400(Lcom/sec/android/app/callsetting/allcalls/BlackList;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 879
    iget-object v1, p0, Lcom/sec/android/app/callsetting/allcalls/BlackList$AutoRejectAdapter$5;->this$1:Lcom/sec/android/app/callsetting/allcalls/BlackList$AutoRejectAdapter;

    iget-object v1, v1, Lcom/sec/android/app/callsetting/allcalls/BlackList$AutoRejectAdapter;->this$0:Lcom/sec/android/app/callsetting/allcalls/BlackList;

    #getter for: Lcom/sec/android/app/callsetting/allcalls/BlackList;->mAutoRejectItemList:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/sec/android/app/callsetting/allcalls/BlackList;->access$400(Lcom/sec/android/app/callsetting/allcalls/BlackList;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/callsetting/allcalls/BlackList$AutoRejectItem;

    iget-object v1, v1, Lcom/sec/android/app/callsetting/allcalls/BlackList$AutoRejectItem;->reject_num:Ljava/lang/String;

    iget-object v2, p0, Lcom/sec/android/app/callsetting/allcalls/BlackList$AutoRejectAdapter$5;->val$item:Lcom/sec/android/app/callsetting/allcalls/BlackList$AutoRejectItem;

    iget-object v2, v2, Lcom/sec/android/app/callsetting/allcalls/BlackList$AutoRejectItem;->reject_num:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/callsetting/allcalls/BlackList$AutoRejectAdapter$5;->this$1:Lcom/sec/android/app/callsetting/allcalls/BlackList$AutoRejectAdapter;

    iget-object v1, v1, Lcom/sec/android/app/callsetting/allcalls/BlackList$AutoRejectAdapter;->this$0:Lcom/sec/android/app/callsetting/allcalls/BlackList;

    #getter for: Lcom/sec/android/app/callsetting/allcalls/BlackList;->mAutoRejectItemList:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/sec/android/app/callsetting/allcalls/BlackList;->access$400(Lcom/sec/android/app/callsetting/allcalls/BlackList;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/callsetting/allcalls/BlackList$AutoRejectItem;

    iget v1, v1, Lcom/sec/android/app/callsetting/allcalls/BlackList$AutoRejectItem;->matched:I

    iget-object v2, p0, Lcom/sec/android/app/callsetting/allcalls/BlackList$AutoRejectAdapter$5;->val$item:Lcom/sec/android/app/callsetting/allcalls/BlackList$AutoRejectItem;

    iget v2, v2, Lcom/sec/android/app/callsetting/allcalls/BlackList$AutoRejectItem;->matched:I

    if-ne v1, v2, :cond_1

    .line 884
    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/callsetting/allcalls/BlackList$AutoRejectAdapter$5;->this$1:Lcom/sec/android/app/callsetting/allcalls/BlackList$AutoRejectAdapter;

    iget-object v1, v1, Lcom/sec/android/app/callsetting/allcalls/BlackList$AutoRejectAdapter;->this$0:Lcom/sec/android/app/callsetting/allcalls/BlackList;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " i = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " mScreenType = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/callsetting/allcalls/BlackList$AutoRejectAdapter$5;->this$1:Lcom/sec/android/app/callsetting/allcalls/BlackList$AutoRejectAdapter;

    iget-object v3, v3, Lcom/sec/android/app/callsetting/allcalls/BlackList$AutoRejectAdapter;->this$0:Lcom/sec/android/app/callsetting/allcalls/BlackList;

    #getter for: Lcom/sec/android/app/callsetting/allcalls/BlackList;->mScreenType:I
    invoke-static {v3}, Lcom/sec/android/app/callsetting/allcalls/BlackList;->access$300(Lcom/sec/android/app/callsetting/allcalls/BlackList;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    #calls: Lcom/sec/android/app/callsetting/allcalls/BlackList;->log(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/sec/android/app/callsetting/allcalls/BlackList;->access$800(Lcom/sec/android/app/callsetting/allcalls/BlackList;Ljava/lang/String;)V

    .line 887
    if-eqz v0, :cond_2

    .line 889
    iget-object v1, p0, Lcom/sec/android/app/callsetting/allcalls/BlackList$AutoRejectAdapter$5;->this$1:Lcom/sec/android/app/callsetting/allcalls/BlackList$AutoRejectAdapter;

    iget-object v1, v1, Lcom/sec/android/app/callsetting/allcalls/BlackList$AutoRejectAdapter;->this$0:Lcom/sec/android/app/callsetting/allcalls/BlackList;

    #setter for: Lcom/sec/android/app/callsetting/allcalls/BlackList;->mSelectedItem:I
    invoke-static {v1, v0}, Lcom/sec/android/app/callsetting/allcalls/BlackList;->access$702(Lcom/sec/android/app/callsetting/allcalls/BlackList;I)I

    .line 891
    iget-object v1, p0, Lcom/sec/android/app/callsetting/allcalls/BlackList$AutoRejectAdapter$5;->this$1:Lcom/sec/android/app/callsetting/allcalls/BlackList$AutoRejectAdapter;

    iget-object v1, v1, Lcom/sec/android/app/callsetting/allcalls/BlackList$AutoRejectAdapter;->this$0:Lcom/sec/android/app/callsetting/allcalls/BlackList;

    invoke-virtual {v1, v4}, Lcom/sec/android/app/callsetting/allcalls/BlackList;->removeDialog(I)V

    .line 892
    iget-object v1, p0, Lcom/sec/android/app/callsetting/allcalls/BlackList$AutoRejectAdapter$5;->this$1:Lcom/sec/android/app/callsetting/allcalls/BlackList$AutoRejectAdapter;

    iget-object v1, v1, Lcom/sec/android/app/callsetting/allcalls/BlackList$AutoRejectAdapter;->this$0:Lcom/sec/android/app/callsetting/allcalls/BlackList;

    invoke-virtual {v1, v4}, Lcom/sec/android/app/callsetting/allcalls/BlackList;->showDialog(I)V

    .line 894
    const/4 v1, 0x1

    .line 897
    :goto_1
    return v1

    .line 878
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    .line 897
    :cond_2
    const/4 v1, 0x0

    goto :goto_1
.end method
