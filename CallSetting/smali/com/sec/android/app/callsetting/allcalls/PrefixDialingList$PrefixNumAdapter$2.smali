.class Lcom/sec/android/app/callsetting/allcalls/PrefixDialingList$PrefixNumAdapter$2;
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
    .line 793
    iput-object p1, p0, Lcom/sec/android/app/callsetting/allcalls/PrefixDialingList$PrefixNumAdapter$2;->this$1:Lcom/sec/android/app/callsetting/allcalls/PrefixDialingList$PrefixNumAdapter;

    iput-object p2, p0, Lcom/sec/android/app/callsetting/allcalls/PrefixDialingList$PrefixNumAdapter$2;->val$item:Lcom/sec/android/app/callsetting/allcalls/PrefixDialingList$PrefixItem;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 797
    const/4 v0, 0x0

    .line 799
    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/sec/android/app/callsetting/allcalls/PrefixDialingList$PrefixNumAdapter$2;->this$1:Lcom/sec/android/app/callsetting/allcalls/PrefixDialingList$PrefixNumAdapter;

    iget-object v1, v1, Lcom/sec/android/app/callsetting/allcalls/PrefixDialingList$PrefixNumAdapter;->this$0:Lcom/sec/android/app/callsetting/allcalls/PrefixDialingList;

    #getter for: Lcom/sec/android/app/callsetting/allcalls/PrefixDialingList;->mPrefixNumList:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/sec/android/app/callsetting/allcalls/PrefixDialingList;->access$500(Lcom/sec/android/app/callsetting/allcalls/PrefixDialingList;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 800
    iget-object v1, p0, Lcom/sec/android/app/callsetting/allcalls/PrefixDialingList$PrefixNumAdapter$2;->this$1:Lcom/sec/android/app/callsetting/allcalls/PrefixDialingList$PrefixNumAdapter;

    iget-object v1, v1, Lcom/sec/android/app/callsetting/allcalls/PrefixDialingList$PrefixNumAdapter;->this$0:Lcom/sec/android/app/callsetting/allcalls/PrefixDialingList;

    #getter for: Lcom/sec/android/app/callsetting/allcalls/PrefixDialingList;->mPrefixNumList:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/sec/android/app/callsetting/allcalls/PrefixDialingList;->access$500(Lcom/sec/android/app/callsetting/allcalls/PrefixDialingList;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/callsetting/allcalls/PrefixDialingList$PrefixItem;

    iget-object v1, v1, Lcom/sec/android/app/callsetting/allcalls/PrefixDialingList$PrefixItem;->prefix_num:Ljava/lang/String;

    iget-object v2, p0, Lcom/sec/android/app/callsetting/allcalls/PrefixDialingList$PrefixNumAdapter$2;->val$item:Lcom/sec/android/app/callsetting/allcalls/PrefixDialingList$PrefixItem;

    iget-object v2, v2, Lcom/sec/android/app/callsetting/allcalls/PrefixDialingList$PrefixItem;->prefix_num:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 804
    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/callsetting/allcalls/PrefixDialingList$PrefixNumAdapter$2;->this$1:Lcom/sec/android/app/callsetting/allcalls/PrefixDialingList$PrefixNumAdapter;

    iget-object v1, v1, Lcom/sec/android/app/callsetting/allcalls/PrefixDialingList$PrefixNumAdapter;->this$0:Lcom/sec/android/app/callsetting/allcalls/PrefixDialingList;

    add-int/lit8 v2, v0, 0x1

    #setter for: Lcom/sec/android/app/callsetting/allcalls/PrefixDialingList;->mSelectedItem:I
    invoke-static {v1, v2}, Lcom/sec/android/app/callsetting/allcalls/PrefixDialingList;->access$102(Lcom/sec/android/app/callsetting/allcalls/PrefixDialingList;I)I

    .line 805
    iget-object v1, p0, Lcom/sec/android/app/callsetting/allcalls/PrefixDialingList$PrefixNumAdapter$2;->this$1:Lcom/sec/android/app/callsetting/allcalls/PrefixDialingList$PrefixNumAdapter;

    iget-object v1, v1, Lcom/sec/android/app/callsetting/allcalls/PrefixDialingList$PrefixNumAdapter;->this$0:Lcom/sec/android/app/callsetting/allcalls/PrefixDialingList;

    const/4 v2, 0x4

    #setter for: Lcom/sec/android/app/callsetting/allcalls/PrefixDialingList;->mState:I
    invoke-static {v1, v2}, Lcom/sec/android/app/callsetting/allcalls/PrefixDialingList;->access$202(Lcom/sec/android/app/callsetting/allcalls/PrefixDialingList;I)I

    .line 806
    iget-object v1, p0, Lcom/sec/android/app/callsetting/allcalls/PrefixDialingList$PrefixNumAdapter$2;->this$1:Lcom/sec/android/app/callsetting/allcalls/PrefixDialingList$PrefixNumAdapter;

    iget-object v1, v1, Lcom/sec/android/app/callsetting/allcalls/PrefixDialingList$PrefixNumAdapter;->this$0:Lcom/sec/android/app/callsetting/allcalls/PrefixDialingList;

    #calls: Lcom/sec/android/app/callsetting/allcalls/PrefixDialingList;->alertdialogPrefixNumber()V
    invoke-static {v1}, Lcom/sec/android/app/callsetting/allcalls/PrefixDialingList;->access$300(Lcom/sec/android/app/callsetting/allcalls/PrefixDialingList;)V

    .line 808
    return-void

    .line 799
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method
