.class Lcom/android/internal/policy/impl/sec/TickerWidget$2$6;
.super Ljava/lang/Object;
.source "TickerWidget.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/sec/TickerWidget$2;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/internal/policy/impl/sec/TickerWidget$2;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/sec/TickerWidget$2;)V
    .locals 0
    .parameter

    .prologue
    .line 226
    iput-object p1, p0, Lcom/android/internal/policy/impl/sec/TickerWidget$2$6;->this$1:Lcom/android/internal/policy/impl/sec/TickerWidget$2;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    const/16 v1, 0x12c0

    const/4 v2, 0x0

    .line 228
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/TickerWidget$2$6;->this$1:Lcom/android/internal/policy/impl/sec/TickerWidget$2;

    iget-object v0, v0, Lcom/android/internal/policy/impl/sec/TickerWidget$2;->this$0:Lcom/android/internal/policy/impl/sec/TickerWidget;

    #calls: Lcom/android/internal/policy/impl/sec/TickerWidget;->updateTickerData()V
    invoke-static {v0}, Lcom/android/internal/policy/impl/sec/TickerWidget;->access$700(Lcom/android/internal/policy/impl/sec/TickerWidget;)V

    .line 229
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/TickerWidget$2$6;->this$1:Lcom/android/internal/policy/impl/sec/TickerWidget$2;

    iget-object v0, v0, Lcom/android/internal/policy/impl/sec/TickerWidget$2;->this$0:Lcom/android/internal/policy/impl/sec/TickerWidget;

    #getter for: Lcom/android/internal/policy/impl/sec/TickerWidget;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/internal/policy/impl/sec/TickerWidget;->access$800(Lcom/android/internal/policy/impl/sec/TickerWidget;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 230
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/TickerWidget$2$6;->this$1:Lcom/android/internal/policy/impl/sec/TickerWidget$2;

    iget-object v0, v0, Lcom/android/internal/policy/impl/sec/TickerWidget$2;->this$0:Lcom/android/internal/policy/impl/sec/TickerWidget;

    #getter for: Lcom/android/internal/policy/impl/sec/TickerWidget;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/internal/policy/impl/sec/TickerWidget;->access$800(Lcom/android/internal/policy/impl/sec/TickerWidget;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 231
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/TickerWidget$2$6;->this$1:Lcom/android/internal/policy/impl/sec/TickerWidget$2;

    iget-object v0, v0, Lcom/android/internal/policy/impl/sec/TickerWidget$2;->this$0:Lcom/android/internal/policy/impl/sec/TickerWidget;

    #getter for: Lcom/android/internal/policy/impl/sec/TickerWidget;->mTickerSlidingDrawer:Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer;
    invoke-static {v0}, Lcom/android/internal/policy/impl/sec/TickerWidget;->access$1000(Lcom/android/internal/policy/impl/sec/TickerWidget;)Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer;->isOpened()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 232
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/TickerWidget$2$6;->this$1:Lcom/android/internal/policy/impl/sec/TickerWidget$2;

    iget-object v0, v0, Lcom/android/internal/policy/impl/sec/TickerWidget$2;->this$0:Lcom/android/internal/policy/impl/sec/TickerWidget;

    #getter for: Lcom/android/internal/policy/impl/sec/TickerWidget;->mHandleRefreshImage:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/android/internal/policy/impl/sec/TickerWidget;->access$1100(Lcom/android/internal/policy/impl/sec/TickerWidget;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 233
    :cond_1
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/TickerWidget$2$6;->this$1:Lcom/android/internal/policy/impl/sec/TickerWidget$2;

    iget-object v0, v0, Lcom/android/internal/policy/impl/sec/TickerWidget$2;->this$0:Lcom/android/internal/policy/impl/sec/TickerWidget;

    #getter for: Lcom/android/internal/policy/impl/sec/TickerWidget;->mHandleProgressBar:Landroid/widget/ProgressBar;
    invoke-static {v0}, Lcom/android/internal/policy/impl/sec/TickerWidget;->access$1200(Lcom/android/internal/policy/impl/sec/TickerWidget;)Landroid/widget/ProgressBar;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 235
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/TickerWidget$2$6;->this$1:Lcom/android/internal/policy/impl/sec/TickerWidget$2;

    iget-object v0, v0, Lcom/android/internal/policy/impl/sec/TickerWidget$2;->this$0:Lcom/android/internal/policy/impl/sec/TickerWidget;

    iput-boolean v2, v0, Lcom/android/internal/policy/impl/sec/TickerWidget;->mNewsRefreshing:Z

    .line 236
    return-void
.end method
