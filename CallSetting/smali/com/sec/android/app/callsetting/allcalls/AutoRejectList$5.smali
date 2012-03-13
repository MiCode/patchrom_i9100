.class Lcom/sec/android/app/callsetting/allcalls/AutoRejectList$5;
.super Ljava/lang/Object;
.source "AutoRejectList.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/callsetting/allcalls/AutoRejectList;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/callsetting/allcalls/AutoRejectList;


# direct methods
.method constructor <init>(Lcom/sec/android/app/callsetting/allcalls/AutoRejectList;)V
    .locals 0
    .parameter

    .prologue
    .line 421
    iput-object p1, p0, Lcom/sec/android/app/callsetting/allcalls/AutoRejectList$5;->this$0:Lcom/sec/android/app/callsetting/allcalls/AutoRejectList;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5
    .parameter "dialog"
    .parameter "which"

    .prologue
    const/4 v2, 0x1

    .line 424
    packed-switch p2, :pswitch_data_0

    .line 452
    :goto_0
    return-void

    .line 427
    :pswitch_0
    iget-object v1, p0, Lcom/sec/android/app/callsetting/allcalls/AutoRejectList$5;->this$0:Lcom/sec/android/app/callsetting/allcalls/AutoRejectList;

    const/4 v2, 0x4

    #setter for: Lcom/sec/android/app/callsetting/allcalls/AutoRejectList;->mState:I
    invoke-static {v1, v2}, Lcom/sec/android/app/callsetting/allcalls/AutoRejectList;->access$202(Lcom/sec/android/app/callsetting/allcalls/AutoRejectList;I)I

    .line 428
    iget-object v1, p0, Lcom/sec/android/app/callsetting/allcalls/AutoRejectList$5;->this$0:Lcom/sec/android/app/callsetting/allcalls/AutoRejectList;

    #calls: Lcom/sec/android/app/callsetting/allcalls/AutoRejectList;->alertdialogAutoRejectNumber()V
    invoke-static {v1}, Lcom/sec/android/app/callsetting/allcalls/AutoRejectList;->access$300(Lcom/sec/android/app/callsetting/allcalls/AutoRejectList;)V

    goto :goto_0

    .line 433
    :pswitch_1
    iget-object v1, p0, Lcom/sec/android/app/callsetting/allcalls/AutoRejectList$5;->this$0:Lcom/sec/android/app/callsetting/allcalls/AutoRejectList;

    #getter for: Lcom/sec/android/app/callsetting/allcalls/AutoRejectList;->autoRejectNumList:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/sec/android/app/callsetting/allcalls/AutoRejectList;->access$800(Lcom/sec/android/app/callsetting/allcalls/AutoRejectList;)Ljava/util/ArrayList;

    move-result-object v1

    iget-object v3, p0, Lcom/sec/android/app/callsetting/allcalls/AutoRejectList$5;->this$0:Lcom/sec/android/app/callsetting/allcalls/AutoRejectList;

    #getter for: Lcom/sec/android/app/callsetting/allcalls/AutoRejectList;->mSelectedItem:I
    invoke-static {v3}, Lcom/sec/android/app/callsetting/allcalls/AutoRejectList;->access$100(Lcom/sec/android/app/callsetting/allcalls/AutoRejectList;)I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 435
    iget-object v1, p0, Lcom/sec/android/app/callsetting/allcalls/AutoRejectList$5;->this$0:Lcom/sec/android/app/callsetting/allcalls/AutoRejectList;

    #getter for: Lcom/sec/android/app/callsetting/allcalls/AutoRejectList;->mAutoRejectNumList:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/sec/android/app/callsetting/allcalls/AutoRejectList;->access$500(Lcom/sec/android/app/callsetting/allcalls/AutoRejectList;)Ljava/util/ArrayList;

    move-result-object v1

    iget-object v3, p0, Lcom/sec/android/app/callsetting/allcalls/AutoRejectList$5;->this$0:Lcom/sec/android/app/callsetting/allcalls/AutoRejectList;

    #getter for: Lcom/sec/android/app/callsetting/allcalls/AutoRejectList;->mSelectedItem:I
    invoke-static {v3}, Lcom/sec/android/app/callsetting/allcalls/AutoRejectList;->access$100(Lcom/sec/android/app/callsetting/allcalls/AutoRejectList;)I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/callsetting/allcalls/AutoRejectList$AutoRejectItem;

    iget-object v1, v1, Lcom/sec/android/app/callsetting/allcalls/AutoRejectList$AutoRejectItem;->id:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 436
    .local v0, del_id:I
    iget-object v1, p0, Lcom/sec/android/app/callsetting/allcalls/AutoRejectList$5;->this$0:Lcom/sec/android/app/callsetting/allcalls/AutoRejectList;

    #calls: Lcom/sec/android/app/callsetting/allcalls/AutoRejectList;->deleteAutoRejectNumber(I)V
    invoke-static {v1, v0}, Lcom/sec/android/app/callsetting/allcalls/AutoRejectList;->access$900(Lcom/sec/android/app/callsetting/allcalls/AutoRejectList;I)V

    .line 437
    iget-object v1, p0, Lcom/sec/android/app/callsetting/allcalls/AutoRejectList$5;->this$0:Lcom/sec/android/app/callsetting/allcalls/AutoRejectList;

    #getter for: Lcom/sec/android/app/callsetting/allcalls/AutoRejectList;->mAutoRejectNumList:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/sec/android/app/callsetting/allcalls/AutoRejectList;->access$500(Lcom/sec/android/app/callsetting/allcalls/AutoRejectList;)Ljava/util/ArrayList;

    move-result-object v1

    iget-object v3, p0, Lcom/sec/android/app/callsetting/allcalls/AutoRejectList$5;->this$0:Lcom/sec/android/app/callsetting/allcalls/AutoRejectList;

    #getter for: Lcom/sec/android/app/callsetting/allcalls/AutoRejectList;->mSelectedItem:I
    invoke-static {v3}, Lcom/sec/android/app/callsetting/allcalls/AutoRejectList;->access$100(Lcom/sec/android/app/callsetting/allcalls/AutoRejectList;)I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 439
    iget-object v1, p0, Lcom/sec/android/app/callsetting/allcalls/AutoRejectList$5;->this$0:Lcom/sec/android/app/callsetting/allcalls/AutoRejectList;

    iget-object v3, p0, Lcom/sec/android/app/callsetting/allcalls/AutoRejectList$5;->this$0:Lcom/sec/android/app/callsetting/allcalls/AutoRejectList;

    const v4, 0x7f07009b

    invoke-virtual {v3, v4}, Lcom/sec/android/app/callsetting/allcalls/AutoRejectList;->getString(I)Ljava/lang/String;

    move-result-object v3

    #calls: Lcom/sec/android/app/callsetting/allcalls/AutoRejectList;->displayToast(Ljava/lang/String;)V
    invoke-static {v1, v3}, Lcom/sec/android/app/callsetting/allcalls/AutoRejectList;->access$1000(Lcom/sec/android/app/callsetting/allcalls/AutoRejectList;Ljava/lang/String;)V

    .line 440
    iget-object v1, p0, Lcom/sec/android/app/callsetting/allcalls/AutoRejectList$5;->this$0:Lcom/sec/android/app/callsetting/allcalls/AutoRejectList;

    #getter for: Lcom/sec/android/app/callsetting/allcalls/AutoRejectList;->autoRejectAdapter:Lcom/sec/android/app/callsetting/allcalls/AutoRejectList$AutoRejectAdapter;
    invoke-static {v1}, Lcom/sec/android/app/callsetting/allcalls/AutoRejectList;->access$600(Lcom/sec/android/app/callsetting/allcalls/AutoRejectList;)Lcom/sec/android/app/callsetting/allcalls/AutoRejectList$AutoRejectAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/callsetting/allcalls/AutoRejectList$AutoRejectAdapter;->notifyDataSetInvalidated()V

    .line 442
    iget-object v3, p0, Lcom/sec/android/app/callsetting/allcalls/AutoRejectList$5;->this$0:Lcom/sec/android/app/callsetting/allcalls/AutoRejectList;

    iget-object v1, p0, Lcom/sec/android/app/callsetting/allcalls/AutoRejectList$5;->this$0:Lcom/sec/android/app/callsetting/allcalls/AutoRejectList;

    #getter for: Lcom/sec/android/app/callsetting/allcalls/AutoRejectList;->mAutoRejectNumList:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/sec/android/app/callsetting/allcalls/AutoRejectList;->access$500(Lcom/sec/android/app/callsetting/allcalls/AutoRejectList;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-le v1, v2, :cond_0

    const/4 v1, 0x2

    :goto_1
    #setter for: Lcom/sec/android/app/callsetting/allcalls/AutoRejectList;->mState:I
    invoke-static {v3, v1}, Lcom/sec/android/app/callsetting/allcalls/AutoRejectList;->access$202(Lcom/sec/android/app/callsetting/allcalls/AutoRejectList;I)I

    goto :goto_0

    :cond_0
    move v1, v2

    goto :goto_1

    .line 424
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
