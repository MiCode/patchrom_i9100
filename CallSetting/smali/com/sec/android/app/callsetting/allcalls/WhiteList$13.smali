.class Lcom/sec/android/app/callsetting/allcalls/WhiteList$13;
.super Ljava/lang/Object;
.source "WhiteList.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/callsetting/allcalls/WhiteList;->deleteDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/callsetting/allcalls/WhiteList;


# direct methods
.method constructor <init>(Lcom/sec/android/app/callsetting/allcalls/WhiteList;)V
    .locals 0
    .parameter

    .prologue
    .line 504
    iput-object p1, p0, Lcom/sec/android/app/callsetting/allcalls/WhiteList$13;->this$0:Lcom/sec/android/app/callsetting/allcalls/WhiteList;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .parameter "dialog"
    .parameter "arg1"

    .prologue
    .line 506
    iget-object v1, p0, Lcom/sec/android/app/callsetting/allcalls/WhiteList$13;->this$0:Lcom/sec/android/app/callsetting/allcalls/WhiteList;

    #getter for: Lcom/sec/android/app/callsetting/allcalls/WhiteList;->mAutoRejectNumList:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/sec/android/app/callsetting/allcalls/WhiteList;->access$900(Lcom/sec/android/app/callsetting/allcalls/WhiteList;)Ljava/util/ArrayList;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/callsetting/allcalls/WhiteList$13;->this$0:Lcom/sec/android/app/callsetting/allcalls/WhiteList;

    #getter for: Lcom/sec/android/app/callsetting/allcalls/WhiteList;->mSelectedItem:I
    invoke-static {v2}, Lcom/sec/android/app/callsetting/allcalls/WhiteList;->access$400(Lcom/sec/android/app/callsetting/allcalls/WhiteList;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 507
    iget-object v1, p0, Lcom/sec/android/app/callsetting/allcalls/WhiteList$13;->this$0:Lcom/sec/android/app/callsetting/allcalls/WhiteList;

    #getter for: Lcom/sec/android/app/callsetting/allcalls/WhiteList;->mAutoRejectItemList:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/sec/android/app/callsetting/allcalls/WhiteList;->access$100(Lcom/sec/android/app/callsetting/allcalls/WhiteList;)Ljava/util/ArrayList;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/callsetting/allcalls/WhiteList$13;->this$0:Lcom/sec/android/app/callsetting/allcalls/WhiteList;

    #getter for: Lcom/sec/android/app/callsetting/allcalls/WhiteList;->mSelectedItem:I
    invoke-static {v2}, Lcom/sec/android/app/callsetting/allcalls/WhiteList;->access$400(Lcom/sec/android/app/callsetting/allcalls/WhiteList;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/callsetting/allcalls/WhiteList$AutoRejectItem;

    iget-object v1, v1, Lcom/sec/android/app/callsetting/allcalls/WhiteList$AutoRejectItem;->id:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 510
    .local v0, del_id:I
    iget-object v1, p0, Lcom/sec/android/app/callsetting/allcalls/WhiteList$13;->this$0:Lcom/sec/android/app/callsetting/allcalls/WhiteList;

    #calls: Lcom/sec/android/app/callsetting/allcalls/WhiteList;->deleteAutoRejectNumber(I)V
    invoke-static {v1, v0}, Lcom/sec/android/app/callsetting/allcalls/WhiteList;->access$1000(Lcom/sec/android/app/callsetting/allcalls/WhiteList;I)V

    .line 511
    iget-object v1, p0, Lcom/sec/android/app/callsetting/allcalls/WhiteList$13;->this$0:Lcom/sec/android/app/callsetting/allcalls/WhiteList;

    #getter for: Lcom/sec/android/app/callsetting/allcalls/WhiteList;->mAutoRejectItemList:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/sec/android/app/callsetting/allcalls/WhiteList;->access$100(Lcom/sec/android/app/callsetting/allcalls/WhiteList;)Ljava/util/ArrayList;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/callsetting/allcalls/WhiteList$13;->this$0:Lcom/sec/android/app/callsetting/allcalls/WhiteList;

    #getter for: Lcom/sec/android/app/callsetting/allcalls/WhiteList;->mSelectedItem:I
    invoke-static {v2}, Lcom/sec/android/app/callsetting/allcalls/WhiteList;->access$400(Lcom/sec/android/app/callsetting/allcalls/WhiteList;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 512
    iget-object v1, p0, Lcom/sec/android/app/callsetting/allcalls/WhiteList$13;->this$0:Lcom/sec/android/app/callsetting/allcalls/WhiteList;

    iget-object v2, p0, Lcom/sec/android/app/callsetting/allcalls/WhiteList$13;->this$0:Lcom/sec/android/app/callsetting/allcalls/WhiteList;

    const v3, 0x7f07009b

    invoke-virtual {v2, v3}, Lcom/sec/android/app/callsetting/allcalls/WhiteList;->getString(I)Ljava/lang/String;

    move-result-object v2

    #calls: Lcom/sec/android/app/callsetting/allcalls/WhiteList;->displayToast(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/sec/android/app/callsetting/allcalls/WhiteList;->access$1100(Lcom/sec/android/app/callsetting/allcalls/WhiteList;Ljava/lang/String;)V

    .line 513
    iget-object v1, p0, Lcom/sec/android/app/callsetting/allcalls/WhiteList$13;->this$0:Lcom/sec/android/app/callsetting/allcalls/WhiteList;

    #getter for: Lcom/sec/android/app/callsetting/allcalls/WhiteList;->autoRejectAdapter:Lcom/sec/android/app/callsetting/allcalls/WhiteList$AutoRejectAdapter;
    invoke-static {v1}, Lcom/sec/android/app/callsetting/allcalls/WhiteList;->access$000(Lcom/sec/android/app/callsetting/allcalls/WhiteList;)Lcom/sec/android/app/callsetting/allcalls/WhiteList$AutoRejectAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/callsetting/allcalls/WhiteList$AutoRejectAdapter;->notifyDataSetInvalidated()V

    .line 514
    iget-object v1, p0, Lcom/sec/android/app/callsetting/allcalls/WhiteList$13;->this$0:Lcom/sec/android/app/callsetting/allcalls/WhiteList;

    const/4 v2, 0x0

    #setter for: Lcom/sec/android/app/callsetting/allcalls/WhiteList;->mScreenType:I
    invoke-static {v1, v2}, Lcom/sec/android/app/callsetting/allcalls/WhiteList;->access$1502(Lcom/sec/android/app/callsetting/allcalls/WhiteList;I)I

    .line 515
    return-void
.end method
