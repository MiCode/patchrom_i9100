.class Lcom/sec/android/app/callsetting/allcalls/AutoRejectList$4;
.super Ljava/lang/Object;
.source "AutoRejectList.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/callsetting/allcalls/AutoRejectList;->AutoRejectEventInit()V
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
    .line 386
    iput-object p1, p0, Lcom/sec/android/app/callsetting/allcalls/AutoRejectList$4;->this$0:Lcom/sec/android/app/callsetting/allcalls/AutoRejectList;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4
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
    const/4 v0, 0x1

    const/4 v2, 0x0

    .line 391
    iget-object v1, p0, Lcom/sec/android/app/callsetting/allcalls/AutoRejectList$4;->this$0:Lcom/sec/android/app/callsetting/allcalls/AutoRejectList;

    #getter for: Lcom/sec/android/app/callsetting/allcalls/AutoRejectList;->mState:I
    invoke-static {v1}, Lcom/sec/android/app/callsetting/allcalls/AutoRejectList;->access$200(Lcom/sec/android/app/callsetting/allcalls/AutoRejectList;)I

    move-result v1

    if-eq v1, v0, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/callsetting/allcalls/AutoRejectList$4;->this$0:Lcom/sec/android/app/callsetting/allcalls/AutoRejectList;

    #getter for: Lcom/sec/android/app/callsetting/allcalls/AutoRejectList;->mState:I
    invoke-static {v1}, Lcom/sec/android/app/callsetting/allcalls/AutoRejectList;->access$200(Lcom/sec/android/app/callsetting/allcalls/AutoRejectList;)I

    move-result v1

    const/4 v3, 0x2

    if-ne v1, v3, :cond_3

    .line 392
    :cond_0
    if-nez p3, :cond_2

    .line 393
    iget-object v1, p0, Lcom/sec/android/app/callsetting/allcalls/AutoRejectList$4;->this$0:Lcom/sec/android/app/callsetting/allcalls/AutoRejectList;

    #getter for: Lcom/sec/android/app/callsetting/allcalls/AutoRejectList;->mAutoRejectNumList:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/sec/android/app/callsetting/allcalls/AutoRejectList;->access$500(Lcom/sec/android/app/callsetting/allcalls/AutoRejectList;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/callsetting/allcalls/AutoRejectList$AutoRejectItem;

    iget v1, v1, Lcom/sec/android/app/callsetting/allcalls/AutoRejectList$AutoRejectItem;->checked:I

    if-eqz v1, :cond_1

    move v0, v2

    .line 394
    .local v0, checked:I
    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/callsetting/allcalls/AutoRejectList$4;->this$0:Lcom/sec/android/app/callsetting/allcalls/AutoRejectList;

    #getter for: Lcom/sec/android/app/callsetting/allcalls/AutoRejectList;->mAutoRejectNumList:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/sec/android/app/callsetting/allcalls/AutoRejectList;->access$500(Lcom/sec/android/app/callsetting/allcalls/AutoRejectList;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/callsetting/allcalls/AutoRejectList$AutoRejectItem;

    iput v0, v1, Lcom/sec/android/app/callsetting/allcalls/AutoRejectList$AutoRejectItem;->checked:I

    .line 395
    iget-object v1, p0, Lcom/sec/android/app/callsetting/allcalls/AutoRejectList$4;->this$0:Lcom/sec/android/app/callsetting/allcalls/AutoRejectList;

    invoke-virtual {v1}, Lcom/sec/android/app/callsetting/allcalls/AutoRejectList;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "unknown_mode"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 398
    iget-object v1, p0, Lcom/sec/android/app/callsetting/allcalls/AutoRejectList$4;->this$0:Lcom/sec/android/app/callsetting/allcalls/AutoRejectList;

    #getter for: Lcom/sec/android/app/callsetting/allcalls/AutoRejectList;->autoRejectAdapter:Lcom/sec/android/app/callsetting/allcalls/AutoRejectList$AutoRejectAdapter;
    invoke-static {v1}, Lcom/sec/android/app/callsetting/allcalls/AutoRejectList;->access$600(Lcom/sec/android/app/callsetting/allcalls/AutoRejectList;)Lcom/sec/android/app/callsetting/allcalls/AutoRejectList$AutoRejectAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/callsetting/allcalls/AutoRejectList$AutoRejectAdapter;->notifyDataSetInvalidated()V

    .line 405
    .end local v0           #checked:I
    :cond_2
    :goto_0
    return-void

    .line 401
    :cond_3
    iget-object v1, p0, Lcom/sec/android/app/callsetting/allcalls/AutoRejectList$4;->this$0:Lcom/sec/android/app/callsetting/allcalls/AutoRejectList;

    #getter for: Lcom/sec/android/app/callsetting/allcalls/AutoRejectList;->mState:I
    invoke-static {v1}, Lcom/sec/android/app/callsetting/allcalls/AutoRejectList;->access$200(Lcom/sec/android/app/callsetting/allcalls/AutoRejectList;)I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_2

    .line 403
    iget-object v1, p0, Lcom/sec/android/app/callsetting/allcalls/AutoRejectList$4;->this$0:Lcom/sec/android/app/callsetting/allcalls/AutoRejectList;

    #calls: Lcom/sec/android/app/callsetting/allcalls/AutoRejectList;->updateDeleteItems()V
    invoke-static {v1}, Lcom/sec/android/app/callsetting/allcalls/AutoRejectList;->access$700(Lcom/sec/android/app/callsetting/allcalls/AutoRejectList;)V

    goto :goto_0
.end method
