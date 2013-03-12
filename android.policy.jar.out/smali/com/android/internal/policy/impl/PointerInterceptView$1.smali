.class Lcom/android/internal/policy/impl/PointerInterceptView$1;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "PointerInterceptView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/PointerInterceptView;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/PointerInterceptView;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/PointerInterceptView;)V
    .locals 0
    .parameter

    .prologue
    .line 87
    iput-object p1, p0, Lcom/android/internal/policy/impl/PointerInterceptView$1;->this$0:Lcom/android/internal/policy/impl/PointerInterceptView;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 7
    .parameter "e"

    .prologue
    const-wide/16 v5, 0xbb8

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 157
    iget-object v0, p0, Lcom/android/internal/policy/impl/PointerInterceptView$1;->this$0:Lcom/android/internal/policy/impl/PointerInterceptView;

    #getter for: Lcom/android/internal/policy/impl/PointerInterceptView;->DEBUG:Z
    invoke-static {v0}, Lcom/android/internal/policy/impl/PointerInterceptView;->access$000(Lcom/android/internal/policy/impl/PointerInterceptView;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 158
    if-eqz p1, :cond_0

    const-string v0, "PointerInterceptView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDown() : x="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " , y = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    :cond_0
    const-string v0, "PointerInterceptView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDown() : mStatusBarExpanded = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/policy/impl/PointerInterceptView$1;->this$0:Lcom/android/internal/policy/impl/PointerInterceptView;

    #getter for: Lcom/android/internal/policy/impl/PointerInterceptView;->mStatusBarExpanded:Z
    invoke-static {v2}, Lcom/android/internal/policy/impl/PointerInterceptView;->access$100(Lcom/android/internal/policy/impl/PointerInterceptView;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " , mReadyStatusBar = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/policy/impl/PointerInterceptView$1;->this$0:Lcom/android/internal/policy/impl/PointerInterceptView;

    #getter for: Lcom/android/internal/policy/impl/PointerInterceptView;->mReadyStatusBar:Z
    invoke-static {v2}, Lcom/android/internal/policy/impl/PointerInterceptView;->access$200(Lcom/android/internal/policy/impl/PointerInterceptView;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " , mReadyStatusBarExpand = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/policy/impl/PointerInterceptView$1;->this$0:Lcom/android/internal/policy/impl/PointerInterceptView;

    #getter for: Lcom/android/internal/policy/impl/PointerInterceptView;->mReadyStatusBarExpand:Z
    invoke-static {v2}, Lcom/android/internal/policy/impl/PointerInterceptView;->access$300(Lcom/android/internal/policy/impl/PointerInterceptView;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " , mStatusBarExpanding = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/policy/impl/PointerInterceptView$1;->this$0:Lcom/android/internal/policy/impl/PointerInterceptView;

    #getter for: Lcom/android/internal/policy/impl/PointerInterceptView;->mStatusBarExpanding:Z
    invoke-static {v2}, Lcom/android/internal/policy/impl/PointerInterceptView;->access$400(Lcom/android/internal/policy/impl/PointerInterceptView;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    :cond_1
    iget-object v0, p0, Lcom/android/internal/policy/impl/PointerInterceptView$1;->this$0:Lcom/android/internal/policy/impl/PointerInterceptView;

    #getter for: Lcom/android/internal/policy/impl/PointerInterceptView;->mStatusBarExpanded:Z
    invoke-static {v0}, Lcom/android/internal/policy/impl/PointerInterceptView;->access$100(Lcom/android/internal/policy/impl/PointerInterceptView;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 198
    :cond_2
    :goto_0
    return v3

    .line 169
    :cond_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v0

    iget-object v1, p0, Lcom/android/internal/policy/impl/PointerInterceptView$1;->this$0:Lcom/android/internal/policy/impl/PointerInterceptView;

    #getter for: Lcom/android/internal/policy/impl/PointerInterceptView;->mStatusBarHeight:I
    invoke-static {v1}, Lcom/android/internal/policy/impl/PointerInterceptView;->access$800(Lcom/android/internal/policy/impl/PointerInterceptView;)I

    move-result v1

    int-to-float v1, v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_4

    .line 170
    iget-object v0, p0, Lcom/android/internal/policy/impl/PointerInterceptView$1;->this$0:Lcom/android/internal/policy/impl/PointerInterceptView;

    #getter for: Lcom/android/internal/policy/impl/PointerInterceptView;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/internal/policy/impl/PointerInterceptView;->access$500(Lcom/android/internal/policy/impl/PointerInterceptView;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/policy/impl/PointerInterceptView$1;->this$0:Lcom/android/internal/policy/impl/PointerInterceptView;

    iget-object v1, v1, Lcom/android/internal/policy/impl/PointerInterceptView;->mDefaultHide:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 171
    iget-object v0, p0, Lcom/android/internal/policy/impl/PointerInterceptView$1;->this$0:Lcom/android/internal/policy/impl/PointerInterceptView;

    #getter for: Lcom/android/internal/policy/impl/PointerInterceptView;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/internal/policy/impl/PointerInterceptView;->access$500(Lcom/android/internal/policy/impl/PointerInterceptView;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/policy/impl/PointerInterceptView$1;->this$0:Lcom/android/internal/policy/impl/PointerInterceptView;

    iget-object v1, v1, Lcom/android/internal/policy/impl/PointerInterceptView;->mAnimatingHide:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 172
    iget-object v0, p0, Lcom/android/internal/policy/impl/PointerInterceptView$1;->this$0:Lcom/android/internal/policy/impl/PointerInterceptView;

    #setter for: Lcom/android/internal/policy/impl/PointerInterceptView;->mReadyStatusBar:Z
    invoke-static {v0, v3}, Lcom/android/internal/policy/impl/PointerInterceptView;->access$202(Lcom/android/internal/policy/impl/PointerInterceptView;Z)Z

    .line 174
    iget-object v0, p0, Lcom/android/internal/policy/impl/PointerInterceptView$1;->this$0:Lcom/android/internal/policy/impl/PointerInterceptView;

    #getter for: Lcom/android/internal/policy/impl/PointerInterceptView;->mReadyStatusBarExpand:Z
    invoke-static {v0}, Lcom/android/internal/policy/impl/PointerInterceptView;->access$300(Lcom/android/internal/policy/impl/PointerInterceptView;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/internal/policy/impl/PointerInterceptView$1;->this$0:Lcom/android/internal/policy/impl/PointerInterceptView;

    #getter for: Lcom/android/internal/policy/impl/PointerInterceptView;->mStatusBarExpanding:Z
    invoke-static {v0}, Lcom/android/internal/policy/impl/PointerInterceptView;->access$400(Lcom/android/internal/policy/impl/PointerInterceptView;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 176
    iget-object v0, p0, Lcom/android/internal/policy/impl/PointerInterceptView$1;->this$0:Lcom/android/internal/policy/impl/PointerInterceptView;

    #getter for: Lcom/android/internal/policy/impl/PointerInterceptView;->mIsStatusBarExpandEnabled:Z
    invoke-static {v0}, Lcom/android/internal/policy/impl/PointerInterceptView;->access$700(Lcom/android/internal/policy/impl/PointerInterceptView;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 177
    iget-object v0, p0, Lcom/android/internal/policy/impl/PointerInterceptView$1;->this$0:Lcom/android/internal/policy/impl/PointerInterceptView;

    #getter for: Lcom/android/internal/policy/impl/PointerInterceptView;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/internal/policy/impl/PointerInterceptView;->access$500(Lcom/android/internal/policy/impl/PointerInterceptView;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/policy/impl/PointerInterceptView$1;->this$0:Lcom/android/internal/policy/impl/PointerInterceptView;

    iget-object v1, v1, Lcom/android/internal/policy/impl/PointerInterceptView;->mDefaultHide:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, v5, v6}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 184
    :cond_4
    iget-object v0, p0, Lcom/android/internal/policy/impl/PointerInterceptView$1;->this$0:Lcom/android/internal/policy/impl/PointerInterceptView;

    #getter for: Lcom/android/internal/policy/impl/PointerInterceptView;->mReadyStatusBarExpand:Z
    invoke-static {v0}, Lcom/android/internal/policy/impl/PointerInterceptView;->access$300(Lcom/android/internal/policy/impl/PointerInterceptView;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 186
    iget-object v0, p0, Lcom/android/internal/policy/impl/PointerInterceptView$1;->this$0:Lcom/android/internal/policy/impl/PointerInterceptView;

    #getter for: Lcom/android/internal/policy/impl/PointerInterceptView;->mStatusBarExpanding:Z
    invoke-static {v0}, Lcom/android/internal/policy/impl/PointerInterceptView;->access$400(Lcom/android/internal/policy/impl/PointerInterceptView;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 187
    iget-object v0, p0, Lcom/android/internal/policy/impl/PointerInterceptView$1;->this$0:Lcom/android/internal/policy/impl/PointerInterceptView;

    invoke-virtual {v0, v4}, Lcom/android/internal/policy/impl/PointerInterceptView;->sendCallbackFunc(Z)V

    goto :goto_0

    .line 190
    :cond_5
    iget-object v0, p0, Lcom/android/internal/policy/impl/PointerInterceptView$1;->this$0:Lcom/android/internal/policy/impl/PointerInterceptView;

    #getter for: Lcom/android/internal/policy/impl/PointerInterceptView;->mStatusBarExpanded:Z
    invoke-static {v0}, Lcom/android/internal/policy/impl/PointerInterceptView;->access$100(Lcom/android/internal/policy/impl/PointerInterceptView;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 191
    iget-object v0, p0, Lcom/android/internal/policy/impl/PointerInterceptView$1;->this$0:Lcom/android/internal/policy/impl/PointerInterceptView;

    #getter for: Lcom/android/internal/policy/impl/PointerInterceptView;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/internal/policy/impl/PointerInterceptView;->access$500(Lcom/android/internal/policy/impl/PointerInterceptView;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/policy/impl/PointerInterceptView$1;->this$0:Lcom/android/internal/policy/impl/PointerInterceptView;

    iget-object v1, v1, Lcom/android/internal/policy/impl/PointerInterceptView;->mDefaultHide:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 192
    iget-object v0, p0, Lcom/android/internal/policy/impl/PointerInterceptView$1;->this$0:Lcom/android/internal/policy/impl/PointerInterceptView;

    #getter for: Lcom/android/internal/policy/impl/PointerInterceptView;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/internal/policy/impl/PointerInterceptView;->access$500(Lcom/android/internal/policy/impl/PointerInterceptView;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/policy/impl/PointerInterceptView$1;->this$0:Lcom/android/internal/policy/impl/PointerInterceptView;

    iget-object v1, v1, Lcom/android/internal/policy/impl/PointerInterceptView;->mDefaultHide:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, v5, v6}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_0

    .line 194
    :cond_6
    iget-object v0, p0, Lcom/android/internal/policy/impl/PointerInterceptView$1;->this$0:Lcom/android/internal/policy/impl/PointerInterceptView;

    #getter for: Lcom/android/internal/policy/impl/PointerInterceptView;->mReadyStatusBar:Z
    invoke-static {v0}, Lcom/android/internal/policy/impl/PointerInterceptView;->access$200(Lcom/android/internal/policy/impl/PointerInterceptView;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/internal/policy/impl/PointerInterceptView$1;->this$0:Lcom/android/internal/policy/impl/PointerInterceptView;

    #getter for: Lcom/android/internal/policy/impl/PointerInterceptView;->mReadyStatusBarExpand:Z
    invoke-static {v0}, Lcom/android/internal/policy/impl/PointerInterceptView;->access$300(Lcom/android/internal/policy/impl/PointerInterceptView;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 195
    iget-object v0, p0, Lcom/android/internal/policy/impl/PointerInterceptView$1;->this$0:Lcom/android/internal/policy/impl/PointerInterceptView;

    #setter for: Lcom/android/internal/policy/impl/PointerInterceptView;->mReadyStatusBar:Z
    invoke-static {v0, v4}, Lcom/android/internal/policy/impl/PointerInterceptView;->access$202(Lcom/android/internal/policy/impl/PointerInterceptView;Z)Z

    goto/16 :goto_0
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 5
    .parameter "e1"
    .parameter "e2"
    .parameter "velocityX"
    .parameter "velocityY"

    .prologue
    const v3, 0x44bb8000

    const/4 v4, 0x1

    .line 90
    iget-object v0, p0, Lcom/android/internal/policy/impl/PointerInterceptView$1;->this$0:Lcom/android/internal/policy/impl/PointerInterceptView;

    #getter for: Lcom/android/internal/policy/impl/PointerInterceptView;->DEBUG:Z
    invoke-static {v0}, Lcom/android/internal/policy/impl/PointerInterceptView;->access$000(Lcom/android/internal/policy/impl/PointerInterceptView;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 91
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 92
    const-string v0, "PointerInterceptView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onFling() : e1.y = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " , e2.y= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " , velocityX = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " , velocityY = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    :cond_0
    const-string v0, "PointerInterceptView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onFling() : mStatusBarExpanded = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/policy/impl/PointerInterceptView$1;->this$0:Lcom/android/internal/policy/impl/PointerInterceptView;

    #getter for: Lcom/android/internal/policy/impl/PointerInterceptView;->mStatusBarExpanded:Z
    invoke-static {v2}, Lcom/android/internal/policy/impl/PointerInterceptView;->access$100(Lcom/android/internal/policy/impl/PointerInterceptView;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " , mReadyStatusBar = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/policy/impl/PointerInterceptView$1;->this$0:Lcom/android/internal/policy/impl/PointerInterceptView;

    #getter for: Lcom/android/internal/policy/impl/PointerInterceptView;->mReadyStatusBar:Z
    invoke-static {v2}, Lcom/android/internal/policy/impl/PointerInterceptView;->access$200(Lcom/android/internal/policy/impl/PointerInterceptView;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " , mReadyStatusBarExpand = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/policy/impl/PointerInterceptView$1;->this$0:Lcom/android/internal/policy/impl/PointerInterceptView;

    #getter for: Lcom/android/internal/policy/impl/PointerInterceptView;->mReadyStatusBarExpand:Z
    invoke-static {v2}, Lcom/android/internal/policy/impl/PointerInterceptView;->access$300(Lcom/android/internal/policy/impl/PointerInterceptView;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " , mStatusBarExpanding = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/policy/impl/PointerInterceptView$1;->this$0:Lcom/android/internal/policy/impl/PointerInterceptView;

    #getter for: Lcom/android/internal/policy/impl/PointerInterceptView;->mStatusBarExpanding:Z
    invoke-static {v2}, Lcom/android/internal/policy/impl/PointerInterceptView;->access$400(Lcom/android/internal/policy/impl/PointerInterceptView;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    :cond_1
    iget-object v0, p0, Lcom/android/internal/policy/impl/PointerInterceptView$1;->this$0:Lcom/android/internal/policy/impl/PointerInterceptView;

    #getter for: Lcom/android/internal/policy/impl/PointerInterceptView;->mStatusBarExpanded:Z
    invoke-static {v0}, Lcom/android/internal/policy/impl/PointerInterceptView;->access$100(Lcom/android/internal/policy/impl/PointerInterceptView;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 114
    :cond_2
    :goto_0
    return v4

    .line 105
    :cond_3
    iget-object v0, p0, Lcom/android/internal/policy/impl/PointerInterceptView$1;->this$0:Lcom/android/internal/policy/impl/PointerInterceptView;

    #getter for: Lcom/android/internal/policy/impl/PointerInterceptView;->mReadyStatusBar:Z
    invoke-static {v0}, Lcom/android/internal/policy/impl/PointerInterceptView;->access$200(Lcom/android/internal/policy/impl/PointerInterceptView;)Z

    move-result v0

    if-ne v0, v4, :cond_2

    iget-object v0, p0, Lcom/android/internal/policy/impl/PointerInterceptView$1;->this$0:Lcom/android/internal/policy/impl/PointerInterceptView;

    #getter for: Lcom/android/internal/policy/impl/PointerInterceptView;->mReadyStatusBarExpand:Z
    invoke-static {v0}, Lcom/android/internal/policy/impl/PointerInterceptView;->access$300(Lcom/android/internal/policy/impl/PointerInterceptView;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 107
    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpg-float v0, v0, v3

    if-gtz v0, :cond_2

    cmpl-float v0, p4, v3

    if-ltz v0, :cond_2

    .line 108
    iget-object v0, p0, Lcom/android/internal/policy/impl/PointerInterceptView$1;->this$0:Lcom/android/internal/policy/impl/PointerInterceptView;

    invoke-virtual {v0, v4}, Lcom/android/internal/policy/impl/PointerInterceptView;->sendCallbackFunc(Z)V

    .line 109
    iget-object v0, p0, Lcom/android/internal/policy/impl/PointerInterceptView$1;->this$0:Lcom/android/internal/policy/impl/PointerInterceptView;

    #setter for: Lcom/android/internal/policy/impl/PointerInterceptView;->mReadyStatusBarExpand:Z
    invoke-static {v0, v4}, Lcom/android/internal/policy/impl/PointerInterceptView;->access$302(Lcom/android/internal/policy/impl/PointerInterceptView;Z)Z

    .line 110
    iget-object v0, p0, Lcom/android/internal/policy/impl/PointerInterceptView$1;->this$0:Lcom/android/internal/policy/impl/PointerInterceptView;

    #getter for: Lcom/android/internal/policy/impl/PointerInterceptView;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/internal/policy/impl/PointerInterceptView;->access$500(Lcom/android/internal/policy/impl/PointerInterceptView;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/policy/impl/PointerInterceptView$1;->this$0:Lcom/android/internal/policy/impl/PointerInterceptView;

    iget-object v1, v1, Lcom/android/internal/policy/impl/PointerInterceptView;->mDefaultHide:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 111
    iget-object v0, p0, Lcom/android/internal/policy/impl/PointerInterceptView$1;->this$0:Lcom/android/internal/policy/impl/PointerInterceptView;

    #getter for: Lcom/android/internal/policy/impl/PointerInterceptView;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/internal/policy/impl/PointerInterceptView;->access$500(Lcom/android/internal/policy/impl/PointerInterceptView;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/policy/impl/PointerInterceptView$1;->this$0:Lcom/android/internal/policy/impl/PointerInterceptView;

    iget-object v1, v1, Lcom/android/internal/policy/impl/PointerInterceptView;->mDefaultHide:Ljava/lang/Runnable;

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 5
    .parameter "e1"
    .parameter "e2"
    .parameter "distanceX"
    .parameter "distanceY"

    .prologue
    const/4 v4, 0x1

    .line 119
    iget-object v0, p0, Lcom/android/internal/policy/impl/PointerInterceptView$1;->this$0:Lcom/android/internal/policy/impl/PointerInterceptView;

    #getter for: Lcom/android/internal/policy/impl/PointerInterceptView;->DEBUG:Z
    invoke-static {v0}, Lcom/android/internal/policy/impl/PointerInterceptView;->access$000(Lcom/android/internal/policy/impl/PointerInterceptView;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 120
    const-string v0, "PointerInterceptView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onScroll() : distanceX = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " , distanceY = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    const-string v0, "PointerInterceptView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onScroll() : mStatusBarExpanded = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/policy/impl/PointerInterceptView$1;->this$0:Lcom/android/internal/policy/impl/PointerInterceptView;

    #getter for: Lcom/android/internal/policy/impl/PointerInterceptView;->mStatusBarExpanded:Z
    invoke-static {v2}, Lcom/android/internal/policy/impl/PointerInterceptView;->access$100(Lcom/android/internal/policy/impl/PointerInterceptView;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " , mReadyStatusBar = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/policy/impl/PointerInterceptView$1;->this$0:Lcom/android/internal/policy/impl/PointerInterceptView;

    #getter for: Lcom/android/internal/policy/impl/PointerInterceptView;->mReadyStatusBar:Z
    invoke-static {v2}, Lcom/android/internal/policy/impl/PointerInterceptView;->access$200(Lcom/android/internal/policy/impl/PointerInterceptView;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " , mReadyStatusBarExpand = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/policy/impl/PointerInterceptView$1;->this$0:Lcom/android/internal/policy/impl/PointerInterceptView;

    #getter for: Lcom/android/internal/policy/impl/PointerInterceptView;->mReadyStatusBarExpand:Z
    invoke-static {v2}, Lcom/android/internal/policy/impl/PointerInterceptView;->access$300(Lcom/android/internal/policy/impl/PointerInterceptView;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " , mStatusBarExpanding = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/policy/impl/PointerInterceptView$1;->this$0:Lcom/android/internal/policy/impl/PointerInterceptView;

    #getter for: Lcom/android/internal/policy/impl/PointerInterceptView;->mStatusBarExpanding:Z
    invoke-static {v2}, Lcom/android/internal/policy/impl/PointerInterceptView;->access$400(Lcom/android/internal/policy/impl/PointerInterceptView;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " , mIsStatusBarWindow = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/policy/impl/PointerInterceptView$1;->this$0:Lcom/android/internal/policy/impl/PointerInterceptView;

    #getter for: Lcom/android/internal/policy/impl/PointerInterceptView;->mIsStatusBarWindow:Z
    invoke-static {v2}, Lcom/android/internal/policy/impl/PointerInterceptView;->access$600(Lcom/android/internal/policy/impl/PointerInterceptView;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/PointerInterceptView$1;->this$0:Lcom/android/internal/policy/impl/PointerInterceptView;

    #getter for: Lcom/android/internal/policy/impl/PointerInterceptView;->mStatusBarExpanded:Z
    invoke-static {v0}, Lcom/android/internal/policy/impl/PointerInterceptView;->access$100(Lcom/android/internal/policy/impl/PointerInterceptView;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 152
    :cond_1
    :goto_0
    return v4

    .line 132
    :cond_2
    iget-object v0, p0, Lcom/android/internal/policy/impl/PointerInterceptView$1;->this$0:Lcom/android/internal/policy/impl/PointerInterceptView;

    #getter for: Lcom/android/internal/policy/impl/PointerInterceptView;->mReadyStatusBar:Z
    invoke-static {v0}, Lcom/android/internal/policy/impl/PointerInterceptView;->access$200(Lcom/android/internal/policy/impl/PointerInterceptView;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/policy/impl/PointerInterceptView$1;->this$0:Lcom/android/internal/policy/impl/PointerInterceptView;

    #getter for: Lcom/android/internal/policy/impl/PointerInterceptView;->mReadyStatusBarExpand:Z
    invoke-static {v0}, Lcom/android/internal/policy/impl/PointerInterceptView;->access$300(Lcom/android/internal/policy/impl/PointerInterceptView;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 134
    iget-object v0, p0, Lcom/android/internal/policy/impl/PointerInterceptView$1;->this$0:Lcom/android/internal/policy/impl/PointerInterceptView;

    #getter for: Lcom/android/internal/policy/impl/PointerInterceptView;->mStatusBarExpanding:Z
    invoke-static {v0}, Lcom/android/internal/policy/impl/PointerInterceptView;->access$400(Lcom/android/internal/policy/impl/PointerInterceptView;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 135
    iget-object v0, p0, Lcom/android/internal/policy/impl/PointerInterceptView$1;->this$0:Lcom/android/internal/policy/impl/PointerInterceptView;

    invoke-virtual {v0, v4}, Lcom/android/internal/policy/impl/PointerInterceptView;->sendCallbackFunc(Z)V

    .line 137
    iget-object v0, p0, Lcom/android/internal/policy/impl/PointerInterceptView$1;->this$0:Lcom/android/internal/policy/impl/PointerInterceptView;

    #getter for: Lcom/android/internal/policy/impl/PointerInterceptView;->mIsStatusBarExpandEnabled:Z
    invoke-static {v0}, Lcom/android/internal/policy/impl/PointerInterceptView;->access$700(Lcom/android/internal/policy/impl/PointerInterceptView;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 138
    iget-object v0, p0, Lcom/android/internal/policy/impl/PointerInterceptView$1;->this$0:Lcom/android/internal/policy/impl/PointerInterceptView;

    #setter for: Lcom/android/internal/policy/impl/PointerInterceptView;->mStatusBarExpanding:Z
    invoke-static {v0, v4}, Lcom/android/internal/policy/impl/PointerInterceptView;->access$402(Lcom/android/internal/policy/impl/PointerInterceptView;Z)Z

    goto :goto_0

    .line 142
    :cond_3
    iget-object v0, p0, Lcom/android/internal/policy/impl/PointerInterceptView$1;->this$0:Lcom/android/internal/policy/impl/PointerInterceptView;

    #getter for: Lcom/android/internal/policy/impl/PointerInterceptView;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/internal/policy/impl/PointerInterceptView;->access$500(Lcom/android/internal/policy/impl/PointerInterceptView;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/policy/impl/PointerInterceptView$1;->this$0:Lcom/android/internal/policy/impl/PointerInterceptView;

    iget-object v1, v1, Lcom/android/internal/policy/impl/PointerInterceptView;->mDefaultHide:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 143
    iget-object v0, p0, Lcom/android/internal/policy/impl/PointerInterceptView$1;->this$0:Lcom/android/internal/policy/impl/PointerInterceptView;

    #getter for: Lcom/android/internal/policy/impl/PointerInterceptView;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/internal/policy/impl/PointerInterceptView;->access$500(Lcom/android/internal/policy/impl/PointerInterceptView;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/policy/impl/PointerInterceptView$1;->this$0:Lcom/android/internal/policy/impl/PointerInterceptView;

    iget-object v1, v1, Lcom/android/internal/policy/impl/PointerInterceptView;->mDefaultHide:Ljava/lang/Runnable;

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 147
    :cond_4
    iget-object v0, p0, Lcom/android/internal/policy/impl/PointerInterceptView$1;->this$0:Lcom/android/internal/policy/impl/PointerInterceptView;

    #getter for: Lcom/android/internal/policy/impl/PointerInterceptView;->mIsStatusBarWindow:Z
    invoke-static {v0}, Lcom/android/internal/policy/impl/PointerInterceptView;->access$600(Lcom/android/internal/policy/impl/PointerInterceptView;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 148
    iget-object v0, p0, Lcom/android/internal/policy/impl/PointerInterceptView$1;->this$0:Lcom/android/internal/policy/impl/PointerInterceptView;

    #getter for: Lcom/android/internal/policy/impl/PointerInterceptView;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/internal/policy/impl/PointerInterceptView;->access$500(Lcom/android/internal/policy/impl/PointerInterceptView;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/policy/impl/PointerInterceptView$1;->this$0:Lcom/android/internal/policy/impl/PointerInterceptView;

    iget-object v1, v1, Lcom/android/internal/policy/impl/PointerInterceptView;->mDefaultHide:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 149
    iget-object v0, p0, Lcom/android/internal/policy/impl/PointerInterceptView$1;->this$0:Lcom/android/internal/policy/impl/PointerInterceptView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/PointerInterceptView;->sendCallbackFunc(Z)V

    goto :goto_0
.end method
