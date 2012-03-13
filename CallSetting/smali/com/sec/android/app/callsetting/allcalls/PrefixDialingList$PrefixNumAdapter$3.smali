.class Lcom/sec/android/app/callsetting/allcalls/PrefixDialingList$PrefixNumAdapter$3;
.super Ljava/lang/Object;
.source "PrefixDialingList.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


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
    .line 812
    iput-object p1, p0, Lcom/sec/android/app/callsetting/allcalls/PrefixDialingList$PrefixNumAdapter$3;->this$1:Lcom/sec/android/app/callsetting/allcalls/PrefixDialingList$PrefixNumAdapter;

    iput-object p2, p0, Lcom/sec/android/app/callsetting/allcalls/PrefixDialingList$PrefixNumAdapter$3;->val$item:Lcom/sec/android/app/callsetting/allcalls/PrefixDialingList$PrefixItem;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 5
    .parameter "v"

    .prologue
    const/16 v4, 0x64

    .line 816
    const/4 v0, 0x0

    .line 818
    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/sec/android/app/callsetting/allcalls/PrefixDialingList$PrefixNumAdapter$3;->this$1:Lcom/sec/android/app/callsetting/allcalls/PrefixDialingList$PrefixNumAdapter;

    iget-object v1, v1, Lcom/sec/android/app/callsetting/allcalls/PrefixDialingList$PrefixNumAdapter;->this$0:Lcom/sec/android/app/callsetting/allcalls/PrefixDialingList;

    #getter for: Lcom/sec/android/app/callsetting/allcalls/PrefixDialingList;->mPrefixNumList:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/sec/android/app/callsetting/allcalls/PrefixDialingList;->access$500(Lcom/sec/android/app/callsetting/allcalls/PrefixDialingList;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 819
    iget-object v1, p0, Lcom/sec/android/app/callsetting/allcalls/PrefixDialingList$PrefixNumAdapter$3;->this$1:Lcom/sec/android/app/callsetting/allcalls/PrefixDialingList$PrefixNumAdapter;

    iget-object v1, v1, Lcom/sec/android/app/callsetting/allcalls/PrefixDialingList$PrefixNumAdapter;->this$0:Lcom/sec/android/app/callsetting/allcalls/PrefixDialingList;

    #getter for: Lcom/sec/android/app/callsetting/allcalls/PrefixDialingList;->mPrefixNumList:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/sec/android/app/callsetting/allcalls/PrefixDialingList;->access$500(Lcom/sec/android/app/callsetting/allcalls/PrefixDialingList;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/callsetting/allcalls/PrefixDialingList$PrefixItem;

    iget-object v1, v1, Lcom/sec/android/app/callsetting/allcalls/PrefixDialingList$PrefixItem;->prefix_num:Ljava/lang/String;

    iget-object v2, p0, Lcom/sec/android/app/callsetting/allcalls/PrefixDialingList$PrefixNumAdapter$3;->val$item:Lcom/sec/android/app/callsetting/allcalls/PrefixDialingList$PrefixItem;

    iget-object v2, v2, Lcom/sec/android/app/callsetting/allcalls/PrefixDialingList$PrefixItem;->prefix_num:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 823
    :cond_0
    const-string v1, "Prefix"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " i = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " mState = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/callsetting/allcalls/PrefixDialingList$PrefixNumAdapter$3;->this$1:Lcom/sec/android/app/callsetting/allcalls/PrefixDialingList$PrefixNumAdapter;

    iget-object v3, v3, Lcom/sec/android/app/callsetting/allcalls/PrefixDialingList$PrefixNumAdapter;->this$0:Lcom/sec/android/app/callsetting/allcalls/PrefixDialingList;

    #getter for: Lcom/sec/android/app/callsetting/allcalls/PrefixDialingList;->mState:I
    invoke-static {v3}, Lcom/sec/android/app/callsetting/allcalls/PrefixDialingList;->access$200(Lcom/sec/android/app/callsetting/allcalls/PrefixDialingList;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 825
    iget-object v1, p0, Lcom/sec/android/app/callsetting/allcalls/PrefixDialingList$PrefixNumAdapter$3;->this$1:Lcom/sec/android/app/callsetting/allcalls/PrefixDialingList$PrefixNumAdapter;

    iget-object v1, v1, Lcom/sec/android/app/callsetting/allcalls/PrefixDialingList$PrefixNumAdapter;->this$0:Lcom/sec/android/app/callsetting/allcalls/PrefixDialingList;

    #getter for: Lcom/sec/android/app/callsetting/allcalls/PrefixDialingList;->mState:I
    invoke-static {v1}, Lcom/sec/android/app/callsetting/allcalls/PrefixDialingList;->access$200(Lcom/sec/android/app/callsetting/allcalls/PrefixDialingList;)I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    .line 827
    iget-object v1, p0, Lcom/sec/android/app/callsetting/allcalls/PrefixDialingList$PrefixNumAdapter$3;->this$1:Lcom/sec/android/app/callsetting/allcalls/PrefixDialingList$PrefixNumAdapter;

    iget-object v1, v1, Lcom/sec/android/app/callsetting/allcalls/PrefixDialingList$PrefixNumAdapter;->this$0:Lcom/sec/android/app/callsetting/allcalls/PrefixDialingList;

    add-int/lit8 v2, v0, 0x1

    #setter for: Lcom/sec/android/app/callsetting/allcalls/PrefixDialingList;->mSelectedItem:I
    invoke-static {v1, v2}, Lcom/sec/android/app/callsetting/allcalls/PrefixDialingList;->access$102(Lcom/sec/android/app/callsetting/allcalls/PrefixDialingList;I)I

    .line 828
    iget-object v1, p0, Lcom/sec/android/app/callsetting/allcalls/PrefixDialingList$PrefixNumAdapter$3;->this$1:Lcom/sec/android/app/callsetting/allcalls/PrefixDialingList$PrefixNumAdapter;

    iget-object v1, v1, Lcom/sec/android/app/callsetting/allcalls/PrefixDialingList$PrefixNumAdapter;->this$0:Lcom/sec/android/app/callsetting/allcalls/PrefixDialingList;

    invoke-virtual {v1, v4}, Lcom/sec/android/app/callsetting/allcalls/PrefixDialingList;->removeDialog(I)V

    .line 829
    iget-object v1, p0, Lcom/sec/android/app/callsetting/allcalls/PrefixDialingList$PrefixNumAdapter$3;->this$1:Lcom/sec/android/app/callsetting/allcalls/PrefixDialingList$PrefixNumAdapter;

    iget-object v1, v1, Lcom/sec/android/app/callsetting/allcalls/PrefixDialingList$PrefixNumAdapter;->this$0:Lcom/sec/android/app/callsetting/allcalls/PrefixDialingList;

    invoke-virtual {v1, v4}, Lcom/sec/android/app/callsetting/allcalls/PrefixDialingList;->showDialog(I)V

    .line 831
    const/4 v1, 0x1

    .line 834
    :goto_1
    return v1

    .line 818
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 834
    :cond_2
    const/4 v1, 0x0

    goto :goto_1
.end method
