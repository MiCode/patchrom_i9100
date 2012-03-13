.class Lcom/sec/android/app/callsetting/allcalls/BlackList$AutoRejectAdapter$2;
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
    .line 777
    iput-object p1, p0, Lcom/sec/android/app/callsetting/allcalls/BlackList$AutoRejectAdapter$2;->this$1:Lcom/sec/android/app/callsetting/allcalls/BlackList$AutoRejectAdapter;

    iput-object p2, p0, Lcom/sec/android/app/callsetting/allcalls/BlackList$AutoRejectAdapter$2;->val$item:Lcom/sec/android/app/callsetting/allcalls/BlackList$AutoRejectItem;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .parameter "v"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 780
    iget-object v1, p0, Lcom/sec/android/app/callsetting/allcalls/BlackList$AutoRejectAdapter$2;->this$1:Lcom/sec/android/app/callsetting/allcalls/BlackList$AutoRejectAdapter;

    iget-object v1, v1, Lcom/sec/android/app/callsetting/allcalls/BlackList$AutoRejectAdapter;->this$0:Lcom/sec/android/app/callsetting/allcalls/BlackList;

    #getter for: Lcom/sec/android/app/callsetting/allcalls/BlackList;->mScreenType:I
    invoke-static {v1}, Lcom/sec/android/app/callsetting/allcalls/BlackList;->access$300(Lcom/sec/android/app/callsetting/allcalls/BlackList;)I

    move-result v1

    if-nez v1, :cond_0

    .line 781
    iget-object v4, p0, Lcom/sec/android/app/callsetting/allcalls/BlackList$AutoRejectAdapter$2;->val$item:Lcom/sec/android/app/callsetting/allcalls/BlackList$AutoRejectItem;

    iget-object v1, p0, Lcom/sec/android/app/callsetting/allcalls/BlackList$AutoRejectAdapter$2;->val$item:Lcom/sec/android/app/callsetting/allcalls/BlackList$AutoRejectItem;

    iget v1, v1, Lcom/sec/android/app/callsetting/allcalls/BlackList$AutoRejectItem;->checked:I

    if-lez v1, :cond_1

    move v1, v2

    :goto_0
    iput v1, v4, Lcom/sec/android/app/callsetting/allcalls/BlackList$AutoRejectItem;->checked:I

    .line 782
    iget-object v1, p0, Lcom/sec/android/app/callsetting/allcalls/BlackList$AutoRejectAdapter$2;->this$1:Lcom/sec/android/app/callsetting/allcalls/BlackList$AutoRejectAdapter;

    iget-object v1, v1, Lcom/sec/android/app/callsetting/allcalls/BlackList$AutoRejectAdapter;->this$0:Lcom/sec/android/app/callsetting/allcalls/BlackList;

    #getter for: Lcom/sec/android/app/callsetting/allcalls/BlackList;->mListView:Landroid/widget/ListView;
    invoke-static {v1}, Lcom/sec/android/app/callsetting/allcalls/BlackList;->access$1000(Lcom/sec/android/app/callsetting/allcalls/BlackList;)Landroid/widget/ListView;

    move-result-object v1

    iget-object v4, p0, Lcom/sec/android/app/callsetting/allcalls/BlackList$AutoRejectAdapter$2;->this$1:Lcom/sec/android/app/callsetting/allcalls/BlackList$AutoRejectAdapter;

    iget-object v4, v4, Lcom/sec/android/app/callsetting/allcalls/BlackList$AutoRejectAdapter;->this$0:Lcom/sec/android/app/callsetting/allcalls/BlackList;

    #getter for: Lcom/sec/android/app/callsetting/allcalls/BlackList;->mHeaderViewCount:I
    invoke-static {v4}, Lcom/sec/android/app/callsetting/allcalls/BlackList;->access$1100(Lcom/sec/android/app/callsetting/allcalls/BlackList;)I

    move-result v4

    invoke-virtual {v1, v4}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    const v4, 0x7f080017

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    .line 786
    .local v0, checkbox:Landroid/widget/CheckBox;
    iget-object v1, p0, Lcom/sec/android/app/callsetting/allcalls/BlackList$AutoRejectAdapter$2;->val$item:Lcom/sec/android/app/callsetting/allcalls/BlackList$AutoRejectItem;

    iget v1, v1, Lcom/sec/android/app/callsetting/allcalls/BlackList$AutoRejectItem;->checked:I

    if-eqz v1, :cond_2

    :goto_1
    invoke-virtual {v0, v3}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 787
    iget-object v1, p0, Lcom/sec/android/app/callsetting/allcalls/BlackList$AutoRejectAdapter$2;->val$item:Lcom/sec/android/app/callsetting/allcalls/BlackList$AutoRejectItem;

    iget-object v1, v1, Lcom/sec/android/app/callsetting/allcalls/BlackList$AutoRejectItem;->id:Ljava/lang/String;

    if-nez v1, :cond_3

    .line 788
    iget-object v1, p0, Lcom/sec/android/app/callsetting/allcalls/BlackList$AutoRejectAdapter$2;->this$1:Lcom/sec/android/app/callsetting/allcalls/BlackList$AutoRejectAdapter;

    iget-object v1, v1, Lcom/sec/android/app/callsetting/allcalls/BlackList$AutoRejectAdapter;->this$0:Lcom/sec/android/app/callsetting/allcalls/BlackList;

    invoke-virtual {v1}, Lcom/sec/android/app/callsetting/allcalls/BlackList;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "unknown_mode"

    iget-object v3, p0, Lcom/sec/android/app/callsetting/allcalls/BlackList$AutoRejectAdapter$2;->val$item:Lcom/sec/android/app/callsetting/allcalls/BlackList$AutoRejectItem;

    iget v3, v3, Lcom/sec/android/app/callsetting/allcalls/BlackList$AutoRejectItem;->checked:I

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 801
    .end local v0           #checkbox:Landroid/widget/CheckBox;
    :cond_0
    :goto_2
    return-void

    :cond_1
    move v1, v3

    .line 781
    goto :goto_0

    .restart local v0       #checkbox:Landroid/widget/CheckBox;
    :cond_2
    move v3, v2

    .line 786
    goto :goto_1

    .line 795
    :cond_3
    iget-object v1, p0, Lcom/sec/android/app/callsetting/allcalls/BlackList$AutoRejectAdapter$2;->this$1:Lcom/sec/android/app/callsetting/allcalls/BlackList$AutoRejectAdapter;

    iget-object v1, v1, Lcom/sec/android/app/callsetting/allcalls/BlackList$AutoRejectAdapter;->this$0:Lcom/sec/android/app/callsetting/allcalls/BlackList;

    iget-object v2, p0, Lcom/sec/android/app/callsetting/allcalls/BlackList$AutoRejectAdapter$2;->val$item:Lcom/sec/android/app/callsetting/allcalls/BlackList$AutoRejectItem;

    iget-object v2, v2, Lcom/sec/android/app/callsetting/allcalls/BlackList$AutoRejectItem;->reject_num:Ljava/lang/String;

    iget-object v3, p0, Lcom/sec/android/app/callsetting/allcalls/BlackList$AutoRejectAdapter$2;->val$item:Lcom/sec/android/app/callsetting/allcalls/BlackList$AutoRejectItem;

    iget v3, v3, Lcom/sec/android/app/callsetting/allcalls/BlackList$AutoRejectItem;->checked:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/android/app/callsetting/allcalls/BlackList$AutoRejectAdapter$2;->val$item:Lcom/sec/android/app/callsetting/allcalls/BlackList$AutoRejectItem;

    iget-object v4, v4, Lcom/sec/android/app/callsetting/allcalls/BlackList$AutoRejectItem;->id:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    #calls: Lcom/sec/android/app/callsetting/allcalls/BlackList;->updateAutoRejectNumber(Ljava/lang/String;Ljava/lang/Integer;I)V
    invoke-static {v1, v2, v3, v4}, Lcom/sec/android/app/callsetting/allcalls/BlackList;->access$2000(Lcom/sec/android/app/callsetting/allcalls/BlackList;Ljava/lang/String;Ljava/lang/Integer;I)V

    goto :goto_2
.end method
