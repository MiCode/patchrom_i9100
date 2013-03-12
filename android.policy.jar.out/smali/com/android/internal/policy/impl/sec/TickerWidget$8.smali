.class Lcom/android/internal/policy/impl/sec/TickerWidget$8;
.super Ljava/lang/Object;
.source "TickerWidget.java"

# interfaces
.implements Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer$OnDrawerOpenListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/sec/TickerWidget;-><init>(Landroid/content/Context;Landroid/content/res/Configuration;Lcom/android/internal/policy/impl/KeyguardScreenCallback;Lcom/android/internal/policy/impl/sec/CircleUnlockWidget;Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/sec/TickerWidget;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/sec/TickerWidget;)V
    .locals 0
    .parameter

    .prologue
    .line 477
    iput-object p1, p0, Lcom/android/internal/policy/impl/sec/TickerWidget$8;->this$0:Lcom/android/internal/policy/impl/sec/TickerWidget;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDrawerOpened()V
    .locals 3

    .prologue
    .line 480
    const-string v1, "TickerWidget"

    const-string v2, "onDrawerOpened"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 481
    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/TickerWidget$8;->this$0:Lcom/android/internal/policy/impl/sec/TickerWidget;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/sec/TickerWidget;->requestFocus()Z

    .line 482
    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/TickerWidget$8;->this$0:Lcom/android/internal/policy/impl/sec/TickerWidget;

    #getter for: Lcom/android/internal/policy/impl/sec/TickerWidget;->mUnlockWidget:Lcom/android/internal/policy/impl/sec/CircleUnlockRipple;
    invoke-static {v1}, Lcom/android/internal/policy/impl/sec/TickerWidget;->access$2300(Lcom/android/internal/policy/impl/sec/TickerWidget;)Lcom/android/internal/policy/impl/sec/CircleUnlockRipple;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 483
    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/TickerWidget$8;->this$0:Lcom/android/internal/policy/impl/sec/TickerWidget;

    #getter for: Lcom/android/internal/policy/impl/sec/TickerWidget;->mUnlockWidget:Lcom/android/internal/policy/impl/sec/CircleUnlockRipple;
    invoke-static {v1}, Lcom/android/internal/policy/impl/sec/TickerWidget;->access$2300(Lcom/android/internal/policy/impl/sec/TickerWidget;)Lcom/android/internal/policy/impl/sec/CircleUnlockRipple;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/sec/CircleUnlockRipple;->tikerRippleForOpen()V

    .line 486
    :cond_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/TickerWidget$8;->this$0:Lcom/android/internal/policy/impl/sec/TickerWidget;

    #getter for: Lcom/android/internal/policy/impl/sec/TickerWidget;->mHandleArrowImage:Landroid/widget/ImageView;
    invoke-static {v1}, Lcom/android/internal/policy/impl/sec/TickerWidget;->access$2400(Lcom/android/internal/policy/impl/sec/TickerWidget;)Landroid/widget/ImageView;

    move-result-object v1

    const v2, 0x1080477

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 488
    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/TickerWidget$8;->this$0:Lcom/android/internal/policy/impl/sec/TickerWidget;

    iget-boolean v1, v1, Lcom/android/internal/policy/impl/sec/TickerWidget;->mNewsRefreshing:Z

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/TickerWidget$8;->this$0:Lcom/android/internal/policy/impl/sec/TickerWidget;

    #getter for: Lcom/android/internal/policy/impl/sec/TickerWidget;->mStockRefreshing:Z
    invoke-static {v1}, Lcom/android/internal/policy/impl/sec/TickerWidget;->access$1300(Lcom/android/internal/policy/impl/sec/TickerWidget;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/TickerWidget$8;->this$0:Lcom/android/internal/policy/impl/sec/TickerWidget;

    iget-boolean v1, v1, Lcom/android/internal/policy/impl/sec/TickerWidget;->mFacebookRefreshing:Z

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/TickerWidget$8;->this$0:Lcom/android/internal/policy/impl/sec/TickerWidget;

    #getter for: Lcom/android/internal/policy/impl/sec/TickerWidget;->mIsRefreshingPossible:Z
    invoke-static {v1}, Lcom/android/internal/policy/impl/sec/TickerWidget;->access$2500(Lcom/android/internal/policy/impl/sec/TickerWidget;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 489
    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/TickerWidget$8;->this$0:Lcom/android/internal/policy/impl/sec/TickerWidget;

    #getter for: Lcom/android/internal/policy/impl/sec/TickerWidget;->mHandleRefreshImage:Landroid/widget/ImageView;
    invoke-static {v1}, Lcom/android/internal/policy/impl/sec/TickerWidget;->access$1100(Lcom/android/internal/policy/impl/sec/TickerWidget;)Landroid/widget/ImageView;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 492
    :cond_1
    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/TickerWidget$8;->this$0:Lcom/android/internal/policy/impl/sec/TickerWidget;

    #getter for: Lcom/android/internal/policy/impl/sec/TickerWidget;->mHorizontalScrollView:Lcom/android/internal/policy/impl/sec/TickerHorizontalScrollView;
    invoke-static {v1}, Lcom/android/internal/policy/impl/sec/TickerWidget;->access$2100(Lcom/android/internal/policy/impl/sec/TickerWidget;)Lcom/android/internal/policy/impl/sec/TickerHorizontalScrollView;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Lcom/android/internal/policy/impl/sec/TickerHorizontalScrollView;->setVisibility(I)V

    .line 493
    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/TickerWidget$8;->this$0:Lcom/android/internal/policy/impl/sec/TickerWidget;

    #getter for: Lcom/android/internal/policy/impl/sec/TickerWidget;->mHorizontalScrollView:Lcom/android/internal/policy/impl/sec/TickerHorizontalScrollView;
    invoke-static {v1}, Lcom/android/internal/policy/impl/sec/TickerWidget;->access$2100(Lcom/android/internal/policy/impl/sec/TickerWidget;)Lcom/android/internal/policy/impl/sec/TickerHorizontalScrollView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/sec/TickerHorizontalScrollView;->stopAutoScroll()V

    .line 496
    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/TickerWidget$8;->this$0:Lcom/android/internal/policy/impl/sec/TickerWidget;

    #getter for: Lcom/android/internal/policy/impl/sec/TickerWidget;->mHorizontalScrollView:Lcom/android/internal/policy/impl/sec/TickerHorizontalScrollView;
    invoke-static {v1}, Lcom/android/internal/policy/impl/sec/TickerWidget;->access$2100(Lcom/android/internal/policy/impl/sec/TickerWidget;)Lcom/android/internal/policy/impl/sec/TickerHorizontalScrollView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/sec/TickerHorizontalScrollView;->getCurrentPage()I

    move-result v0

    .line 497
    .local v0, currentPage:I
    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/TickerWidget$8;->this$0:Lcom/android/internal/policy/impl/sec/TickerWidget;

    #getter for: Lcom/android/internal/policy/impl/sec/TickerWidget;->mVerticalScrollView:Lcom/android/internal/policy/impl/sec/TickerScrollView;
    invoke-static {v1}, Lcom/android/internal/policy/impl/sec/TickerWidget;->access$2000(Lcom/android/internal/policy/impl/sec/TickerWidget;)Lcom/android/internal/policy/impl/sec/TickerScrollView;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/internal/policy/impl/sec/TickerScrollView;->moveToPage(I)V

    .line 498
    return-void
.end method
