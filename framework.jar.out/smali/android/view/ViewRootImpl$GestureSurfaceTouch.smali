.class final Landroid/view/ViewRootImpl$GestureSurfaceTouch;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "ViewRootImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/ViewRootImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "GestureSurfaceTouch"
.end annotation


# instance fields
.field private final TOUCH_DISABLE:I

.field private final TOUCH_ENABLE:I

.field private mContext:Landroid/content/Context;

.field final synthetic this$0:Landroid/view/ViewRootImpl;


# direct methods
.method public constructor <init>(Landroid/view/ViewRootImpl;Landroid/content/Context;)V
    .locals 1
    .parameter
    .parameter "baseContext"

    .prologue
    .line 410
    iput-object p1, p0, Landroid/view/ViewRootImpl$GestureSurfaceTouch;->this$0:Landroid/view/ViewRootImpl;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    .line 407
    const/4 v0, 0x1

    iput v0, p0, Landroid/view/ViewRootImpl$GestureSurfaceTouch;->TOUCH_DISABLE:I

    .line 408
    const/4 v0, 0x2

    iput v0, p0, Landroid/view/ViewRootImpl$GestureSurfaceTouch;->TOUCH_ENABLE:I

    .line 411
    iput-object p2, p0, Landroid/view/ViewRootImpl$GestureSurfaceTouch;->mContext:Landroid/content/Context;

    .line 412
    return-void
.end method


# virtual methods
.method public onHandTouched(Landroid/view/MotionEvent;)Z
    .locals 3
    .parameter "e"

    .prologue
    .line 466
    const-string v1, "ViewRootImpl"

    const-string v2, "[Surface Touch Event] Hand Touched"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 467
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.HAND_TOUCHED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 468
    .local v0, statusIntent:Landroid/content/Intent;
    iget-object v1, p0, Landroid/view/ViewRootImpl$GestureSurfaceTouch;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 469
    const/4 v1, 0x0

    return v1
.end method

.method public onPalm(Landroid/view/MotionEvent;)Z
    .locals 5
    .parameter "e"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 437
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    if-ne v1, v3, :cond_0

    .line 438
    const-string v1, "ViewRootImpl"

    const-string v2, "[Surface Touch Event] Palm Touch Up"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 439
    iget-object v1, p0, Landroid/view/ViewRootImpl$GestureSurfaceTouch;->this$0:Landroid/view/ViewRootImpl;

    #setter for: Landroid/view/ViewRootImpl;->g_bPalmTouched:Z
    invoke-static {v1, v4}, Landroid/view/ViewRootImpl;->access$102(Landroid/view/ViewRootImpl;Z)Z

    .line 440
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.PALM_UP"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 441
    .local v0, statusIntent:Landroid/content/Intent;
    iget-object v1, p0, Landroid/view/ViewRootImpl$GestureSurfaceTouch;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 449
    :goto_0
    return v4

    .line 443
    .end local v0           #statusIntent:Landroid/content/Intent;
    :cond_0
    const-string v1, "ViewRootImpl"

    const-string v2, "[Surface Touch Event] Palm Touch Down"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 444
    iget-object v1, p0, Landroid/view/ViewRootImpl$GestureSurfaceTouch;->this$0:Landroid/view/ViewRootImpl;

    #setter for: Landroid/view/ViewRootImpl;->g_bPalmTouched:Z
    invoke-static {v1, v3}, Landroid/view/ViewRootImpl;->access$102(Landroid/view/ViewRootImpl;Z)Z

    .line 445
    iget-object v1, p0, Landroid/view/ViewRootImpl$GestureSurfaceTouch;->this$0:Landroid/view/ViewRootImpl;

    #setter for: Landroid/view/ViewRootImpl;->g_bPalmTouchedKey:Z
    invoke-static {v1, v3}, Landroid/view/ViewRootImpl;->access$202(Landroid/view/ViewRootImpl;Z)Z

    .line 446
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.PALM_DOWN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 447
    .restart local v0       #statusIntent:Landroid/content/Intent;
    iget-object v1, p0, Landroid/view/ViewRootImpl$GestureSurfaceTouch;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public onPalmRejection(I)Z
    .locals 3
    .parameter "status"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 428
    if-ne p1, v2, :cond_1

    .line 429
    iget-object v0, p0, Landroid/view/ViewRootImpl$GestureSurfaceTouch;->this$0:Landroid/view/ViewRootImpl;

    #setter for: Landroid/view/ViewRootImpl;->g_bNotTouched:Z
    invoke-static {v0, v2}, Landroid/view/ViewRootImpl;->access$002(Landroid/view/ViewRootImpl;Z)Z

    .line 433
    :cond_0
    :goto_0
    return v1

    .line 430
    :cond_1
    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 431
    iget-object v0, p0, Landroid/view/ViewRootImpl$GestureSurfaceTouch;->this$0:Landroid/view/ViewRootImpl;

    #setter for: Landroid/view/ViewRootImpl;->g_bNotTouched:Z
    invoke-static {v0, v1}, Landroid/view/ViewRootImpl;->access$002(Landroid/view/ViewRootImpl;Z)Z

    goto :goto_0
.end method

.method public onSweepDown(I)Z
    .locals 3
    .parameter "direction"

    .prologue
    .line 415
    const/4 v1, 0x1

    if-ne p1, v1, :cond_1

    .line 416
    const-string v1, "ViewRootImpl"

    const-string v2, "[Surface Touch Event] Palm Sweep - Right"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 417
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.SWEEP_RIGHT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 418
    .local v0, statusIntent:Landroid/content/Intent;
    iget-object v1, p0, Landroid/view/ViewRootImpl$GestureSurfaceTouch;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 424
    .end local v0           #statusIntent:Landroid/content/Intent;
    :cond_0
    :goto_0
    const/4 v1, 0x0

    return v1

    .line 419
    :cond_1
    const/4 v1, 0x2

    if-ne p1, v1, :cond_0

    .line 420
    const-string v1, "ViewRootImpl"

    const-string v2, "[Surface Touch Event] Palm Sweep - Left"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 421
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.SWEEP_LEFT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 422
    .restart local v0       #statusIntent:Landroid/content/Intent;
    iget-object v1, p0, Landroid/view/ViewRootImpl$GestureSurfaceTouch;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public onTwist(Landroid/view/MotionEvent;Landroid/view/MotionEvent;F)Z
    .locals 3
    .parameter "e1"
    .parameter "e2"
    .parameter "angle"

    .prologue
    const/4 v2, 0x0

    .line 453
    cmpl-float v1, p3, v2

    if-lez v1, :cond_1

    .line 454
    const-string v1, "ViewRootImpl"

    const-string v2, "[Surface Touch Event] Twist Right"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 455
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.TWIST_RIGHT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 456
    .local v0, statusIntent:Landroid/content/Intent;
    iget-object v1, p0, Landroid/view/ViewRootImpl$GestureSurfaceTouch;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 462
    .end local v0           #statusIntent:Landroid/content/Intent;
    :cond_0
    :goto_0
    const/4 v1, 0x0

    return v1

    .line 457
    :cond_1
    cmpg-float v1, p3, v2

    if-gez v1, :cond_0

    .line 458
    const-string v1, "ViewRootImpl"

    const-string v2, "[Surface Touch Event] Twist Left"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 459
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.TWIST_LEFT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 460
    .restart local v0       #statusIntent:Landroid/content/Intent;
    iget-object v1, p0, Landroid/view/ViewRootImpl$GestureSurfaceTouch;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0
.end method
