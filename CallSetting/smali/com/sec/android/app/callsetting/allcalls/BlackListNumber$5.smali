.class Lcom/sec/android/app/callsetting/allcalls/BlackListNumber$5;
.super Ljava/lang/Object;
.source "BlackListNumber.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/callsetting/allcalls/BlackListNumber;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/callsetting/allcalls/BlackListNumber;


# direct methods
.method constructor <init>(Lcom/sec/android/app/callsetting/allcalls/BlackListNumber;)V
    .locals 0
    .parameter

    .prologue
    .line 474
    iput-object p1, p0, Lcom/sec/android/app/callsetting/allcalls/BlackListNumber$5;->this$0:Lcom/sec/android/app/callsetting/allcalls/BlackListNumber;

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

    .line 476
    packed-switch p2, :pswitch_data_0

    .line 495
    :goto_0
    return-void

    .line 478
    :pswitch_0
    iget-object v1, p0, Lcom/sec/android/app/callsetting/allcalls/BlackListNumber$5;->this$0:Lcom/sec/android/app/callsetting/allcalls/BlackListNumber;

    const/4 v2, 0x4

    #setter for: Lcom/sec/android/app/callsetting/allcalls/BlackListNumber;->mState:I
    invoke-static {v1, v2}, Lcom/sec/android/app/callsetting/allcalls/BlackListNumber;->access$302(Lcom/sec/android/app/callsetting/allcalls/BlackListNumber;I)I

    .line 479
    iget-object v1, p0, Lcom/sec/android/app/callsetting/allcalls/BlackListNumber$5;->this$0:Lcom/sec/android/app/callsetting/allcalls/BlackListNumber;

    #calls: Lcom/sec/android/app/callsetting/allcalls/BlackListNumber;->alertdialogAutoRejectNumber()V
    invoke-static {v1}, Lcom/sec/android/app/callsetting/allcalls/BlackListNumber;->access$600(Lcom/sec/android/app/callsetting/allcalls/BlackListNumber;)V

    goto :goto_0

    .line 482
    :pswitch_1
    iget-object v1, p0, Lcom/sec/android/app/callsetting/allcalls/BlackListNumber$5;->this$0:Lcom/sec/android/app/callsetting/allcalls/BlackListNumber;

    #getter for: Lcom/sec/android/app/callsetting/allcalls/BlackListNumber;->autoRejectNumList:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/sec/android/app/callsetting/allcalls/BlackListNumber;->access$800(Lcom/sec/android/app/callsetting/allcalls/BlackListNumber;)Ljava/util/ArrayList;

    move-result-object v1

    iget-object v3, p0, Lcom/sec/android/app/callsetting/allcalls/BlackListNumber$5;->this$0:Lcom/sec/android/app/callsetting/allcalls/BlackListNumber;

    #getter for: Lcom/sec/android/app/callsetting/allcalls/BlackListNumber;->mSelectedItem:I
    invoke-static {v3}, Lcom/sec/android/app/callsetting/allcalls/BlackListNumber;->access$700(Lcom/sec/android/app/callsetting/allcalls/BlackListNumber;)I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 483
    iget-object v1, p0, Lcom/sec/android/app/callsetting/allcalls/BlackListNumber$5;->this$0:Lcom/sec/android/app/callsetting/allcalls/BlackListNumber;

    #getter for: Lcom/sec/android/app/callsetting/allcalls/BlackListNumber;->mAutoRejectNumList:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/sec/android/app/callsetting/allcalls/BlackListNumber;->access$400(Lcom/sec/android/app/callsetting/allcalls/BlackListNumber;)Ljava/util/ArrayList;

    move-result-object v1

    iget-object v3, p0, Lcom/sec/android/app/callsetting/allcalls/BlackListNumber$5;->this$0:Lcom/sec/android/app/callsetting/allcalls/BlackListNumber;

    #getter for: Lcom/sec/android/app/callsetting/allcalls/BlackListNumber;->mSelectedItem:I
    invoke-static {v3}, Lcom/sec/android/app/callsetting/allcalls/BlackListNumber;->access$700(Lcom/sec/android/app/callsetting/allcalls/BlackListNumber;)I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/callsetting/allcalls/BlackListNumber$AutoRejectItem;

    iget-object v1, v1, Lcom/sec/android/app/callsetting/allcalls/BlackListNumber$AutoRejectItem;->id:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 486
    .local v0, del_id:I
    iget-object v1, p0, Lcom/sec/android/app/callsetting/allcalls/BlackListNumber$5;->this$0:Lcom/sec/android/app/callsetting/allcalls/BlackListNumber;

    #calls: Lcom/sec/android/app/callsetting/allcalls/BlackListNumber;->deleteAutoRejectNumber(I)V
    invoke-static {v1, v0}, Lcom/sec/android/app/callsetting/allcalls/BlackListNumber;->access$900(Lcom/sec/android/app/callsetting/allcalls/BlackListNumber;I)V

    .line 487
    iget-object v1, p0, Lcom/sec/android/app/callsetting/allcalls/BlackListNumber$5;->this$0:Lcom/sec/android/app/callsetting/allcalls/BlackListNumber;

    #getter for: Lcom/sec/android/app/callsetting/allcalls/BlackListNumber;->mAutoRejectNumList:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/sec/android/app/callsetting/allcalls/BlackListNumber;->access$400(Lcom/sec/android/app/callsetting/allcalls/BlackListNumber;)Ljava/util/ArrayList;

    move-result-object v1

    iget-object v3, p0, Lcom/sec/android/app/callsetting/allcalls/BlackListNumber$5;->this$0:Lcom/sec/android/app/callsetting/allcalls/BlackListNumber;

    #getter for: Lcom/sec/android/app/callsetting/allcalls/BlackListNumber;->mSelectedItem:I
    invoke-static {v3}, Lcom/sec/android/app/callsetting/allcalls/BlackListNumber;->access$700(Lcom/sec/android/app/callsetting/allcalls/BlackListNumber;)I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 488
    iget-object v1, p0, Lcom/sec/android/app/callsetting/allcalls/BlackListNumber$5;->this$0:Lcom/sec/android/app/callsetting/allcalls/BlackListNumber;

    iget-object v3, p0, Lcom/sec/android/app/callsetting/allcalls/BlackListNumber$5;->this$0:Lcom/sec/android/app/callsetting/allcalls/BlackListNumber;

    const v4, 0x7f07009b

    invoke-virtual {v3, v4}, Lcom/sec/android/app/callsetting/allcalls/BlackListNumber;->getString(I)Ljava/lang/String;

    move-result-object v3

    #calls: Lcom/sec/android/app/callsetting/allcalls/BlackListNumber;->displayToast(Ljava/lang/String;)V
    invoke-static {v1, v3}, Lcom/sec/android/app/callsetting/allcalls/BlackListNumber;->access$1000(Lcom/sec/android/app/callsetting/allcalls/BlackListNumber;Ljava/lang/String;)V

    .line 489
    iget-object v1, p0, Lcom/sec/android/app/callsetting/allcalls/BlackListNumber$5;->this$0:Lcom/sec/android/app/callsetting/allcalls/BlackListNumber;

    #getter for: Lcom/sec/android/app/callsetting/allcalls/BlackListNumber;->autoRejectAdapter:Lcom/sec/android/app/callsetting/allcalls/BlackListNumber$AutoRejectAdapter;
    invoke-static {v1}, Lcom/sec/android/app/callsetting/allcalls/BlackListNumber;->access$500(Lcom/sec/android/app/callsetting/allcalls/BlackListNumber;)Lcom/sec/android/app/callsetting/allcalls/BlackListNumber$AutoRejectAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/callsetting/allcalls/BlackListNumber$AutoRejectAdapter;->notifyDataSetInvalidated()V

    .line 490
    iget-object v3, p0, Lcom/sec/android/app/callsetting/allcalls/BlackListNumber$5;->this$0:Lcom/sec/android/app/callsetting/allcalls/BlackListNumber;

    iget-object v1, p0, Lcom/sec/android/app/callsetting/allcalls/BlackListNumber$5;->this$0:Lcom/sec/android/app/callsetting/allcalls/BlackListNumber;

    #getter for: Lcom/sec/android/app/callsetting/allcalls/BlackListNumber;->mAutoRejectNumList:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/sec/android/app/callsetting/allcalls/BlackListNumber;->access$400(Lcom/sec/android/app/callsetting/allcalls/BlackListNumber;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-le v1, v2, :cond_0

    const/4 v1, 0x2

    :goto_1
    #setter for: Lcom/sec/android/app/callsetting/allcalls/BlackListNumber;->mState:I
    invoke-static {v3, v1}, Lcom/sec/android/app/callsetting/allcalls/BlackListNumber;->access$302(Lcom/sec/android/app/callsetting/allcalls/BlackListNumber;I)I

    goto :goto_0

    :cond_0
    move v1, v2

    goto :goto_1

    .line 476
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
