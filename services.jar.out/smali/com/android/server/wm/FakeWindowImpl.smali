.class public final Lcom/android/server/wm/FakeWindowImpl;
.super Ljava/lang/Object;
.source "FakeWindowImpl.java"

# interfaces
.implements Landroid/view/WindowManagerPolicy$FakeWindow;


# instance fields
.field final mApplicationHandle:Lcom/android/server/input/InputApplicationHandle;

.field final mClientChannel:Landroid/view/InputChannel;

.field final mInputEventReceiver:Landroid/view/InputEventReceiver;

.field final mServerChannel:Landroid/view/InputChannel;

.field final mService:Lcom/android/server/wm/WindowManagerService;

.field mTouchFullscreen:Z

.field final mWindowHandle:Lcom/android/server/input/InputWindowHandle;

.field final mWindowLayer:I


# direct methods
.method public constructor <init>(Lcom/android/server/wm/WindowManagerService;Landroid/os/Looper;Landroid/view/InputEventReceiver$Factory;Ljava/lang/String;IIZZZ)V
    .locals 4
    .parameter "service"
    .parameter "looper"
    .parameter "inputEventReceiverFactory"
    .parameter "name"
    .parameter "windowType"
    .parameter "layoutParamsFlags"
    .parameter "canReceiveKeys"
    .parameter "hasFocus"
    .parameter "touchFullscreen"

    .prologue
    .line 43
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-object p1, p0, Lcom/android/server/wm/FakeWindowImpl;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 46
    invoke-static {p4}, Landroid/view/InputChannel;->openInputChannelPair(Ljava/lang/String;)[Landroid/view/InputChannel;

    move-result-object v0

    .line 47
    .local v0, channels:[Landroid/view/InputChannel;
    const/4 v1, 0x0

    aget-object v1, v0, v1

    iput-object v1, p0, Lcom/android/server/wm/FakeWindowImpl;->mServerChannel:Landroid/view/InputChannel;

    .line 48
    const/4 v1, 0x1

    aget-object v1, v0, v1

    iput-object v1, p0, Lcom/android/server/wm/FakeWindowImpl;->mClientChannel:Landroid/view/InputChannel;

    .line 49
    iget-object v1, p0, Lcom/android/server/wm/FakeWindowImpl;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mInputManager:Lcom/android/server/input/InputManagerService;

    iget-object v2, p0, Lcom/android/server/wm/FakeWindowImpl;->mServerChannel:Landroid/view/InputChannel;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/android/server/input/InputManagerService;->registerInputChannel(Landroid/view/InputChannel;Lcom/android/server/input/InputWindowHandle;)V

    .line 51
    iget-object v1, p0, Lcom/android/server/wm/FakeWindowImpl;->mClientChannel:Landroid/view/InputChannel;

    invoke-interface {p3, v1, p2}, Landroid/view/InputEventReceiver$Factory;->createInputEventReceiver(Landroid/view/InputChannel;Landroid/os/Looper;)Landroid/view/InputEventReceiver;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/wm/FakeWindowImpl;->mInputEventReceiver:Landroid/view/InputEventReceiver;

    .line 54
    new-instance v1, Lcom/android/server/input/InputApplicationHandle;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/android/server/input/InputApplicationHandle;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/android/server/wm/FakeWindowImpl;->mApplicationHandle:Lcom/android/server/input/InputApplicationHandle;

    .line 55
    iget-object v1, p0, Lcom/android/server/wm/FakeWindowImpl;->mApplicationHandle:Lcom/android/server/input/InputApplicationHandle;

    iput-object p4, v1, Lcom/android/server/input/InputApplicationHandle;->name:Ljava/lang/String;

    .line 56
    iget-object v1, p0, Lcom/android/server/wm/FakeWindowImpl;->mApplicationHandle:Lcom/android/server/input/InputApplicationHandle;

    const-wide v2, 0x12a05f200L

    iput-wide v2, v1, Lcom/android/server/input/InputApplicationHandle;->dispatchingTimeoutNanos:J

    .line 59
    new-instance v1, Lcom/android/server/input/InputWindowHandle;

    iget-object v2, p0, Lcom/android/server/wm/FakeWindowImpl;->mApplicationHandle:Lcom/android/server/input/InputApplicationHandle;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/android/server/input/InputWindowHandle;-><init>(Lcom/android/server/input/InputApplicationHandle;Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/android/server/wm/FakeWindowImpl;->mWindowHandle:Lcom/android/server/input/InputWindowHandle;

    .line 60
    iget-object v1, p0, Lcom/android/server/wm/FakeWindowImpl;->mWindowHandle:Lcom/android/server/input/InputWindowHandle;

    iput-object p4, v1, Lcom/android/server/input/InputWindowHandle;->name:Ljava/lang/String;

    .line 61
    iget-object v1, p0, Lcom/android/server/wm/FakeWindowImpl;->mWindowHandle:Lcom/android/server/input/InputWindowHandle;

    iget-object v2, p0, Lcom/android/server/wm/FakeWindowImpl;->mServerChannel:Landroid/view/InputChannel;

    iput-object v2, v1, Lcom/android/server/input/InputWindowHandle;->inputChannel:Landroid/view/InputChannel;

    .line 62
    invoke-direct {p0, p5}, Lcom/android/server/wm/FakeWindowImpl;->getLayerLw(I)I

    move-result v1

    iput v1, p0, Lcom/android/server/wm/FakeWindowImpl;->mWindowLayer:I

    .line 63
    iget-object v1, p0, Lcom/android/server/wm/FakeWindowImpl;->mWindowHandle:Lcom/android/server/input/InputWindowHandle;

    iget v2, p0, Lcom/android/server/wm/FakeWindowImpl;->mWindowLayer:I

    iput v2, v1, Lcom/android/server/input/InputWindowHandle;->layer:I

    .line 64
    iget-object v1, p0, Lcom/android/server/wm/FakeWindowImpl;->mWindowHandle:Lcom/android/server/input/InputWindowHandle;

    iput p6, v1, Lcom/android/server/input/InputWindowHandle;->layoutParamsFlags:I

    .line 65
    iget-object v1, p0, Lcom/android/server/wm/FakeWindowImpl;->mWindowHandle:Lcom/android/server/input/InputWindowHandle;

    iput p5, v1, Lcom/android/server/input/InputWindowHandle;->layoutParamsType:I

    .line 66
    iget-object v1, p0, Lcom/android/server/wm/FakeWindowImpl;->mWindowHandle:Lcom/android/server/input/InputWindowHandle;

    const-wide v2, 0x12a05f200L

    iput-wide v2, v1, Lcom/android/server/input/InputWindowHandle;->dispatchingTimeoutNanos:J

    .line 68
    iget-object v1, p0, Lcom/android/server/wm/FakeWindowImpl;->mWindowHandle:Lcom/android/server/input/InputWindowHandle;

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/android/server/input/InputWindowHandle;->visible:Z

    .line 69
    iget-object v1, p0, Lcom/android/server/wm/FakeWindowImpl;->mWindowHandle:Lcom/android/server/input/InputWindowHandle;

    iput-boolean p7, v1, Lcom/android/server/input/InputWindowHandle;->canReceiveKeys:Z

    .line 70
    iget-object v1, p0, Lcom/android/server/wm/FakeWindowImpl;->mWindowHandle:Lcom/android/server/input/InputWindowHandle;

    iput-boolean p8, v1, Lcom/android/server/input/InputWindowHandle;->hasFocus:Z

    .line 71
    iget-object v1, p0, Lcom/android/server/wm/FakeWindowImpl;->mWindowHandle:Lcom/android/server/input/InputWindowHandle;

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/android/server/input/InputWindowHandle;->hasWallpaper:Z

    .line 72
    iget-object v1, p0, Lcom/android/server/wm/FakeWindowImpl;->mWindowHandle:Lcom/android/server/input/InputWindowHandle;

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/android/server/input/InputWindowHandle;->paused:Z

    .line 73
    iget-object v1, p0, Lcom/android/server/wm/FakeWindowImpl;->mWindowHandle:Lcom/android/server/input/InputWindowHandle;

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v2

    iput v2, v1, Lcom/android/server/input/InputWindowHandle;->ownerPid:I

    .line 74
    iget-object v1, p0, Lcom/android/server/wm/FakeWindowImpl;->mWindowHandle:Lcom/android/server/input/InputWindowHandle;

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v2

    iput v2, v1, Lcom/android/server/input/InputWindowHandle;->ownerUid:I

    .line 75
    iget-object v1, p0, Lcom/android/server/wm/FakeWindowImpl;->mWindowHandle:Lcom/android/server/input/InputWindowHandle;

    const/4 v2, 0x0

    iput v2, v1, Lcom/android/server/input/InputWindowHandle;->inputFeatures:I

    .line 76
    iget-object v1, p0, Lcom/android/server/wm/FakeWindowImpl;->mWindowHandle:Lcom/android/server/input/InputWindowHandle;

    const/high16 v2, 0x3f80

    iput v2, v1, Lcom/android/server/input/InputWindowHandle;->scaleFactor:F

    .line 78
    iput-boolean p9, p0, Lcom/android/server/wm/FakeWindowImpl;->mTouchFullscreen:Z

    .line 79
    return-void
.end method

.method private getLayerLw(I)I
    .locals 1
    .parameter "windowType"

    .prologue
    .line 106
    iget-object v0, p0, Lcom/android/server/wm/FakeWindowImpl;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    invoke-interface {v0, p1}, Landroid/view/WindowManagerPolicy;->windowTypeToLayerLw(I)I

    move-result v0

    mul-int/lit16 v0, v0, 0x2710

    add-int/lit16 v0, v0, 0x3e8

    return v0
.end method


# virtual methods
.method public dismiss()V
    .locals 3

    .prologue
    .line 95
    iget-object v0, p0, Lcom/android/server/wm/FakeWindowImpl;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v1

    .line 96
    :try_start_0
    iget-object v0, p0, Lcom/android/server/wm/FakeWindowImpl;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0, p0}, Lcom/android/server/wm/WindowManagerService;->removeFakeWindowLocked(Landroid/view/WindowManagerPolicy$FakeWindow;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 97
    iget-object v0, p0, Lcom/android/server/wm/FakeWindowImpl;->mInputEventReceiver:Landroid/view/InputEventReceiver;

    invoke-virtual {v0}, Landroid/view/InputEventReceiver;->dispose()V

    .line 98
    iget-object v0, p0, Lcom/android/server/wm/FakeWindowImpl;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mInputManager:Lcom/android/server/input/InputManagerService;

    iget-object v2, p0, Lcom/android/server/wm/FakeWindowImpl;->mServerChannel:Landroid/view/InputChannel;

    invoke-virtual {v0, v2}, Lcom/android/server/input/InputManagerService;->unregisterInputChannel(Landroid/view/InputChannel;)V

    .line 99
    iget-object v0, p0, Lcom/android/server/wm/FakeWindowImpl;->mClientChannel:Landroid/view/InputChannel;

    invoke-virtual {v0}, Landroid/view/InputChannel;->dispose()V

    .line 100
    iget-object v0, p0, Lcom/android/server/wm/FakeWindowImpl;->mServerChannel:Landroid/view/InputChannel;

    invoke-virtual {v0}, Landroid/view/InputChannel;->dispose()V

    .line 102
    :cond_0
    monitor-exit v1

    .line 103
    return-void

    .line 102
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method layout(II)V
    .locals 2
    .parameter "dw"
    .parameter "dh"

    .prologue
    const/4 v1, 0x0

    .line 82
    iget-boolean v0, p0, Lcom/android/server/wm/FakeWindowImpl;->mTouchFullscreen:Z

    if-eqz v0, :cond_0

    .line 83
    iget-object v0, p0, Lcom/android/server/wm/FakeWindowImpl;->mWindowHandle:Lcom/android/server/input/InputWindowHandle;

    iget-object v0, v0, Lcom/android/server/input/InputWindowHandle;->touchableRegion:Landroid/graphics/Region;

    invoke-virtual {v0, v1, v1, p1, p2}, Landroid/graphics/Region;->set(IIII)Z

    .line 87
    :goto_0
    iget-object v0, p0, Lcom/android/server/wm/FakeWindowImpl;->mWindowHandle:Lcom/android/server/input/InputWindowHandle;

    iput v1, v0, Lcom/android/server/input/InputWindowHandle;->frameLeft:I

    .line 88
    iget-object v0, p0, Lcom/android/server/wm/FakeWindowImpl;->mWindowHandle:Lcom/android/server/input/InputWindowHandle;

    iput v1, v0, Lcom/android/server/input/InputWindowHandle;->frameTop:I

    .line 89
    iget-object v0, p0, Lcom/android/server/wm/FakeWindowImpl;->mWindowHandle:Lcom/android/server/input/InputWindowHandle;

    iput p1, v0, Lcom/android/server/input/InputWindowHandle;->frameRight:I

    .line 90
    iget-object v0, p0, Lcom/android/server/wm/FakeWindowImpl;->mWindowHandle:Lcom/android/server/input/InputWindowHandle;

    iput p2, v0, Lcom/android/server/input/InputWindowHandle;->frameBottom:I

    .line 91
    return-void

    .line 85
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/FakeWindowImpl;->mWindowHandle:Lcom/android/server/input/InputWindowHandle;

    iget-object v0, v0, Lcom/android/server/input/InputWindowHandle;->touchableRegion:Landroid/graphics/Region;

    invoke-virtual {v0}, Landroid/graphics/Region;->setEmpty()V

    goto :goto_0
.end method
