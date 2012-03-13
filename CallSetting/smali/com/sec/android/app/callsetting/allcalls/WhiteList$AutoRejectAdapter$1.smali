.class Lcom/sec/android/app/callsetting/allcalls/WhiteList$AutoRejectAdapter$1;
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
    .line 907
    iput-object p1, p0, Lcom/sec/android/app/callsetting/allcalls/WhiteList$AutoRejectAdapter$1;->this$1:Lcom/sec/android/app/callsetting/allcalls/WhiteList$AutoRejectAdapter;

    iput-object p2, p0, Lcom/sec/android/app/callsetting/allcalls/WhiteList$AutoRejectAdapter$1;->val$item:Lcom/sec/android/app/callsetting/allcalls/WhiteList$AutoRejectItem;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 8
    .parameter "v"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 911
    iget-object v1, p0, Lcom/sec/android/app/callsetting/allcalls/WhiteList$AutoRejectAdapter$1;->this$1:Lcom/sec/android/app/callsetting/allcalls/WhiteList$AutoRejectAdapter;

    iget-object v1, v1, Lcom/sec/android/app/callsetting/allcalls/WhiteList$AutoRejectAdapter;->this$0:Lcom/sec/android/app/callsetting/allcalls/WhiteList;

    #getter for: Lcom/sec/android/app/callsetting/allcalls/WhiteList;->mScreenType:I
    invoke-static {v1}, Lcom/sec/android/app/callsetting/allcalls/WhiteList;->access$1500(Lcom/sec/android/app/callsetting/allcalls/WhiteList;)I

    move-result v1

    if-nez v1, :cond_0

    .line 912
    iget-object v1, p0, Lcom/sec/android/app/callsetting/allcalls/WhiteList$AutoRejectAdapter$1;->this$1:Lcom/sec/android/app/callsetting/allcalls/WhiteList$AutoRejectAdapter;

    iget-object v1, v1, Lcom/sec/android/app/callsetting/allcalls/WhiteList$AutoRejectAdapter;->this$0:Lcom/sec/android/app/callsetting/allcalls/WhiteList;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "id = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/sec/android/app/callsetting/allcalls/WhiteList$AutoRejectAdapter$1;->val$item:Lcom/sec/android/app/callsetting/allcalls/WhiteList$AutoRejectItem;

    iget-object v5, v5, Lcom/sec/android/app/callsetting/allcalls/WhiteList$AutoRejectItem;->id:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " number = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/sec/android/app/callsetting/allcalls/WhiteList$AutoRejectAdapter$1;->val$item:Lcom/sec/android/app/callsetting/allcalls/WhiteList$AutoRejectItem;

    iget-object v5, v5, Lcom/sec/android/app/callsetting/allcalls/WhiteList$AutoRejectItem;->reject_num:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    #calls: Lcom/sec/android/app/callsetting/allcalls/WhiteList;->log(Ljava/lang/String;)V
    invoke-static {v1, v4}, Lcom/sec/android/app/callsetting/allcalls/WhiteList;->access$2200(Lcom/sec/android/app/callsetting/allcalls/WhiteList;Ljava/lang/String;)V

    .line 914
    iget-object v1, p0, Lcom/sec/android/app/callsetting/allcalls/WhiteList$AutoRejectAdapter$1;->this$1:Lcom/sec/android/app/callsetting/allcalls/WhiteList$AutoRejectAdapter;

    iget-object v1, v1, Lcom/sec/android/app/callsetting/allcalls/WhiteList$AutoRejectAdapter;->this$0:Lcom/sec/android/app/callsetting/allcalls/WhiteList;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "View id : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "%08X"

    new-array v6, v3, [Ljava/lang/Object;

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v2

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    #calls: Lcom/sec/android/app/callsetting/allcalls/WhiteList;->log(Ljava/lang/String;)V
    invoke-static {v1, v4}, Lcom/sec/android/app/callsetting/allcalls/WhiteList;->access$2200(Lcom/sec/android/app/callsetting/allcalls/WhiteList;Ljava/lang/String;)V

    .line 916
    iget-object v4, p0, Lcom/sec/android/app/callsetting/allcalls/WhiteList$AutoRejectAdapter$1;->val$item:Lcom/sec/android/app/callsetting/allcalls/WhiteList$AutoRejectItem;

    iget-object v1, p0, Lcom/sec/android/app/callsetting/allcalls/WhiteList$AutoRejectAdapter$1;->val$item:Lcom/sec/android/app/callsetting/allcalls/WhiteList$AutoRejectItem;

    iget v1, v1, Lcom/sec/android/app/callsetting/allcalls/WhiteList$AutoRejectItem;->checked:I

    if-lez v1, :cond_1

    move v1, v2

    :goto_0
    iput v1, v4, Lcom/sec/android/app/callsetting/allcalls/WhiteList$AutoRejectItem;->checked:I

    .line 917
    const v1, 0x7f080017

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    .line 919
    .local v0, checkbox:Landroid/widget/CheckBox;
    iget-object v1, p0, Lcom/sec/android/app/callsetting/allcalls/WhiteList$AutoRejectAdapter$1;->val$item:Lcom/sec/android/app/callsetting/allcalls/WhiteList$AutoRejectItem;

    iget v1, v1, Lcom/sec/android/app/callsetting/allcalls/WhiteList$AutoRejectItem;->checked:I

    if-eqz v1, :cond_2

    :goto_1
    invoke-virtual {v0, v3}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 929
    iget-object v1, p0, Lcom/sec/android/app/callsetting/allcalls/WhiteList$AutoRejectAdapter$1;->this$1:Lcom/sec/android/app/callsetting/allcalls/WhiteList$AutoRejectAdapter;

    iget-object v1, v1, Lcom/sec/android/app/callsetting/allcalls/WhiteList$AutoRejectAdapter;->this$0:Lcom/sec/android/app/callsetting/allcalls/WhiteList;

    iget-object v2, p0, Lcom/sec/android/app/callsetting/allcalls/WhiteList$AutoRejectAdapter$1;->val$item:Lcom/sec/android/app/callsetting/allcalls/WhiteList$AutoRejectItem;

    iget-object v2, v2, Lcom/sec/android/app/callsetting/allcalls/WhiteList$AutoRejectItem;->reject_num:Ljava/lang/String;

    iget-object v3, p0, Lcom/sec/android/app/callsetting/allcalls/WhiteList$AutoRejectAdapter$1;->val$item:Lcom/sec/android/app/callsetting/allcalls/WhiteList$AutoRejectItem;

    iget v3, v3, Lcom/sec/android/app/callsetting/allcalls/WhiteList$AutoRejectItem;->checked:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/android/app/callsetting/allcalls/WhiteList$AutoRejectAdapter$1;->val$item:Lcom/sec/android/app/callsetting/allcalls/WhiteList$AutoRejectItem;

    iget-object v4, v4, Lcom/sec/android/app/callsetting/allcalls/WhiteList$AutoRejectItem;->id:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    #calls: Lcom/sec/android/app/callsetting/allcalls/WhiteList;->updateAutoRejectNumber(Ljava/lang/String;Ljava/lang/Integer;I)V
    invoke-static {v1, v2, v3, v4}, Lcom/sec/android/app/callsetting/allcalls/WhiteList;->access$2300(Lcom/sec/android/app/callsetting/allcalls/WhiteList;Ljava/lang/String;Ljava/lang/Integer;I)V

    .line 934
    .end local v0           #checkbox:Landroid/widget/CheckBox;
    :cond_0
    return-void

    :cond_1
    move v1, v3

    .line 916
    goto :goto_0

    .restart local v0       #checkbox:Landroid/widget/CheckBox;
    :cond_2
    move v3, v2

    .line 919
    goto :goto_1
.end method
