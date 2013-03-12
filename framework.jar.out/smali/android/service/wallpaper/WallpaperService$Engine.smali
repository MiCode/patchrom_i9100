.class public Landroid/service/wallpaper/WallpaperService$Engine;
.super Ljava/lang/Object;
.source "WallpaperService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/wallpaper/WallpaperService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Engine"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/service/wallpaper/WallpaperService$Engine$WallpaperInputEventReceiver;
    }
.end annotation


# instance fields
.field mCaller:Lcom/android/internal/os/HandlerCaller;

.field final mConfiguration:Landroid/content/res/Configuration;

.field mConnection:Landroid/service/wallpaper/IWallpaperConnection;

.field final mContentInsets:Landroid/graphics/Rect;

.field mCreated:Z

.field mCurHeight:I

.field mCurWidth:I

.field mCurWindowFlags:I

.field mCurWindowPrivateFlags:I

.field mDestroyed:Z

.field mDrawingAllowed:Z

.field mFixedSizeAllowed:Z

.field mFormat:I

.field mHeight:I

.field mIWallpaperEngine:Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;

.field mInitializing:Z

.field mInputChannel:Landroid/view/InputChannel;

.field mInputEventReceiver:Landroid/service/wallpaper/WallpaperService$Engine$WallpaperInputEventReceiver;

.field mIsCreating:Z

.field final mLayout:Landroid/view/WindowManager$LayoutParams;

.field final mLock:Ljava/lang/Object;

.field mOffsetMessageEnqueued:Z

.field mOffsetsChanged:Z

.field mPendingHoverMove:Landroid/view/MotionEvent;

.field mPendingMove:Landroid/view/MotionEvent;

.field mPendingSync:Z

.field mPendingXOffset:F

.field mPendingXOffsetStep:F

.field mPendingYOffset:F

.field mPendingYOffsetStep:F

.field final mReceiver:Landroid/content/BroadcastReceiver;

.field mReportedVisible:Z

.field mScreenOn:Z

.field mSession:Landroid/view/IWindowSession;

.field mSurfaceCreated:Z

.field final mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

.field mType:I

.field mVisible:Z

.field final mVisibleInsets:Landroid/graphics/Rect;

.field mWidth:I

.field final mWinFrame:Landroid/graphics/Rect;

.field final mWindow:Lcom/android/internal/view/BaseIWindow;

.field mWindowFlags:I

.field mWindowPrivateFlags:I

.field mWindowToken:Landroid/os/IBinder;

.field final synthetic this$0:Landroid/service/wallpaper/WallpaperService;


# direct methods
.method public constructor <init>(Landroid/service/wallpaper/WallpaperService;)V
    .locals 1
    .parameter

    .prologue
    const/4 v0, 0x1

    .line 130
    iput-object p1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->this$0:Landroid/service/wallpaper/WallpaperService;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 138
    iput-boolean v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mInitializing:Z

    .line 140
    iput-boolean v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mScreenOn:Z

    .line 157
    const/16 v0, 0x10

    iput v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mWindowFlags:I

    .line 158
    const/4 v0, 0x4

    iput v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mWindowPrivateFlags:I

    .line 160
    iget v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mWindowFlags:I

    iput v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mCurWindowFlags:I

    .line 161
    iget v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mWindowPrivateFlags:I

    iput v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mCurWindowPrivateFlags:I

    .line 162
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mVisibleInsets:Landroid/graphics/Rect;

    .line 163
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mWinFrame:Landroid/graphics/Rect;

    .line 164
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mContentInsets:Landroid/graphics/Rect;

    .line 165
    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0}, Landroid/content/res/Configuration;-><init>()V

    iput-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mConfiguration:Landroid/content/res/Configuration;

    .line 167
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v0}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    iput-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mLayout:Landroid/view/WindowManager$LayoutParams;

    .line 172
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mLock:Ljava/lang/Object;

    .line 182
    new-instance v0, Landroid/service/wallpaper/WallpaperService$Engine$1;

    invoke-direct {v0, p0}, Landroid/service/wallpaper/WallpaperService$Engine$1;-><init>(Landroid/service/wallpaper/WallpaperService$Engine;)V

    iput-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 195
    new-instance v0, Landroid/service/wallpaper/WallpaperService$Engine$2;

    invoke-direct {v0, p0}, Landroid/service/wallpaper/WallpaperService$Engine$2;-><init>(Landroid/service/wallpaper/WallpaperService$Engine;)V

    iput-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    .line 262
    new-instance v0, Landroid/service/wallpaper/WallpaperService$Engine$3;

    invoke-direct {v0, p0}, Landroid/service/wallpaper/WallpaperService$Engine$3;-><init>(Landroid/service/wallpaper/WallpaperService$Engine;)V

    iput-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mWindow:Lcom/android/internal/view/BaseIWindow;

    return-void
.end method

.method static synthetic access$000(Landroid/service/wallpaper/WallpaperService$Engine;Landroid/view/MotionEvent;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 130
    invoke-direct {p0, p1}, Landroid/service/wallpaper/WallpaperService$Engine;->dispatchPointer(Landroid/view/MotionEvent;)V

    return-void
.end method

.method private dispatchPointer(Landroid/view/MotionEvent;)V
    .locals 4
    .parameter "event"

    .prologue
    .line 555
    invoke-virtual {p1}, Landroid/view/MotionEvent;->isTouchEvent()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 556
    iget-object v2, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 557
    :try_start_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    const/4 v3, 0x2

    if-ne v1, v3, :cond_0

    .line 558
    iput-object p1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mPendingMove:Landroid/view/MotionEvent;

    .line 562
    :goto_0
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 563
    iget-object v1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mCaller:Lcom/android/internal/os/HandlerCaller;

    const/16 v2, 0x2738

    invoke-virtual {v1, v2, p1}, Lcom/android/internal/os/HandlerCaller;->obtainMessageO(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 564
    .local v0, msg:Landroid/os/Message;
    iget-object v1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mCaller:Lcom/android/internal/os/HandlerCaller;

    invoke-virtual {v1, v0}, Lcom/android/internal/os/HandlerCaller;->sendMessage(Landroid/os/Message;)V

    .line 578
    .end local v0           #msg:Landroid/os/Message;
    :goto_1
    return-void

    .line 560
    :cond_0
    const/4 v1, 0x0

    :try_start_1
    iput-object v1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mPendingMove:Landroid/view/MotionEvent;

    goto :goto_0

    .line 562
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 565
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->isHoverEvent()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 566
    iget-object v2, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 567
    :try_start_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    const/4 v3, 0x7

    if-ne v1, v3, :cond_2

    .line 568
    iput-object p1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mPendingHoverMove:Landroid/view/MotionEvent;

    .line 572
    :goto_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 573
    iget-object v1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mCaller:Lcom/android/internal/os/HandlerCaller;

    const/16 v2, 0x2742

    invoke-virtual {v1, v2, p1}, Lcom/android/internal/os/HandlerCaller;->obtainMessageO(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 574
    .restart local v0       #msg:Landroid/os/Message;
    iget-object v1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mCaller:Lcom/android/internal/os/HandlerCaller;

    invoke-virtual {v1, v0}, Lcom/android/internal/os/HandlerCaller;->sendMessage(Landroid/os/Message;)V

    goto :goto_1

    .line 570
    .end local v0           #msg:Landroid/os/Message;
    :cond_2
    const/4 v1, 0x0

    :try_start_3
    iput-object v1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mPendingHoverMove:Landroid/view/MotionEvent;

    goto :goto_2

    .line 572
    :catchall_1
    move-exception v1

    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v1

    .line 576
    :cond_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->recycle()V

    goto :goto_1
.end method


# virtual methods
.method attach(Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;)V
    .locals 4
    .parameter "wrapper"

    .prologue
    const/4 v3, 0x0

    .line 804
    iget-boolean v1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mDestroyed:Z

    if-eqz v1, :cond_0

    .line 831
    :goto_0
    return-void

    .line 808
    :cond_0
    iput-object p1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mIWallpaperEngine:Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;

    .line 809
    #getter for: Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;
    invoke-static {p1}, Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;->access$100(Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;)Lcom/android/internal/os/HandlerCaller;

    move-result-object v1

    iput-object v1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mCaller:Lcom/android/internal/os/HandlerCaller;

    .line 810
    iget-object v1, p1, Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;->mConnection:Landroid/service/wallpaper/IWallpaperConnection;

    iput-object v1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mConnection:Landroid/service/wallpaper/IWallpaperConnection;

    .line 811
    iget-object v1, p1, Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;->mWindowToken:Landroid/os/IBinder;

    iput-object v1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mWindowToken:Landroid/os/IBinder;

    .line 812
    iget-object v1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    invoke-virtual {v1}, Lcom/android/internal/view/BaseSurfaceHolder;->setSizeFromLayout()V

    .line 813
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mInitializing:Z

    .line 814
    iget-object v1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->this$0:Landroid/service/wallpaper/WallpaperService;

    invoke-virtual {v1}, Landroid/service/wallpaper/WallpaperService;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-static {v1}, Landroid/view/ViewRootImpl;->getWindowSession(Landroid/os/Looper;)Landroid/view/IWindowSession;

    move-result-object v1

    iput-object v1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mSession:Landroid/view/IWindowSession;

    .line 816
    iget-object v1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mWindow:Lcom/android/internal/view/BaseIWindow;

    iget-object v2, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mSession:Landroid/view/IWindowSession;

    invoke-virtual {v1, v2}, Lcom/android/internal/view/BaseIWindow;->setSession(Landroid/view/IWindowSession;)V

    .line 818
    iget-object v1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->this$0:Landroid/service/wallpaper/WallpaperService;

    const-string/jumbo v2, "power"

    invoke-virtual {v1, v2}, Landroid/service/wallpaper/WallpaperService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager;

    invoke-virtual {v1}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v1

    iput-boolean v1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mScreenOn:Z

    .line 820
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 821
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 822
    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 823
    iget-object v1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->this$0:Landroid/service/wallpaper/WallpaperService;

    iget-object v2, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/service/wallpaper/WallpaperService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 826
    iget-object v1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    invoke-virtual {p0, v1}, Landroid/service/wallpaper/WallpaperService$Engine;->onCreate(Landroid/view/SurfaceHolder;)V

    .line 828
    iput-boolean v3, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mInitializing:Z

    .line 829
    iput-boolean v3, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mReportedVisible:Z

    .line 830
    invoke-virtual {p0, v3, v3, v3}, Landroid/service/wallpaper/WallpaperService$Engine;->updateSurface(ZZZ)V

    goto :goto_0
.end method

.method detach()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 951
    iget-boolean v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mDestroyed:Z

    if-eqz v0, :cond_1

    .line 993
    :cond_0
    :goto_0
    return-void

    .line 955
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mDestroyed:Z

    .line 957
    iget-boolean v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mVisible:Z

    if-eqz v0, :cond_2

    .line 958
    iput-boolean v2, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mVisible:Z

    .line 960
    invoke-virtual {p0, v2}, Landroid/service/wallpaper/WallpaperService$Engine;->onVisibilityChanged(Z)V

    .line 963
    :cond_2
    invoke-virtual {p0}, Landroid/service/wallpaper/WallpaperService$Engine;->reportSurfaceDestroyed()V

    .line 966
    invoke-virtual {p0}, Landroid/service/wallpaper/WallpaperService$Engine;->onDestroy()V

    .line 968
    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->this$0:Landroid/service/wallpaper/WallpaperService;

    iget-object v1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/service/wallpaper/WallpaperService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 970
    iget-boolean v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mCreated:Z

    if-eqz v0, :cond_0

    .line 975
    :try_start_0
    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mInputEventReceiver:Landroid/service/wallpaper/WallpaperService$Engine$WallpaperInputEventReceiver;

    if-eqz v0, :cond_3

    .line 976
    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mInputEventReceiver:Landroid/service/wallpaper/WallpaperService$Engine$WallpaperInputEventReceiver;

    invoke-virtual {v0}, Landroid/service/wallpaper/WallpaperService$Engine$WallpaperInputEventReceiver;->dispose()V

    .line 977
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mInputEventReceiver:Landroid/service/wallpaper/WallpaperService$Engine$WallpaperInputEventReceiver;

    .line 980
    :cond_3
    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mSession:Landroid/view/IWindowSession;

    iget-object v1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mWindow:Lcom/android/internal/view/BaseIWindow;

    invoke-interface {v0, v1}, Landroid/view/IWindowSession;->remove(Landroid/view/IWindow;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 983
    :goto_1
    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    iget-object v0, v0, Lcom/android/internal/view/BaseSurfaceHolder;->mSurface:Landroid/view/Surface;

    invoke-virtual {v0}, Landroid/view/Surface;->release()V

    .line 984
    iput-boolean v2, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mCreated:Z

    .line 988
    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mInputChannel:Landroid/view/InputChannel;

    if-eqz v0, :cond_0

    .line 989
    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mInputChannel:Landroid/view/InputChannel;

    invoke-virtual {v0}, Landroid/view/InputChannel;->dispose()V

    .line 990
    iput-object v3, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mInputChannel:Landroid/view/InputChannel;

    goto :goto_0

    .line 981
    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method doCommand(Landroid/service/wallpaper/WallpaperService$WallpaperCommand;)V
    .locals 8
    .parameter "cmd"

    .prologue
    .line 919
    iget-boolean v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mDestroyed:Z

    if-nez v0, :cond_1

    .line 920
    iget-object v1, p1, Landroid/service/wallpaper/WallpaperService$WallpaperCommand;->action:Ljava/lang/String;

    iget v2, p1, Landroid/service/wallpaper/WallpaperService$WallpaperCommand;->x:I

    iget v3, p1, Landroid/service/wallpaper/WallpaperService$WallpaperCommand;->y:I

    iget v4, p1, Landroid/service/wallpaper/WallpaperService$WallpaperCommand;->z:I

    iget-object v5, p1, Landroid/service/wallpaper/WallpaperService$WallpaperCommand;->extras:Landroid/os/Bundle;

    iget-boolean v6, p1, Landroid/service/wallpaper/WallpaperService$WallpaperCommand;->sync:Z

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Landroid/service/wallpaper/WallpaperService$Engine;->onCommand(Ljava/lang/String;IIILandroid/os/Bundle;Z)Landroid/os/Bundle;

    move-result-object v7

    .line 925
    .local v7, result:Landroid/os/Bundle;
    :goto_0
    iget-boolean v0, p1, Landroid/service/wallpaper/WallpaperService$WallpaperCommand;->sync:Z

    if-eqz v0, :cond_0

    .line 928
    :try_start_0
    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mSession:Landroid/view/IWindowSession;

    iget-object v1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mWindow:Lcom/android/internal/view/BaseIWindow;

    invoke-virtual {v1}, Lcom/android/internal/view/BaseIWindow;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-interface {v0, v1, v7}, Landroid/view/IWindowSession;->wallpaperCommandComplete(Landroid/os/IBinder;Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 932
    :cond_0
    :goto_1
    return-void

    .line 923
    .end local v7           #result:Landroid/os/Bundle;
    :cond_1
    const/4 v7, 0x0

    .restart local v7       #result:Landroid/os/Bundle;
    goto :goto_0

    .line 929
    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method doDesiredSizeChanged(II)V
    .locals 1
    .parameter "desiredWidth"
    .parameter "desiredHeight"

    .prologue
    .line 834
    iget-boolean v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mDestroyed:Z

    if-nez v0, :cond_0

    .line 837
    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mIWallpaperEngine:Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;

    iput p1, v0, Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;->mReqWidth:I

    .line 838
    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mIWallpaperEngine:Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;

    iput p2, v0, Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;->mReqHeight:I

    .line 839
    invoke-virtual {p0, p1, p2}, Landroid/service/wallpaper/WallpaperService$Engine;->onDesiredSizeChanged(II)V

    .line 840
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/service/wallpaper/WallpaperService$Engine;->doOffsetsChanged(Z)V

    .line 842
    :cond_0
    return-void
.end method

.method doOffsetsChanged(Z)V
    .locals 13
    .parameter "always"

    .prologue
    const/high16 v12, 0x3f00

    const/4 v0, 0x0

    .line 871
    iget-boolean v10, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mDestroyed:Z

    if-eqz v10, :cond_1

    .line 915
    :cond_0
    :goto_0
    return-void

    .line 875
    :cond_1
    if-nez p1, :cond_2

    iget-boolean v10, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mOffsetsChanged:Z

    if-eqz v10, :cond_0

    .line 884
    :cond_2
    iget-object v10, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mLock:Ljava/lang/Object;

    monitor-enter v10

    .line 885
    :try_start_0
    iget v1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mPendingXOffset:F

    .line 886
    .local v1, xOffset:F
    iget v2, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mPendingYOffset:F

    .line 887
    .local v2, yOffset:F
    iget v3, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mPendingXOffsetStep:F

    .line 888
    .local v3, xOffsetStep:F
    iget v4, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mPendingYOffsetStep:F

    .line 889
    .local v4, yOffsetStep:F
    iget-boolean v9, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mPendingSync:Z

    .line 890
    .local v9, sync:Z
    const/4 v11, 0x0

    iput-boolean v11, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mPendingSync:Z

    .line 891
    const/4 v11, 0x0

    iput-boolean v11, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mOffsetMessageEnqueued:Z

    .line 892
    monitor-exit v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 894
    iget-boolean v10, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mSurfaceCreated:Z

    if-eqz v10, :cond_3

    .line 895
    iget-boolean v10, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mReportedVisible:Z

    if-eqz v10, :cond_6

    .line 898
    iget-object v10, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mIWallpaperEngine:Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;

    iget v10, v10, Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;->mReqWidth:I

    iget v11, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mCurWidth:I

    sub-int v8, v10, v11

    .line 899
    .local v8, availw:I
    if-lez v8, :cond_4

    int-to-float v10, v8

    mul-float/2addr v10, v1

    add-float/2addr v10, v12

    float-to-int v10, v10

    neg-int v5, v10

    .line 900
    .local v5, xPixels:I
    :goto_1
    iget-object v10, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mIWallpaperEngine:Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;

    iget v10, v10, Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;->mReqHeight:I

    iget v11, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mCurHeight:I

    sub-int v7, v10, v11

    .line 901
    .local v7, availh:I
    if-lez v7, :cond_5

    int-to-float v0, v7

    mul-float/2addr v0, v2

    add-float/2addr v0, v12

    float-to-int v0, v0

    neg-int v6, v0

    .local v6, yPixels:I
    :goto_2
    move-object v0, p0

    .line 902
    invoke-virtual/range {v0 .. v6}, Landroid/service/wallpaper/WallpaperService$Engine;->onOffsetsChanged(FFFFII)V

    .line 908
    .end local v5           #xPixels:I
    .end local v6           #yPixels:I
    .end local v7           #availh:I
    .end local v8           #availw:I
    :cond_3
    :goto_3
    if-eqz v9, :cond_0

    .line 911
    :try_start_1
    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mSession:Landroid/view/IWindowSession;

    iget-object v10, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mWindow:Lcom/android/internal/view/BaseIWindow;

    invoke-virtual {v10}, Lcom/android/internal/view/BaseIWindow;->asBinder()Landroid/os/IBinder;

    move-result-object v10

    invoke-interface {v0, v10}, Landroid/view/IWindowSession;->wallpaperOffsetsComplete(Landroid/os/IBinder;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 912
    :catch_0
    move-exception v0

    goto :goto_0

    .line 892
    .end local v1           #xOffset:F
    .end local v2           #yOffset:F
    .end local v3           #xOffsetStep:F
    .end local v4           #yOffsetStep:F
    .end local v9           #sync:Z
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v10
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .restart local v1       #xOffset:F
    .restart local v2       #yOffset:F
    .restart local v3       #xOffsetStep:F
    .restart local v4       #yOffsetStep:F
    .restart local v8       #availw:I
    .restart local v9       #sync:Z
    :cond_4
    move v5, v0

    .line 899
    goto :goto_1

    .restart local v5       #xPixels:I
    .restart local v7       #availh:I
    :cond_5
    move v6, v0

    .line 901
    goto :goto_2

    .line 904
    .end local v5           #xPixels:I
    .end local v7           #availh:I
    .end local v8           #availw:I
    :cond_6
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mOffsetsChanged:Z

    goto :goto_3
.end method

.method doVisibilityChanged(Z)V
    .locals 1
    .parameter "visible"

    .prologue
    .line 845
    iget-boolean v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mDestroyed:Z

    if-nez v0, :cond_0

    .line 846
    iput-boolean p1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mVisible:Z

    .line 847
    invoke-virtual {p0}, Landroid/service/wallpaper/WallpaperService$Engine;->reportVisibility()V

    .line 849
    :cond_0
    return-void
.end method

.method protected dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 2
    .parameter "prefix"
    .parameter "fd"
    .parameter "out"
    .parameter "args"

    .prologue
    .line 515
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mInitializing="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mInitializing:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 516
    const-string v0, " mDestroyed="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mDestroyed:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 517
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mVisible="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mVisible:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 518
    const-string v0, " mScreenOn="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mScreenOn:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 519
    const-string v0, " mReportedVisible="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mReportedVisible:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 520
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mCreated="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mCreated:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 521
    const-string v0, " mSurfaceCreated="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mSurfaceCreated:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 522
    const-string v0, " mIsCreating="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mIsCreating:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 523
    const-string v0, " mDrawingAllowed="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mDrawingAllowed:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 524
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mWidth="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mWidth:I

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 525
    const-string v0, " mCurWidth="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mCurWidth:I

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 526
    const-string v0, " mHeight="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mHeight:I

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 527
    const-string v0, " mCurHeight="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mCurHeight:I

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 528
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mType="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mType:I

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 529
    const-string v0, " mWindowFlags="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mWindowFlags:I

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 530
    const-string v0, " mCurWindowFlags="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mCurWindowFlags:I

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 531
    const-string v0, " mWindowPrivateFlags="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mWindowPrivateFlags:I

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 532
    const-string v0, " mCurWindowPrivateFlags="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mCurWindowPrivateFlags:I

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 533
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mVisibleInsets="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 534
    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mVisibleInsets:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->toShortString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 535
    const-string v0, " mWinFrame="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mWinFrame:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->toShortString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 536
    const-string v0, " mContentInsets="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mContentInsets:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->toShortString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 537
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mConfiguration="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 538
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mLayout="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mLayout:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 539
    iget-object v1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 540
    :try_start_0
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mPendingXOffset="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mPendingXOffset:F

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(F)V

    .line 541
    const-string v0, " mPendingXOffset="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mPendingXOffset:F

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(F)V

    .line 542
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mPendingXOffsetStep="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 543
    iget v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mPendingXOffsetStep:F

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(F)V

    .line 544
    const-string v0, " mPendingXOffsetStep="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mPendingXOffsetStep:F

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(F)V

    .line 545
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mOffsetMessageEnqueued="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 546
    iget-boolean v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mOffsetMessageEnqueued:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 547
    const-string v0, " mPendingSync="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mPendingSync:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 548
    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mPendingMove:Landroid/view/MotionEvent;

    if-eqz v0, :cond_0

    .line 549
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mPendingMove="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mPendingMove:Landroid/view/MotionEvent;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 551
    :cond_0
    monitor-exit v1

    .line 552
    return-void

    .line 551
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getDesiredMinimumHeight()I
    .locals 1

    .prologue
    .line 342
    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mIWallpaperEngine:Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;

    iget v0, v0, Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;->mReqHeight:I

    return v0
.end method

.method public getDesiredMinimumWidth()I
    .locals 1

    .prologue
    .line 333
    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mIWallpaperEngine:Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;

    iget v0, v0, Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;->mReqWidth:I

    return v0
.end method

.method public getSurfaceHolder()Landroid/view/SurfaceHolder;
    .locals 1

    .prologue
    .line 324
    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    return-object v0
.end method

.method public isPreview()Z
    .locals 1

    .prologue
    .line 360
    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mIWallpaperEngine:Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;

    iget-boolean v0, v0, Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;->mIsPreview:Z

    return v0
.end method

.method public isVisible()Z
    .locals 1

    .prologue
    .line 351
    iget-boolean v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mReportedVisible:Z

    return v0
.end method

.method public onCommand(Ljava/lang/String;IIILandroid/os/Bundle;Z)Landroid/os/Bundle;
    .locals 1
    .parameter "action"
    .parameter "x"
    .parameter "y"
    .parameter "z"
    .parameter "extras"
    .parameter "resultRequested"

    .prologue
    .line 476
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate(Landroid/view/SurfaceHolder;)V
    .locals 0
    .parameter "surfaceHolder"

    .prologue
    .line 408
    return-void
.end method

.method public onDesiredSizeChanged(II)V
    .locals 0
    .parameter "desiredWidth"
    .parameter "desiredHeight"

    .prologue
    .line 484
    return-void
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 416
    return-void
.end method

.method public onHoverEvent(Landroid/view/MotionEvent;)V
    .locals 0
    .parameter "event"

    .prologue
    .line 444
    return-void
.end method

.method public onOffsetsChanged(FFFFII)V
    .locals 0
    .parameter "xOffset"
    .parameter "yOffset"
    .parameter "xOffsetStep"
    .parameter "yOffsetStep"
    .parameter "xPixelOffset"
    .parameter "yPixelOffset"

    .prologue
    .line 455
    return-void
.end method

.method public onSurfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 0
    .parameter "holder"
    .parameter "format"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 491
    return-void
.end method

.method public onSurfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 0
    .parameter "holder"

    .prologue
    .line 505
    return-void
.end method

.method public onSurfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 0
    .parameter "holder"

    .prologue
    .line 512
    return-void
.end method

.method public onSurfaceRedrawNeeded(Landroid/view/SurfaceHolder;)V
    .locals 0
    .parameter "holder"

    .prologue
    .line 498
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)V
    .locals 0
    .parameter "event"

    .prologue
    .line 434
    return-void
.end method

.method public onVisibilityChanged(Z)V
    .locals 0
    .parameter "visible"

    .prologue
    .line 424
    return-void
.end method

.method reportSurfaceDestroyed()V
    .locals 6

    .prologue
    .line 935
    iget-boolean v5, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mSurfaceCreated:Z

    if-eqz v5, :cond_1

    .line 936
    const/4 v5, 0x0

    iput-boolean v5, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mSurfaceCreated:Z

    .line 937
    iget-object v5, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    invoke-virtual {v5}, Lcom/android/internal/view/BaseSurfaceHolder;->ungetCallbacks()V

    .line 938
    iget-object v5, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    invoke-virtual {v5}, Lcom/android/internal/view/BaseSurfaceHolder;->getCallbacks()[Landroid/view/SurfaceHolder$Callback;

    move-result-object v2

    .line 939
    .local v2, callbacks:[Landroid/view/SurfaceHolder$Callback;
    if-eqz v2, :cond_0

    .line 940
    move-object v0, v2

    .local v0, arr$:[Landroid/view/SurfaceHolder$Callback;
    array-length v4, v0

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_0
    if-ge v3, v4, :cond_0

    aget-object v1, v0, v3

    .line 941
    .local v1, c:Landroid/view/SurfaceHolder$Callback;
    iget-object v5, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    invoke-interface {v1, v5}, Landroid/view/SurfaceHolder$Callback;->surfaceDestroyed(Landroid/view/SurfaceHolder;)V

    .line 940
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 946
    .end local v0           #arr$:[Landroid/view/SurfaceHolder$Callback;
    .end local v1           #c:Landroid/view/SurfaceHolder$Callback;
    .end local v3           #i$:I
    .end local v4           #len$:I
    :cond_0
    iget-object v5, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    invoke-virtual {p0, v5}, Landroid/service/wallpaper/WallpaperService$Engine;->onSurfaceDestroyed(Landroid/view/SurfaceHolder;)V

    .line 948
    .end local v2           #callbacks:[Landroid/view/SurfaceHolder$Callback;
    :cond_1
    return-void
.end method

.method reportVisibility()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 852
    iget-boolean v2, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mDestroyed:Z

    if-nez v2, :cond_1

    .line 853
    iget-boolean v2, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mVisible:Z

    if-eqz v2, :cond_2

    iget-boolean v2, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mScreenOn:Z

    if-eqz v2, :cond_2

    const/4 v0, 0x1

    .line 854
    .local v0, visible:Z
    :goto_0
    iget-boolean v2, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mReportedVisible:Z

    if-eq v2, v0, :cond_1

    .line 855
    iput-boolean v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mReportedVisible:Z

    .line 858
    if-eqz v0, :cond_0

    .line 862
    invoke-virtual {p0, v1}, Landroid/service/wallpaper/WallpaperService$Engine;->doOffsetsChanged(Z)V

    .line 863
    invoke-virtual {p0, v1, v1, v1}, Landroid/service/wallpaper/WallpaperService$Engine;->updateSurface(ZZZ)V

    .line 865
    :cond_0
    invoke-virtual {p0, v0}, Landroid/service/wallpaper/WallpaperService$Engine;->onVisibilityChanged(Z)V

    .line 868
    .end local v0           #visible:Z
    :cond_1
    return-void

    :cond_2
    move v0, v1

    .line 853
    goto :goto_0
.end method

.method public setFixedSizeAllowed(Z)V
    .locals 0
    .parameter "allowed"

    .prologue
    .line 400
    iput-boolean p1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mFixedSizeAllowed:Z

    .line 401
    return-void
.end method

.method public setOffsetNotificationsEnabled(Z)V
    .locals 2
    .parameter "enabled"

    .prologue
    const/4 v1, 0x0

    .line 388
    if-eqz p1, :cond_1

    iget v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mWindowPrivateFlags:I

    or-int/lit8 v0, v0, 0x4

    :goto_0
    iput v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mWindowPrivateFlags:I

    .line 393
    iget-boolean v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mCreated:Z

    if-eqz v0, :cond_0

    .line 394
    invoke-virtual {p0, v1, v1, v1}, Landroid/service/wallpaper/WallpaperService$Engine;->updateSurface(ZZZ)V

    .line 396
    :cond_0
    return-void

    .line 388
    :cond_1
    iget v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mWindowPrivateFlags:I

    and-int/lit8 v0, v0, -0x5

    goto :goto_0
.end method

.method public setTouchEventsEnabled(Z)V
    .locals 2
    .parameter "enabled"

    .prologue
    const/4 v1, 0x0

    .line 371
    if-eqz p1, :cond_1

    iget v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mWindowFlags:I

    and-int/lit8 v0, v0, -0x11

    :goto_0
    iput v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mWindowFlags:I

    .line 374
    iget-boolean v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mCreated:Z

    if-eqz v0, :cond_0

    .line 375
    invoke-virtual {p0, v1, v1, v1}, Landroid/service/wallpaper/WallpaperService$Engine;->updateSurface(ZZZ)V

    .line 377
    :cond_0
    return-void

    .line 371
    :cond_1
    iget v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mWindowFlags:I

    or-int/lit8 v0, v0, 0x10

    goto :goto_0
.end method

.method updateSurface(ZZZ)V
    .locals 37
    .parameter "forceRelayout"
    .parameter "forceReport"
    .parameter "redrawNeeded"

    .prologue
    .line 581
    move-object/from16 v0, p0

    iget-boolean v2, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mDestroyed:Z

    if-eqz v2, :cond_1

    .line 582
    const-string v2, "WallpaperService"

    const-string v3, "Ignoring updateSurface: destroyed"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 800
    :cond_0
    :goto_0
    return-void

    .line 586
    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    invoke-virtual {v2}, Lcom/android/internal/view/BaseSurfaceHolder;->getRequestedWidth()I

    move-result v29

    .line 587
    .local v29, myWidth:I
    if-gtz v29, :cond_2

    const/16 v29, -0x1

    .line 588
    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    invoke-virtual {v2}, Lcom/android/internal/view/BaseSurfaceHolder;->getRequestedHeight()I

    move-result v28

    .line 589
    .local v28, myHeight:I
    if-gtz v28, :cond_3

    const/16 v28, -0x1

    .line 591
    :cond_3
    move-object/from16 v0, p0

    iget-boolean v2, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mCreated:Z

    if-nez v2, :cond_9

    const/16 v18, 0x1

    .line 592
    .local v18, creating:Z
    :goto_1
    move-object/from16 v0, p0

    iget-boolean v2, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mSurfaceCreated:Z

    if-nez v2, :cond_a

    const/16 v33, 0x1

    .line 593
    .local v33, surfaceCreating:Z
    :goto_2
    move-object/from16 v0, p0

    iget v2, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mFormat:I

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    invoke-virtual {v3}, Lcom/android/internal/view/BaseSurfaceHolder;->getRequestedFormat()I

    move-result v3

    if-eq v2, v3, :cond_b

    const/16 v23, 0x1

    .line 594
    .local v23, formatChanged:Z
    :goto_3
    move-object/from16 v0, p0

    iget v2, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mWidth:I

    move/from16 v0, v29

    if-ne v2, v0, :cond_4

    move-object/from16 v0, p0

    iget v2, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mHeight:I

    move/from16 v0, v28

    if-eq v2, v0, :cond_c

    :cond_4
    const/16 v32, 0x1

    .line 595
    .local v32, sizeChanged:Z
    :goto_4
    move-object/from16 v0, p0

    iget v2, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mType:I

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    invoke-virtual {v3}, Lcom/android/internal/view/BaseSurfaceHolder;->getRequestedType()I

    move-result v3

    if-eq v2, v3, :cond_d

    const/16 v34, 0x1

    .line 596
    .local v34, typeChanged:Z
    :goto_5
    move-object/from16 v0, p0

    iget v2, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mCurWindowFlags:I

    move-object/from16 v0, p0

    iget v3, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mWindowFlags:I

    if-ne v2, v3, :cond_5

    move-object/from16 v0, p0

    iget v2, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mCurWindowPrivateFlags:I

    move-object/from16 v0, p0

    iget v3, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mWindowPrivateFlags:I

    if-eq v2, v3, :cond_e

    :cond_5
    const/16 v22, 0x1

    .line 599
    .local v22, flagsChanged:Z
    :goto_6
    const/4 v2, -0x1

    move/from16 v0, v29

    if-ne v0, v2, :cond_7

    const/4 v2, -0x1

    move/from16 v0, v28

    if-ne v0, v2, :cond_7

    .line 602
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/service/wallpaper/WallpaperService$Engine;->this$0:Landroid/service/wallpaper/WallpaperService;

    const-string/jumbo v3, "window"

    invoke-virtual {v2, v3}, Landroid/service/wallpaper/WallpaperService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/WindowManager;

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v20

    .line 604
    .local v20, display:Landroid/view/Display;
    const-string/jumbo v2, "window"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v36

    .line 607
    .local v36, windowmanager:Landroid/view/IWindowManager;
    :try_start_0
    invoke-interface/range {v36 .. v36}, Landroid/view/IWindowManager;->isNavigationBarVisible()Z

    move-result v26

    .line 608
    .local v26, isNavigationBarvisible:Z
    if-nez v26, :cond_f

    .line 609
    new-instance v30, Landroid/graphics/Point;

    invoke-direct/range {v30 .. v30}, Landroid/graphics/Point;-><init>()V

    .line 611
    .local v30, point:Landroid/graphics/Point;
    move-object/from16 v0, v20

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    .line 612
    move-object/from16 v0, v30

    iget v0, v0, Landroid/graphics/Point;->y:I

    move/from16 v28, v0

    .line 613
    move-object/from16 v0, v30

    iget v0, v0, Landroid/graphics/Point;->x:I

    move/from16 v29, v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    .line 622
    .end local v26           #isNavigationBarvisible:Z
    .end local v30           #point:Landroid/graphics/Point;
    :goto_7
    const-string v2, "WallpaperService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Display Width="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v29

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "   Height="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v28

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 624
    move-object/from16 v0, p0

    iget v2, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mWidth:I

    move/from16 v0, v29

    if-ne v2, v0, :cond_6

    move-object/from16 v0, p0

    iget v2, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mHeight:I

    move/from16 v0, v28

    if-eq v2, v0, :cond_10

    :cond_6
    const/16 v32, 0x1

    .line 627
    .end local v20           #display:Landroid/view/Display;
    .end local v36           #windowmanager:Landroid/view/IWindowManager;
    :cond_7
    :goto_8
    if-nez p1, :cond_8

    if-nez v18, :cond_8

    if-nez v33, :cond_8

    if-nez v23, :cond_8

    if-nez v32, :cond_8

    if-nez v34, :cond_8

    if-nez v22, :cond_8

    if-eqz p3, :cond_0

    .line 634
    :cond_8
    :try_start_1
    move/from16 v0, v29

    move-object/from16 v1, p0

    iput v0, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mWidth:I

    .line 635
    move/from16 v0, v28

    move-object/from16 v1, p0

    iput v0, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mHeight:I

    .line 636
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    invoke-virtual {v2}, Lcom/android/internal/view/BaseSurfaceHolder;->getRequestedFormat()I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mFormat:I

    .line 637
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    invoke-virtual {v2}, Lcom/android/internal/view/BaseSurfaceHolder;->getRequestedType()I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mType:I

    .line 639
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mLayout:Landroid/view/WindowManager$LayoutParams;

    const/4 v3, 0x0

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 640
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mLayout:Landroid/view/WindowManager$LayoutParams;

    const/4 v3, 0x0

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 641
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mLayout:Landroid/view/WindowManager$LayoutParams;

    move/from16 v0, v29

    iput v0, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 642
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mLayout:Landroid/view/WindowManager$LayoutParams;

    move/from16 v0, v28

    iput v0, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 644
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mLayout:Landroid/view/WindowManager$LayoutParams;

    move-object/from16 v0, p0

    iget v3, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mFormat:I

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 646
    move-object/from16 v0, p0

    iget v2, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mWindowFlags:I

    move-object/from16 v0, p0

    iput v2, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mCurWindowFlags:I

    .line 647
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mLayout:Landroid/view/WindowManager$LayoutParams;

    move-object/from16 v0, p0

    iget v3, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mWindowFlags:I

    or-int/lit16 v3, v3, 0x200

    or-int/lit16 v3, v3, 0x100

    or-int/lit8 v3, v3, 0x8

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 652
    move-object/from16 v0, p0

    iget v2, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mWindowPrivateFlags:I

    move-object/from16 v0, p0

    iput v2, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mCurWindowPrivateFlags:I

    .line 653
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mLayout:Landroid/view/WindowManager$LayoutParams;

    move-object/from16 v0, p0

    iget v3, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mWindowPrivateFlags:I

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 655
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mLayout:Landroid/view/WindowManager$LayoutParams;

    move-object/from16 v0, p0

    iget v3, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mType:I

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->memoryType:I

    .line 656
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mLayout:Landroid/view/WindowManager$LayoutParams;

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mWindowToken:Landroid/os/IBinder;

    iput-object v3, v2, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    .line 658
    move-object/from16 v0, p0

    iget-boolean v2, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mCreated:Z

    if-nez v2, :cond_12

    .line 659
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mLayout:Landroid/view/WindowManager$LayoutParams;

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mIWallpaperEngine:Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;

    iget v3, v3, Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;->mWindowType:I

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 660
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mLayout:Landroid/view/WindowManager$LayoutParams;

    const/16 v3, 0x33

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 661
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mLayout:Landroid/view/WindowManager$LayoutParams;

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/service/wallpaper/WallpaperService$Engine;->this$0:Landroid/service/wallpaper/WallpaperService;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 662
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mLayout:Landroid/view/WindowManager$LayoutParams;

    const v3, 0x10301e8

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 664
    new-instance v2, Landroid/view/InputChannel;

    invoke-direct {v2}, Landroid/view/InputChannel;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mInputChannel:Landroid/view/InputChannel;

    .line 665
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mSession:Landroid/view/IWindowSession;

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mWindow:Lcom/android/internal/view/BaseIWindow;

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mWindow:Lcom/android/internal/view/BaseIWindow;

    iget v4, v4, Lcom/android/internal/view/BaseIWindow;->mSeq:I

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mLayout:Landroid/view/WindowManager$LayoutParams;

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget-object v7, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mContentInsets:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v8, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mInputChannel:Landroid/view/InputChannel;

    invoke-interface/range {v2 .. v8}, Landroid/view/IWindowSession;->add(Landroid/view/IWindow;ILandroid/view/WindowManager$LayoutParams;ILandroid/graphics/Rect;Landroid/view/InputChannel;)I

    move-result v2

    if-gez v2, :cond_11

    .line 667
    const-string v2, "WallpaperService"

    const-string v3, "Failed to add window while updating wallpaper surface."

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 794
    :catch_0
    move-exception v2

    goto/16 :goto_0

    .line 591
    .end local v18           #creating:Z
    .end local v22           #flagsChanged:Z
    .end local v23           #formatChanged:Z
    .end local v32           #sizeChanged:Z
    .end local v33           #surfaceCreating:Z
    .end local v34           #typeChanged:Z
    :cond_9
    const/16 v18, 0x0

    goto/16 :goto_1

    .line 592
    .restart local v18       #creating:Z
    :cond_a
    const/16 v33, 0x0

    goto/16 :goto_2

    .line 593
    .restart local v33       #surfaceCreating:Z
    :cond_b
    const/16 v23, 0x0

    goto/16 :goto_3

    .line 594
    .restart local v23       #formatChanged:Z
    :cond_c
    const/16 v32, 0x0

    goto/16 :goto_4

    .line 595
    .restart local v32       #sizeChanged:Z
    :cond_d
    const/16 v34, 0x0

    goto/16 :goto_5

    .line 596
    .restart local v34       #typeChanged:Z
    :cond_e
    const/16 v22, 0x0

    goto/16 :goto_6

    .line 615
    .restart local v20       #display:Landroid/view/Display;
    .restart local v22       #flagsChanged:Z
    .restart local v26       #isNavigationBarvisible:Z
    .restart local v36       #windowmanager:Landroid/view/IWindowManager;
    :cond_f
    :try_start_2
    invoke-virtual/range {v20 .. v20}, Landroid/view/Display;->getHeight()I

    move-result v28

    .line 616
    invoke-virtual/range {v20 .. v20}, Landroid/view/Display;->getWidth()I
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1

    move-result v29

    goto/16 :goto_7

    .line 618
    .end local v26           #isNavigationBarvisible:Z
    :catch_1
    move-exception v21

    .line 619
    .local v21, e:Landroid/os/RemoteException;
    const-string v2, "WallpaperService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isNavigationBarVisible() RemoteException : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v21

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_7

    .line 624
    .end local v21           #e:Landroid/os/RemoteException;
    :cond_10
    const/16 v32, 0x0

    goto/16 :goto_8

    .line 670
    .end local v20           #display:Landroid/view/Display;
    .end local v36           #windowmanager:Landroid/view/IWindowManager;
    :cond_11
    const/4 v2, 0x1

    :try_start_3
    move-object/from16 v0, p0

    iput-boolean v2, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mCreated:Z

    .line 672
    new-instance v2, Landroid/service/wallpaper/WallpaperService$Engine$WallpaperInputEventReceiver;

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mInputChannel:Landroid/view/InputChannel;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-direct {v2, v0, v3, v4}, Landroid/service/wallpaper/WallpaperService$Engine$WallpaperInputEventReceiver;-><init>(Landroid/service/wallpaper/WallpaperService$Engine;Landroid/view/InputChannel;Landroid/os/Looper;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mInputEventReceiver:Landroid/service/wallpaper/WallpaperService$Engine$WallpaperInputEventReceiver;

    .line 676
    :cond_12
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    iget-object v2, v2, Lcom/android/internal/view/BaseSurfaceHolder;->mSurfaceLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 677
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mDrawingAllowed:Z

    .line 679
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mSession:Landroid/view/IWindowSession;

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mWindow:Lcom/android/internal/view/BaseIWindow;

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mWindow:Lcom/android/internal/view/BaseIWindow;

    iget v4, v4, Lcom/android/internal/view/BaseIWindow;->mSeq:I

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mLayout:Landroid/view/WindowManager$LayoutParams;

    move-object/from16 v0, p0

    iget v6, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mWidth:I

    move-object/from16 v0, p0

    iget v7, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mHeight:I

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mWinFrame:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mContentInsets:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mVisibleInsets:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mConfiguration:Landroid/content/res/Configuration;

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    iget-object v14, v14, Lcom/android/internal/view/BaseSurfaceHolder;->mSurface:Landroid/view/Surface;

    invoke-interface/range {v2 .. v14}, Landroid/view/IWindowSession;->relayout(Landroid/view/IWindow;ILandroid/view/WindowManager$LayoutParams;IIIILandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/content/res/Configuration;Landroid/view/Surface;)I

    move-result v31

    .line 687
    .local v31, relayoutResult:I
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mWinFrame:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v35

    .line 688
    .local v35, w:I
    move-object/from16 v0, p0

    iget v2, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mCurWidth:I

    move/from16 v0, v35

    if-eq v2, v0, :cond_13

    .line 689
    const/16 v32, 0x1

    .line 690
    move/from16 v0, v35

    move-object/from16 v1, p0

    iput v0, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mCurWidth:I

    .line 692
    :cond_13
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mWinFrame:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v24

    .line 693
    .local v24, h:I
    move-object/from16 v0, p0

    iget v2, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mCurHeight:I

    move/from16 v0, v24

    if-eq v2, v0, :cond_14

    .line 694
    const/16 v32, 0x1

    .line 695
    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mCurHeight:I

    .line 698
    :cond_14
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    move/from16 v0, v35

    move/from16 v1, v24

    invoke-virtual {v2, v0, v1}, Lcom/android/internal/view/BaseSurfaceHolder;->setSurfaceFrameSize(II)V

    .line 699
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    iget-object v2, v2, Lcom/android/internal/view/BaseSurfaceHolder;->mSurfaceLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 701
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    iget-object v2, v2, Lcom/android/internal/view/BaseSurfaceHolder;->mSurface:Landroid/view/Surface;

    invoke-virtual {v2}, Landroid/view/Surface;->isValid()Z

    move-result v2

    if-nez v2, :cond_15

    .line 702
    invoke-virtual/range {p0 .. p0}, Landroid/service/wallpaper/WallpaperService$Engine;->reportSurfaceDestroyed()V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_0

    .line 707
    :cond_15
    const/16 v19, 0x0

    .line 710
    .local v19, didSurface:Z
    :try_start_4
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    invoke-virtual {v2}, Lcom/android/internal/view/BaseSurfaceHolder;->ungetCallbacks()V

    .line 712
    if-eqz v33, :cond_16

    .line 713
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mIsCreating:Z

    .line 714
    const/16 v19, 0x1

    .line 717
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/service/wallpaper/WallpaperService$Engine;->onSurfaceCreated(Landroid/view/SurfaceHolder;)V

    .line 718
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    invoke-virtual {v2}, Lcom/android/internal/view/BaseSurfaceHolder;->getCallbacks()[Landroid/view/SurfaceHolder$Callback;

    move-result-object v17

    .line 719
    .local v17, callbacks:[Landroid/view/SurfaceHolder$Callback;
    if-eqz v17, :cond_16

    .line 720
    move-object/from16 v15, v17

    .local v15, arr$:[Landroid/view/SurfaceHolder$Callback;
    array-length v0, v15

    move/from16 v27, v0

    .local v27, len$:I
    const/16 v25, 0x0

    .local v25, i$:I
    :goto_9
    move/from16 v0, v25

    move/from16 v1, v27

    if-ge v0, v1, :cond_16

    aget-object v16, v15, v25

    .line 721
    .local v16, c:Landroid/view/SurfaceHolder$Callback;
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    move-object/from16 v0, v16

    invoke-interface {v0, v2}, Landroid/view/SurfaceHolder$Callback;->surfaceCreated(Landroid/view/SurfaceHolder;)V

    .line 720
    add-int/lit8 v25, v25, 0x1

    goto :goto_9

    .line 726
    .end local v15           #arr$:[Landroid/view/SurfaceHolder$Callback;
    .end local v16           #c:Landroid/view/SurfaceHolder$Callback;
    .end local v17           #callbacks:[Landroid/view/SurfaceHolder$Callback;
    .end local v25           #i$:I
    .end local v27           #len$:I
    :cond_16
    if-nez v18, :cond_17

    and-int/lit8 v2, v31, 0x2

    if-eqz v2, :cond_19

    :cond_17
    const/4 v2, 0x1

    :goto_a
    or-int p3, p3, v2

    .line 729
    if-nez p2, :cond_18

    if-nez v18, :cond_18

    if-nez v33, :cond_18

    if-nez v23, :cond_18

    if-eqz v32, :cond_1a

    .line 742
    :cond_18
    const/16 v19, 0x1

    .line 743
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    move-object/from16 v0, p0

    iget v3, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mFormat:I

    move-object/from16 v0, p0

    iget v4, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mCurWidth:I

    move-object/from16 v0, p0

    iget v5, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mCurHeight:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/service/wallpaper/WallpaperService$Engine;->onSurfaceChanged(Landroid/view/SurfaceHolder;III)V

    .line 745
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    invoke-virtual {v2}, Lcom/android/internal/view/BaseSurfaceHolder;->getCallbacks()[Landroid/view/SurfaceHolder$Callback;

    move-result-object v17

    .line 746
    .restart local v17       #callbacks:[Landroid/view/SurfaceHolder$Callback;
    if-eqz v17, :cond_1a

    .line 747
    move-object/from16 v15, v17

    .restart local v15       #arr$:[Landroid/view/SurfaceHolder$Callback;
    array-length v0, v15

    move/from16 v27, v0

    .restart local v27       #len$:I
    const/16 v25, 0x0

    .restart local v25       #i$:I
    :goto_b
    move/from16 v0, v25

    move/from16 v1, v27

    if-ge v0, v1, :cond_1a

    aget-object v16, v15, v25

    .line 748
    .restart local v16       #c:Landroid/view/SurfaceHolder$Callback;
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    move-object/from16 v0, p0

    iget v3, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mFormat:I

    move-object/from16 v0, p0

    iget v4, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mCurWidth:I

    move-object/from16 v0, p0

    iget v5, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mCurHeight:I

    move-object/from16 v0, v16

    invoke-interface {v0, v2, v3, v4, v5}, Landroid/view/SurfaceHolder$Callback;->surfaceChanged(Landroid/view/SurfaceHolder;III)V

    .line 747
    add-int/lit8 v25, v25, 0x1

    goto :goto_b

    .line 726
    .end local v15           #arr$:[Landroid/view/SurfaceHolder$Callback;
    .end local v16           #c:Landroid/view/SurfaceHolder$Callback;
    .end local v17           #callbacks:[Landroid/view/SurfaceHolder$Callback;
    .end local v25           #i$:I
    .end local v27           #len$:I
    :cond_19
    const/4 v2, 0x0

    goto :goto_a

    .line 754
    :cond_1a
    if-eqz p3, :cond_1c

    .line 755
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/service/wallpaper/WallpaperService$Engine;->onSurfaceRedrawNeeded(Landroid/view/SurfaceHolder;)V

    .line 756
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    invoke-virtual {v2}, Lcom/android/internal/view/BaseSurfaceHolder;->getCallbacks()[Landroid/view/SurfaceHolder$Callback;

    move-result-object v17

    .line 757
    .restart local v17       #callbacks:[Landroid/view/SurfaceHolder$Callback;
    if-eqz v17, :cond_1c

    .line 758
    move-object/from16 v15, v17

    .restart local v15       #arr$:[Landroid/view/SurfaceHolder$Callback;
    array-length v0, v15

    move/from16 v27, v0

    .restart local v27       #len$:I
    const/16 v25, 0x0

    .restart local v25       #i$:I
    :goto_c
    move/from16 v0, v25

    move/from16 v1, v27

    if-ge v0, v1, :cond_1c

    aget-object v16, v15, v25

    .line 759
    .restart local v16       #c:Landroid/view/SurfaceHolder$Callback;
    move-object/from16 v0, v16

    instance-of v2, v0, Landroid/view/SurfaceHolder$Callback2;

    if-eqz v2, :cond_1b

    .line 760
    check-cast v16, Landroid/view/SurfaceHolder$Callback2;

    .end local v16           #c:Landroid/view/SurfaceHolder$Callback;
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    move-object/from16 v0, v16

    invoke-interface {v0, v2}, Landroid/view/SurfaceHolder$Callback2;->surfaceRedrawNeeded(Landroid/view/SurfaceHolder;)V

    .line 758
    :cond_1b
    add-int/lit8 v25, v25, 0x1

    goto :goto_c

    .line 767
    .end local v15           #arr$:[Landroid/view/SurfaceHolder$Callback;
    .end local v17           #callbacks:[Landroid/view/SurfaceHolder$Callback;
    .end local v25           #i$:I
    .end local v27           #len$:I
    :cond_1c
    if-eqz v19, :cond_1e

    move-object/from16 v0, p0

    iget-boolean v2, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mReportedVisible:Z

    if-nez v2, :cond_1e

    .line 773
    move-object/from16 v0, p0

    iget-boolean v2, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mIsCreating:Z

    if-eqz v2, :cond_1d

    .line 780
    const/4 v2, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/service/wallpaper/WallpaperService$Engine;->onVisibilityChanged(Z)V

    .line 784
    :cond_1d
    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/service/wallpaper/WallpaperService$Engine;->onVisibilityChanged(Z)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 788
    :cond_1e
    const/4 v2, 0x0

    :try_start_5
    move-object/from16 v0, p0

    iput-boolean v2, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mIsCreating:Z

    .line 789
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mSurfaceCreated:Z

    .line 790
    if-eqz p3, :cond_0

    .line 791
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mSession:Landroid/view/IWindowSession;

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mWindow:Lcom/android/internal/view/BaseIWindow;

    invoke-interface {v2, v3}, Landroid/view/IWindowSession;->finishDrawing(Landroid/view/IWindow;)V

    goto/16 :goto_0

    .line 788
    :catchall_0
    move-exception v2

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mIsCreating:Z

    .line 789
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mSurfaceCreated:Z

    .line 790
    if-eqz p3, :cond_1f

    .line 791
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mSession:Landroid/view/IWindowSession;

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mWindow:Lcom/android/internal/view/BaseIWindow;

    invoke-interface {v3, v4}, Landroid/view/IWindowSession;->finishDrawing(Landroid/view/IWindow;)V

    .line 788
    :cond_1f
    throw v2
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_0
.end method
