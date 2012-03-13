.class Lcom/sec/android/app/callsetting/allcalls/AutoRejectList$AutoRejectAdapter$3;
.super Ljava/lang/Object;
.source "AutoRejectList.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/callsetting/allcalls/AutoRejectList$AutoRejectAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sec/android/app/callsetting/allcalls/AutoRejectList$AutoRejectAdapter;

.field final synthetic val$item:Lcom/sec/android/app/callsetting/allcalls/AutoRejectList$AutoRejectItem;


# direct methods
.method constructor <init>(Lcom/sec/android/app/callsetting/allcalls/AutoRejectList$AutoRejectAdapter;Lcom/sec/android/app/callsetting/allcalls/AutoRejectList$AutoRejectItem;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 957
    iput-object p1, p0, Lcom/sec/android/app/callsetting/allcalls/AutoRejectList$AutoRejectAdapter$3;->this$1:Lcom/sec/android/app/callsetting/allcalls/AutoRejectList$AutoRejectAdapter;

    iput-object p2, p0, Lcom/sec/android/app/callsetting/allcalls/AutoRejectList$AutoRejectAdapter$3;->val$item:Lcom/sec/android/app/callsetting/allcalls/AutoRejectList$AutoRejectItem;

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

    .line 962
    iget-object v2, p0, Lcom/sec/android/app/callsetting/allcalls/AutoRejectList$AutoRejectAdapter$3;->this$1:Lcom/sec/android/app/callsetting/allcalls/AutoRejectList$AutoRejectAdapter;

    iget-object v2, v2, Lcom/sec/android/app/callsetting/allcalls/AutoRejectList$AutoRejectAdapter;->this$0:Lcom/sec/android/app/callsetting/allcalls/AutoRejectList;

    #getter for: Lcom/sec/android/app/callsetting/allcalls/AutoRejectList;->mState:I
    invoke-static {v2}, Lcom/sec/android/app/callsetting/allcalls/AutoRejectList;->access$200(Lcom/sec/android/app/callsetting/allcalls/AutoRejectList;)I

    move-result v2

    if-eq v2, v4, :cond_0

    iget-object v2, p0, Lcom/sec/android/app/callsetting/allcalls/AutoRejectList$AutoRejectAdapter$3;->this$1:Lcom/sec/android/app/callsetting/allcalls/AutoRejectList$AutoRejectAdapter;

    iget-object v2, v2, Lcom/sec/android/app/callsetting/allcalls/AutoRejectList$AutoRejectAdapter;->this$0:Lcom/sec/android/app/callsetting/allcalls/AutoRejectList;

    #getter for: Lcom/sec/android/app/callsetting/allcalls/AutoRejectList;->mState:I
    invoke-static {v2}, Lcom/sec/android/app/callsetting/allcalls/AutoRejectList;->access$200(Lcom/sec/android/app/callsetting/allcalls/AutoRejectList;)I

    move-result v2

    const/4 v5, 0x2

    if-ne v2, v5, :cond_1

    .line 964
    :cond_0
    iget-object v2, p0, Lcom/sec/android/app/callsetting/allcalls/AutoRejectList$AutoRejectAdapter$3;->val$item:Lcom/sec/android/app/callsetting/allcalls/AutoRejectList$AutoRejectItem;

    iget-object v2, v2, Lcom/sec/android/app/callsetting/allcalls/AutoRejectList$AutoRejectItem;->id:Ljava/lang/String;

    if-nez v2, :cond_4

    .line 966
    iget-object v5, p0, Lcom/sec/android/app/callsetting/allcalls/AutoRejectList$AutoRejectAdapter$3;->val$item:Lcom/sec/android/app/callsetting/allcalls/AutoRejectList$AutoRejectItem;

    iget-object v2, p0, Lcom/sec/android/app/callsetting/allcalls/AutoRejectList$AutoRejectAdapter$3;->val$item:Lcom/sec/android/app/callsetting/allcalls/AutoRejectList$AutoRejectItem;

    iget v2, v2, Lcom/sec/android/app/callsetting/allcalls/AutoRejectList$AutoRejectItem;->checked:I

    if-lez v2, :cond_2

    move v2, v3

    :goto_0
    iput v2, v5, Lcom/sec/android/app/callsetting/allcalls/AutoRejectList$AutoRejectItem;->checked:I

    .line 968
    iget-object v2, p0, Lcom/sec/android/app/callsetting/allcalls/AutoRejectList$AutoRejectAdapter$3;->this$1:Lcom/sec/android/app/callsetting/allcalls/AutoRejectList$AutoRejectAdapter;

    iget-object v2, v2, Lcom/sec/android/app/callsetting/allcalls/AutoRejectList$AutoRejectAdapter;->this$0:Lcom/sec/android/app/callsetting/allcalls/AutoRejectList;

    #getter for: Lcom/sec/android/app/callsetting/allcalls/AutoRejectList;->list:Landroid/widget/ListView;
    invoke-static {v2}, Lcom/sec/android/app/callsetting/allcalls/AutoRejectList;->access$400(Lcom/sec/android/app/callsetting/allcalls/AutoRejectList;)Landroid/widget/ListView;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    const v5, 0x7f080017

    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    .line 969
    .local v0, checkbox:Landroid/widget/CheckBox;
    iget-object v2, p0, Lcom/sec/android/app/callsetting/allcalls/AutoRejectList$AutoRejectAdapter$3;->val$item:Lcom/sec/android/app/callsetting/allcalls/AutoRejectList$AutoRejectItem;

    iget v2, v2, Lcom/sec/android/app/callsetting/allcalls/AutoRejectList$AutoRejectItem;->checked:I

    if-eqz v2, :cond_3

    :goto_1
    invoke-virtual {v0, v4}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 971
    iget-object v2, p0, Lcom/sec/android/app/callsetting/allcalls/AutoRejectList$AutoRejectAdapter$3;->this$1:Lcom/sec/android/app/callsetting/allcalls/AutoRejectList$AutoRejectAdapter;

    iget-object v2, v2, Lcom/sec/android/app/callsetting/allcalls/AutoRejectList$AutoRejectAdapter;->this$0:Lcom/sec/android/app/callsetting/allcalls/AutoRejectList;

    invoke-virtual {v2}, Lcom/sec/android/app/callsetting/allcalls/AutoRejectList;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "unknown_mode"

    iget-object v4, p0, Lcom/sec/android/app/callsetting/allcalls/AutoRejectList$AutoRejectAdapter$3;->val$item:Lcom/sec/android/app/callsetting/allcalls/AutoRejectList$AutoRejectItem;

    iget v4, v4, Lcom/sec/android/app/callsetting/allcalls/AutoRejectList$AutoRejectItem;->checked:I

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 989
    .end local v0           #checkbox:Landroid/widget/CheckBox;
    :cond_1
    :goto_2
    return-void

    :cond_2
    move v2, v4

    .line 966
    goto :goto_0

    .restart local v0       #checkbox:Landroid/widget/CheckBox;
    :cond_3
    move v4, v3

    .line 969
    goto :goto_1

    .line 975
    .end local v0           #checkbox:Landroid/widget/CheckBox;
    :cond_4
    const/4 v1, 0x0

    .line 977
    .local v1, i:I
    :goto_3
    iget-object v2, p0, Lcom/sec/android/app/callsetting/allcalls/AutoRejectList$AutoRejectAdapter$3;->this$1:Lcom/sec/android/app/callsetting/allcalls/AutoRejectList$AutoRejectAdapter;

    iget-object v2, v2, Lcom/sec/android/app/callsetting/allcalls/AutoRejectList$AutoRejectAdapter;->this$0:Lcom/sec/android/app/callsetting/allcalls/AutoRejectList;

    #getter for: Lcom/sec/android/app/callsetting/allcalls/AutoRejectList;->mAutoRejectNumList:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/sec/android/app/callsetting/allcalls/AutoRejectList;->access$500(Lcom/sec/android/app/callsetting/allcalls/AutoRejectList;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_5

    .line 978
    iget-object v2, p0, Lcom/sec/android/app/callsetting/allcalls/AutoRejectList$AutoRejectAdapter$3;->this$1:Lcom/sec/android/app/callsetting/allcalls/AutoRejectList$AutoRejectAdapter;

    iget-object v2, v2, Lcom/sec/android/app/callsetting/allcalls/AutoRejectList$AutoRejectAdapter;->this$0:Lcom/sec/android/app/callsetting/allcalls/AutoRejectList;

    #getter for: Lcom/sec/android/app/callsetting/allcalls/AutoRejectList;->mAutoRejectNumList:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/sec/android/app/callsetting/allcalls/AutoRejectList;->access$500(Lcom/sec/android/app/callsetting/allcalls/AutoRejectList;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/callsetting/allcalls/AutoRejectList$AutoRejectItem;

    iget-object v2, v2, Lcom/sec/android/app/callsetting/allcalls/AutoRejectList$AutoRejectItem;->reject_num:Ljava/lang/String;

    iget-object v3, p0, Lcom/sec/android/app/callsetting/allcalls/AutoRejectList$AutoRejectAdapter$3;->val$item:Lcom/sec/android/app/callsetting/allcalls/AutoRejectList$AutoRejectItem;

    iget-object v3, v3, Lcom/sec/android/app/callsetting/allcalls/AutoRejectList$AutoRejectItem;->reject_num:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 982
    :cond_5
    iget-object v2, p0, Lcom/sec/android/app/callsetting/allcalls/AutoRejectList$AutoRejectAdapter$3;->this$1:Lcom/sec/android/app/callsetting/allcalls/AutoRejectList$AutoRejectAdapter;

    iget-object v2, v2, Lcom/sec/android/app/callsetting/allcalls/AutoRejectList$AutoRejectAdapter;->this$0:Lcom/sec/android/app/callsetting/allcalls/AutoRejectList;

    #setter for: Lcom/sec/android/app/callsetting/allcalls/AutoRejectList;->mSelectedItem:I
    invoke-static {v2, v1}, Lcom/sec/android/app/callsetting/allcalls/AutoRejectList;->access$102(Lcom/sec/android/app/callsetting/allcalls/AutoRejectList;I)I

    .line 983
    iget-object v2, p0, Lcom/sec/android/app/callsetting/allcalls/AutoRejectList$AutoRejectAdapter$3;->this$1:Lcom/sec/android/app/callsetting/allcalls/AutoRejectList$AutoRejectAdapter;

    iget-object v2, v2, Lcom/sec/android/app/callsetting/allcalls/AutoRejectList$AutoRejectAdapter;->this$0:Lcom/sec/android/app/callsetting/allcalls/AutoRejectList;

    const/4 v3, 0x4

    #setter for: Lcom/sec/android/app/callsetting/allcalls/AutoRejectList;->mState:I
    invoke-static {v2, v3}, Lcom/sec/android/app/callsetting/allcalls/AutoRejectList;->access$202(Lcom/sec/android/app/callsetting/allcalls/AutoRejectList;I)I

    .line 984
    iget-object v2, p0, Lcom/sec/android/app/callsetting/allcalls/AutoRejectList$AutoRejectAdapter$3;->this$1:Lcom/sec/android/app/callsetting/allcalls/AutoRejectList$AutoRejectAdapter;

    iget-object v2, v2, Lcom/sec/android/app/callsetting/allcalls/AutoRejectList$AutoRejectAdapter;->this$0:Lcom/sec/android/app/callsetting/allcalls/AutoRejectList;

    #calls: Lcom/sec/android/app/callsetting/allcalls/AutoRejectList;->alertdialogAutoRejectNumber()V
    invoke-static {v2}, Lcom/sec/android/app/callsetting/allcalls/AutoRejectList;->access$300(Lcom/sec/android/app/callsetting/allcalls/AutoRejectList;)V

    goto :goto_2

    .line 977
    :cond_6
    add-int/lit8 v1, v1, 0x1

    goto :goto_3
.end method
