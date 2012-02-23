.class public Landroid/webkit/PointerDevice$MotionFilter;
.super Ljava/lang/Object;
.source "PointerDevice.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/webkit/PointerDevice;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MotionFilter"
.end annotation


# static fields
.field private static final HALF_PI:F = 1.5707964f

.field private static MAX_CONV_STEPS:F = 0.0f

.field private static MIN_CONV_STEPS:F = 0.0f

.field private static final VARIANCE_RANGE:F = 40000.0f

.field private static final VARIANCE_RANGE_SQ:F = 1.6E9f

.field private static final X:I = 0x0

.field private static final Y:I = 0x1

.field private static sMotionFilterType:I


# instance fields
.field private mDestX:F

.field private mDestY:F

.field private mLastDestX:F

.field private mLastDestY:F

.field private mMoved:Z

.field private mNewXY:[I

.field private mPosX:F

.field private mPosY:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 419
    const v0, 0x400ccccd

    sput v0, Landroid/webkit/PointerDevice$MotionFilter;->MAX_CONV_STEPS:F

    .line 420
    const v0, 0x3f99999a

    sput v0, Landroid/webkit/PointerDevice$MotionFilter;->MIN_CONV_STEPS:F

    .line 421
    const/4 v0, 0x3

    sput v0, Landroid/webkit/PointerDevice$MotionFilter;->sMotionFilterType:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 415
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 472
    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Landroid/webkit/PointerDevice$MotionFilter;->mNewXY:[I

    return-void
.end method

.method private move()V
    .locals 18

    .prologue
    .line 476
    move-object/from16 v0, p0

    iget-boolean v15, v0, Landroid/webkit/PointerDevice$MotionFilter;->mMoved:Z

    if-nez v15, :cond_0

    .line 478
    move-object/from16 v0, p0

    iget v15, v0, Landroid/webkit/PointerDevice$MotionFilter;->mDestX:F

    move-object/from16 v0, p0

    iput v15, v0, Landroid/webkit/PointerDevice$MotionFilter;->mPosX:F

    .line 479
    move-object/from16 v0, p0

    iget v15, v0, Landroid/webkit/PointerDevice$MotionFilter;->mDestY:F

    move-object/from16 v0, p0

    iput v15, v0, Landroid/webkit/PointerDevice$MotionFilter;->mPosY:F

    .line 480
    const/4 v15, 0x1

    move-object/from16 v0, p0

    iput-boolean v15, v0, Landroid/webkit/PointerDevice$MotionFilter;->mMoved:Z

    .line 534
    :goto_0
    move-object/from16 v0, p0

    iget v15, v0, Landroid/webkit/PointerDevice$MotionFilter;->mDestX:F

    move-object/from16 v0, p0

    iput v15, v0, Landroid/webkit/PointerDevice$MotionFilter;->mLastDestX:F

    .line 535
    move-object/from16 v0, p0

    iget v15, v0, Landroid/webkit/PointerDevice$MotionFilter;->mDestY:F

    move-object/from16 v0, p0

    iput v15, v0, Landroid/webkit/PointerDevice$MotionFilter;->mLastDestY:F

    .line 536
    return-void

    .line 482
    :cond_0
    move-object/from16 v0, p0

    iget v15, v0, Landroid/webkit/PointerDevice$MotionFilter;->mDestX:F

    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/PointerDevice$MotionFilter;->mLastDestX:F

    move/from16 v16, v0

    sub-float v9, v15, v16

    .line 483
    .local v9, lastMoveX:F
    move-object/from16 v0, p0

    iget v15, v0, Landroid/webkit/PointerDevice$MotionFilter;->mDestY:F

    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/PointerDevice$MotionFilter;->mLastDestY:F

    move/from16 v16, v0

    sub-float v10, v15, v16

    .line 484
    .local v10, lastMoveY:F
    mul-float v15, v9, v9

    mul-float v16, v10, v10

    add-float v8, v15, v16

    .line 486
    .local v8, lastMoveSQ:F
    const v15, 0x4ebebc20

    cmpl-float v15, v8, v15

    if-lez v15, :cond_1

    .line 496
    :cond_1
    move-object/from16 v0, p0

    iget v15, v0, Landroid/webkit/PointerDevice$MotionFilter;->mDestX:F

    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/PointerDevice$MotionFilter;->mPosX:F

    move/from16 v16, v0

    sub-float v6, v15, v16

    .line 497
    .local v6, distX:F
    move-object/from16 v0, p0

    iget v15, v0, Landroid/webkit/PointerDevice$MotionFilter;->mDestY:F

    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/PointerDevice$MotionFilter;->mPosY:F

    move/from16 v16, v0

    sub-float v7, v15, v16

    .line 498
    .local v7, distY:F
    mul-float v15, v6, v6

    mul-float v16, v7, v7

    add-float v5, v15, v16

    .line 500
    .local v5, distSQ:F
    cmpl-float v15, v8, v5

    if-lez v15, :cond_2

    move v13, v8

    .line 502
    .local v13, movedSQ:F
    :goto_1
    sget v11, Landroid/webkit/PointerDevice$MotionFilter;->MAX_CONV_STEPS:F

    .line 503
    .local v11, max_conv:F
    sget v12, Landroid/webkit/PointerDevice$MotionFilter;->MIN_CONV_STEPS:F

    .line 514
    .local v12, min_conv:F
    const v14, 0x4ebebc20

    .line 515
    .local v14, rangesq:F
    cmpl-float v15, v13, v14

    if-ltz v15, :cond_3

    .line 516
    move v1, v12

    .line 524
    .local v1, conv_steps:F
    :goto_2
    move-object/from16 v0, p0

    iget v15, v0, Landroid/webkit/PointerDevice$MotionFilter;->mDestX:F

    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/PointerDevice$MotionFilter;->mPosX:F

    move/from16 v16, v0

    sub-float v15, v15, v16

    div-float v3, v15, v1

    .line 525
    .local v3, deltaX:F
    move-object/from16 v0, p0

    iget v15, v0, Landroid/webkit/PointerDevice$MotionFilter;->mDestY:F

    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/PointerDevice$MotionFilter;->mPosY:F

    move/from16 v16, v0

    sub-float v15, v15, v16

    div-float v4, v15, v1

    .line 527
    .local v4, deltaY:F
    mul-float v15, v3, v3

    mul-float v16, v4, v4

    add-float v2, v15, v16

    .line 529
    .local v2, deltaSQ:F
    move-object/from16 v0, p0

    iget v15, v0, Landroid/webkit/PointerDevice$MotionFilter;->mPosX:F

    add-float/2addr v15, v3

    move-object/from16 v0, p0

    iput v15, v0, Landroid/webkit/PointerDevice$MotionFilter;->mPosX:F

    .line 530
    move-object/from16 v0, p0

    iget v15, v0, Landroid/webkit/PointerDevice$MotionFilter;->mPosY:F

    add-float/2addr v15, v4

    move-object/from16 v0, p0

    iput v15, v0, Landroid/webkit/PointerDevice$MotionFilter;->mPosY:F

    goto/16 :goto_0

    .end local v1           #conv_steps:F
    .end local v2           #deltaSQ:F
    .end local v3           #deltaX:F
    .end local v4           #deltaY:F
    .end local v11           #max_conv:F
    .end local v12           #min_conv:F
    .end local v13           #movedSQ:F
    .end local v14           #rangesq:F
    :cond_2
    move v13, v5

    .line 500
    goto :goto_1

    .line 518
    .restart local v11       #max_conv:F
    .restart local v12       #min_conv:F
    .restart local v13       #movedSQ:F
    .restart local v14       #rangesq:F
    :cond_3
    sub-float v15, v11, v12

    const v16, 0x3fc90fdb

    mul-float v16, v16, v13

    const v17, 0x4ebebc20

    div-float v16, v16, v17

    invoke-static/range {v16 .. v16}, Landroid/util/FloatMath;->sin(F)F

    move-result v16

    mul-float v15, v15, v16

    sub-float v1, v11, v15

    .restart local v1       #conv_steps:F
    goto :goto_2
.end method

.method public static setMotionFilter(I)V
    .locals 2
    .parameter "type"

    .prologue
    .line 423
    sput p0, Landroid/webkit/PointerDevice$MotionFilter;->sMotionFilterType:I

    .line 424
    sget v0, Landroid/webkit/PointerDevice$MotionFilter;->sMotionFilterType:I

    if-ltz v0, :cond_0

    sget v0, Landroid/webkit/PointerDevice$MotionFilter;->sMotionFilterType:I

    const/4 v1, 0x6

    if-le v0, v1, :cond_1

    .line 425
    :cond_0
    const/4 v0, 0x3

    sput v0, Landroid/webkit/PointerDevice$MotionFilter;->sMotionFilterType:I

    .line 427
    :cond_1
    return-void
.end method

.method private static setParams()V
    .locals 2

    .prologue
    const/high16 v1, 0x3f80

    .line 430
    sget v0, Landroid/webkit/PointerDevice$MotionFilter;->sMotionFilterType:I

    packed-switch v0, :pswitch_data_0

    .line 460
    :goto_0
    return-void

    .line 432
    :pswitch_0
    sput v1, Landroid/webkit/PointerDevice$MotionFilter;->MAX_CONV_STEPS:F

    .line 433
    sput v1, Landroid/webkit/PointerDevice$MotionFilter;->MIN_CONV_STEPS:F

    goto :goto_0

    .line 436
    :pswitch_1
    const v0, 0x3fa66666

    sput v0, Landroid/webkit/PointerDevice$MotionFilter;->MAX_CONV_STEPS:F

    .line 437
    const v0, 0x3f866666

    sput v0, Landroid/webkit/PointerDevice$MotionFilter;->MIN_CONV_STEPS:F

    goto :goto_0

    .line 440
    :pswitch_2
    const v0, 0x3fe66666

    sput v0, Landroid/webkit/PointerDevice$MotionFilter;->MAX_CONV_STEPS:F

    .line 441
    const v0, 0x3f8ccccd

    sput v0, Landroid/webkit/PointerDevice$MotionFilter;->MIN_CONV_STEPS:F

    goto :goto_0

    .line 444
    :pswitch_3
    const v0, 0x400ccccd

    sput v0, Landroid/webkit/PointerDevice$MotionFilter;->MAX_CONV_STEPS:F

    .line 445
    const v0, 0x3f99999a

    sput v0, Landroid/webkit/PointerDevice$MotionFilter;->MIN_CONV_STEPS:F

    goto :goto_0

    .line 448
    :pswitch_4
    const v0, 0x40733333

    sput v0, Landroid/webkit/PointerDevice$MotionFilter;->MAX_CONV_STEPS:F

    .line 449
    const v0, 0x40066666

    sput v0, Landroid/webkit/PointerDevice$MotionFilter;->MIN_CONV_STEPS:F

    goto :goto_0

    .line 452
    :pswitch_5
    const v0, 0x40d9999a

    sput v0, Landroid/webkit/PointerDevice$MotionFilter;->MAX_CONV_STEPS:F

    .line 453
    const v0, 0x40466666

    sput v0, Landroid/webkit/PointerDevice$MotionFilter;->MIN_CONV_STEPS:F

    goto :goto_0

    .line 456
    :pswitch_6
    const v0, 0x412ccccd

    sput v0, Landroid/webkit/PointerDevice$MotionFilter;->MAX_CONV_STEPS:F

    .line 457
    const v0, 0x40833333

    sput v0, Landroid/webkit/PointerDevice$MotionFilter;->MIN_CONV_STEPS:F

    goto :goto_0

    .line 430
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method


# virtual methods
.method public filter(F)F
    .locals 1
    .parameter "val"

    .prologue
    .line 584
    iput p1, p0, Landroid/webkit/PointerDevice$MotionFilter;->mDestX:F

    .line 585
    const/4 v0, 0x0

    iput v0, p0, Landroid/webkit/PointerDevice$MotionFilter;->mDestY:F

    .line 586
    invoke-direct {p0}, Landroid/webkit/PointerDevice$MotionFilter;->move()V

    .line 587
    iget v0, p0, Landroid/webkit/PointerDevice$MotionFilter;->mPosX:F

    return v0
.end method

.method public filter(I)I
    .locals 1
    .parameter "val"

    .prologue
    .line 569
    int-to-float v0, p1

    iput v0, p0, Landroid/webkit/PointerDevice$MotionFilter;->mDestX:F

    .line 570
    const/4 v0, 0x0

    iput v0, p0, Landroid/webkit/PointerDevice$MotionFilter;->mDestY:F

    .line 571
    invoke-direct {p0}, Landroid/webkit/PointerDevice$MotionFilter;->move()V

    .line 572
    iget v0, p0, Landroid/webkit/PointerDevice$MotionFilter;->mPosX:F

    float-to-int v0, v0

    return v0
.end method

.method public filter([F)V
    .locals 3
    .parameter "xy"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 576
    aget v0, p1, v1

    iput v0, p0, Landroid/webkit/PointerDevice$MotionFilter;->mDestX:F

    .line 577
    aget v0, p1, v2

    iput v0, p0, Landroid/webkit/PointerDevice$MotionFilter;->mDestY:F

    .line 578
    invoke-direct {p0}, Landroid/webkit/PointerDevice$MotionFilter;->move()V

    .line 579
    iget v0, p0, Landroid/webkit/PointerDevice$MotionFilter;->mPosX:F

    aput v0, p1, v1

    .line 580
    iget v0, p0, Landroid/webkit/PointerDevice$MotionFilter;->mPosY:F

    aput v0, p1, v2

    .line 581
    return-void
.end method

.method public filter([I)V
    .locals 3
    .parameter "xy"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 560
    aget v0, p1, v1

    int-to-float v0, v0

    iput v0, p0, Landroid/webkit/PointerDevice$MotionFilter;->mDestX:F

    .line 561
    aget v0, p1, v2

    int-to-float v0, v0

    iput v0, p0, Landroid/webkit/PointerDevice$MotionFilter;->mDestY:F

    .line 562
    invoke-direct {p0}, Landroid/webkit/PointerDevice$MotionFilter;->move()V

    .line 564
    iget v0, p0, Landroid/webkit/PointerDevice$MotionFilter;->mPosX:F

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    aput v0, p1, v1

    .line 565
    iget v0, p0, Landroid/webkit/PointerDevice$MotionFilter;->mPosY:F

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    aput v0, p1, v2

    .line 566
    return-void
.end method

.method public reset()V
    .locals 1

    .prologue
    .line 539
    invoke-static {}, Landroid/webkit/PointerDevice$MotionFilter;->setParams()V

    .line 540
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/webkit/PointerDevice$MotionFilter;->mMoved:Z

    .line 541
    return-void
.end method

.method public reset(F)V
    .locals 1
    .parameter "initX"

    .prologue
    .line 552
    invoke-static {}, Landroid/webkit/PointerDevice$MotionFilter;->setParams()V

    .line 553
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/webkit/PointerDevice$MotionFilter;->mMoved:Z

    .line 554
    iput p1, p0, Landroid/webkit/PointerDevice$MotionFilter;->mDestX:F

    .line 555
    const/4 v0, 0x0

    iput v0, p0, Landroid/webkit/PointerDevice$MotionFilter;->mDestY:F

    .line 556
    invoke-direct {p0}, Landroid/webkit/PointerDevice$MotionFilter;->move()V

    .line 557
    return-void
.end method

.method public reset([I)V
    .locals 1
    .parameter "initXY"

    .prologue
    const/4 v0, 0x0

    .line 544
    invoke-static {}, Landroid/webkit/PointerDevice$MotionFilter;->setParams()V

    .line 545
    iput-boolean v0, p0, Landroid/webkit/PointerDevice$MotionFilter;->mMoved:Z

    .line 546
    aget v0, p1, v0

    int-to-float v0, v0

    iput v0, p0, Landroid/webkit/PointerDevice$MotionFilter;->mDestX:F

    .line 547
    const/4 v0, 0x1

    aget v0, p1, v0

    int-to-float v0, v0

    iput v0, p0, Landroid/webkit/PointerDevice$MotionFilter;->mDestY:F

    .line 548
    invoke-direct {p0}, Landroid/webkit/PointerDevice$MotionFilter;->move()V

    .line 549
    return-void
.end method
