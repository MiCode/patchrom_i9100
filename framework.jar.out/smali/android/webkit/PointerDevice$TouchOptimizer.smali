.class public Landroid/webkit/PointerDevice$TouchOptimizer;
.super Ljava/lang/Object;
.source "PointerDevice.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/webkit/PointerDevice;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TouchOptimizer"
.end annotation


# instance fields
.field private mApplyMotionFilter:Z

.field private mCoords:[Landroid/view/MotionEvent$PointerCoords;

.field private mLastObservedPressedIDs:[I

.field private mMotionFilters:[Landroid/webkit/PointerDevice$MotionFilter;

.field private mNumPressedIDs:I

.field private mPointerDevice:Landroid/webkit/PointerDevice;

.field private mPointerIds:[I

.field private mStates:[Landroid/webkit/PointerDevice$PointerState;

.field private mXY:[I


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1
    .parameter "view"

    .prologue
    .line 183
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Landroid/webkit/PointerDevice$TouchOptimizer;-><init>(Landroid/view/View;Z)V

    .line 184
    return-void
.end method

.method constructor <init>(Landroid/view/View;Z)V
    .locals 4
    .parameter "view"
    .parameter "applyMotionFilter"

    .prologue
    const/16 v3, 0xf

    .line 186
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 174
    new-array v1, v3, [Landroid/view/MotionEvent$PointerCoords;

    iput-object v1, p0, Landroid/webkit/PointerDevice$TouchOptimizer;->mCoords:[Landroid/view/MotionEvent$PointerCoords;

    .line 175
    new-array v1, v3, [I

    iput-object v1, p0, Landroid/webkit/PointerDevice$TouchOptimizer;->mPointerIds:[I

    .line 180
    const/4 v1, 0x2

    new-array v1, v1, [I

    iput-object v1, p0, Landroid/webkit/PointerDevice$TouchOptimizer;->mXY:[I

    .line 192
    invoke-static {}, Landroid/webkit/PointerDevice;->newPointerStates()[Landroid/webkit/PointerDevice$PointerState;

    move-result-object v1

    iput-object v1, p0, Landroid/webkit/PointerDevice$TouchOptimizer;->mStates:[Landroid/webkit/PointerDevice$PointerState;

    .line 193
    new-array v1, v3, [I

    iput-object v1, p0, Landroid/webkit/PointerDevice$TouchOptimizer;->mLastObservedPressedIDs:[I

    .line 194
    const/4 v1, 0x0

    iput v1, p0, Landroid/webkit/PointerDevice$TouchOptimizer;->mNumPressedIDs:I

    .line 196
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v3, :cond_0

    .line 197
    iget-object v1, p0, Landroid/webkit/PointerDevice$TouchOptimizer;->mLastObservedPressedIDs:[I

    const/16 v2, -0x270f

    aput v2, v1, v0

    .line 198
    iget-object v1, p0, Landroid/webkit/PointerDevice$TouchOptimizer;->mCoords:[Landroid/view/MotionEvent$PointerCoords;

    new-instance v2, Landroid/view/MotionEvent$PointerCoords;

    invoke-direct {v2}, Landroid/view/MotionEvent$PointerCoords;-><init>()V

    aput-object v2, v1, v0

    .line 196
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 201
    :cond_0
    if-eqz p2, :cond_1

    .line 202
    new-array v1, v3, [Landroid/webkit/PointerDevice$MotionFilter;

    iput-object v1, p0, Landroid/webkit/PointerDevice$TouchOptimizer;->mMotionFilters:[Landroid/webkit/PointerDevice$MotionFilter;

    .line 203
    const/4 v0, 0x0

    :goto_1
    if-ge v0, v3, :cond_1

    .line 204
    iget-object v1, p0, Landroid/webkit/PointerDevice$TouchOptimizer;->mMotionFilters:[Landroid/webkit/PointerDevice$MotionFilter;

    new-instance v2, Landroid/webkit/PointerDevice$MotionFilter;

    invoke-direct {v2}, Landroid/webkit/PointerDevice$MotionFilter;-><init>()V

    aput-object v2, v1, v0

    .line 203
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 208
    :cond_1
    iput-boolean p2, p0, Landroid/webkit/PointerDevice$TouchOptimizer;->mApplyMotionFilter:Z

    .line 210
    return-void
.end method

.method private addPressedID(I)V
    .locals 4
    .parameter "id"

    .prologue
    const/16 v3, 0xf

    .line 288
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v3, :cond_1

    .line 289
    iget-object v1, p0, Landroid/webkit/PointerDevice$TouchOptimizer;->mLastObservedPressedIDs:[I

    aget v1, v1, v0

    if-ne v1, p1, :cond_0

    .line 290
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "addPressedID already exists: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 305
    :goto_1
    return-void

    .line 288
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 294
    :cond_1
    const/4 v0, 0x0

    :goto_2
    if-ge v0, v3, :cond_4

    .line 295
    iget-object v1, p0, Landroid/webkit/PointerDevice$TouchOptimizer;->mLastObservedPressedIDs:[I

    aget v1, v1, v0

    const/16 v2, -0x270f

    if-ne v1, v2, :cond_3

    .line 296
    iget-object v1, p0, Landroid/webkit/PointerDevice$TouchOptimizer;->mLastObservedPressedIDs:[I

    aput p1, v1, v0

    .line 297
    iget-boolean v1, p0, Landroid/webkit/PointerDevice$TouchOptimizer;->mApplyMotionFilter:Z

    if-eqz v1, :cond_2

    .line 298
    iget-object v1, p0, Landroid/webkit/PointerDevice$TouchOptimizer;->mMotionFilters:[Landroid/webkit/PointerDevice$MotionFilter;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Landroid/webkit/PointerDevice$MotionFilter;->reset()V

    .line 300
    :cond_2
    iget v1, p0, Landroid/webkit/PointerDevice$TouchOptimizer;->mNumPressedIDs:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Landroid/webkit/PointerDevice$TouchOptimizer;->mNumPressedIDs:I

    goto :goto_1

    .line 294
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 304
    :cond_4
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "addPressedID no space: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_1
.end method

.method private removePressedID(I)V
    .locals 4
    .parameter "id"

    .prologue
    .line 308
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    const/16 v1, 0xf

    if-ge v0, v1, :cond_1

    .line 309
    iget-object v1, p0, Landroid/webkit/PointerDevice$TouchOptimizer;->mLastObservedPressedIDs:[I

    aget v1, v1, v0

    if-ne v1, p1, :cond_0

    .line 310
    iget-object v1, p0, Landroid/webkit/PointerDevice$TouchOptimizer;->mLastObservedPressedIDs:[I

    const/16 v2, -0x270f

    aput v2, v1, v0

    .line 311
    iget v1, p0, Landroid/webkit/PointerDevice$TouchOptimizer;->mNumPressedIDs:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Landroid/webkit/PointerDevice$TouchOptimizer;->mNumPressedIDs:I

    .line 316
    :goto_1
    return-void

    .line 308
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 315
    :cond_1
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "removePressedID no already pressed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_1
.end method


# virtual methods
.method public isTouching()Z
    .locals 1

    .prologue
    .line 408
    iget v0, p0, Landroid/webkit/PointerDevice$TouchOptimizer;->mNumPressedIDs:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onDraw(J)Landroid/view/MotionEvent;
    .locals 23
    .parameter "eventDownTime"

    .prologue
    .line 325
    move-object/from16 v0, p0

    iget-object v7, v0, Landroid/webkit/PointerDevice$TouchOptimizer;->mPointerDevice:Landroid/webkit/PointerDevice;

    if-eqz v7, :cond_0

    .line 326
    move-object/from16 v0, p0

    iget-object v7, v0, Landroid/webkit/PointerDevice$TouchOptimizer;->mPointerDevice:Landroid/webkit/PointerDevice;

    move-object/from16 v0, p0

    iget-object v8, v0, Landroid/webkit/PointerDevice$TouchOptimizer;->mStates:[Landroid/webkit/PointerDevice$PointerState;

    invoke-virtual {v7, v8}, Landroid/webkit/PointerDevice;->update([Landroid/webkit/PointerDevice$PointerState;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 327
    const/16 v17, 0x0

    .line 396
    :goto_0
    return-object v17

    .line 334
    :cond_0
    move-object/from16 v0, p0

    iget v7, v0, Landroid/webkit/PointerDevice$TouchOptimizer;->mNumPressedIDs:I

    if-gtz v7, :cond_1

    .line 335
    const/16 v17, 0x0

    goto :goto_0

    .line 338
    :cond_1
    const/4 v6, 0x0

    .line 339
    .local v6, pointers:I
    const/16 v19, 0x0

    .local v19, m:I
    :goto_1
    const/16 v7, 0xf

    move/from16 v0, v19

    if-ge v0, v7, :cond_6

    .line 340
    move-object/from16 v0, p0

    iget-object v7, v0, Landroid/webkit/PointerDevice$TouchOptimizer;->mLastObservedPressedIDs:[I

    aget v18, v7, v19

    .line 341
    .local v18, id:I
    const/16 v7, -0x270f

    move/from16 v0, v18

    if-ne v0, v7, :cond_3

    .line 339
    :cond_2
    :goto_2
    add-int/lit8 v19, v19, 0x1

    goto :goto_1

    .line 345
    :cond_3
    const/16 v20, 0x0

    .local v20, n:I
    :goto_3
    const/16 v7, 0xf

    move/from16 v0, v20

    if-ge v0, v7, :cond_2

    .line 346
    move-object/from16 v0, p0

    iget-object v7, v0, Landroid/webkit/PointerDevice$TouchOptimizer;->mStates:[Landroid/webkit/PointerDevice$PointerState;

    aget-object v7, v7, v20

    iget v7, v7, Landroid/webkit/PointerDevice$PointerState;->id:I

    move/from16 v0, v18

    if-ne v0, v7, :cond_5

    .line 347
    move-object/from16 v0, p0

    iget-object v7, v0, Landroid/webkit/PointerDevice$TouchOptimizer;->mStates:[Landroid/webkit/PointerDevice$PointerState;

    aget-object v21, v7, v20

    .line 348
    .local v21, state:Landroid/webkit/PointerDevice$PointerState;
    move-object/from16 v0, p0

    iget-object v7, v0, Landroid/webkit/PointerDevice$TouchOptimizer;->mCoords:[Landroid/view/MotionEvent$PointerCoords;

    aget-object v16, v7, v6

    .line 350
    .local v16, coords:Landroid/view/MotionEvent$PointerCoords;
    move-object/from16 v0, p0

    iget-boolean v7, v0, Landroid/webkit/PointerDevice$TouchOptimizer;->mApplyMotionFilter:Z

    if-eqz v7, :cond_4

    .line 351
    move-object/from16 v0, p0

    iget-object v7, v0, Landroid/webkit/PointerDevice$TouchOptimizer;->mXY:[I

    const/4 v8, 0x0

    move-object/from16 v0, v21

    iget v0, v0, Landroid/webkit/PointerDevice$PointerState;->x:I

    move/from16 v22, v0

    aput v22, v7, v8

    .line 352
    move-object/from16 v0, p0

    iget-object v7, v0, Landroid/webkit/PointerDevice$TouchOptimizer;->mXY:[I

    const/4 v8, 0x1

    move-object/from16 v0, v21

    iget v0, v0, Landroid/webkit/PointerDevice$PointerState;->y:I

    move/from16 v22, v0

    aput v22, v7, v8

    .line 353
    move-object/from16 v0, p0

    iget-object v7, v0, Landroid/webkit/PointerDevice$TouchOptimizer;->mMotionFilters:[Landroid/webkit/PointerDevice$MotionFilter;

    aget-object v7, v7, v19

    move-object/from16 v0, p0

    iget-object v8, v0, Landroid/webkit/PointerDevice$TouchOptimizer;->mXY:[I

    invoke-virtual {v7, v8}, Landroid/webkit/PointerDevice$MotionFilter;->filter([I)V

    .line 354
    move-object/from16 v0, p0

    iget-object v7, v0, Landroid/webkit/PointerDevice$TouchOptimizer;->mXY:[I

    const/4 v8, 0x0

    aget v7, v7, v8

    int-to-float v7, v7

    move-object/from16 v0, v16

    iput v7, v0, Landroid/view/MotionEvent$PointerCoords;->x:F

    .line 355
    move-object/from16 v0, p0

    iget-object v7, v0, Landroid/webkit/PointerDevice$TouchOptimizer;->mXY:[I

    const/4 v8, 0x1

    aget v7, v7, v8

    int-to-float v7, v7

    move-object/from16 v0, v16

    iput v7, v0, Landroid/view/MotionEvent$PointerCoords;->y:F

    .line 360
    :goto_4
    const/high16 v7, 0x3f80

    move-object/from16 v0, v16

    iput v7, v0, Landroid/view/MotionEvent$PointerCoords;->pressure:F

    .line 361
    const/high16 v7, 0x3f80

    move-object/from16 v0, v16

    iput v7, v0, Landroid/view/MotionEvent$PointerCoords;->size:F

    .line 362
    move-object/from16 v0, p0

    iget-object v7, v0, Landroid/webkit/PointerDevice$TouchOptimizer;->mPointerIds:[I

    aput v18, v7, v6

    .line 363
    add-int/lit8 v6, v6, 0x1

    .line 364
    goto :goto_2

    .line 357
    :cond_4
    move-object/from16 v0, v21

    iget v7, v0, Landroid/webkit/PointerDevice$PointerState;->x:I

    int-to-float v7, v7

    move-object/from16 v0, v16

    iput v7, v0, Landroid/view/MotionEvent$PointerCoords;->x:F

    .line 358
    move-object/from16 v0, v21

    iget v7, v0, Landroid/webkit/PointerDevice$PointerState;->y:I

    int-to-float v7, v7

    move-object/from16 v0, v16

    iput v7, v0, Landroid/view/MotionEvent$PointerCoords;->y:F

    goto :goto_4

    .line 345
    .end local v16           #coords:Landroid/view/MotionEvent$PointerCoords;
    .end local v21           #state:Landroid/webkit/PointerDevice$PointerState;
    :cond_5
    add-int/lit8 v20, v20, 0x1

    goto/16 :goto_3

    .line 372
    .end local v18           #id:I
    .end local v20           #n:I
    :cond_6
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    .line 373
    .local v1, downTime:J
    move-wide v3, v1

    .line 374
    .local v3, eventTime:J
    const-wide/16 v7, 0x0

    cmp-long v7, p1, v7

    if-lez v7, :cond_7

    .line 375
    move-wide/from16 v1, p1

    .line 377
    :cond_7
    const/4 v14, 0x2

    .line 378
    .local v14, source:I
    const/4 v9, 0x0

    .line 379
    .local v9, metaState:I
    const/high16 v10, 0x3f80

    .line 380
    .local v10, xPrecision:F
    const/high16 v11, 0x3f80

    .line 381
    .local v11, yPrecision:F
    const/4 v12, 0x0

    .line 382
    .local v12, deviceId:I
    const/4 v13, 0x0

    .line 383
    .local v13, edgeFlags:I
    const/4 v15, 0x0

    .line 385
    .local v15, flags:I
    const/4 v5, 0x2

    .line 387
    .local v5, action:I
    move-object/from16 v0, p0

    iget-object v7, v0, Landroid/webkit/PointerDevice$TouchOptimizer;->mPointerIds:[I

    move-object/from16 v0, p0

    iget-object v8, v0, Landroid/webkit/PointerDevice$TouchOptimizer;->mCoords:[Landroid/view/MotionEvent$PointerCoords;

    invoke-static/range {v1 .. v15}, Landroid/view/MotionEvent;->obtain(JJII[I[Landroid/view/MotionEvent$PointerCoords;IFFIIII)Landroid/view/MotionEvent;

    move-result-object v17

    .line 396
    .local v17, ev:Landroid/view/MotionEvent;
    goto/16 :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;
    .locals 9
    .parameter "ev"

    .prologue
    .line 221
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 222
    .local v0, action:I
    const v6, 0xff00

    and-int/2addr v6, v0

    shr-int/lit8 v5, v6, 0x8

    .line 224
    .local v5, updownIndex:I
    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v4

    .line 226
    .local v4, updownID:I
    and-int/lit16 v6, v0, 0xff

    packed-switch v6, :pswitch_data_0

    .line 263
    :goto_0
    :pswitch_0
    iget-object v6, p0, Landroid/webkit/PointerDevice$TouchOptimizer;->mPointerDevice:Landroid/webkit/PointerDevice;

    if-nez v6, :cond_2

    .line 265
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v6

    if-ge v1, v6, :cond_2

    .line 266
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v2

    .line 267
    .local v2, id:I
    if-ltz v2, :cond_0

    const/16 v6, 0xf

    if-lt v2, v6, :cond_1

    .line 268
    :cond_0
    sget-object v6, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "TouchOptimizer: (0 <= id <MAX_POINTERS) == false!; id = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 265
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 228
    .end local v1           #i:I
    .end local v2           #id:I
    :pswitch_1
    invoke-direct {p0, v4}, Landroid/webkit/PointerDevice$TouchOptimizer;->addPressedID(I)V

    goto :goto_0

    .line 233
    :pswitch_2
    invoke-direct {p0, v4}, Landroid/webkit/PointerDevice$TouchOptimizer;->addPressedID(I)V

    goto :goto_0

    .line 238
    :pswitch_3
    invoke-direct {p0, v4}, Landroid/webkit/PointerDevice$TouchOptimizer;->removePressedID(I)V

    goto :goto_0

    .line 243
    :pswitch_4
    invoke-direct {p0, v4}, Landroid/webkit/PointerDevice$TouchOptimizer;->removePressedID(I)V

    .line 244
    const/4 v6, 0x0

    iput v6, p0, Landroid/webkit/PointerDevice$TouchOptimizer;->mNumPressedIDs:I

    goto :goto_0

    .line 270
    .restart local v1       #i:I
    .restart local v2       #id:I
    :cond_1
    iget-object v6, p0, Landroid/webkit/PointerDevice$TouchOptimizer;->mStates:[Landroid/webkit/PointerDevice$PointerState;

    aget-object v6, v6, v2

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v7

    float-to-int v7, v7

    iput v7, v6, Landroid/webkit/PointerDevice$PointerState;->x:I

    .line 271
    iget-object v6, p0, Landroid/webkit/PointerDevice$TouchOptimizer;->mStates:[Landroid/webkit/PointerDevice$PointerState;

    aget-object v6, v6, v2

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v7

    float-to-int v7, v7

    iput v7, v6, Landroid/webkit/PointerDevice$PointerState;->y:I

    goto :goto_2

    .line 277
    .end local v1           #i:I
    .end local v2           #id:I
    :cond_2
    const/4 v6, 0x2

    if-ne v0, v6, :cond_3

    iget v6, p0, Landroid/webkit/PointerDevice$TouchOptimizer;->mNumPressedIDs:I

    if-lez v6, :cond_3

    .line 278
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v6

    invoke-virtual {p0, v6, v7}, Landroid/webkit/PointerDevice$TouchOptimizer;->onDraw(J)Landroid/view/MotionEvent;

    move-result-object v3

    .line 279
    .local v3, newEvent:Landroid/view/MotionEvent;
    if-eqz v3, :cond_3

    .line 280
    move-object p1, v3

    .line 284
    .end local v3           #newEvent:Landroid/view/MotionEvent;
    :cond_3
    return-object p1

    .line 226
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
