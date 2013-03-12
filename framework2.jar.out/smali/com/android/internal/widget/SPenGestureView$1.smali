.class Lcom/android/internal/widget/SPenGestureView$1;
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
    .line 363
    iput-object p1, p0, Lcom/android/internal/widget/SPenGestureView$1;->this$0:Lcom/android/internal/widget/SPenGestureView;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 365
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 366
    .local v0, action:Ljava/lang/String;
    const-string v1, "android.intent.action.SINGLE_SCREEN_CAPTURE_ON"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 367
    iget-object v1, p0, Lcom/android/internal/widget/SPenGestureView$1;->this$0:Lcom/android/internal/widget/SPenGestureView;

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/android/internal/widget/SPenGestureView;->mScreenCaptureOn:Z

    .line 372
    :cond_0
    :goto_0
    return-void

    .line 368
    :cond_1
    const-string v1, "android.intent.action.SINGLE_SCREEN_CAPTURE_OFF"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 369
    iget-object v1, p0, Lcom/android/internal/widget/SPenGestureView$1;->this$0:Lcom/android/internal/widget/SPenGestureView;

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/android/internal/widget/SPenGestureView;->mScreenCaptureOn:Z

    goto :goto_0
.end method
