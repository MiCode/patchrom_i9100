.class Lcom/sec/android/app/callsetting/allcalls/WhiteList$5;
.super Ljava/lang/Object;
.source "WhiteList.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/callsetting/allcalls/WhiteList;->softkeyRightRun(Landroid/view/View;)V
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
    .line 362
    iput-object p1, p0, Lcom/sec/android/app/callsetting/allcalls/WhiteList$5;->this$0:Lcom/sec/android/app/callsetting/allcalls/WhiteList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/16 v2, 0x8

    .line 364
    iget-object v0, p0, Lcom/sec/android/app/callsetting/allcalls/WhiteList$5;->this$0:Lcom/sec/android/app/callsetting/allcalls/WhiteList;

    #getter for: Lcom/sec/android/app/callsetting/allcalls/WhiteList;->selectAll:Landroid/widget/LinearLayout;
    invoke-static {v0}, Lcom/sec/android/app/callsetting/allcalls/WhiteList;->access$1200(Lcom/sec/android/app/callsetting/allcalls/WhiteList;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 365
    iget-object v0, p0, Lcom/sec/android/app/callsetting/allcalls/WhiteList$5;->this$0:Lcom/sec/android/app/callsetting/allcalls/WhiteList;

    #getter for: Lcom/sec/android/app/callsetting/allcalls/WhiteList;->mSoftkeyView:Lcom/sec/android/touchwiz/widget/TwSoftkeyView;
    invoke-static {v0}, Lcom/sec/android/app/callsetting/allcalls/WhiteList;->access$1300(Lcom/sec/android/app/callsetting/allcalls/WhiteList;)Lcom/sec/android/touchwiz/widget/TwSoftkeyView;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/sec/android/touchwiz/widget/TwSoftkeyView;->setVisibility(I)V

    .line 366
    iget-object v0, p0, Lcom/sec/android/app/callsetting/allcalls/WhiteList$5;->this$0:Lcom/sec/android/app/callsetting/allcalls/WhiteList;

    #getter for: Lcom/sec/android/app/callsetting/allcalls/WhiteList;->mAutoRejectItemList:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/sec/android/app/callsetting/allcalls/WhiteList;->access$100(Lcom/sec/android/app/callsetting/allcalls/WhiteList;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/16 v1, 0x1e

    if-ge v0, v1, :cond_0

    .line 367
    iget-object v0, p0, Lcom/sec/android/app/callsetting/allcalls/WhiteList$5;->this$0:Lcom/sec/android/app/callsetting/allcalls/WhiteList;

    #getter for: Lcom/sec/android/app/callsetting/allcalls/WhiteList;->createItem:Landroid/widget/LinearLayout;
    invoke-static {v0}, Lcom/sec/android/app/callsetting/allcalls/WhiteList;->access$1400(Lcom/sec/android/app/callsetting/allcalls/WhiteList;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 371
    :goto_0
    iget-object v0, p0, Lcom/sec/android/app/callsetting/allcalls/WhiteList$5;->this$0:Lcom/sec/android/app/callsetting/allcalls/WhiteList;

    #getter for: Lcom/sec/android/app/callsetting/allcalls/WhiteList;->list:Landroid/widget/ListView;
    invoke-static {v0}, Lcom/sec/android/app/callsetting/allcalls/WhiteList;->access$700(Lcom/sec/android/app/callsetting/allcalls/WhiteList;)Landroid/widget/ListView;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/callsetting/allcalls/WhiteList$5;->this$0:Lcom/sec/android/app/callsetting/allcalls/WhiteList;

    #getter for: Lcom/sec/android/app/callsetting/allcalls/WhiteList;->autoRejectAdapter:Lcom/sec/android/app/callsetting/allcalls/WhiteList$AutoRejectAdapter;
    invoke-static {v1}, Lcom/sec/android/app/callsetting/allcalls/WhiteList;->access$000(Lcom/sec/android/app/callsetting/allcalls/WhiteList;)Lcom/sec/android/app/callsetting/allcalls/WhiteList$AutoRejectAdapter;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 372
    iget-object v0, p0, Lcom/sec/android/app/callsetting/allcalls/WhiteList$5;->this$0:Lcom/sec/android/app/callsetting/allcalls/WhiteList;

    #setter for: Lcom/sec/android/app/callsetting/allcalls/WhiteList;->mScreenType:I
    invoke-static {v0, v3}, Lcom/sec/android/app/callsetting/allcalls/WhiteList;->access$1502(Lcom/sec/android/app/callsetting/allcalls/WhiteList;I)I

    .line 373
    return-void

    .line 369
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/callsetting/allcalls/WhiteList$5;->this$0:Lcom/sec/android/app/callsetting/allcalls/WhiteList;

    #getter for: Lcom/sec/android/app/callsetting/allcalls/WhiteList;->createItem:Landroid/widget/LinearLayout;
    invoke-static {v0}, Lcom/sec/android/app/callsetting/allcalls/WhiteList;->access$1400(Lcom/sec/android/app/callsetting/allcalls/WhiteList;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0
.end method
