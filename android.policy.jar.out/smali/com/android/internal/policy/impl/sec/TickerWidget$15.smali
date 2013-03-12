.class Lcom/android/internal/policy/impl/sec/TickerWidget$15;
.super Ljava/lang/Object;
.source "TickerWidget.java"

# interfaces
.implements Lcom/android/internal/policy/impl/sec/TickerCallback;


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
    .line 570
    iput-object p1, p0, Lcom/android/internal/policy/impl/sec/TickerWidget$15;->this$0:Lcom/android/internal/policy/impl/sec/TickerWidget;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public closeTickerSlidingDrawer()V
    .locals 1

    .prologue
    .line 576
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/TickerWidget$15;->this$0:Lcom/android/internal/policy/impl/sec/TickerWidget;

    #getter for: Lcom/android/internal/policy/impl/sec/TickerWidget;->mTickerSlidingDrawer:Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer;
    invoke-static {v0}, Lcom/android/internal/policy/impl/sec/TickerWidget;->access$1000(Lcom/android/internal/policy/impl/sec/TickerWidget;)Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer;->animateClose()V

    .line 577
    return-void
.end method

.method public goToUnlockScreen()V
    .locals 1

    .prologue
    .line 581
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/TickerWidget$15;->this$0:Lcom/android/internal/policy/impl/sec/TickerWidget;

    #getter for: Lcom/android/internal/policy/impl/sec/TickerWidget;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;
    invoke-static {v0}, Lcom/android/internal/policy/impl/sec/TickerWidget;->access$1700(Lcom/android/internal/policy/impl/sec/TickerWidget;)Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->goToUnlockScreen()V

    .line 582
    return-void
.end method

.method public openTickerSlidingDrawer()V
    .locals 1

    .prologue
    .line 572
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/TickerWidget$15;->this$0:Lcom/android/internal/policy/impl/sec/TickerWidget;

    #getter for: Lcom/android/internal/policy/impl/sec/TickerWidget;->mTickerSlidingDrawer:Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer;
    invoke-static {v0}, Lcom/android/internal/policy/impl/sec/TickerWidget;->access$1000(Lcom/android/internal/policy/impl/sec/TickerWidget;)Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer;->animateOpen()V

    .line 573
    return-void
.end method

.method public pokeWakelock()V
    .locals 1

    .prologue
    .line 586
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/TickerWidget$15;->this$0:Lcom/android/internal/policy/impl/sec/TickerWidget;

    #getter for: Lcom/android/internal/policy/impl/sec/TickerWidget;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;
    invoke-static {v0}, Lcom/android/internal/policy/impl/sec/TickerWidget;->access$1700(Lcom/android/internal/policy/impl/sec/TickerWidget;)Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->pokeWakelock()V

    .line 587
    return-void
.end method
