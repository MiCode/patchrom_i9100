.class Lcom/sec/android/app/callsetting/allcalls/BlackList$5;
.super Ljava/lang/Object;
.source "BlackList.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/callsetting/allcalls/BlackList;->initLayout()V
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
    .line 346
    iput-object p1, p0, Lcom/sec/android/app/callsetting/allcalls/BlackList$5;->this$0:Lcom/sec/android/app/callsetting/allcalls/BlackList;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3
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

    .line 350
    iget-object v1, p0, Lcom/sec/android/app/callsetting/allcalls/BlackList$5;->this$0:Lcom/sec/android/app/callsetting/allcalls/BlackList;

    #getter for: Lcom/sec/android/app/callsetting/allcalls/BlackList;->mScreenType:I
    invoke-static {v1}, Lcom/sec/android/app/callsetting/allcalls/BlackList;->access$300(Lcom/sec/android/app/callsetting/allcalls/BlackList;)I

    move-result v1

    if-ne v1, v0, :cond_1

    .line 351
    iget-object v1, p0, Lcom/sec/android/app/callsetting/allcalls/BlackList$5;->this$0:Lcom/sec/android/app/callsetting/allcalls/BlackList;

    #calls: Lcom/sec/android/app/callsetting/allcalls/BlackList;->updateDeleteScreenItems()V
    invoke-static {v1}, Lcom/sec/android/app/callsetting/allcalls/BlackList;->access$1300(Lcom/sec/android/app/callsetting/allcalls/BlackList;)V

    .line 369
    :cond_0
    :goto_0
    return-void

    .line 353
    :cond_1
    if-nez p3, :cond_3

    .line 354
    iget-object v1, p0, Lcom/sec/android/app/callsetting/allcalls/BlackList$5;->this$0:Lcom/sec/android/app/callsetting/allcalls/BlackList;

    #getter for: Lcom/sec/android/app/callsetting/allcalls/BlackList;->mAutoRejectItemList:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/sec/android/app/callsetting/allcalls/BlackList;->access$400(Lcom/sec/android/app/callsetting/allcalls/BlackList;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/callsetting/allcalls/BlackList$AutoRejectItem;

    iget v1, v1, Lcom/sec/android/app/callsetting/allcalls/BlackList$AutoRejectItem;->checked:I

    if-eqz v1, :cond_2

    move v0, v2

    .line 356
    .local v0, checked:I
    :cond_2
    iget-object v1, p0, Lcom/sec/android/app/callsetting/allcalls/BlackList$5;->this$0:Lcom/sec/android/app/callsetting/allcalls/BlackList;

    #getter for: Lcom/sec/android/app/callsetting/allcalls/BlackList;->mAutoRejectItemList:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/sec/android/app/callsetting/allcalls/BlackList;->access$400(Lcom/sec/android/app/callsetting/allcalls/BlackList;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/callsetting/allcalls/BlackList$AutoRejectItem;

    iput v0, v1, Lcom/sec/android/app/callsetting/allcalls/BlackList$AutoRejectItem;->checked:I

    .line 357
    iget-object v1, p0, Lcom/sec/android/app/callsetting/allcalls/BlackList$5;->this$0:Lcom/sec/android/app/callsetting/allcalls/BlackList;

    invoke-virtual {v1}, Lcom/sec/android/app/callsetting/allcalls/BlackList;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "unknown_mode"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 359
    iget-object v1, p0, Lcom/sec/android/app/callsetting/allcalls/BlackList$5;->this$0:Lcom/sec/android/app/callsetting/allcalls/BlackList;

    #getter for: Lcom/sec/android/app/callsetting/allcalls/BlackList;->mAutoRejectAdapter:Lcom/sec/android/app/callsetting/allcalls/BlackList$AutoRejectAdapter;
    invoke-static {v1}, Lcom/sec/android/app/callsetting/allcalls/BlackList;->access$000(Lcom/sec/android/app/callsetting/allcalls/BlackList;)Lcom/sec/android/app/callsetting/allcalls/BlackList$AutoRejectAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/callsetting/allcalls/BlackList$AutoRejectAdapter;->notifyDataSetInvalidated()V

    goto :goto_0

    .line 360
    .end local v0           #checked:I
    :cond_3
    if-ne p3, v0, :cond_0

    goto :goto_0
.end method
