.class Lcom/android/internal/widget/SPenGestureView$2;
.super Landroid/content/BroadcastReceiver;
.source "SPenGestureView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/widget/SPenGestureView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/widget/SPenGestureView;


# direct methods
.method constructor <init>(Lcom/android/internal/widget/SPenGestureView;)V
    .locals 0
    .parameter

    .prologue
    .line 376
    iput-object p1, p0, Lcom/android/internal/widget/SPenGestureView$2;->this$0:Lcom/android/internal/widget/SPenGestureView;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v3, 0x1

    .line 378
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 379
    .local v0, action:Ljava/lang/String;
    const-string v1, "android.intent.action.MEDIA_SCANNER_FINISHED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 380
    iget-object v1, p0, Lcom/android/internal/widget/SPenGestureView$2;->this$0:Lcom/android/internal/widget/SPenGestureView;

    #getter for: Lcom/android/internal/widget/SPenGestureView;->mIsFirstMediaScan:Z
    invoke-static {v1}, Lcom/android/internal/widget/SPenGestureView;->access$000(Lcom/android/internal/widget/SPenGestureView;)Z

    move-result v1

    if-ne v1, v3, :cond_1

    .line 381
    const-string v1, "SPenGesture"

    const-string v2, "First media scan"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 382
    iget-object v1, p0, Lcom/android/internal/widget/SPenGestureView$2;->this$0:Lcom/android/internal/widget/SPenGestureView;

    const/4 v2, 0x0

    #setter for: Lcom/android/internal/widget/SPenGestureView;->mIsFirstMediaScan:Z
    invoke-static {v1, v2}, Lcom/android/internal/widget/SPenGestureView;->access$002(Lcom/android/internal/widget/SPenGestureView;Z)Z

    .line 392
    :cond_0
    :goto_0
    return-void

    .line 385
    :cond_1
    const-string v1, "SPenGesture"

    const-string v2, "Second media scan"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 386
    iget-object v1, p0, Lcom/android/internal/widget/SPenGestureView$2;->this$0:Lcom/android/internal/widget/SPenGestureView;

    #getter for: Lcom/android/internal/widget/SPenGestureView;->mIsSendingBootMsg:Z
    invoke-static {v1}, Lcom/android/internal/widget/SPenGestureView;->access$100(Lcom/android/internal/widget/SPenGestureView;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 387
    iget-object v1, p0, Lcom/android/internal/widget/SPenGestureView$2;->this$0:Lcom/android/internal/widget/SPenGestureView;

    #setter for: Lcom/android/internal/widget/SPenGestureView;->mIsSendingBootMsg:Z
    invoke-static {v1, v3}, Lcom/android/internal/widget/SPenGestureView;->access$102(Lcom/android/internal/widget/SPenGestureView;Z)Z

    .line 388
    const-string v1, "SPenGesture"

    const-string v2, "coppping will be enabled..."

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
