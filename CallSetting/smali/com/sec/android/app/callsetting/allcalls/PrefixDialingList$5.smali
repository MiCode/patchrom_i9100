.class Lcom/sec/android/app/callsetting/allcalls/PrefixDialingList$5;
.super Ljava/lang/Object;
.source "PrefixDialingList.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/callsetting/allcalls/PrefixDialingList;->PrefixDialingEventInit()V
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
    .line 287
    iput-object p1, p0, Lcom/sec/android/app/callsetting/allcalls/PrefixDialingList$5;->this$0:Lcom/sec/android/app/callsetting/allcalls/PrefixDialingList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 6
    .parameter
    .parameter "arg1"
    .parameter "arg2"
    .parameter "arg3"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .local p1, arg0:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 291
    iget-object v2, p0, Lcom/sec/android/app/callsetting/allcalls/PrefixDialingList$5;->this$0:Lcom/sec/android/app/callsetting/allcalls/PrefixDialingList;

    #getter for: Lcom/sec/android/app/callsetting/allcalls/PrefixDialingList;->mState:I
    invoke-static {v2}, Lcom/sec/android/app/callsetting/allcalls/PrefixDialingList;->access$200(Lcom/sec/android/app/callsetting/allcalls/PrefixDialingList;)I

    move-result v2

    const/4 v5, 0x2

    if-ne v2, v5, :cond_1

    .line 293
    iget-object v2, p0, Lcom/sec/android/app/callsetting/allcalls/PrefixDialingList$5;->this$0:Lcom/sec/android/app/callsetting/allcalls/PrefixDialingList;

    add-int/lit8 v3, p3, 0x1

    #setter for: Lcom/sec/android/app/callsetting/allcalls/PrefixDialingList;->mSelectedItem:I
    invoke-static {v2, v3}, Lcom/sec/android/app/callsetting/allcalls/PrefixDialingList;->access$102(Lcom/sec/android/app/callsetting/allcalls/PrefixDialingList;I)I

    .line 294
    iget-object v2, p0, Lcom/sec/android/app/callsetting/allcalls/PrefixDialingList$5;->this$0:Lcom/sec/android/app/callsetting/allcalls/PrefixDialingList;

    const/4 v3, 0x4

    #setter for: Lcom/sec/android/app/callsetting/allcalls/PrefixDialingList;->mState:I
    invoke-static {v2, v3}, Lcom/sec/android/app/callsetting/allcalls/PrefixDialingList;->access$202(Lcom/sec/android/app/callsetting/allcalls/PrefixDialingList;I)I

    .line 295
    iget-object v2, p0, Lcom/sec/android/app/callsetting/allcalls/PrefixDialingList$5;->this$0:Lcom/sec/android/app/callsetting/allcalls/PrefixDialingList;

    #calls: Lcom/sec/android/app/callsetting/allcalls/PrefixDialingList;->alertdialogPrefixNumber()V
    invoke-static {v2}, Lcom/sec/android/app/callsetting/allcalls/PrefixDialingList;->access$300(Lcom/sec/android/app/callsetting/allcalls/PrefixDialingList;)V

    .line 320
    :cond_0
    :goto_0
    return-void

    .line 297
    :cond_1
    iget-object v2, p0, Lcom/sec/android/app/callsetting/allcalls/PrefixDialingList$5;->this$0:Lcom/sec/android/app/callsetting/allcalls/PrefixDialingList;

    #getter for: Lcom/sec/android/app/callsetting/allcalls/PrefixDialingList;->mState:I
    invoke-static {v2}, Lcom/sec/android/app/callsetting/allcalls/PrefixDialingList;->access$200(Lcom/sec/android/app/callsetting/allcalls/PrefixDialingList;)I

    move-result v2

    const/4 v5, 0x3

    if-ne v2, v5, :cond_0

    .line 299
    const/4 v0, 0x0

    .line 310
    .local v0, checked_cnt:I
    const/4 v1, 0x0

    .local v1, index:I
    :goto_1
    iget-object v2, p0, Lcom/sec/android/app/callsetting/allcalls/PrefixDialingList$5;->this$0:Lcom/sec/android/app/callsetting/allcalls/PrefixDialingList;

    iget-object v2, v2, Lcom/sec/android/app/callsetting/allcalls/PrefixDialingList;->listView:Landroid/widget/ListView;

    invoke-virtual {v2}, Landroid/widget/ListView;->getCount()I

    move-result v2

    if-ge v1, v2, :cond_3

    .line 312
    iget-object v2, p0, Lcom/sec/android/app/callsetting/allcalls/PrefixDialingList$5;->this$0:Lcom/sec/android/app/callsetting/allcalls/PrefixDialingList;

    iget-object v2, v2, Lcom/sec/android/app/callsetting/allcalls/PrefixDialingList;->listView:Landroid/widget/ListView;

    invoke-virtual {v2, v1}, Landroid/widget/ListView;->isItemChecked(I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 313
    add-int/lit8 v0, v0, 0x1

    .line 310
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 317
    :cond_3
    sget-object v5, Lcom/sec/android/app/callsetting/allcalls/PrefixDialingList;->mLeftSoftkey:Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;

    if-lez v0, :cond_4

    move v2, v3

    :goto_2
    invoke-virtual {v5, v2}, Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;->setEnabled(Z)V

    .line 318
    iget-object v2, p0, Lcom/sec/android/app/callsetting/allcalls/PrefixDialingList$5;->this$0:Lcom/sec/android/app/callsetting/allcalls/PrefixDialingList;

    iget-object v2, v2, Lcom/sec/android/app/callsetting/allcalls/PrefixDialingList;->selectAllCheck:Landroid/widget/CheckBox;

    iget-object v5, p0, Lcom/sec/android/app/callsetting/allcalls/PrefixDialingList$5;->this$0:Lcom/sec/android/app/callsetting/allcalls/PrefixDialingList;

    iget-object v5, v5, Lcom/sec/android/app/callsetting/allcalls/PrefixDialingList;->listView:Landroid/widget/ListView;

    invoke-virtual {v5}, Landroid/widget/ListView;->getCount()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    if-ge v0, v5, :cond_5

    :goto_3
    invoke-virtual {v2, v4}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_0

    :cond_4
    move v2, v4

    .line 317
    goto :goto_2

    :cond_5
    move v4, v3

    .line 318
    goto :goto_3
.end method
