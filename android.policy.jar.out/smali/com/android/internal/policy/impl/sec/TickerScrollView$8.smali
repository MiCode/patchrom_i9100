.class Lcom/android/internal/policy/impl/sec/TickerScrollView$8;
.super Ljava/lang/Object;
.source "TickerScrollView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/sec/TickerScrollView;->createMessage(Landroid/content/Context;Ljava/lang/String;Lcom/android/internal/policy/impl/sec/TickerUtil$TickerStatus;)Landroid/widget/FrameLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/sec/TickerScrollView;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/sec/TickerScrollView;)V
    .locals 0
    .parameter

    .prologue
    .line 325
    iput-object p1, p0, Lcom/android/internal/policy/impl/sec/TickerScrollView$8;->this$0:Lcom/android/internal/policy/impl/sec/TickerScrollView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 328
    invoke-static {}, Lcom/android/internal/policy/impl/sec/SamsungLockScreenProperties;->isSinaEnable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 329
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/TickerScrollView$8;->this$0:Lcom/android/internal/policy/impl/sec/TickerScrollView;

    iget-object v0, v0, Lcom/android/internal/policy/impl/sec/TickerScrollView;->mAccountThread:Lcom/android/internal/policy/impl/sec/TickerScrollView$AccountThread;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/sec/TickerScrollView$AccountThread;->start()V

    .line 332
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/TickerScrollView$8;->this$0:Lcom/android/internal/policy/impl/sec/TickerScrollView;

    #getter for: Lcom/android/internal/policy/impl/sec/TickerScrollView;->mTickerCallback:Lcom/android/internal/policy/impl/sec/TickerCallback;
    invoke-static {v0}, Lcom/android/internal/policy/impl/sec/TickerScrollView;->access$200(Lcom/android/internal/policy/impl/sec/TickerScrollView;)Lcom/android/internal/policy/impl/sec/TickerCallback;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/policy/impl/sec/TickerCallback;->goToUnlockScreen()V

    .line 333
    return-void
.end method
