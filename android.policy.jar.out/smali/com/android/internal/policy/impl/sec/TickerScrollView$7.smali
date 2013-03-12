.class Lcom/android/internal/policy/impl/sec/TickerScrollView$7;
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
    .line 309
    iput-object p1, p0, Lcom/android/internal/policy/impl/sec/TickerScrollView$7;->this$0:Lcom/android/internal/policy/impl/sec/TickerScrollView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 312
    invoke-static {}, Lcom/android/internal/policy/impl/sec/SamsungLockScreenProperties;->isSinaEnable()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 313
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.sec.android.app.sns3.sinaweibo.SSOSetupAccount"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 314
    .local v0, intent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/TickerScrollView$7;->this$0:Lcom/android/internal/policy/impl/sec/TickerScrollView;

    #getter for: Lcom/android/internal/policy/impl/sec/TickerScrollView;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/internal/policy/impl/sec/TickerScrollView;->access$000(Lcom/android/internal/policy/impl/sec/TickerScrollView;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 319
    .end local v0           #intent:Landroid/content/Intent;
    :goto_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/TickerScrollView$7;->this$0:Lcom/android/internal/policy/impl/sec/TickerScrollView;

    #getter for: Lcom/android/internal/policy/impl/sec/TickerScrollView;->mTickerCallback:Lcom/android/internal/policy/impl/sec/TickerCallback;
    invoke-static {v1}, Lcom/android/internal/policy/impl/sec/TickerScrollView;->access$200(Lcom/android/internal/policy/impl/sec/TickerScrollView;)Lcom/android/internal/policy/impl/sec/TickerCallback;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/policy/impl/sec/TickerCallback;->goToUnlockScreen()V

    .line 320
    return-void

    .line 316
    :cond_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/TickerScrollView$7;->this$0:Lcom/android/internal/policy/impl/sec/TickerScrollView;

    iget-object v1, v1, Lcom/android/internal/policy/impl/sec/TickerScrollView;->mAccountThread:Lcom/android/internal/policy/impl/sec/TickerScrollView$AccountThread;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/sec/TickerScrollView$AccountThread;->start()V

    goto :goto_0
.end method
