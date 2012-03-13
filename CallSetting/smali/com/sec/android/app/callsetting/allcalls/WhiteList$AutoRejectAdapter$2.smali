.class Lcom/sec/android/app/callsetting/allcalls/WhiteList$AutoRejectAdapter$2;
.super Ljava/lang/Object;
.source "WhiteList.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
    .line 937
    iput-object p1, p0, Lcom/sec/android/app/callsetting/allcalls/WhiteList$AutoRejectAdapter$2;->this$1:Lcom/sec/android/app/callsetting/allcalls/WhiteList$AutoRejectAdapter;

    iput-object p2, p0, Lcom/sec/android/app/callsetting/allcalls/WhiteList$AutoRejectAdapter$2;->val$item:Lcom/sec/android/app/callsetting/allcalls/WhiteList$AutoRejectItem;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    .line 939
    const/4 v0, 0x0

    .line 940
    .local v0, i:I
    const/4 v1, 0x0

    .line 941
    .local v1, isFind:Z
    :goto_0
    iget-object v2, p0, Lcom/sec/android/app/callsetting/allcalls/WhiteList$AutoRejectAdapter$2;->this$1:Lcom/sec/android/app/callsetting/allcalls/WhiteList$AutoRejectAdapter;

    iget-object v2, v2, Lcom/sec/android/app/callsetting/allcalls/WhiteList$AutoRejectAdapter;->this$0:Lcom/sec/android/app/callsetting/allcalls/WhiteList;

    #getter for: Lcom/sec/android/app/callsetting/allcalls/WhiteList;->mAutoRejectItemList:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/sec/android/app/callsetting/allcalls/WhiteList;->access$100(Lcom/sec/android/app/callsetting/allcalls/WhiteList;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 942
    iget-object v2, p0, Lcom/sec/android/app/callsetting/allcalls/WhiteList$AutoRejectAdapter$2;->this$1:Lcom/sec/android/app/callsetting/allcalls/WhiteList$AutoRejectAdapter;

    iget-object v2, v2, Lcom/sec/android/app/callsetting/allcalls/WhiteList$AutoRejectAdapter;->this$0:Lcom/sec/android/app/callsetting/allcalls/WhiteList;

    #getter for: Lcom/sec/android/app/callsetting/allcalls/WhiteList;->mAutoRejectItemList:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/sec/android/app/callsetting/allcalls/WhiteList;->access$100(Lcom/sec/android/app/callsetting/allcalls/WhiteList;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/callsetting/allcalls/WhiteList$AutoRejectItem;

    iget-object v2, v2, Lcom/sec/android/app/callsetting/allcalls/WhiteList$AutoRejectItem;->reject_num:Ljava/lang/String;

    iget-object v3, p0, Lcom/sec/android/app/callsetting/allcalls/WhiteList$AutoRejectAdapter$2;->val$item:Lcom/sec/android/app/callsetting/allcalls/WhiteList$AutoRejectItem;

    iget-object v3, v3, Lcom/sec/android/app/callsetting/allcalls/WhiteList$AutoRejectItem;->reject_num:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 944
    const/4 v1, 0x1

    .line 948
    :cond_0
    if-eqz v1, :cond_1

    .line 949
    iget-object v2, p0, Lcom/sec/android/app/callsetting/allcalls/WhiteList$AutoRejectAdapter$2;->this$1:Lcom/sec/android/app/callsetting/allcalls/WhiteList$AutoRejectAdapter;

    iget-object v2, v2, Lcom/sec/android/app/callsetting/allcalls/WhiteList$AutoRejectAdapter;->this$0:Lcom/sec/android/app/callsetting/allcalls/WhiteList;

    #setter for: Lcom/sec/android/app/callsetting/allcalls/WhiteList;->mSelectedItem:I
    invoke-static {v2, v0}, Lcom/sec/android/app/callsetting/allcalls/WhiteList;->access$402(Lcom/sec/android/app/callsetting/allcalls/WhiteList;I)I

    .line 950
    iget-object v2, p0, Lcom/sec/android/app/callsetting/allcalls/WhiteList$AutoRejectAdapter$2;->this$1:Lcom/sec/android/app/callsetting/allcalls/WhiteList$AutoRejectAdapter;

    iget-object v2, v2, Lcom/sec/android/app/callsetting/allcalls/WhiteList$AutoRejectAdapter;->this$0:Lcom/sec/android/app/callsetting/allcalls/WhiteList;

    #calls: Lcom/sec/android/app/callsetting/allcalls/WhiteList;->addWhiteListDialog()V
    invoke-static {v2}, Lcom/sec/android/app/callsetting/allcalls/WhiteList;->access$500(Lcom/sec/android/app/callsetting/allcalls/WhiteList;)V

    .line 952
    :cond_1
    return-void

    .line 941
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method
