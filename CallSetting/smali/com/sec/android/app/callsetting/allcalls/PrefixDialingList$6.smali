.class Lcom/sec/android/app/callsetting/allcalls/PrefixDialingList$6;
.super Ljava/lang/Object;
.source "PrefixDialingList.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/callsetting/allcalls/PrefixDialingList;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/callsetting/allcalls/PrefixDialingList;


# direct methods
.method constructor <init>(Lcom/sec/android/app/callsetting/allcalls/PrefixDialingList;)V
    .locals 0
    .parameter

    .prologue
    .line 372
    iput-object p1, p0, Lcom/sec/android/app/callsetting/allcalls/PrefixDialingList$6;->this$0:Lcom/sec/android/app/callsetting/allcalls/PrefixDialingList;

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

    .line 375
    packed-switch p2, :pswitch_data_0

    .line 404
    :cond_0
    :goto_0
    return-void

    .line 378
    :pswitch_0
    iget-object v1, p0, Lcom/sec/android/app/callsetting/allcalls/PrefixDialingList$6;->this$0:Lcom/sec/android/app/callsetting/allcalls/PrefixDialingList;

    const/4 v2, 0x4

    #setter for: Lcom/sec/android/app/callsetting/allcalls/PrefixDialingList;->mState:I
    invoke-static {v1, v2}, Lcom/sec/android/app/callsetting/allcalls/PrefixDialingList;->access$202(Lcom/sec/android/app/callsetting/allcalls/PrefixDialingList;I)I

    .line 379
    iget-object v1, p0, Lcom/sec/android/app/callsetting/allcalls/PrefixDialingList$6;->this$0:Lcom/sec/android/app/callsetting/allcalls/PrefixDialingList;

    #calls: Lcom/sec/android/app/callsetting/allcalls/PrefixDialingList;->alertdialogPrefixNumber()V
    invoke-static {v1}, Lcom/sec/android/app/callsetting/allcalls/PrefixDialingList;->access$300(Lcom/sec/android/app/callsetting/allcalls/PrefixDialingList;)V

    goto :goto_0

    .line 383
    :pswitch_1
    iget-object v1, p0, Lcom/sec/android/app/callsetting/allcalls/PrefixDialingList$6;->this$0:Lcom/sec/android/app/callsetting/allcalls/PrefixDialingList;

    #getter for: Lcom/sec/android/app/callsetting/allcalls/PrefixDialingList;->prefixNumList:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/sec/android/app/callsetting/allcalls/PrefixDialingList;->access$400(Lcom/sec/android/app/callsetting/allcalls/PrefixDialingList;)Ljava/util/ArrayList;

    move-result-object v1

    iget-object v3, p0, Lcom/sec/android/app/callsetting/allcalls/PrefixDialingList$6;->this$0:Lcom/sec/android/app/callsetting/allcalls/PrefixDialingList;

    #getter for: Lcom/sec/android/app/callsetting/allcalls/PrefixDialingList;->mSelectedItem:I
    invoke-static {v3}, Lcom/sec/android/app/callsetting/allcalls/PrefixDialingList;->access$100(Lcom/sec/android/app/callsetting/allcalls/PrefixDialingList;)I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 385
    iget-object v1, p0, Lcom/sec/android/app/callsetting/allcalls/PrefixDialingList$6;->this$0:Lcom/sec/android/app/callsetting/allcalls/PrefixDialingList;

    #getter for: Lcom/sec/android/app/callsetting/allcalls/PrefixDialingList;->mPrefixNumList:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/sec/android/app/callsetting/allcalls/PrefixDialingList;->access$500(Lcom/sec/android/app/callsetting/allcalls/PrefixDialingList;)Ljava/util/ArrayList;

    move-result-object v1

    iget-object v3, p0, Lcom/sec/android/app/callsetting/allcalls/PrefixDialingList$6;->this$0:Lcom/sec/android/app/callsetting/allcalls/PrefixDialingList;

    #getter for: Lcom/sec/android/app/callsetting/allcalls/PrefixDialingList;->mSelectedItem:I
    invoke-static {v3}, Lcom/sec/android/app/callsetting/allcalls/PrefixDialingList;->access$100(Lcom/sec/android/app/callsetting/allcalls/PrefixDialingList;)I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/callsetting/allcalls/PrefixDialingList$PrefixItem;

    iget v0, v1, Lcom/sec/android/app/callsetting/allcalls/PrefixDialingList$PrefixItem;->id:I

    .line 386
    .local v0, del_id:I
    iget-object v1, p0, Lcom/sec/android/app/callsetting/allcalls/PrefixDialingList$6;->this$0:Lcom/sec/android/app/callsetting/allcalls/PrefixDialingList;

    #calls: Lcom/sec/android/app/callsetting/allcalls/PrefixDialingList;->deletePrefixNumber(I)V
    invoke-static {v1, v0}, Lcom/sec/android/app/callsetting/allcalls/PrefixDialingList;->access$600(Lcom/sec/android/app/callsetting/allcalls/PrefixDialingList;I)V

    .line 387
    iget-object v1, p0, Lcom/sec/android/app/callsetting/allcalls/PrefixDialingList$6;->this$0:Lcom/sec/android/app/callsetting/allcalls/PrefixDialingList;

    #getter for: Lcom/sec/android/app/callsetting/allcalls/PrefixDialingList;->mPrefixNumList:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/sec/android/app/callsetting/allcalls/PrefixDialingList;->access$500(Lcom/sec/android/app/callsetting/allcalls/PrefixDialingList;)Ljava/util/ArrayList;

    move-result-object v1

    iget-object v3, p0, Lcom/sec/android/app/callsetting/allcalls/PrefixDialingList$6;->this$0:Lcom/sec/android/app/callsetting/allcalls/PrefixDialingList;

    #getter for: Lcom/sec/android/app/callsetting/allcalls/PrefixDialingList;->mSelectedItem:I
    invoke-static {v3}, Lcom/sec/android/app/callsetting/allcalls/PrefixDialingList;->access$100(Lcom/sec/android/app/callsetting/allcalls/PrefixDialingList;)I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 390
    iget-object v1, p0, Lcom/sec/android/app/callsetting/allcalls/PrefixDialingList$6;->this$0:Lcom/sec/android/app/callsetting/allcalls/PrefixDialingList;

    iget-object v3, p0, Lcom/sec/android/app/callsetting/allcalls/PrefixDialingList$6;->this$0:Lcom/sec/android/app/callsetting/allcalls/PrefixDialingList;

    const v4, 0x7f07009b

    invoke-virtual {v3, v4}, Lcom/sec/android/app/callsetting/allcalls/PrefixDialingList;->getString(I)Ljava/lang/String;

    move-result-object v3

    #calls: Lcom/sec/android/app/callsetting/allcalls/PrefixDialingList;->displayToast(Ljava/lang/String;)V
    invoke-static {v1, v3}, Lcom/sec/android/app/callsetting/allcalls/PrefixDialingList;->access$700(Lcom/sec/android/app/callsetting/allcalls/PrefixDialingList;Ljava/lang/String;)V

    .line 391
    iget-object v1, p0, Lcom/sec/android/app/callsetting/allcalls/PrefixDialingList$6;->this$0:Lcom/sec/android/app/callsetting/allcalls/PrefixDialingList;

    #getter for: Lcom/sec/android/app/callsetting/allcalls/PrefixDialingList;->prefixNumAdapter:Lcom/sec/android/app/callsetting/allcalls/PrefixDialingList$PrefixNumAdapter;
    invoke-static {v1}, Lcom/sec/android/app/callsetting/allcalls/PrefixDialingList;->access$800(Lcom/sec/android/app/callsetting/allcalls/PrefixDialingList;)Lcom/sec/android/app/callsetting/allcalls/PrefixDialingList$PrefixNumAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/callsetting/allcalls/PrefixDialingList$PrefixNumAdapter;->notifyDataSetInvalidated()V

    .line 393
    iget-object v3, p0, Lcom/sec/android/app/callsetting/allcalls/PrefixDialingList$6;->this$0:Lcom/sec/android/app/callsetting/allcalls/PrefixDialingList;

    iget-object v1, p0, Lcom/sec/android/app/callsetting/allcalls/PrefixDialingList$6;->this$0:Lcom/sec/android/app/callsetting/allcalls/PrefixDialingList;

    #getter for: Lcom/sec/android/app/callsetting/allcalls/PrefixDialingList;->mPrefixNumList:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/sec/android/app/callsetting/allcalls/PrefixDialingList;->access$500(Lcom/sec/android/app/callsetting/allcalls/PrefixDialingList;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_1

    const/4 v1, 0x2

    :goto_1
    #setter for: Lcom/sec/android/app/callsetting/allcalls/PrefixDialingList;->mState:I
    invoke-static {v3, v1}, Lcom/sec/android/app/callsetting/allcalls/PrefixDialingList;->access$202(Lcom/sec/android/app/callsetting/allcalls/PrefixDialingList;I)I

    .line 395
    iget-object v1, p0, Lcom/sec/android/app/callsetting/allcalls/PrefixDialingList$6;->this$0:Lcom/sec/android/app/callsetting/allcalls/PrefixDialingList;

    #getter for: Lcom/sec/android/app/callsetting/allcalls/PrefixDialingList;->mState:I
    invoke-static {v1}, Lcom/sec/android/app/callsetting/allcalls/PrefixDialingList;->access$200(Lcom/sec/android/app/callsetting/allcalls/PrefixDialingList;)I

    move-result v1

    if-ne v1, v2, :cond_0

    .line 396
    iget-object v1, p0, Lcom/sec/android/app/callsetting/allcalls/PrefixDialingList$6;->this$0:Lcom/sec/android/app/callsetting/allcalls/PrefixDialingList;

    iget-object v1, v1, Lcom/sec/android/app/callsetting/allcalls/PrefixDialingList;->emptyText:Landroid/widget/FrameLayout;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    goto/16 :goto_0

    :cond_1
    move v1, v2

    .line 393
    goto :goto_1

    .line 375
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
