.class Lcom/android/internal/policy/impl/sec/TickerWidget$9;
.super Ljava/lang/Object;
.source "TickerWidget.java"

# interfaces
.implements Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer$OnDrawerCloseListener;


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
    .line 501
    iput-object p1, p0, Lcom/android/internal/policy/impl/sec/TickerWidget$9;->this$0:Lcom/android/internal/policy/impl/sec/TickerWidget;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDrawerClosed()V
    .locals 2

    .prologue
    .line 504
    const-string v0, "TickerWidget"

    const-string v1, "onDrawerClosed"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 506
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/TickerWidget$9;->this$0:Lcom/android/internal/policy/impl/sec/TickerWidget;

    #getter for: Lcom/android/internal/policy/impl/sec/TickerWidget;->mUnlockWidget:Lcom/android/internal/policy/impl/sec/CircleUnlockRipple;
    invoke-static {v0}, Lcom/android/internal/policy/impl/sec/TickerWidget;->access$2300(Lcom/android/internal/policy/impl/sec/TickerWidget;)Lcom/android/internal/policy/impl/sec/CircleUnlockRipple;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 507
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/TickerWidget$9;->this$0:Lcom/android/internal/policy/impl/sec/TickerWidget;

    #getter for: Lcom/android/internal/policy/impl/sec/TickerWidget;->mUnlockWidget:Lcom/android/internal/policy/impl/sec/CircleUnlockRipple;
    invoke-static {v0}, Lcom/android/internal/policy/impl/sec/TickerWidget;->access$2300(Lcom/android/internal/policy/impl/sec/TickerWidget;)Lcom/android/internal/policy/impl/sec/CircleUnlockRipple;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/sec/CircleUnlockRipple;->tikerRippleForClose()V

    .line 510
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/TickerWidget$9;->this$0:Lcom/android/internal/policy/impl/sec/TickerWidget;

    #getter for: Lcom/android/internal/policy/impl/sec/TickerWidget;->mHandleArrowImage:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/android/internal/policy/impl/sec/TickerWidget;->access$2400(Lcom/android/internal/policy/impl/sec/TickerWidget;)Landroid/widget/ImageView;

    move-result-object v0

    const v1, 0x1080478

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 511
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/TickerWidget$9;->this$0:Lcom/android/internal/policy/impl/sec/TickerWidget;

    #getter for: Lcom/android/internal/policy/impl/sec/TickerWidget;->mHandleRefreshImage:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/android/internal/policy/impl/sec/TickerWidget;->access$1100(Lcom/android/internal/policy/impl/sec/TickerWidget;)Landroid/widget/ImageView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 513
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/TickerWidget$9;->this$0:Lcom/android/internal/policy/impl/sec/TickerWidget;

    #getter for: Lcom/android/internal/policy/impl/sec/TickerWidget;->mIsDataReady:Z
    invoke-static {v0}, Lcom/android/internal/policy/impl/sec/TickerWidget;->access$2200(Lcom/android/internal/policy/impl/sec/TickerWidget;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 515
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/TickerWidget$9;->this$0:Lcom/android/internal/policy/impl/sec/TickerWidget;

    #getter for: Lcom/android/internal/policy/impl/sec/TickerWidget;->mHorizontalScrollView:Lcom/android/internal/policy/impl/sec/TickerHorizontalScrollView;
    invoke-static {v0}, Lcom/android/internal/policy/impl/sec/TickerWidget;->access$2100(Lcom/android/internal/policy/impl/sec/TickerWidget;)Lcom/android/internal/policy/impl/sec/TickerHorizontalScrollView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/sec/TickerHorizontalScrollView;->setVisibility(I)V

    .line 516
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/TickerWidget$9;->this$0:Lcom/android/internal/policy/impl/sec/TickerWidget;

    #getter for: Lcom/android/internal/policy/impl/sec/TickerWidget;->mHorizontalScrollView:Lcom/android/internal/policy/impl/sec/TickerHorizontalScrollView;
    invoke-static {v0}, Lcom/android/internal/policy/impl/sec/TickerWidget;->access$2100(Lcom/android/internal/policy/impl/sec/TickerWidget;)Lcom/android/internal/policy/impl/sec/TickerHorizontalScrollView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/sec/TickerHorizontalScrollView;->startAutoScroll()V

    .line 517
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/TickerWidget$9;->this$0:Lcom/android/internal/policy/impl/sec/TickerWidget;

    #getter for: Lcom/android/internal/policy/impl/sec/TickerWidget;->mTickerSlidingDrawer:Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer;
    invoke-static {v0}, Lcom/android/internal/policy/impl/sec/TickerWidget;->access$1000(Lcom/android/internal/policy/impl/sec/TickerWidget;)Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/TickerWidget$9;->this$0:Lcom/android/internal/policy/impl/sec/TickerWidget;

    #getter for: Lcom/android/internal/policy/impl/sec/TickerWidget;->mTickerSlidingDrawer:Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer;
    invoke-static {v1}, Lcom/android/internal/policy/impl/sec/TickerWidget;->access$1000(Lcom/android/internal/policy/impl/sec/TickerWidget;)Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer;->getDefaultBottomOffset()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer;->setBottomOffset(I)V

    .line 518
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/TickerWidget$9;->this$0:Lcom/android/internal/policy/impl/sec/TickerWidget;

    #getter for: Lcom/android/internal/policy/impl/sec/TickerWidget;->mTickerSlidingDrawer:Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer;
    invoke-static {v0}, Lcom/android/internal/policy/impl/sec/TickerWidget;->access$1000(Lcom/android/internal/policy/impl/sec/TickerWidget;)Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer;->invalidate()V

    .line 520
    :cond_1
    return-void
.end method
