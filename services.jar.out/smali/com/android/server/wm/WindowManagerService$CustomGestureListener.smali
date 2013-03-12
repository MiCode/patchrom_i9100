.class Lcom/android/server/wm/WindowManagerService$CustomGestureListener;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "WindowManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/WindowManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CustomGestureListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wm/WindowManagerService;


# direct methods
.method private constructor <init>(Lcom/android/server/wm/WindowManagerService;)V
    .locals 0
    .parameter

    .prologue
    .line 1005
    iput-object p1, p0, Lcom/android/server/wm/WindowManagerService$CustomGestureListener;->this$0:Lcom/android/server/wm/WindowManagerService;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/WindowManagerService$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1005
    invoke-direct {p0, p1}, Lcom/android/server/wm/WindowManagerService$CustomGestureListener;-><init>(Lcom/android/server/wm/WindowManagerService;)V

    return-void
.end method


# virtual methods
.method public onDoubleTap(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "e"

    .prologue
    .line 1023
    const/4 v0, 0x1

    return v0
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 5
    .parameter "e1"
    .parameter "e2"
    .parameter "velocityX"
    .parameter "velocityY"

    .prologue
    const/4 v4, 0x0

    const/high16 v3, 0x4348

    const/high16 v2, 0x42f0

    .line 1008
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const/high16 v1, 0x437a

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1

    .line 1018
    :cond_0
    :goto_0
    return v4

    .line 1013
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    sub-float/2addr v0, v1

    cmpl-float v0, v0, v2

    if-lez v0, :cond_2

    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpl-float v0, v0, v3

    if-lez v0, :cond_2

    .line 1014
    const-string v0, "WindowManager"

    const-string v1, "TODO : sending intent LEFT SWIPE"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1015
    :cond_2
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    sub-float/2addr v0, v1

    cmpl-float v0, v0, v2

    if-lez v0, :cond_0

    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpl-float v0, v0, v3

    if-lez v0, :cond_0

    .line 1016
    const-string v0, "WindowManager"

    const-string v1, "TODO : sending intent RIGHT SWIPE"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
