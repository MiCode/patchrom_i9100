.class Lcom/android/server/wm/WindowManagerService$7;
.super Landroid/content/BroadcastReceiver;
.source "WindowManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/WindowManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wm/WindowManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/wm/WindowManagerService;)V
    .locals 0
    .parameter

    .prologue
    .line 10302
    iput-object p1, p0, Lcom/android/server/wm/WindowManagerService$7;->this$0:Lcom/android/server/wm/WindowManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 16
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 10305
    const/4 v15, 0x0

    .line 10307
    .local v15, win:Lcom/android/server/wm/WindowState;
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v9

    .line 10308
    .local v9, action:Ljava/lang/String;
    const-string v1, "statusbar_height"

    const/4 v2, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v14

    .line 10309
    .local v14, statusbarHeight:I
    const-string v1, "samsunghandwrite"

    invoke-virtual {v9, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 10310
    const-string v1, "M"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v13

    check-cast v13, Landroid/view/MotionEvent;

    .line 10311
    .local v13, me:Landroid/view/MotionEvent;
    const/4 v12, 0x1

    .line 10312
    .local v12, isM:Z
    if-nez v13, :cond_1

    .line 10313
    const/4 v12, 0x0

    .line 10314
    const-string v1, "N"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v13

    .end local v13           #me:Landroid/view/MotionEvent;
    check-cast v13, Landroid/view/MotionEvent;

    .line 10315
    .restart local v13       #me:Landroid/view/MotionEvent;
    if-nez v13, :cond_1

    .line 10346
    .end local v12           #isM:Z
    .end local v13           #me:Landroid/view/MotionEvent;
    :cond_0
    :goto_0
    return-void

    .line 10318
    .restart local v12       #isM:Z
    .restart local v13       #me:Landroid/view/MotionEvent;
    :cond_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/wm/WindowManagerService$7;->this$0:Lcom/android/server/wm/WindowManagerService;

    #calls: Lcom/android/server/wm/WindowManagerService;->getWindowByPosition(Landroid/view/MotionEvent;)Lcom/android/server/wm/WindowState;
    invoke-static {v1, v13}, Lcom/android/server/wm/WindowManagerService;->access$1000(Lcom/android/server/wm/WindowManagerService;Landroid/view/MotionEvent;)Lcom/android/server/wm/WindowState;

    move-result-object v15

    .line 10319
    if-eqz v15, :cond_0

    .line 10322
    invoke-virtual {v13}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    iget-object v2, v15, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    sub-float v6, v1, v2

    .line 10324
    .local v6, xPos:F
    invoke-virtual {v13}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    iget-object v2, v15, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    sub-float v7, v1, v2

    .line 10333
    .local v7, yPos:F
    if-eqz v12, :cond_0

    .line 10334
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    const/4 v5, 0x0

    invoke-virtual {v13}, Landroid/view/MotionEvent;->getMetaState()I

    move-result v8

    invoke-static/range {v1 .. v8}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v10

    .line 10336
    .local v10, evDown:Landroid/view/MotionEvent;
    invoke-virtual {v13}, Landroid/view/MotionEvent;->getSource()I

    move-result v1

    invoke-virtual {v10, v1}, Landroid/view/MotionEvent;->setSource(I)V

    .line 10337
    iget-object v1, v15, Lcom/android/server/wm/WindowState;->mClient:Landroid/view/IWindow;

    const/4 v2, 0x1

    invoke-interface {v1, v10, v2}, Landroid/view/IWindow;->dispatchMotion(Landroid/view/MotionEvent;Z)V

    .line 10339
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    const/4 v5, 0x1

    invoke-virtual {v13}, Landroid/view/MotionEvent;->getMetaState()I

    move-result v8

    invoke-static/range {v1 .. v8}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v11

    .line 10341
    .local v11, evUp:Landroid/view/MotionEvent;
    invoke-virtual {v13}, Landroid/view/MotionEvent;->getSource()I

    move-result v1

    invoke-virtual {v11, v1}, Landroid/view/MotionEvent;->setSource(I)V

    .line 10342
    iget-object v1, v15, Lcom/android/server/wm/WindowState;->mClient:Landroid/view/IWindow;

    const/4 v2, 0x1

    invoke-interface {v1, v11, v2}, Landroid/view/IWindow;->dispatchMotion(Landroid/view/MotionEvent;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 10344
    .end local v10           #evDown:Landroid/view/MotionEvent;
    .end local v11           #evUp:Landroid/view/MotionEvent;
    :catch_0
    move-exception v1

    goto :goto_0
.end method
