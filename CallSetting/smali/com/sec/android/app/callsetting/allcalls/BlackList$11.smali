.class Lcom/sec/android/app/callsetting/allcalls/BlackList$11;
.super Ljava/lang/Object;
.source "BlackList.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/callsetting/allcalls/BlackList;->deleteDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/callsetting/allcalls/BlackList;


# direct methods
.method constructor <init>(Lcom/sec/android/app/callsetting/allcalls/BlackList;)V
    .locals 0
    .parameter

    .prologue
    .line 529
    iput-object p1, p0, Lcom/sec/android/app/callsetting/allcalls/BlackList$11;->this$0:Lcom/sec/android/app/callsetting/allcalls/BlackList;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5
    .parameter "dialog"
    .parameter "arg1"

    .prologue
    const/4 v4, 0x0

    .line 531
    iget-object v1, p0, Lcom/sec/android/app/callsetting/allcalls/BlackList$11;->this$0:Lcom/sec/android/app/callsetting/allcalls/BlackList;

    #getter for: Lcom/sec/android/app/callsetting/allcalls/BlackList;->mAutoRejectItemList:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/sec/android/app/callsetting/allcalls/BlackList;->access$400(Lcom/sec/android/app/callsetting/allcalls/BlackList;)Ljava/util/ArrayList;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/callsetting/allcalls/BlackList$11;->this$0:Lcom/sec/android/app/callsetting/allcalls/BlackList;

    #getter for: Lcom/sec/android/app/callsetting/allcalls/BlackList;->mSelectedItem:I
    invoke-static {v2}, Lcom/sec/android/app/callsetting/allcalls/BlackList;->access$700(Lcom/sec/android/app/callsetting/allcalls/BlackList;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/callsetting/allcalls/BlackList$AutoRejectItem;

    iget-object v1, v1, Lcom/sec/android/app/callsetting/allcalls/BlackList$AutoRejectItem;->id:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 532
    .local v0, del_id:I
    iget-object v1, p0, Lcom/sec/android/app/callsetting/allcalls/BlackList$11;->this$0:Lcom/sec/android/app/callsetting/allcalls/BlackList;

    #calls: Lcom/sec/android/app/callsetting/allcalls/BlackList;->deleteAutoRejectNumber(I)V
    invoke-static {v1, v0}, Lcom/sec/android/app/callsetting/allcalls/BlackList;->access$1400(Lcom/sec/android/app/callsetting/allcalls/BlackList;I)V

    .line 533
    iget-object v1, p0, Lcom/sec/android/app/callsetting/allcalls/BlackList$11;->this$0:Lcom/sec/android/app/callsetting/allcalls/BlackList;

    #getter for: Lcom/sec/android/app/callsetting/allcalls/BlackList;->mAutoRejectItemList:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/sec/android/app/callsetting/allcalls/BlackList;->access$400(Lcom/sec/android/app/callsetting/allcalls/BlackList;)Ljava/util/ArrayList;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/callsetting/allcalls/BlackList$11;->this$0:Lcom/sec/android/app/callsetting/allcalls/BlackList;

    #getter for: Lcom/sec/android/app/callsetting/allcalls/BlackList;->mSelectedItem:I
    invoke-static {v2}, Lcom/sec/android/app/callsetting/allcalls/BlackList;->access$700(Lcom/sec/android/app/callsetting/allcalls/BlackList;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 534
    iget-object v1, p0, Lcom/sec/android/app/callsetting/allcalls/BlackList$11;->this$0:Lcom/sec/android/app/callsetting/allcalls/BlackList;

    #setter for: Lcom/sec/android/app/callsetting/allcalls/BlackList;->mSelectedItem:I
    invoke-static {v1, v4}, Lcom/sec/android/app/callsetting/allcalls/BlackList;->access$702(Lcom/sec/android/app/callsetting/allcalls/BlackList;I)I

    .line 535
    iget-object v1, p0, Lcom/sec/android/app/callsetting/allcalls/BlackList$11;->this$0:Lcom/sec/android/app/callsetting/allcalls/BlackList;

    iget-object v2, p0, Lcom/sec/android/app/callsetting/allcalls/BlackList$11;->this$0:Lcom/sec/android/app/callsetting/allcalls/BlackList;

    const v3, 0x7f07009b

    invoke-virtual {v2, v3}, Lcom/sec/android/app/callsetting/allcalls/BlackList;->getString(I)Ljava/lang/String;

    move-result-object v2

    #calls: Lcom/sec/android/app/callsetting/allcalls/BlackList;->displayToast(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/sec/android/app/callsetting/allcalls/BlackList;->access$1500(Lcom/sec/android/app/callsetting/allcalls/BlackList;Ljava/lang/String;)V

    .line 536
    iget-object v1, p0, Lcom/sec/android/app/callsetting/allcalls/BlackList$11;->this$0:Lcom/sec/android/app/callsetting/allcalls/BlackList;

    #getter for: Lcom/sec/android/app/callsetting/allcalls/BlackList;->mAutoRejectAdapter:Lcom/sec/android/app/callsetting/allcalls/BlackList$AutoRejectAdapter;
    invoke-static {v1}, Lcom/sec/android/app/callsetting/allcalls/BlackList;->access$000(Lcom/sec/android/app/callsetting/allcalls/BlackList;)Lcom/sec/android/app/callsetting/allcalls/BlackList$AutoRejectAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/callsetting/allcalls/BlackList$AutoRejectAdapter;->notifyDataSetInvalidated()V

    .line 537
    iget-object v1, p0, Lcom/sec/android/app/callsetting/allcalls/BlackList$11;->this$0:Lcom/sec/android/app/callsetting/allcalls/BlackList;

    #setter for: Lcom/sec/android/app/callsetting/allcalls/BlackList;->mScreenType:I
    invoke-static {v1, v4}, Lcom/sec/android/app/callsetting/allcalls/BlackList;->access$302(Lcom/sec/android/app/callsetting/allcalls/BlackList;I)I

    .line 538
    iget-object v1, p0, Lcom/sec/android/app/callsetting/allcalls/BlackList$11;->this$0:Lcom/sec/android/app/callsetting/allcalls/BlackList;

    #calls: Lcom/sec/android/app/callsetting/allcalls/BlackList;->updateCreatePanel()V
    invoke-static {v1}, Lcom/sec/android/app/callsetting/allcalls/BlackList;->access$1800(Lcom/sec/android/app/callsetting/allcalls/BlackList;)V

    .line 539
    iget-object v1, p0, Lcom/sec/android/app/callsetting/allcalls/BlackList$11;->this$0:Lcom/sec/android/app/callsetting/allcalls/BlackList;

    #calls: Lcom/sec/android/app/callsetting/allcalls/BlackList;->updateTitleBar()V
    invoke-static {v1}, Lcom/sec/android/app/callsetting/allcalls/BlackList;->access$1900(Lcom/sec/android/app/callsetting/allcalls/BlackList;)V

    .line 540
    return-void
.end method
