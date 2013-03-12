.class Lcom/android/internal/policy/impl/sec/CircleShortcutWidget$4;
.super Ljava/lang/Object;
.source "CircleShortcutWidget.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/sec/CircleShortcutWidget;->setEachItem(Landroid/content/Context;Ljava/lang/String;I)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/sec/CircleShortcutWidget;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/sec/CircleShortcutWidget;)V
    .locals 0
    .parameter

    .prologue
    .line 427
    iput-object p1, p0, Lcom/android/internal/policy/impl/sec/CircleShortcutWidget$4;->this$0:Lcom/android/internal/policy/impl/sec/CircleShortcutWidget;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 21
    .parameter "v"
    .parameter "event"

    .prologue
    .line 430
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/policy/impl/sec/CircleShortcutWidget$4;->this$0:Lcom/android/internal/policy/impl/sec/CircleShortcutWidget;

    #getter for: Lcom/android/internal/policy/impl/sec/CircleShortcutWidget;->DBG:Z
    invoke-static {v15}, Lcom/android/internal/policy/impl/sec/CircleShortcutWidget;->access$500(Lcom/android/internal/policy/impl/sec/CircleShortcutWidget;)Z

    move-result v15

    if-eqz v15, :cond_0

    .line 431
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/policy/impl/sec/CircleShortcutWidget$4;->this$0:Lcom/android/internal/policy/impl/sec/CircleShortcutWidget;

    #getter for: Lcom/android/internal/policy/impl/sec/CircleShortcutWidget;->TAG:Ljava/lang/String;
    invoke-static {v15}, Lcom/android/internal/policy/impl/sec/CircleShortcutWidget;->access$100(Lcom/android/internal/policy/impl/sec/CircleShortcutWidget;)Ljava/lang/String;

    move-result-object v15

    const-string v16, "onTouch()"

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 432
    :cond_0
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/policy/impl/sec/CircleShortcutWidget$4;->this$0:Lcom/android/internal/policy/impl/sec/CircleShortcutWidget;

    #getter for: Lcom/android/internal/policy/impl/sec/CircleShortcutWidget;->mCircleUnlockWidget:Lcom/android/internal/policy/impl/sec/CircleUnlockWidget;
    invoke-static {v15}, Lcom/android/internal/policy/impl/sec/CircleShortcutWidget;->access$600(Lcom/android/internal/policy/impl/sec/CircleShortcutWidget;)Lcom/android/internal/policy/impl/sec/CircleUnlockWidget;

    move-result-object v15

    if-eqz v15, :cond_1

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/policy/impl/sec/CircleShortcutWidget$4;->this$0:Lcom/android/internal/policy/impl/sec/CircleShortcutWidget;

    #getter for: Lcom/android/internal/policy/impl/sec/CircleShortcutWidget;->mShortcutListener:Lcom/android/internal/policy/impl/sec/CircleUnlockWidget$OnCircleUnlockListener;
    invoke-static {v15}, Lcom/android/internal/policy/impl/sec/CircleShortcutWidget;->access$700(Lcom/android/internal/policy/impl/sec/CircleShortcutWidget;)Lcom/android/internal/policy/impl/sec/CircleUnlockWidget$OnCircleUnlockListener;

    move-result-object v15

    if-nez v15, :cond_2

    .line 433
    :cond_1
    const/4 v15, 0x0

    .line 486
    :goto_0
    return v15

    .line 435
    :cond_2
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/sec/CircleShortcutWidget$4;->this$0:Lcom/android/internal/policy/impl/sec/CircleShortcutWidget;

    move-object/from16 v16, v0

    #getter for: Lcom/android/internal/policy/impl/sec/CircleShortcutWidget;->mFadeOutAnimation:Landroid/view/animation/AlphaAnimation;
    invoke-static/range {v16 .. v16}, Lcom/android/internal/policy/impl/sec/CircleShortcutWidget;->access$800(Lcom/android/internal/policy/impl/sec/CircleShortcutWidget;)Landroid/view/animation/AlphaAnimation;

    move-result-object v16

    move-object/from16 v0, v16

    if-ne v15, v0, :cond_3

    .line 436
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/policy/impl/sec/CircleShortcutWidget$4;->this$0:Lcom/android/internal/policy/impl/sec/CircleShortcutWidget;

    #getter for: Lcom/android/internal/policy/impl/sec/CircleShortcutWidget;->TAG:Ljava/lang/String;
    invoke-static {v15}, Lcom/android/internal/policy/impl/sec/CircleShortcutWidget;->access$100(Lcom/android/internal/policy/impl/sec/CircleShortcutWidget;)Ljava/lang/String;

    move-result-object v15

    const-string v16, "faded out"

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 437
    const/4 v15, 0x0

    goto :goto_0

    .line 440
    :cond_3
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    .line 441
    .local v2, action:I
    packed-switch v2, :pswitch_data_0

    .line 483
    :goto_1
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/policy/impl/sec/CircleShortcutWidget$4;->this$0:Lcom/android/internal/policy/impl/sec/CircleShortcutWidget;

    #getter for: Lcom/android/internal/policy/impl/sec/CircleShortcutWidget;->mCircleUnlockWidget:Lcom/android/internal/policy/impl/sec/CircleUnlockWidget;
    invoke-static {v15}, Lcom/android/internal/policy/impl/sec/CircleShortcutWidget;->access$600(Lcom/android/internal/policy/impl/sec/CircleShortcutWidget;)Lcom/android/internal/policy/impl/sec/CircleUnlockWidget;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/sec/CircleShortcutWidget$4;->this$0:Lcom/android/internal/policy/impl/sec/CircleShortcutWidget;

    move-object/from16 v16, v0

    #getter for: Lcom/android/internal/policy/impl/sec/CircleShortcutWidget;->mShortcutListener:Lcom/android/internal/policy/impl/sec/CircleUnlockWidget$OnCircleUnlockListener;
    invoke-static/range {v16 .. v16}, Lcom/android/internal/policy/impl/sec/CircleShortcutWidget;->access$700(Lcom/android/internal/policy/impl/sec/CircleShortcutWidget;)Lcom/android/internal/policy/impl/sec/CircleUnlockWidget$OnCircleUnlockListener;

    move-result-object v16

    invoke-interface/range {v15 .. v16}, Lcom/android/internal/policy/impl/sec/CircleUnlockWidget;->setOnCircleUnlockListener(Lcom/android/internal/policy/impl/sec/CircleUnlockWidget$OnCircleUnlockListener;)V

    .line 485
    const-string v15, "ShortcutWidget"

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 486
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/policy/impl/sec/CircleShortcutWidget$4;->this$0:Lcom/android/internal/policy/impl/sec/CircleShortcutWidget;

    #getter for: Lcom/android/internal/policy/impl/sec/CircleShortcutWidget;->mCircleUnlockWidget:Lcom/android/internal/policy/impl/sec/CircleUnlockWidget;
    invoke-static {v15}, Lcom/android/internal/policy/impl/sec/CircleShortcutWidget;->access$600(Lcom/android/internal/policy/impl/sec/CircleShortcutWidget;)Lcom/android/internal/policy/impl/sec/CircleUnlockWidget;

    move-result-object v15

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-interface {v15, v0, v1}, Lcom/android/internal/policy/impl/sec/CircleUnlockWidget;->handleTouchEvent(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v15

    goto :goto_0

    .line 443
    :pswitch_0
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/policy/impl/sec/CircleShortcutWidget$4;->this$0:Lcom/android/internal/policy/impl/sec/CircleShortcutWidget;

    #getter for: Lcom/android/internal/policy/impl/sec/CircleShortcutWidget;->TAG:Ljava/lang/String;
    invoke-static {v15}, Lcom/android/internal/policy/impl/sec/CircleShortcutWidget;->access$100(Lcom/android/internal/policy/impl/sec/CircleShortcutWidget;)Ljava/lang/String;

    move-result-object v15

    const-string v16, "action down"

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 444
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/policy/impl/sec/CircleShortcutWidget$4;->this$0:Lcom/android/internal/policy/impl/sec/CircleShortcutWidget;

    const/16 v16, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v16

    #calls: Lcom/android/internal/policy/impl/sec/CircleShortcutWidget;->hideOtherShortcuts(Landroid/view/View;Z)V
    invoke-static {v15, v0, v1}, Lcom/android/internal/policy/impl/sec/CircleShortcutWidget;->access$900(Lcom/android/internal/policy/impl/sec/CircleShortcutWidget;Landroid/view/View;Z)V

    move-object/from16 v15, p1

    .line 445
    check-cast v15, Lcom/android/internal/policy/impl/sec/CircleShortcutWidget$ShortcutItem;

    const/16 v16, 0x1

    invoke-virtual/range {v15 .. v16}, Lcom/android/internal/policy/impl/sec/CircleShortcutWidget$ShortcutItem;->onPressed(Z)V

    goto :goto_1

    .line 449
    :pswitch_1
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/policy/impl/sec/CircleShortcutWidget$4;->this$0:Lcom/android/internal/policy/impl/sec/CircleShortcutWidget;

    #getter for: Lcom/android/internal/policy/impl/sec/CircleShortcutWidget;->TAG:Ljava/lang/String;
    invoke-static {v15}, Lcom/android/internal/policy/impl/sec/CircleShortcutWidget;->access$100(Lcom/android/internal/policy/impl/sec/CircleShortcutWidget;)Ljava/lang/String;

    move-result-object v15

    const-string v16, "action up/cancel"

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 450
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/policy/impl/sec/CircleShortcutWidget$4;->this$0:Lcom/android/internal/policy/impl/sec/CircleShortcutWidget;

    const/16 v16, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v16

    #calls: Lcom/android/internal/policy/impl/sec/CircleShortcutWidget;->hideOtherShortcuts(Landroid/view/View;Z)V
    invoke-static {v15, v0, v1}, Lcom/android/internal/policy/impl/sec/CircleShortcutWidget;->access$900(Lcom/android/internal/policy/impl/sec/CircleShortcutWidget;Landroid/view/View;Z)V

    move-object/from16 v15, p1

    .line 451
    check-cast v15, Lcom/android/internal/policy/impl/sec/CircleShortcutWidget$ShortcutItem;

    const/16 v16, 0x0

    invoke-virtual/range {v15 .. v16}, Lcom/android/internal/policy/impl/sec/CircleShortcutWidget$ShortcutItem;->onPressed(Z)V

    goto :goto_1

    .line 456
    :pswitch_2
    const/4 v3, 0x0

    .line 457
    .local v3, diffX:I
    const/4 v4, 0x0

    .line 462
    .local v4, diffY:I
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v15

    div-int/lit8 v13, v15, 0x2

    .line 463
    .local v13, viewCenterX:I
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v15

    div-int/lit8 v14, v15, 0x2

    .line 464
    .local v14, viewCenterY:I
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getX()F

    move-result v15

    int-to-float v0, v13

    move/from16 v16, v0

    sub-float v15, v15, v16

    float-to-int v3, v15

    .line 465
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getY()F

    move-result v15

    int-to-float v0, v14

    move/from16 v16, v0

    sub-float v15, v15, v16

    float-to-int v4, v15

    .line 467
    int-to-double v15, v3

    const-wide/high16 v17, 0x4000

    invoke-static/range {v15 .. v18}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v15

    int-to-double v0, v4

    move-wide/from16 v17, v0

    const-wide/high16 v19, 0x4000

    invoke-static/range {v17 .. v20}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v17

    add-double v7, v15, v17

    .line 469
    .local v7, distance_square:D
    invoke-static {v7, v8}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v5

    .line 470
    .local v5, distance:D
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v15

    mul-int/lit8 v15, v15, 0x3

    div-int/lit8 v15, v15, 0x2

    int-to-double v11, v15

    .line 471
    .local v11, threshold:D
    div-double v9, v5, v11

    .local v9, mDistanceRatio:D
    move-object/from16 v15, p1

    .line 476
    check-cast v15, Lcom/android/internal/policy/impl/sec/CircleShortcutWidget$ShortcutItem;

    invoke-virtual {v15, v9, v10}, Lcom/android/internal/policy/impl/sec/CircleShortcutWidget$ShortcutItem;->setOpacity(D)V

    goto/16 :goto_1

    .line 441
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
