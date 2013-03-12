.class Lcom/android/internal/policy/impl/sec/TickerWidget$7;
.super Ljava/lang/Object;
.source "TickerWidget.java"

# interfaces
.implements Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer$OnDrawerScrollListener;


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
    .line 449
    iput-object p1, p0, Lcom/android/internal/policy/impl/sec/TickerWidget$7;->this$0:Lcom/android/internal/policy/impl/sec/TickerWidget;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationFinished()V
    .locals 2

    .prologue
    .line 467
    const-string v0, "TickerWidget"

    const-string v1, "onAnimationFinished"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 468
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/TickerWidget$7;->this$0:Lcom/android/internal/policy/impl/sec/TickerWidget;

    #getter for: Lcom/android/internal/policy/impl/sec/TickerWidget;->mTickerSlidingDrawer:Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer;
    invoke-static {v0}, Lcom/android/internal/policy/impl/sec/TickerWidget;->access$1000(Lcom/android/internal/policy/impl/sec/TickerWidget;)Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer;->isOpened()Z

    move-result v0

    if-nez v0, :cond_0

    .line 469
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/TickerWidget$7;->this$0:Lcom/android/internal/policy/impl/sec/TickerWidget;

    #getter for: Lcom/android/internal/policy/impl/sec/TickerWidget;->mIsDataReady:Z
    invoke-static {v0}, Lcom/android/internal/policy/impl/sec/TickerWidget;->access$2200(Lcom/android/internal/policy/impl/sec/TickerWidget;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 470
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/TickerWidget$7;->this$0:Lcom/android/internal/policy/impl/sec/TickerWidget;

    #getter for: Lcom/android/internal/policy/impl/sec/TickerWidget;->mHorizontalScrollView:Lcom/android/internal/policy/impl/sec/TickerHorizontalScrollView;
    invoke-static {v0}, Lcom/android/internal/policy/impl/sec/TickerWidget;->access$2100(Lcom/android/internal/policy/impl/sec/TickerWidget;)Lcom/android/internal/policy/impl/sec/TickerHorizontalScrollView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/sec/TickerHorizontalScrollView;->setVisibility(I)V

    .line 471
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/TickerWidget$7;->this$0:Lcom/android/internal/policy/impl/sec/TickerWidget;

    #getter for: Lcom/android/internal/policy/impl/sec/TickerWidget;->mHorizontalScrollView:Lcom/android/internal/policy/impl/sec/TickerHorizontalScrollView;
    invoke-static {v0}, Lcom/android/internal/policy/impl/sec/TickerWidget;->access$2100(Lcom/android/internal/policy/impl/sec/TickerWidget;)Lcom/android/internal/policy/impl/sec/TickerHorizontalScrollView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/sec/TickerHorizontalScrollView;->startAutoScroll()V

    .line 474
    :cond_0
    return-void
.end method

.method public onScrollEnded()V
    .locals 2

    .prologue
    .line 462
    const-string v0, "TickerWidget"

    const-string v1, "onScrollEnded"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 463
    return-void
.end method

.method public onScrollStarted()V
    .locals 2

    .prologue
    .line 453
    const-string v0, "TickerWidget"

    const-string v1, "onScrollStarted"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 454
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/TickerWidget$7;->this$0:Lcom/android/internal/policy/impl/sec/TickerWidget;

    #getter for: Lcom/android/internal/policy/impl/sec/TickerWidget;->mTickerSlidingDrawer:Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer;
    invoke-static {v0}, Lcom/android/internal/policy/impl/sec/TickerWidget;->access$1000(Lcom/android/internal/policy/impl/sec/TickerWidget;)Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer;->isOpened()Z

    move-result v0

    if-nez v0, :cond_0

    .line 455
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/TickerWidget$7;->this$0:Lcom/android/internal/policy/impl/sec/TickerWidget;

    #getter for: Lcom/android/internal/policy/impl/sec/TickerWidget;->mHorizontalScrollView:Lcom/android/internal/policy/impl/sec/TickerHorizontalScrollView;
    invoke-static {v0}, Lcom/android/internal/policy/impl/sec/TickerWidget;->access$2100(Lcom/android/internal/policy/impl/sec/TickerWidget;)Lcom/android/internal/policy/impl/sec/TickerHorizontalScrollView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/sec/TickerHorizontalScrollView;->setVisibility(I)V

    .line 456
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/TickerWidget$7;->this$0:Lcom/android/internal/policy/impl/sec/TickerWidget;

    #getter for: Lcom/android/internal/policy/impl/sec/TickerWidget;->mHorizontalScrollView:Lcom/android/internal/policy/impl/sec/TickerHorizontalScrollView;
    invoke-static {v0}, Lcom/android/internal/policy/impl/sec/TickerWidget;->access$2100(Lcom/android/internal/policy/impl/sec/TickerWidget;)Lcom/android/internal/policy/impl/sec/TickerHorizontalScrollView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/sec/TickerHorizontalScrollView;->stopAutoScroll()V

    .line 458
    :cond_0
    return-void
.end method
