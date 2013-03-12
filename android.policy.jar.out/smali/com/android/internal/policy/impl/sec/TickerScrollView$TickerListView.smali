.class public Lcom/android/internal/policy/impl/sec/TickerScrollView$TickerListView;
.super Landroid/widget/ListView;
.source "TickerScrollView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/sec/TickerScrollView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "TickerListView"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/sec/TickerScrollView;


# direct methods
.method public constructor <init>(Lcom/android/internal/policy/impl/sec/TickerScrollView;Landroid/content/Context;)V
    .locals 1
    .parameter
    .parameter "context"

    .prologue
    const/4 v0, 0x0

    .line 116
    iput-object p1, p0, Lcom/android/internal/policy/impl/sec/TickerScrollView$TickerListView;->this$0:Lcom/android/internal/policy/impl/sec/TickerScrollView;

    .line 117
    invoke-direct {p0, p2}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    .line 118
    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/sec/TickerScrollView$TickerListView;->setFocusable(Z)V

    .line 119
    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/sec/TickerScrollView$TickerListView;->setFocusableInTouchMode(Z)V

    .line 120
    return-void
.end method


# virtual methods
.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .parameter "arg0"

    .prologue
    .line 123
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/TickerScrollView$TickerListView;->this$0:Lcom/android/internal/policy/impl/sec/TickerScrollView;

    #getter for: Lcom/android/internal/policy/impl/sec/TickerScrollView;->mTickerCallback:Lcom/android/internal/policy/impl/sec/TickerCallback;
    invoke-static {v0}, Lcom/android/internal/policy/impl/sec/TickerScrollView;->access$200(Lcom/android/internal/policy/impl/sec/TickerScrollView;)Lcom/android/internal/policy/impl/sec/TickerCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    .line 124
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/TickerScrollView$TickerListView;->this$0:Lcom/android/internal/policy/impl/sec/TickerScrollView;

    #getter for: Lcom/android/internal/policy/impl/sec/TickerScrollView;->mTickerCallback:Lcom/android/internal/policy/impl/sec/TickerCallback;
    invoke-static {v0}, Lcom/android/internal/policy/impl/sec/TickerScrollView;->access$200(Lcom/android/internal/policy/impl/sec/TickerScrollView;)Lcom/android/internal/policy/impl/sec/TickerCallback;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/policy/impl/sec/TickerCallback;->pokeWakelock()V

    .line 125
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/ListView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method
