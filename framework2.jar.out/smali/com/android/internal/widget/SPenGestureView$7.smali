.class Lcom/android/internal/widget/SPenGestureView$7;
.super Ljava/lang/Object;
.source "SPenGestureView.java"

# interfaces
.implements Ljava/lang/Runnable;


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
    .line 813
    iput-object p1, p0, Lcom/android/internal/widget/SPenGestureView$7;->this$0:Lcom/android/internal/widget/SPenGestureView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 816
    :try_start_0
    iget-object v2, p0, Lcom/android/internal/widget/SPenGestureView$7;->this$0:Lcom/android/internal/widget/SPenGestureView;

    iget-object v3, p0, Lcom/android/internal/widget/SPenGestureView$7;->this$0:Lcom/android/internal/widget/SPenGestureView;

    #getter for: Lcom/android/internal/widget/SPenGestureView;->mGesturePadBlockTaskList:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/android/internal/widget/SPenGestureView;->access$2400(Lcom/android/internal/widget/SPenGestureView;)Ljava/util/ArrayList;

    move-result-object v3

    #calls: Lcom/android/internal/widget/SPenGestureView;->isTopActivity(Ljava/util/ArrayList;)Z
    invoke-static {v2, v3}, Lcom/android/internal/widget/SPenGestureView;->access$2500(Lcom/android/internal/widget/SPenGestureView;Ljava/util/ArrayList;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 817
    const-string v2, "SPenGesture"

    const-string v3, "gesturepad is live!!!"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 840
    :goto_0
    return-void

    .line 821
    :cond_0
    iget-object v2, p0, Lcom/android/internal/widget/SPenGestureView$7;->this$0:Lcom/android/internal/widget/SPenGestureView;

    #calls: Lcom/android/internal/widget/SPenGestureView;->isLockScreenShowing()Z
    invoke-static {v2}, Lcom/android/internal/widget/SPenGestureView;->access$1200(Lcom/android/internal/widget/SPenGestureView;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 822
    const-string v2, "SPenGesture"

    const-string v3, "Now keyguard is on!!!"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 837
    :catch_0
    move-exception v1

    .line 838
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 826
    .end local v1           #e:Ljava/lang/Exception;
    :cond_1
    :try_start_1
    const-string v2, "SPenGesture"

    const-string v3, "Gesture Pad!"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 828
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 829
    .local v0, dvfsLockIntent:Landroid/content/Intent;
    const-string v2, "com.sec.android.intent.action.DVFS_BOOSTER"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 830
    const-string v2, "PACKAGE"

    const-string v3, "com.sec.android.gesturepad"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 831
    const-string v2, "CPU"

    const-string v3, "MAX"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 832
    const-string v2, "CPU_CORE_NUM"

    const-string v3, "4"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 833
    const-string v2, "DURATION"

    const-string v3, "1500"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 834
    iget-object v2, p0, Lcom/android/internal/widget/SPenGestureView$7;->this$0:Lcom/android/internal/widget/SPenGestureView;

    #getter for: Lcom/android/internal/widget/SPenGestureView;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/internal/widget/SPenGestureView;->access$200(Lcom/android/internal/widget/SPenGestureView;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 836
    iget-object v2, p0, Lcom/android/internal/widget/SPenGestureView$7;->this$0:Lcom/android/internal/widget/SPenGestureView;

    invoke-virtual {v2}, Lcom/android/internal/widget/SPenGestureView;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/widget/SPenGestureView$7;->this$0:Lcom/android/internal/widget/SPenGestureView;

    #getter for: Lcom/android/internal/widget/SPenGestureView;->mGesturePadIntent:Landroid/content/Intent;
    invoke-static {v3}, Lcom/android/internal/widget/SPenGestureView;->access$2600(Lcom/android/internal/widget/SPenGestureView;)Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method
