.class final Lcom/android/internal/policy/impl/PhoneWindowManager$PointerInterceptInputEventReceiver;
.super Landroid/view/InputEventReceiver;
.source "PhoneWindowManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/PhoneWindowManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "PointerInterceptInputEventReceiver"
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
    .line 539
    iput-object p1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$PointerInterceptInputEventReceiver;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    .line 540
    invoke-direct {p0, p2, p3}, Landroid/view/InputEventReceiver;-><init>(Landroid/view/InputChannel;Landroid/os/Looper;)V

    .line 541
    return-void
.end method


# virtual methods
.method public onInputEvent(Landroid/view/InputEvent;)V
    .locals 10
    .parameter "event"

    .prologue
    const/4 v7, 0x0

    .line 545
    const/4 v4, 0x0

    .line 546
    .local v4, handled:Z
    iget-object v8, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$PointerInterceptInputEventReceiver;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-object v3, v8, Lcom/android/internal/policy/impl/PhoneWindowManager;->mFocusedWindow:Landroid/view/WindowManagerPolicy$WindowState;

    .line 547
    .local v3, focusedWindow:Landroid/view/WindowManagerPolicy$WindowState;
    if-eqz v3, :cond_5

    invoke-interface {v3}, Landroid/view/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    .line 549
    .local v1, attrs:Landroid/view/WindowManager$LayoutParams;
    :goto_0
    if-eqz v1, :cond_6

    iget v8, v1, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v9, 0x7d0

    if-ne v8, v9, :cond_6

    const/4 v6, 0x1

    .line 552
    .local v6, isStatusBarWindow:Z
    :goto_1
    const/4 v5, 0x1

    .line 553
    .local v5, isStatusBarExpandEnabled:Z
    iget-object v8, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$PointerInterceptInputEventReceiver;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-object v8, v8, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    if-nez v8, :cond_0

    .line 554
    iget-object v8, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$PointerInterceptInputEventReceiver;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    const-string v9, "statusbar"

    invoke-static {v9}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v9

    invoke-static {v9}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v9

    iput-object v9, v8, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    .line 557
    :cond_0
    iget-object v8, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$PointerInterceptInputEventReceiver;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-object v8, v8, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    if-eqz v8, :cond_1

    .line 559
    :try_start_0
    iget-object v8, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$PointerInterceptInputEventReceiver;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-object v8, v8, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    invoke-interface {v8}, Lcom/android/internal/statusbar/IStatusBarService;->isStatusBarExpandEnabled()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    .line 568
    :cond_1
    :goto_2
    if-eqz v1, :cond_4

    :try_start_1
    iget v7, v1, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    and-int/lit8 v7, v7, 0x10

    if-nez v7, :cond_4

    .line 569
    instance-of v7, p1, Landroid/view/MotionEvent;

    if-eqz v7, :cond_4

    invoke-virtual {p1}, Landroid/view/InputEvent;->getSource()I

    move-result v7

    and-int/lit8 v7, v7, 0x2

    if-eqz v7, :cond_4

    .line 571
    iget-object v7, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$PointerInterceptInputEventReceiver;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-object v7, v7, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPointerInterceptView:Lcom/android/internal/policy/impl/PointerInterceptView;

    if-nez v7, :cond_2

    .line 572
    iget-object v7, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$PointerInterceptInputEventReceiver;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    new-instance v8, Lcom/android/internal/policy/impl/PhoneWindowManager$PointerInterceptInputEventReceiver$1;

    iget-object v9, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$PointerInterceptInputEventReceiver;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-object v9, v9, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-direct {v8, p0, v9}, Lcom/android/internal/policy/impl/PhoneWindowManager$PointerInterceptInputEventReceiver$1;-><init>(Lcom/android/internal/policy/impl/PhoneWindowManager$PointerInterceptInputEventReceiver;Landroid/content/Context;)V

    iput-object v8, v7, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPointerInterceptView:Lcom/android/internal/policy/impl/PointerInterceptView;

    .line 585
    :cond_2
    iget-object v7, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$PointerInterceptInputEventReceiver;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-object v8, v7, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLock:Ljava/lang/Object;

    monitor-enter v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 586
    :try_start_2
    iget-object v7, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$PointerInterceptInputEventReceiver;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-boolean v7, v7, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTopIsFullscreen:Z

    if-eqz v7, :cond_3

    .line 587
    iget-object v7, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$PointerInterceptInputEventReceiver;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-object v9, v7, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPointerInterceptView:Lcom/android/internal/policy/impl/PointerInterceptView;

    move-object v0, p1

    check-cast v0, Landroid/view/MotionEvent;

    move-object v7, v0

    invoke-virtual {v9, v7, v6, v5}, Lcom/android/internal/policy/impl/PointerInterceptView;->addPointerEvent(Landroid/view/MotionEvent;ZZ)V

    .line 590
    :cond_3
    const/4 v4, 0x1

    .line 591
    monitor-exit v8
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 595
    :cond_4
    invoke-virtual {p0, p1, v4}, Lcom/android/internal/policy/impl/PhoneWindowManager$PointerInterceptInputEventReceiver;->finishInputEvent(Landroid/view/InputEvent;Z)V

    .line 597
    return-void

    .end local v1           #attrs:Landroid/view/WindowManager$LayoutParams;
    .end local v5           #isStatusBarExpandEnabled:Z
    .end local v6           #isStatusBarWindow:Z
    :cond_5
    move-object v1, v7

    .line 547
    goto :goto_0

    .line 549
    .restart local v1       #attrs:Landroid/view/WindowManager$LayoutParams;
    :cond_6
    const/4 v6, 0x0

    goto :goto_1

    .line 560
    .restart local v5       #isStatusBarExpandEnabled:Z
    .restart local v6       #isStatusBarWindow:Z
    :catch_0
    move-exception v2

    .line 561
    .local v2, e:Landroid/os/RemoteException;
    const-string v8, "WindowManager"

    const-string v9, "StatusBarService RemoteException"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 562
    iget-object v8, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$PointerInterceptInputEventReceiver;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iput-object v7, v8, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    .line 563
    const/4 v5, 0x1

    goto :goto_2

    .line 591
    .end local v2           #e:Landroid/os/RemoteException;
    :catchall_0
    move-exception v7

    :try_start_3
    monitor-exit v8
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v7
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 595
    :catchall_1
    move-exception v7

    invoke-virtual {p0, p1, v4}, Lcom/android/internal/policy/impl/PhoneWindowManager$PointerInterceptInputEventReceiver;->finishInputEvent(Landroid/view/InputEvent;Z)V

    throw v7
.end method
