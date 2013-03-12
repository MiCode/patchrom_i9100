.class Landroid/view/GestureDetector$SurfaceTouchSharingData;
.super Ljava/lang/Object;
.source "GestureDetector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/GestureDetector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SurfaceTouchSharingData"
.end annotation


# instance fields
.field Actiond:[I

.field DiffAngle:F

.field Major:[I

.field Minor:[I

.field Nd:[I

.field SSsd:[[I

.field Sad:[[I

.field Sed:[[F

.field SmeanX:F

.field SmeanY:F

.field Ssd:[[I

.field SsumAngle:F

.field SsumEccen:F

.field SsumMajor:F

.field SsumMinor:F

.field SsumSize:F

.field SsumX:F

.field SsumY:F

.field SvarX:F

.field SvarY:F

.field Sxd:[[I

.field Syd:[[I

.field mAction:I

.field mIsRotated:Z

.field mLastPalmSweepTouchUpTime:D

.field mMaxSize:F

.field public mMotionEvent:Landroid/view/MotionEvent;

.field public mSettingPalmSweep:I

.field public mSettingPalmTouch:I

.field public mSettingTapAndTwist:I

.field public mShapeListener:Landroid/view/GestureDetector$OnShapeGestureListener;

.field mTimeGapUPDown:D

.field mTouchCnt:I

.field preSumSize:F

.field final synthetic this$0:Landroid/view/GestureDetector;


# direct methods
.method private constructor <init>(Landroid/view/GestureDetector;)V
    .locals 8
    .parameter

    .prologue
    const-wide/16 v6, 0x0

    const/4 v5, 0x0

    const/16 v4, 0xa

    const/4 v3, 0x3

    const/4 v2, 0x0

    .line 338
    iput-object p1, p0, Landroid/view/GestureDetector$SurfaceTouchSharingData;->this$0:Landroid/view/GestureDetector;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 339
    filled-new-array {v4, v3}, [I

    move-result-object v0

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[I

    iput-object v0, p0, Landroid/view/GestureDetector$SurfaceTouchSharingData;->Sxd:[[I

    .line 340
    filled-new-array {v4, v3}, [I

    move-result-object v0

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[I

    iput-object v0, p0, Landroid/view/GestureDetector$SurfaceTouchSharingData;->Syd:[[I

    .line 341
    filled-new-array {v4, v3}, [I

    move-result-object v0

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[I

    iput-object v0, p0, Landroid/view/GestureDetector$SurfaceTouchSharingData;->Ssd:[[I

    .line 342
    filled-new-array {v4, v3}, [I

    move-result-object v0

    sget-object v1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[F

    iput-object v0, p0, Landroid/view/GestureDetector$SurfaceTouchSharingData;->Sed:[[F

    .line 343
    filled-new-array {v4, v3}, [I

    move-result-object v0

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[I

    iput-object v0, p0, Landroid/view/GestureDetector$SurfaceTouchSharingData;->Sad:[[I

    .line 344
    filled-new-array {v4, v3}, [I

    move-result-object v0

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[I

    iput-object v0, p0, Landroid/view/GestureDetector$SurfaceTouchSharingData;->SSsd:[[I

    .line 345
    new-array v0, v4, [I

    iput-object v0, p0, Landroid/view/GestureDetector$SurfaceTouchSharingData;->Major:[I

    .line 346
    new-array v0, v4, [I

    iput-object v0, p0, Landroid/view/GestureDetector$SurfaceTouchSharingData;->Minor:[I

    .line 347
    new-array v0, v3, [I

    iput-object v0, p0, Landroid/view/GestureDetector$SurfaceTouchSharingData;->Nd:[I

    .line 348
    new-array v0, v3, [I

    iput-object v0, p0, Landroid/view/GestureDetector$SurfaceTouchSharingData;->Actiond:[I

    .line 350
    iput v2, p0, Landroid/view/GestureDetector$SurfaceTouchSharingData;->SvarX:F

    .line 351
    iput v2, p0, Landroid/view/GestureDetector$SurfaceTouchSharingData;->SvarY:F

    .line 353
    iput v5, p0, Landroid/view/GestureDetector$SurfaceTouchSharingData;->mTouchCnt:I

    .line 354
    iput v2, p0, Landroid/view/GestureDetector$SurfaceTouchSharingData;->mMaxSize:F

    .line 357
    iput v2, p0, Landroid/view/GestureDetector$SurfaceTouchSharingData;->SsumX:F

    .line 358
    iput v2, p0, Landroid/view/GestureDetector$SurfaceTouchSharingData;->SsumY:F

    .line 359
    iput v2, p0, Landroid/view/GestureDetector$SurfaceTouchSharingData;->SsumSize:F

    .line 360
    iput v2, p0, Landroid/view/GestureDetector$SurfaceTouchSharingData;->SsumAngle:F

    .line 361
    iput v2, p0, Landroid/view/GestureDetector$SurfaceTouchSharingData;->SsumEccen:F

    .line 362
    iput v2, p0, Landroid/view/GestureDetector$SurfaceTouchSharingData;->SsumMajor:F

    .line 363
    iput v2, p0, Landroid/view/GestureDetector$SurfaceTouchSharingData;->SsumMinor:F

    .line 364
    iput v2, p0, Landroid/view/GestureDetector$SurfaceTouchSharingData;->SmeanX:F

    .line 365
    iput v2, p0, Landroid/view/GestureDetector$SurfaceTouchSharingData;->SmeanY:F

    .line 366
    iput v2, p0, Landroid/view/GestureDetector$SurfaceTouchSharingData;->preSumSize:F

    .line 369
    iput v2, p0, Landroid/view/GestureDetector$SurfaceTouchSharingData;->DiffAngle:F

    .line 372
    iput-boolean v5, p0, Landroid/view/GestureDetector$SurfaceTouchSharingData;->mIsRotated:Z

    .line 374
    iput v5, p0, Landroid/view/GestureDetector$SurfaceTouchSharingData;->mSettingPalmSweep:I

    .line 375
    iput v5, p0, Landroid/view/GestureDetector$SurfaceTouchSharingData;->mSettingPalmTouch:I

    .line 376
    iput v5, p0, Landroid/view/GestureDetector$SurfaceTouchSharingData;->mSettingTapAndTwist:I

    .line 378
    iput-wide v6, p0, Landroid/view/GestureDetector$SurfaceTouchSharingData;->mLastPalmSweepTouchUpTime:D

    .line 379
    iput-wide v6, p0, Landroid/view/GestureDetector$SurfaceTouchSharingData;->mTimeGapUPDown:D

    return-void
.end method


# virtual methods
.method public Initialize()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x0

    .line 521
    const/4 v1, 0x0

    .local v1, j:I
    :goto_0
    const/16 v2, 0xa

    if-ge v1, v2, :cond_1

    .line 522
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    const/4 v2, 0x3

    if-ge v0, v2, :cond_0

    .line 523
    iget-object v2, p0, Landroid/view/GestureDetector$SurfaceTouchSharingData;->Sxd:[[I

    aget-object v2, v2, v1

    aput v7, v2, v0

    .line 524
    iget-object v2, p0, Landroid/view/GestureDetector$SurfaceTouchSharingData;->Syd:[[I

    aget-object v2, v2, v1

    aput v7, v2, v0

    .line 525
    iget-object v2, p0, Landroid/view/GestureDetector$SurfaceTouchSharingData;->Ssd:[[I

    aget-object v2, v2, v1

    aput v7, v2, v0

    .line 526
    iget-object v2, p0, Landroid/view/GestureDetector$SurfaceTouchSharingData;->Sed:[[F

    aget-object v2, v2, v1

    aput v8, v2, v0

    .line 527
    iget-object v2, p0, Landroid/view/GestureDetector$SurfaceTouchSharingData;->Sad:[[I

    aget-object v2, v2, v1

    aput v7, v2, v0

    .line 522
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 529
    :cond_0
    iget-object v2, p0, Landroid/view/GestureDetector$SurfaceTouchSharingData;->Major:[I

    aput v7, v2, v1

    .line 521
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 532
    .end local v0           #i:I
    :cond_1
    iget-object v2, p0, Landroid/view/GestureDetector$SurfaceTouchSharingData;->Nd:[I

    iget-object v3, p0, Landroid/view/GestureDetector$SurfaceTouchSharingData;->Nd:[I

    const/4 v4, 0x1

    iget-object v5, p0, Landroid/view/GestureDetector$SurfaceTouchSharingData;->Nd:[I

    const/4 v6, 0x2

    aput v7, v5, v6

    aput v7, v3, v4

    aput v7, v2, v7

    .line 533
    iput v7, p0, Landroid/view/GestureDetector$SurfaceTouchSharingData;->mTouchCnt:I

    .line 534
    iput v8, p0, Landroid/view/GestureDetector$SurfaceTouchSharingData;->preSumSize:F

    .line 535
    iput v8, p0, Landroid/view/GestureDetector$SurfaceTouchSharingData;->mMaxSize:F

    .line 536
    return-void
.end method

.method public PreUpdate(Landroid/view/MotionEvent;)V
    .locals 14
    .parameter "ev"

    .prologue
    const/4 v13, 0x2

    const/4 v12, 0x0

    const/4 v11, 0x1

    .line 384
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v7

    iput v7, p0, Landroid/view/GestureDetector$SurfaceTouchSharingData;->mAction:I

    .line 385
    iget-object v7, p0, Landroid/view/GestureDetector$SurfaceTouchSharingData;->Actiond:[I

    iget-object v8, p0, Landroid/view/GestureDetector$SurfaceTouchSharingData;->Actiond:[I

    aget v8, v8, v11

    aput v8, v7, v13

    .line 386
    iget-object v7, p0, Landroid/view/GestureDetector$SurfaceTouchSharingData;->Actiond:[I

    iget-object v8, p0, Landroid/view/GestureDetector$SurfaceTouchSharingData;->Actiond:[I

    aget v8, v8, v12

    aput v8, v7, v11

    .line 387
    iget-object v7, p0, Landroid/view/GestureDetector$SurfaceTouchSharingData;->Actiond:[I

    iget v8, p0, Landroid/view/GestureDetector$SurfaceTouchSharingData;->mAction:I

    aput v8, v7, v12

    .line 390
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v7

    if-nez v7, :cond_2

    .line 393
    :try_start_0
    iget-object v7, p0, Landroid/view/GestureDetector$SurfaceTouchSharingData;->this$0:Landroid/view/GestureDetector;

    iget-object v7, v7, Landroid/view/GestureDetector;->context1:Landroid/content/Context;

    const-string/jumbo v8, "window"

    invoke-virtual {v7, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/WindowManager;

    .line 394
    .local v6, wm:Landroid/view/WindowManager;
    invoke-interface {v6}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    .line 396
    .local v1, disp:Landroid/view/Display;
    new-instance v3, Landroid/util/DisplayMetrics;

    invoke-direct {v3}, Landroid/util/DisplayMetrics;-><init>()V

    .line 397
    .local v3, metrics:Landroid/util/DisplayMetrics;
    invoke-virtual {v1, v3}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 399
    const/4 v0, 0x1

    .line 400
    .local v0, bitMask:I
    invoke-virtual {v1}, Landroid/view/Display;->getRotation()I

    move-result v7

    and-int/lit8 v7, v7, 0x1

    if-nez v7, :cond_1

    .line 401
    const/4 v7, 0x0

    iput-boolean v7, p0, Landroid/view/GestureDetector$SurfaceTouchSharingData;->mIsRotated:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 413
    .end local v0           #bitMask:I
    .end local v1           #disp:Landroid/view/Display;
    .end local v3           #metrics:Landroid/util/DisplayMetrics;
    .end local v6           #wm:Landroid/view/WindowManager;
    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    long-to-double v4, v7

    .line 414
    .local v4, tCurrentTime:D
    iget-wide v7, p0, Landroid/view/GestureDetector$SurfaceTouchSharingData;->mLastPalmSweepTouchUpTime:D

    sub-double v7, v4, v7

    iput-wide v7, p0, Landroid/view/GestureDetector$SurfaceTouchSharingData;->mTimeGapUPDown:D

    .line 415
    iget-wide v7, p0, Landroid/view/GestureDetector$SurfaceTouchSharingData;->mTimeGapUPDown:D

    const-wide/16 v9, 0x0

    cmpl-double v7, v7, v9

    if-lez v7, :cond_0

    iget-wide v7, p0, Landroid/view/GestureDetector$SurfaceTouchSharingData;->mTimeGapUPDown:D

    const-wide/high16 v9, 0x4059

    cmpg-double v7, v7, v9

    if-gez v7, :cond_0

    iget-object v7, p0, Landroid/view/GestureDetector$SurfaceTouchSharingData;->Actiond:[I

    aget v7, v7, v12

    if-nez v7, :cond_0

    iget-object v7, p0, Landroid/view/GestureDetector$SurfaceTouchSharingData;->Actiond:[I

    aget v7, v7, v11

    if-ne v7, v11, :cond_0

    .line 416
    iput v13, p0, Landroid/view/GestureDetector$SurfaceTouchSharingData;->mAction:I

    .line 421
    .end local v4           #tCurrentTime:D
    :cond_0
    :goto_1
    return-void

    .line 403
    .restart local v0       #bitMask:I
    .restart local v1       #disp:Landroid/view/Display;
    .restart local v3       #metrics:Landroid/util/DisplayMetrics;
    .restart local v6       #wm:Landroid/view/WindowManager;
    :cond_1
    const/4 v7, 0x1

    :try_start_1
    iput-boolean v7, p0, Landroid/view/GestureDetector$SurfaceTouchSharingData;->mIsRotated:Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 406
    .end local v0           #bitMask:I
    .end local v1           #disp:Landroid/view/Display;
    .end local v3           #metrics:Landroid/util/DisplayMetrics;
    .end local v6           #wm:Landroid/view/WindowManager;
    :catch_0
    move-exception v2

    .line 408
    .local v2, e:Ljava/lang/Exception;
    iput-boolean v12, p0, Landroid/view/GestureDetector$SurfaceTouchSharingData;->mIsRotated:Z

    .line 409
    const-string v7, "GestureDetector"

    const-string v8, "[Surface Touch] Default Rotate = false"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 418
    .end local v2           #e:Ljava/lang/Exception;
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v7

    if-ne v7, v11, :cond_0

    .line 419
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    long-to-double v7, v7

    iput-wide v7, p0, Landroid/view/GestureDetector$SurfaceTouchSharingData;->mLastPalmSweepTouchUpTime:D

    goto :goto_1
.end method

.method public Update(Landroid/view/MotionEvent;)V
    .locals 10
    .parameter "ev"

    .prologue
    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 424
    iput-object p1, p0, Landroid/view/GestureDetector$SurfaceTouchSharingData;->mMotionEvent:Landroid/view/MotionEvent;

    .line 427
    iput v6, p0, Landroid/view/GestureDetector$SurfaceTouchSharingData;->SsumX:F

    .line 428
    iput v6, p0, Landroid/view/GestureDetector$SurfaceTouchSharingData;->SsumY:F

    .line 429
    iput v6, p0, Landroid/view/GestureDetector$SurfaceTouchSharingData;->SsumSize:F

    .line 430
    iput v6, p0, Landroid/view/GestureDetector$SurfaceTouchSharingData;->SsumAngle:F

    .line 431
    iput v6, p0, Landroid/view/GestureDetector$SurfaceTouchSharingData;->SsumEccen:F

    .line 432
    iput v6, p0, Landroid/view/GestureDetector$SurfaceTouchSharingData;->SmeanX:F

    .line 433
    iput v6, p0, Landroid/view/GestureDetector$SurfaceTouchSharingData;->SmeanY:F

    .line 434
    iput v6, p0, Landroid/view/GestureDetector$SurfaceTouchSharingData;->SsumMajor:F

    .line 435
    iput v6, p0, Landroid/view/GestureDetector$SurfaceTouchSharingData;->SsumMinor:F

    .line 438
    iput v6, p0, Landroid/view/GestureDetector$SurfaceTouchSharingData;->DiffAngle:F

    .line 440
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    .line 442
    .local v0, N:I
    const/4 v2, 0x0

    .local v2, j:I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 443
    const/4 v1, 0x1

    .local v1, i:I
    :goto_1
    if-ltz v1, :cond_0

    .line 444
    iget-object v3, p0, Landroid/view/GestureDetector$SurfaceTouchSharingData;->Sxd:[[I

    aget-object v3, v3, v2

    add-int/lit8 v4, v1, 0x1

    iget-object v5, p0, Landroid/view/GestureDetector$SurfaceTouchSharingData;->Sxd:[[I

    aget-object v5, v5, v2

    aget v5, v5, v1

    aput v5, v3, v4

    .line 445
    iget-object v3, p0, Landroid/view/GestureDetector$SurfaceTouchSharingData;->Syd:[[I

    aget-object v3, v3, v2

    add-int/lit8 v4, v1, 0x1

    iget-object v5, p0, Landroid/view/GestureDetector$SurfaceTouchSharingData;->Syd:[[I

    aget-object v5, v5, v2

    aget v5, v5, v1

    aput v5, v3, v4

    .line 446
    iget-object v3, p0, Landroid/view/GestureDetector$SurfaceTouchSharingData;->Ssd:[[I

    aget-object v3, v3, v2

    add-int/lit8 v4, v1, 0x1

    iget-object v5, p0, Landroid/view/GestureDetector$SurfaceTouchSharingData;->Ssd:[[I

    aget-object v5, v5, v2

    aget v5, v5, v1

    aput v5, v3, v4

    .line 447
    iget-object v3, p0, Landroid/view/GestureDetector$SurfaceTouchSharingData;->Sed:[[F

    aget-object v3, v3, v2

    add-int/lit8 v4, v1, 0x1

    iget-object v5, p0, Landroid/view/GestureDetector$SurfaceTouchSharingData;->Sed:[[F

    aget-object v5, v5, v2

    aget v5, v5, v1

    aput v5, v3, v4

    .line 448
    iget-object v3, p0, Landroid/view/GestureDetector$SurfaceTouchSharingData;->Sad:[[I

    aget-object v3, v3, v2

    add-int/lit8 v4, v1, 0x1

    iget-object v5, p0, Landroid/view/GestureDetector$SurfaceTouchSharingData;->Sad:[[I

    aget-object v5, v5, v2

    aget v5, v5, v1

    aput v5, v3, v4

    .line 449
    iget-object v3, p0, Landroid/view/GestureDetector$SurfaceTouchSharingData;->SSsd:[[I

    aget-object v3, v3, v2

    add-int/lit8 v4, v1, 0x1

    iget-object v5, p0, Landroid/view/GestureDetector$SurfaceTouchSharingData;->SSsd:[[I

    aget-object v5, v5, v2

    aget v5, v5, v1

    aput v5, v3, v4

    .line 443
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 442
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 453
    .end local v1           #i:I
    :cond_1
    const/4 v1, 0x0

    .restart local v1       #i:I
    :goto_2
    if-ge v1, v0, :cond_2

    .line 454
    iget-object v3, p0, Landroid/view/GestureDetector$SurfaceTouchSharingData;->Sxd:[[I

    aget-object v3, v3, v1

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v4

    float-to-int v4, v4

    aput v4, v3, v7

    .line 455
    iget-object v3, p0, Landroid/view/GestureDetector$SurfaceTouchSharingData;->Syd:[[I

    aget-object v3, v3, v1

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v4

    float-to-int v4, v4

    aput v4, v3, v7

    .line 456
    iget-object v3, p0, Landroid/view/GestureDetector$SurfaceTouchSharingData;->Ssd:[[I

    aget-object v3, v3, v1

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getSurfaceSize(I)F

    move-result v4

    float-to-int v4, v4

    aput v4, v3, v7

    .line 457
    iget-object v3, p0, Landroid/view/GestureDetector$SurfaceTouchSharingData;->Sad:[[I

    aget-object v3, v3, v1

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getAngle(I)F

    move-result v4

    float-to-int v4, v4

    aput v4, v3, v7

    .line 458
    iget-object v3, p0, Landroid/view/GestureDetector$SurfaceTouchSharingData;->Sed:[[F

    aget-object v3, v3, v1

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getEccen(I)F

    move-result v4

    aput v4, v3, v7

    .line 459
    iget-object v3, p0, Landroid/view/GestureDetector$SurfaceTouchSharingData;->Major:[I

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getSurfaceMajor(I)F

    move-result v4

    float-to-int v4, v4

    aput v4, v3, v1

    .line 460
    iget-object v3, p0, Landroid/view/GestureDetector$SurfaceTouchSharingData;->Minor:[I

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getSurfaceMinor(I)F

    move-result v4

    float-to-int v4, v4

    aput v4, v3, v1

    .line 453
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 463
    :cond_2
    iget-object v3, p0, Landroid/view/GestureDetector$SurfaceTouchSharingData;->Nd:[I

    iget-object v4, p0, Landroid/view/GestureDetector$SurfaceTouchSharingData;->Nd:[I

    aget v4, v4, v8

    aput v4, v3, v9

    .line 464
    iget-object v3, p0, Landroid/view/GestureDetector$SurfaceTouchSharingData;->Nd:[I

    iget-object v4, p0, Landroid/view/GestureDetector$SurfaceTouchSharingData;->Nd:[I

    aget v4, v4, v7

    aput v4, v3, v8

    .line 465
    iget-object v3, p0, Landroid/view/GestureDetector$SurfaceTouchSharingData;->Nd:[I

    aput v0, v3, v7

    .line 467
    iget v3, p0, Landroid/view/GestureDetector$SurfaceTouchSharingData;->mTouchCnt:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Landroid/view/GestureDetector$SurfaceTouchSharingData;->mTouchCnt:I

    .line 469
    iget v3, p0, Landroid/view/GestureDetector$SurfaceTouchSharingData;->mTouchCnt:I

    if-ne v3, v8, :cond_3

    .line 470
    iget-object v3, p0, Landroid/view/GestureDetector$SurfaceTouchSharingData;->Sxd:[[I

    aget-object v3, v3, v7

    iget-object v4, p0, Landroid/view/GestureDetector$SurfaceTouchSharingData;->Sxd:[[I

    aget-object v4, v4, v7

    aget v4, v4, v7

    aput v4, v3, v8

    .line 471
    iget-object v3, p0, Landroid/view/GestureDetector$SurfaceTouchSharingData;->Syd:[[I

    aget-object v3, v3, v7

    iget-object v4, p0, Landroid/view/GestureDetector$SurfaceTouchSharingData;->Syd:[[I

    aget-object v4, v4, v7

    aget v4, v4, v7

    aput v4, v3, v8

    .line 472
    iget-object v3, p0, Landroid/view/GestureDetector$SurfaceTouchSharingData;->Sxd:[[I

    aget-object v3, v3, v7

    iget-object v4, p0, Landroid/view/GestureDetector$SurfaceTouchSharingData;->Sxd:[[I

    aget-object v4, v4, v7

    aget v4, v4, v8

    aput v4, v3, v9

    .line 473
    iget-object v3, p0, Landroid/view/GestureDetector$SurfaceTouchSharingData;->Syd:[[I

    aget-object v3, v3, v7

    iget-object v4, p0, Landroid/view/GestureDetector$SurfaceTouchSharingData;->Syd:[[I

    aget-object v4, v4, v7

    aget v4, v4, v8

    aput v4, v3, v9

    .line 476
    :cond_3
    const/4 v1, 0x0

    :goto_3
    iget-object v3, p0, Landroid/view/GestureDetector$SurfaceTouchSharingData;->Nd:[I

    aget v3, v3, v7

    if-ge v1, v3, :cond_4

    .line 477
    iget v3, p0, Landroid/view/GestureDetector$SurfaceTouchSharingData;->SsumX:F

    iget-object v4, p0, Landroid/view/GestureDetector$SurfaceTouchSharingData;->Sxd:[[I

    aget-object v4, v4, v1

    aget v4, v4, v7

    int-to-float v4, v4

    add-float/2addr v3, v4

    iput v3, p0, Landroid/view/GestureDetector$SurfaceTouchSharingData;->SsumX:F

    .line 478
    iget v3, p0, Landroid/view/GestureDetector$SurfaceTouchSharingData;->SsumY:F

    iget-object v4, p0, Landroid/view/GestureDetector$SurfaceTouchSharingData;->Syd:[[I

    aget-object v4, v4, v1

    aget v4, v4, v7

    int-to-float v4, v4

    add-float/2addr v3, v4

    iput v3, p0, Landroid/view/GestureDetector$SurfaceTouchSharingData;->SsumY:F

    .line 479
    iget v3, p0, Landroid/view/GestureDetector$SurfaceTouchSharingData;->SsumSize:F

    iget-object v4, p0, Landroid/view/GestureDetector$SurfaceTouchSharingData;->Ssd:[[I

    aget-object v4, v4, v1

    aget v4, v4, v7

    int-to-float v4, v4

    add-float/2addr v3, v4

    iput v3, p0, Landroid/view/GestureDetector$SurfaceTouchSharingData;->SsumSize:F

    .line 480
    iget v3, p0, Landroid/view/GestureDetector$SurfaceTouchSharingData;->SsumAngle:F

    iget-object v4, p0, Landroid/view/GestureDetector$SurfaceTouchSharingData;->Sad:[[I

    aget-object v4, v4, v1

    aget v4, v4, v7

    int-to-float v4, v4

    add-float/2addr v3, v4

    iput v3, p0, Landroid/view/GestureDetector$SurfaceTouchSharingData;->SsumAngle:F

    .line 481
    iget v3, p0, Landroid/view/GestureDetector$SurfaceTouchSharingData;->SsumEccen:F

    iget-object v4, p0, Landroid/view/GestureDetector$SurfaceTouchSharingData;->Sed:[[F

    aget-object v4, v4, v1

    aget v4, v4, v7

    add-float/2addr v3, v4

    iput v3, p0, Landroid/view/GestureDetector$SurfaceTouchSharingData;->SsumEccen:F

    .line 482
    iget v3, p0, Landroid/view/GestureDetector$SurfaceTouchSharingData;->SsumMajor:F

    iget-object v4, p0, Landroid/view/GestureDetector$SurfaceTouchSharingData;->Major:[I

    aget v4, v4, v1

    int-to-float v4, v4

    add-float/2addr v3, v4

    iput v3, p0, Landroid/view/GestureDetector$SurfaceTouchSharingData;->SsumMajor:F

    .line 483
    iget v3, p0, Landroid/view/GestureDetector$SurfaceTouchSharingData;->SsumMinor:F

    iget-object v4, p0, Landroid/view/GestureDetector$SurfaceTouchSharingData;->Minor:[I

    aget v4, v4, v1

    int-to-float v4, v4

    add-float/2addr v3, v4

    iput v3, p0, Landroid/view/GestureDetector$SurfaceTouchSharingData;->SsumMinor:F

    .line 476
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 485
    :cond_4
    iget v3, p0, Landroid/view/GestureDetector$SurfaceTouchSharingData;->SsumX:F

    iget-object v4, p0, Landroid/view/GestureDetector$SurfaceTouchSharingData;->Nd:[I

    aget v4, v4, v7

    int-to-float v4, v4

    div-float/2addr v3, v4

    iput v3, p0, Landroid/view/GestureDetector$SurfaceTouchSharingData;->SmeanX:F

    .line 486
    iget v3, p0, Landroid/view/GestureDetector$SurfaceTouchSharingData;->SsumY:F

    iget-object v4, p0, Landroid/view/GestureDetector$SurfaceTouchSharingData;->Nd:[I

    aget v4, v4, v7

    int-to-float v4, v4

    div-float/2addr v3, v4

    iput v3, p0, Landroid/view/GestureDetector$SurfaceTouchSharingData;->SmeanY:F

    .line 493
    iget v3, p0, Landroid/view/GestureDetector$SurfaceTouchSharingData;->mMaxSize:F

    iget v4, p0, Landroid/view/GestureDetector$SurfaceTouchSharingData;->SsumSize:F

    cmpg-float v3, v3, v4

    if-gez v3, :cond_5

    iget v3, p0, Landroid/view/GestureDetector$SurfaceTouchSharingData;->SsumSize:F

    iput v3, p0, Landroid/view/GestureDetector$SurfaceTouchSharingData;->mMaxSize:F

    .line 496
    :cond_5
    iget-object v3, p0, Landroid/view/GestureDetector$SurfaceTouchSharingData;->Actiond:[I

    aget v3, v3, v7

    if-ne v3, v8, :cond_6

    iget-object v3, p0, Landroid/view/GestureDetector$SurfaceTouchSharingData;->Actiond:[I

    aget v3, v3, v8

    const/4 v4, 0x6

    if-ne v3, v4, :cond_6

    .line 497
    iget v3, p0, Landroid/view/GestureDetector$SurfaceTouchSharingData;->preSumSize:F

    iput v3, p0, Landroid/view/GestureDetector$SurfaceTouchSharingData;->SsumSize:F

    .line 500
    :cond_6
    iget v3, p0, Landroid/view/GestureDetector$SurfaceTouchSharingData;->SsumSize:F

    iput v3, p0, Landroid/view/GestureDetector$SurfaceTouchSharingData;->preSumSize:F

    .line 502
    iput v6, p0, Landroid/view/GestureDetector$SurfaceTouchSharingData;->SvarX:F

    .line 503
    iput v6, p0, Landroid/view/GestureDetector$SurfaceTouchSharingData;->SvarY:F

    .line 505
    const/4 v1, 0x0

    :goto_4
    iget-object v3, p0, Landroid/view/GestureDetector$SurfaceTouchSharingData;->Nd:[I

    aget v3, v3, v7

    if-ge v1, v3, :cond_7

    .line 506
    iget v3, p0, Landroid/view/GestureDetector$SurfaceTouchSharingData;->SvarX:F

    iget-object v4, p0, Landroid/view/GestureDetector$SurfaceTouchSharingData;->Sxd:[[I

    aget-object v4, v4, v1

    aget v4, v4, v7

    int-to-float v4, v4

    iget v5, p0, Landroid/view/GestureDetector$SurfaceTouchSharingData;->SmeanX:F

    sub-float/2addr v4, v5

    iget-object v5, p0, Landroid/view/GestureDetector$SurfaceTouchSharingData;->Sxd:[[I

    aget-object v5, v5, v1

    aget v5, v5, v7

    int-to-float v5, v5

    iget v6, p0, Landroid/view/GestureDetector$SurfaceTouchSharingData;->SmeanX:F

    sub-float/2addr v5, v6

    mul-float/2addr v4, v5

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    double-to-float v4, v4

    add-float/2addr v3, v4

    iput v3, p0, Landroid/view/GestureDetector$SurfaceTouchSharingData;->SvarX:F

    .line 507
    iget v3, p0, Landroid/view/GestureDetector$SurfaceTouchSharingData;->SvarY:F

    iget-object v4, p0, Landroid/view/GestureDetector$SurfaceTouchSharingData;->Syd:[[I

    aget-object v4, v4, v1

    aget v4, v4, v7

    int-to-float v4, v4

    iget v5, p0, Landroid/view/GestureDetector$SurfaceTouchSharingData;->SmeanY:F

    sub-float/2addr v4, v5

    iget-object v5, p0, Landroid/view/GestureDetector$SurfaceTouchSharingData;->Syd:[[I

    aget-object v5, v5, v1

    aget v5, v5, v7

    int-to-float v5, v5

    iget v6, p0, Landroid/view/GestureDetector$SurfaceTouchSharingData;->SmeanY:F

    sub-float/2addr v5, v6

    mul-float/2addr v4, v5

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    double-to-float v4, v4

    add-float/2addr v3, v4

    iput v3, p0, Landroid/view/GestureDetector$SurfaceTouchSharingData;->SvarY:F

    .line 505
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 510
    :cond_7
    sget-boolean v3, Landroid/view/GestureDetector;->DEBUG:Z

    if-eqz v3, :cond_8

    iget-object v3, p0, Landroid/view/GestureDetector$SurfaceTouchSharingData;->this$0:Landroid/view/GestureDetector;

    iget-object v3, v3, Landroid/view/GestureDetector;->context1:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "motion_engine"

    invoke-static {v3, v4, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v8, :cond_8

    iget v3, p0, Landroid/view/GestureDetector$SurfaceTouchSharingData;->mTouchCnt:I

    const/16 v4, 0x32

    if-ge v3, v4, :cond_8

    .line 511
    const/4 v1, 0x0

    :goto_5
    if-ge v1, v0, :cond_8

    .line 512
    const-string v3, "GestureDetector"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[ST] cnt:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Landroid/view/GestureDetector$SurfaceTouchSharingData;->mTouchCnt:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " N:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " id:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " action:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " x:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Landroid/view/GestureDetector$SurfaceTouchSharingData;->Sxd:[[I

    aget-object v5, v5, v1

    aget v5, v5, v7

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " y:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Landroid/view/GestureDetector$SurfaceTouchSharingData;->Syd:[[I

    aget-object v5, v5, v1

    aget v5, v5, v7

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " s:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Landroid/view/GestureDetector$SurfaceTouchSharingData;->Ssd:[[I

    aget-object v5, v5, v1

    aget v5, v5, v7

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " a:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Landroid/view/GestureDetector$SurfaceTouchSharingData;->Sad:[[I

    aget-object v5, v5, v1

    aget v5, v5, v7

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " e:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Landroid/view/GestureDetector$SurfaceTouchSharingData;->Sed:[[F

    aget-object v5, v5, v1

    aget v5, v5, v7

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " pa:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPalm()F

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " tmaj:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getTouchMajor(I)F

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " tmin:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getTouchMinor(I)F

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " SumSize:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Landroid/view/GestureDetector$SurfaceTouchSharingData;->SsumSize:F

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "SvarX:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Landroid/view/GestureDetector$SurfaceTouchSharingData;->SvarX:F

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " SvarY:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Landroid/view/GestureDetector$SurfaceTouchSharingData;->SvarY:F

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 511
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_5

    .line 517
    :cond_8
    return-void
.end method
