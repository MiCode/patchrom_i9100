.class Lcom/android/internal/widget/PenGestureView$5;
.super Ljava/lang/Object;
.source "PenGestureView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/widget/PenGestureView;->injectionKeyEvent(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/widget/PenGestureView;

.field final synthetic val$key:I


# direct methods
.method constructor <init>(Lcom/android/internal/widget/PenGestureView;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 183
    iput-object p1, p0, Lcom/android/internal/widget/PenGestureView$5;->this$0:Lcom/android/internal/widget/PenGestureView;

    iput p2, p0, Lcom/android/internal/widget/PenGestureView$5;->val$key:I

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 185
    iget-object v0, p0, Lcom/android/internal/widget/PenGestureView$5;->this$0:Lcom/android/internal/widget/PenGestureView;

    iget-object v0, v0, Lcom/android/internal/widget/PenGestureView;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/internal/widget/PenGestureView$5;->this$0:Lcom/android/internal/widget/PenGestureView;

    iget-object v1, v1, Lcom/android/internal/widget/PenGestureView;->mPenLongPress:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 186
    const-string v0, "PenGesture"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PenGestureView.mPenGestureEventDispatchThread : Thread="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", ThreadName="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    iget-object v0, p0, Lcom/android/internal/widget/PenGestureView$5;->this$0:Lcom/android/internal/widget/PenGestureView;

    iget-object v0, v0, Lcom/android/internal/widget/PenGestureView;->mInstrumentation:Landroid/app/Instrumentation;

    if-eqz v0, :cond_0

    .line 190
    const-string v0, "PenGesture"

    const-string v1, "PenGestureView$Runnable.mPenGestureEventDispatchThread : before mInstrumentation.sendKeyDownUpSync(key)"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    iget-object v0, p0, Lcom/android/internal/widget/PenGestureView$5;->this$0:Lcom/android/internal/widget/PenGestureView;

    iget-object v0, v0, Lcom/android/internal/widget/PenGestureView;->mInstrumentation:Landroid/app/Instrumentation;

    iget v1, p0, Lcom/android/internal/widget/PenGestureView$5;->val$key:I

    invoke-virtual {v0, v1}, Landroid/app/Instrumentation;->sendKeyDownUpSync(I)V

    .line 193
    const-string v0, "PenGesture"

    const-string v1, "PenGestureView$Runnable.mPenGestureEventDispatchThread : after mInstrumentation.sendKeyDownUpSync(key)"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 196
    :cond_0
    return-void
.end method
