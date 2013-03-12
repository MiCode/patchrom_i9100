.class Lcom/android/internal/policy/impl/sec/TickerWidget$12;
.super Ljava/lang/Object;
.source "TickerWidget.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


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
    .line 543
    iput-object p1, p0, Lcom/android/internal/policy/impl/sec/TickerWidget$12;->this$0:Lcom/android/internal/policy/impl/sec/TickerWidget;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "view"
    .parameter "event"

    .prologue
    .line 546
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/TickerWidget$12;->this$0:Lcom/android/internal/policy/impl/sec/TickerWidget;

    #getter for: Lcom/android/internal/policy/impl/sec/TickerWidget;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;
    invoke-static {v0}, Lcom/android/internal/policy/impl/sec/TickerWidget;->access$1700(Lcom/android/internal/policy/impl/sec/TickerWidget;)Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->pokeWakelock()V

    .line 547
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/TickerWidget$12;->this$0:Lcom/android/internal/policy/impl/sec/TickerWidget;

    #getter for: Lcom/android/internal/policy/impl/sec/TickerWidget;->mUnlockWidget:Lcom/android/internal/policy/impl/sec/CircleUnlockRipple;
    invoke-static {v0}, Lcom/android/internal/policy/impl/sec/TickerWidget;->access$2300(Lcom/android/internal/policy/impl/sec/TickerWidget;)Lcom/android/internal/policy/impl/sec/CircleUnlockRipple;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 548
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/TickerWidget$12;->this$0:Lcom/android/internal/policy/impl/sec/TickerWidget;

    #getter for: Lcom/android/internal/policy/impl/sec/TickerWidget;->mUnlockWidget:Lcom/android/internal/policy/impl/sec/CircleUnlockRipple;
    invoke-static {v0}, Lcom/android/internal/policy/impl/sec/TickerWidget;->access$2300(Lcom/android/internal/policy/impl/sec/TickerWidget;)Lcom/android/internal/policy/impl/sec/CircleUnlockRipple;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/android/internal/policy/impl/sec/CircleUnlockRipple;->handleTickerTouchEvent(Landroid/view/MotionEvent;)V

    .line 549
    :cond_0
    const/4 v0, 0x0

    return v0
.end method
