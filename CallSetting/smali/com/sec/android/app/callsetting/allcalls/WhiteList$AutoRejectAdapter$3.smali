.class Lcom/sec/android/app/callsetting/allcalls/WhiteList$AutoRejectAdapter$3;
.super Ljava/lang/Object;
.source "WhiteList.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/callsetting/allcalls/WhiteList$AutoRejectAdapter;->drawNormalScreen(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sec/android/app/callsetting/allcalls/WhiteList$AutoRejectAdapter;

.field final synthetic val$item:Lcom/sec/android/app/callsetting/allcalls/WhiteList$AutoRejectItem;


# direct methods
.method constructor <init>(Lcom/sec/android/app/callsetting/allcalls/WhiteList$AutoRejectAdapter;Lcom/sec/android/app/callsetting/allcalls/WhiteList$AutoRejectItem;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 956
    iput-object p1, p0, Lcom/sec/android/app/callsetting/allcalls/WhiteList$AutoRejectAdapter$3;->this$1:Lcom/sec/android/app/callsetting/allcalls/WhiteList$AutoRejectAdapter;

    iput-object p2, p0, Lcom/sec/android/app/callsetting/allcalls/WhiteList$AutoRejectAdapter$3;->val$item:Lcom/sec/android/app/callsetting/allcalls/WhiteList$AutoRejectItem;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 6
    .parameter "v"

    .prologue
    const/16 v5, 0x64

    .line 958
    const/4 v0, 0x0

    .line 959
    .local v0, i:I
    const/4 v1, 0x0

    .line 961
    .local v1, isFind:Z
    :goto_0
    iget-object v2, p0, Lcom/sec/android/app/callsetting/allcalls/WhiteList$AutoRejectAdapter$3;->this$1:Lcom/sec/android/app/callsetting/allcalls/WhiteList$AutoRejectAdapter;

    iget-object v2, v2, Lcom/sec/android/app/callsetting/allcalls/WhiteList$AutoRejectAdapter;->this$0:Lcom/sec/android/app/callsetting/allcalls/WhiteList;

    #getter for: Lcom/sec/android/app/callsetting/allcalls/WhiteList;->mAutoRejectItemList:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/sec/android/app/callsetting/allcalls/WhiteList;->access$100(Lcom/sec/android/app/callsetting/allcalls/WhiteList;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 962
    iget-object v2, p0, Lcom/sec/android/app/callsetting/allcalls/WhiteList$AutoRejectAdapter$3;->this$1:Lcom/sec/android/app/callsetting/allcalls/WhiteList$AutoRejectAdapter;

    iget-object v2, v2, Lcom/sec/android/app/callsetting/allcalls/WhiteList$AutoRejectAdapter;->this$0:Lcom/sec/android/app/callsetting/allcalls/WhiteList;

    #getter for: Lcom/sec/android/app/callsetting/allcalls/WhiteList;->mAutoRejectItemList:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/sec/android/app/callsetting/allcalls/WhiteList;->access$100(Lcom/sec/android/app/callsetting/allcalls/WhiteList;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/callsetting/allcalls/WhiteList$AutoRejectItem;

    iget-object v2, v2, Lcom/sec/android/app/callsetting/allcalls/WhiteList$AutoRejectItem;->reject_num:Ljava/lang/String;

    iget-object v3, p0, Lcom/sec/android/app/callsetting/allcalls/WhiteList$AutoRejectAdapter$3;->val$item:Lcom/sec/android/app/callsetting/allcalls/WhiteList$AutoRejectItem;

    iget-object v3, v3, Lcom/sec/android/app/callsetting/allcalls/WhiteList$AutoRejectItem;->reject_num:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 964
    const/4 v1, 0x1

    .line 969
    :cond_0
    iget-object v2, p0, Lcom/sec/android/app/callsetting/allcalls/WhiteList$AutoRejectAdapter$3;->this$1:Lcom/sec/android/app/callsetting/allcalls/WhiteList$AutoRejectAdapter;

    iget-object v2, v2, Lcom/sec/android/app/callsetting/allcalls/WhiteList$AutoRejectAdapter;->this$0:Lcom/sec/android/app/callsetting/allcalls/WhiteList;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " i = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " mScreenType = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/android/app/callsetting/allcalls/WhiteList$AutoRejectAdapter$3;->this$1:Lcom/sec/android/app/callsetting/allcalls/WhiteList$AutoRejectAdapter;

    iget-object v4, v4, Lcom/sec/android/app/callsetting/allcalls/WhiteList$AutoRejectAdapter;->this$0:Lcom/sec/android/app/callsetting/allcalls/WhiteList;

    #getter for: Lcom/sec/android/app/callsetting/allcalls/WhiteList;->mScreenType:I
    invoke-static {v4}, Lcom/sec/android/app/callsetting/allcalls/WhiteList;->access$1500(Lcom/sec/android/app/callsetting/allcalls/WhiteList;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    #calls: Lcom/sec/android/app/callsetting/allcalls/WhiteList;->log(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/sec/android/app/callsetting/allcalls/WhiteList;->access$2200(Lcom/sec/android/app/callsetting/allcalls/WhiteList;Ljava/lang/String;)V

    .line 972
    if-eqz v1, :cond_2

    .line 974
    iget-object v2, p0, Lcom/sec/android/app/callsetting/allcalls/WhiteList$AutoRejectAdapter$3;->this$1:Lcom/sec/android/app/callsetting/allcalls/WhiteList$AutoRejectAdapter;

    iget-object v2, v2, Lcom/sec/android/app/callsetting/allcalls/WhiteList$AutoRejectAdapter;->this$0:Lcom/sec/android/app/callsetting/allcalls/WhiteList;

    #setter for: Lcom/sec/android/app/callsetting/allcalls/WhiteList;->mSelectedItem:I
    invoke-static {v2, v0}, Lcom/sec/android/app/callsetting/allcalls/WhiteList;->access$402(Lcom/sec/android/app/callsetting/allcalls/WhiteList;I)I

    .line 976
    iget-object v2, p0, Lcom/sec/android/app/callsetting/allcalls/WhiteList$AutoRejectAdapter$3;->this$1:Lcom/sec/android/app/callsetting/allcalls/WhiteList$AutoRejectAdapter;

    iget-object v2, v2, Lcom/sec/android/app/callsetting/allcalls/WhiteList$AutoRejectAdapter;->this$0:Lcom/sec/android/app/callsetting/allcalls/WhiteList;

    invoke-virtual {v2, v5}, Lcom/sec/android/app/callsetting/allcalls/WhiteList;->removeDialog(I)V

    .line 977
    iget-object v2, p0, Lcom/sec/android/app/callsetting/allcalls/WhiteList$AutoRejectAdapter$3;->this$1:Lcom/sec/android/app/callsetting/allcalls/WhiteList$AutoRejectAdapter;

    iget-object v2, v2, Lcom/sec/android/app/callsetting/allcalls/WhiteList$AutoRejectAdapter;->this$0:Lcom/sec/android/app/callsetting/allcalls/WhiteList;

    invoke-virtual {v2, v5}, Lcom/sec/android/app/callsetting/allcalls/WhiteList;->showDialog(I)V

    .line 979
    const/4 v2, 0x1

    .line 982
    :goto_1
    return v2

    .line 961
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 982
    :cond_2
    const/4 v2, 0x0

    goto :goto_1
.end method
