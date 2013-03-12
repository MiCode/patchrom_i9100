.class final Lcom/android/internal/policy/impl/PhoneWindowManager$HideNavInputEventReceiver;
.super Landroid/view/InputEventReceiver;
.source "PhoneWindowManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/PhoneWindowManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "HideNavInputEventReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;


# direct methods
.method public constructor <init>(Lcom/android/internal/policy/impl/PhoneWindowManager;Landroid/view/InputChannel;Landroid/os/Looper;)V
    .locals 0
    .parameter
    .parameter "inputChannel"
    .parameter "looper"

    .prologue
    .line 3975
    iput-object p1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$HideNavInputEventReceiver;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    .line 3976
    invoke-direct {p0, p2, p3}, Landroid/view/InputEventReceiver;-><init>(Landroid/view/InputChannel;Landroid/os/Looper;)V

    .line 3977
    return-void
.end method


# virtual methods
.method public onInputEvent(Landroid/view/InputEvent;)V
    .locals 11
    .parameter "event"

    .prologue
    const/4 v10, 0x0

    .line 3981
    const/4 v2, 0x0

    .line 3983
    .local v2, handled:Z
    :try_start_0
    instance-of v5, p1, Landroid/view/MotionEvent;

    if-eqz v5, :cond_2

    invoke-virtual {p1}, Landroid/view/InputEvent;->getSource()I

    move-result v5

    and-int/lit8 v5, v5, 0x2

    if-eqz v5, :cond_2

    .line 3985
    move-object v0, p1

    check-cast v0, Landroid/view/MotionEvent;

    move-object v3, v0

    .line 3986
    .local v3, motionEvent:Landroid/view/MotionEvent;
    invoke-virtual {v3}, Landroid/view/MotionEvent;->getAction()I

    move-result v5

    if-nez v5, :cond_2

    .line 3988
    const/4 v1, 0x0

    .line 3989
    .local v1, changed:Z
    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$HideNavInputEventReceiver;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-object v6, v5, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLock:Ljava/lang/Object;

    monitor-enter v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 3995
    :try_start_1
    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$HideNavInputEventReceiver;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget v5, v5, Lcom/android/internal/policy/impl/PhoneWindowManager;->mResettingSystemUiFlags:I

    or-int/lit8 v5, v5, 0x2

    or-int/lit8 v5, v5, 0x1

    or-int/lit8 v4, v5, 0x4

    .line 3999
    .local v4, newVal:I
    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$HideNavInputEventReceiver;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget v5, v5, Lcom/android/internal/policy/impl/PhoneWindowManager;->mResettingSystemUiFlags:I

    if-eq v5, v4, :cond_0

    .line 4000
    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$HideNavInputEventReceiver;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iput v4, v5, Lcom/android/internal/policy/impl/PhoneWindowManager;->mResettingSystemUiFlags:I

    .line 4001
    const/4 v1, 0x1

    .line 4006
    :cond_0
    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$HideNavInputEventReceiver;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget v5, v5, Lcom/android/internal/policy/impl/PhoneWindowManager;->mForceClearedSystemUiFlags:I

    or-int/lit8 v4, v5, 0x2

    .line 4008
    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$HideNavInputEventReceiver;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget v5, v5, Lcom/android/internal/policy/impl/PhoneWindowManager;->mForceClearedSystemUiFlags:I

    if-eq v5, v4, :cond_1

    .line 4009
    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$HideNavInputEventReceiver;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iput v4, v5, Lcom/android/internal/policy/impl/PhoneWindowManager;->mForceClearedSystemUiFlags:I

    .line 4010
    const/4 v1, 0x1

    .line 4011
    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$HideNavInputEventReceiver;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-object v5, v5, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    new-instance v7, Lcom/android/internal/policy/impl/PhoneWindowManager$HideNavInputEventReceiver$1;

    invoke-direct {v7, p0}, Lcom/android/internal/policy/impl/PhoneWindowManager$HideNavInputEventReceiver$1;-><init>(Lcom/android/internal/policy/impl/PhoneWindowManager$HideNavInputEventReceiver;)V

    const-wide/16 v8, 0x3e8

    invoke-virtual {v5, v7, v8, v9}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 4022
    :cond_1
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 4023
    if-eqz v1, :cond_2

    .line 4024
    :try_start_2
    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$HideNavInputEventReceiver;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-object v5, v5, Lcom/android/internal/policy/impl/PhoneWindowManager;->mWindowManagerFuncs:Landroid/view/WindowManagerPolicy$WindowManagerFuncs;

    invoke-interface {v5}, Landroid/view/WindowManagerPolicy$WindowManagerFuncs;->reevaluateStatusBarVisibility()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 4029
    .end local v1           #changed:Z
    .end local v3           #motionEvent:Landroid/view/MotionEvent;
    .end local v4           #newVal:I
    :cond_2
    invoke-virtual {p0, p1, v2}, Lcom/android/internal/policy/impl/PhoneWindowManager$HideNavInputEventReceiver;->finishInputEvent(Landroid/view/InputEvent;Z)V

    .line 4030
    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$HideNavInputEventReceiver;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-object v5, v5, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHideNavFakeWindow:Landroid/view/WindowManagerPolicy$FakeWindow;

    if-eqz v5, :cond_3

    .line 4031
    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$HideNavInputEventReceiver;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-object v5, v5, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHideNavFakeWindow:Landroid/view/WindowManagerPolicy$FakeWindow;

    invoke-interface {v5}, Landroid/view/WindowManagerPolicy$FakeWindow;->dismiss()V

    .line 4032
    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$HideNavInputEventReceiver;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iput-object v10, v5, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHideNavFakeWindow:Landroid/view/WindowManagerPolicy$FakeWindow;

    .line 4035
    :cond_3
    return-void

    .line 4022
    .restart local v1       #changed:Z
    .restart local v3       #motionEvent:Landroid/view/MotionEvent;
    :catchall_0
    move-exception v5

    :try_start_3
    monitor-exit v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 4029
    .end local v1           #changed:Z
    .end local v3           #motionEvent:Landroid/view/MotionEvent;
    :catchall_1
    move-exception v5

    invoke-virtual {p0, p1, v2}, Lcom/android/internal/policy/impl/PhoneWindowManager$HideNavInputEventReceiver;->finishInputEvent(Landroid/view/InputEvent;Z)V

    .line 4030
    iget-object v6, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$HideNavInputEventReceiver;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-object v6, v6, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHideNavFakeWindow:Landroid/view/WindowManagerPolicy$FakeWindow;

    if-eqz v6, :cond_4

    .line 4031
    iget-object v6, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$HideNavInputEventReceiver;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-object v6, v6, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHideNavFakeWindow:Landroid/view/WindowManagerPolicy$FakeWindow;

    invoke-interface {v6}, Landroid/view/WindowManagerPolicy$FakeWindow;->dismiss()V

    .line 4032
    iget-object v6, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$HideNavInputEventReceiver;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iput-object v10, v6, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHideNavFakeWindow:Landroid/view/WindowManagerPolicy$FakeWindow;

    :cond_4
    throw v5
.end method
