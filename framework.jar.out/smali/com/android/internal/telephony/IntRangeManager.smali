.class public abstract Lcom/android/internal/telephony/IntRangeManager;
.super Ljava/lang/Object;
.source "IntRangeManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/IntRangeManager$ClientRange;,
        Lcom/android/internal/telephony/IntRangeManager$IntRange;
    }
.end annotation


# static fields
.field private static final INITIAL_CLIENTS_ARRAY_SIZE:I = 0x4

.field static final LOG_TAG:Ljava/lang/String; = "IntRangeManager"


# instance fields
.field private mRanges:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/IntRangeManager$IntRange;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>()V
    .locals 1

    .prologue
    .line 170
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 168
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/IntRangeManager;->mRanges:Ljava/util/ArrayList;

    .line 170
    return-void
.end method

.method private tryAddSingleRange(IIZ)Z
    .locals 1
    .parameter "startId"
    .parameter "endId"
    .parameter "selected"

    .prologue
    .line 555
    invoke-virtual {p0}, Lcom/android/internal/telephony/IntRangeManager;->startUpdate()V

    .line 556
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/internal/telephony/IntRangeManager;->addRange(IIZ)V

    .line 557
    invoke-virtual {p0}, Lcom/android/internal/telephony/IntRangeManager;->finishUpdate()Z

    move-result v0

    return v0
.end method


# virtual methods
.method protected abstract addRange(IIZ)V
.end method

.method public declared-synchronized disableRange(IILjava/lang/String;)Z
    .locals 22
    .parameter "startId"
    .parameter "endId"
    .parameter "client"

    .prologue
    .line 374
    monitor-enter p0

    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/IntRangeManager;->mRanges:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->size()I

    move-result v11

    .line 376
    .local v11, len:I
    if-nez p1, :cond_0

    const/16 v19, 0x3e7

    move/from16 v0, p2

    move/from16 v1, v19

    if-ne v0, v1, :cond_0

    .line 377
    const/16 v19, 0x0

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, v19

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/IntRangeManager;->tryAddSingleRange(IIZ)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 378
    const/16 v19, 0x1

    .line 511
    :goto_0
    monitor-exit p0

    return v19

    .line 381
    :cond_0
    const/4 v9, 0x0

    .local v9, i:I
    :goto_1
    if-ge v9, v11, :cond_14

    .line 382
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/IntRangeManager;->mRanges:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/android/internal/telephony/IntRangeManager$IntRange;

    .line 383
    .local v16, range:Lcom/android/internal/telephony/IntRangeManager$IntRange;
    move-object/from16 v0, v16

    iget v0, v0, Lcom/android/internal/telephony/IntRangeManager$IntRange;->startId:I

    move/from16 v19, v0

    move/from16 v0, p1

    move/from16 v1, v19

    if-ge v0, v1, :cond_1

    .line 384
    const/16 v19, 0x0

    goto :goto_0

    .line 385
    :cond_1
    move-object/from16 v0, v16

    iget v0, v0, Lcom/android/internal/telephony/IntRangeManager$IntRange;->endId:I

    move/from16 v19, v0

    move/from16 v0, p2

    move/from16 v1, v19

    if-gt v0, v1, :cond_13

    .line 388
    move-object/from16 v0, v16

    iget-object v4, v0, Lcom/android/internal/telephony/IntRangeManager$IntRange;->clients:Ljava/util/ArrayList;

    .line 391
    .local v4, clients:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/telephony/IntRangeManager$ClientRange;>;"
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v7

    .line 392
    .local v7, crLength:I
    const/16 v19, 0x1

    move/from16 v0, v19

    if-ne v7, v0, :cond_4

    .line 393
    const/16 v19, 0x0

    move/from16 v0, v19

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/internal/telephony/IntRangeManager$ClientRange;

    .line 394
    .local v5, cr:Lcom/android/internal/telephony/IntRangeManager$ClientRange;
    iget v0, v5, Lcom/android/internal/telephony/IntRangeManager$ClientRange;->startId:I

    move/from16 v19, v0

    move/from16 v0, v19

    move/from16 v1, p1

    if-ne v0, v1, :cond_3

    iget v0, v5, Lcom/android/internal/telephony/IntRangeManager$ClientRange;->endId:I

    move/from16 v19, v0

    move/from16 v0, v19

    move/from16 v1, p2

    if-ne v0, v1, :cond_3

    iget-object v0, v5, Lcom/android/internal/telephony/IntRangeManager$ClientRange;->client:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_3

    .line 396
    const/16 v19, 0x0

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, v19

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/IntRangeManager;->tryAddSingleRange(IIZ)Z

    move-result v19

    if-eqz v19, :cond_2

    .line 397
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/IntRangeManager;->mRanges:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 398
    const/16 v19, 0x1

    goto/16 :goto_0

    .line 400
    :cond_2
    const/16 v19, 0x0

    goto/16 :goto_0

    .line 403
    :cond_3
    const/16 v19, 0x0

    goto/16 :goto_0

    .line 411
    .end local v5           #cr:Lcom/android/internal/telephony/IntRangeManager$ClientRange;
    :cond_4
    const/high16 v10, -0x8000

    .line 412
    .local v10, largestEndId:I
    const/16 v18, 0x0

    .line 414
    .local v18, updateStarted:Z
    const/4 v6, 0x0

    .local v6, crIndex:I
    :goto_2
    if-ge v6, v7, :cond_13

    .line 415
    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/internal/telephony/IntRangeManager$ClientRange;

    .line 416
    .restart local v5       #cr:Lcom/android/internal/telephony/IntRangeManager$ClientRange;
    iget v0, v5, Lcom/android/internal/telephony/IntRangeManager$ClientRange;->startId:I

    move/from16 v19, v0

    move/from16 v0, v19

    move/from16 v1, p1

    if-ne v0, v1, :cond_11

    iget v0, v5, Lcom/android/internal/telephony/IntRangeManager$ClientRange;->endId:I

    move/from16 v19, v0

    move/from16 v0, v19

    move/from16 v1, p2

    if-ne v0, v1, :cond_11

    iget-object v0, v5, Lcom/android/internal/telephony/IntRangeManager$ClientRange;->client:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_11

    .line 418
    add-int/lit8 v19, v7, -0x1

    move/from16 v0, v19

    if-ne v6, v0, :cond_7

    .line 419
    move-object/from16 v0, v16

    iget v0, v0, Lcom/android/internal/telephony/IntRangeManager$IntRange;->endId:I

    move/from16 v19, v0

    move/from16 v0, v19

    if-ne v0, v10, :cond_5

    .line 421
    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 422
    const/16 v19, 0x1

    goto/16 :goto_0

    .line 425
    :cond_5
    add-int/lit8 v19, v10, 0x1

    move-object/from16 v0, v16

    iget v0, v0, Lcom/android/internal/telephony/IntRangeManager$IntRange;->endId:I

    move/from16 v20, v0

    const/16 v21, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v20

    move/from16 v3, v21

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/IntRangeManager;->tryAddSingleRange(IIZ)Z

    move-result v19

    if-eqz v19, :cond_6

    .line 426
    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 427
    move-object/from16 v0, v16

    iput v10, v0, Lcom/android/internal/telephony/IntRangeManager$IntRange;->endId:I

    .line 428
    const/16 v19, 0x1

    goto/16 :goto_0

    .line 430
    :cond_6
    const/16 v19, 0x0

    goto/16 :goto_0

    .line 438
    :cond_7
    new-instance v17, Lcom/android/internal/telephony/IntRangeManager$IntRange;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    move-object/from16 v2, v16

    invoke-direct {v0, v1, v2, v6}, Lcom/android/internal/telephony/IntRangeManager$IntRange;-><init>(Lcom/android/internal/telephony/IntRangeManager;Lcom/android/internal/telephony/IntRangeManager$IntRange;I)V

    .line 440
    .local v17, rangeCopy:Lcom/android/internal/telephony/IntRangeManager$IntRange;
    if-nez v6, :cond_9

    .line 445
    const/16 v19, 0x1

    move/from16 v0, v19

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/android/internal/telephony/IntRangeManager$ClientRange;

    move-object/from16 v0, v19

    iget v15, v0, Lcom/android/internal/telephony/IntRangeManager$ClientRange;->startId:I

    .line 446
    .local v15, nextStartId:I
    move-object/from16 v0, v16

    iget v0, v0, Lcom/android/internal/telephony/IntRangeManager$IntRange;->startId:I

    move/from16 v19, v0

    move/from16 v0, v19

    if-eq v15, v0, :cond_8

    .line 447
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/IntRangeManager;->startUpdate()V

    .line 448
    const/16 v18, 0x1

    .line 449
    move-object/from16 v0, v16

    iget v0, v0, Lcom/android/internal/telephony/IntRangeManager$IntRange;->startId:I

    move/from16 v19, v0

    add-int/lit8 v20, v15, -0x1

    const/16 v21, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v20

    move/from16 v3, v21

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/IntRangeManager;->addRange(IIZ)V

    .line 450
    move-object/from16 v0, v17

    iput v15, v0, Lcom/android/internal/telephony/IntRangeManager$IntRange;->startId:I

    .line 453
    :cond_8
    const/16 v19, 0x1

    move/from16 v0, v19

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/android/internal/telephony/IntRangeManager$ClientRange;

    move-object/from16 v0, v19

    iget v10, v0, Lcom/android/internal/telephony/IntRangeManager$ClientRange;->endId:I

    .line 460
    .end local v15           #nextStartId:I
    :cond_9
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 462
    .local v12, newRanges:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/telephony/IntRangeManager$IntRange;>;"
    move-object/from16 v8, v17

    .line 463
    .local v8, currentRange:Lcom/android/internal/telephony/IntRangeManager$IntRange;
    add-int/lit8 v14, v6, 0x1

    .local v14, nextIndex:I
    :goto_3
    if-ge v14, v7, :cond_d

    .line 464
    invoke-virtual {v4, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/internal/telephony/IntRangeManager$ClientRange;

    .line 465
    .local v13, nextCr:Lcom/android/internal/telephony/IntRangeManager$ClientRange;
    iget v0, v13, Lcom/android/internal/telephony/IntRangeManager$ClientRange;->startId:I

    move/from16 v19, v0

    add-int/lit8 v20, v10, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-le v0, v1, :cond_c

    .line 466
    if-nez v18, :cond_a

    .line 467
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/IntRangeManager;->startUpdate()V

    .line 468
    const/16 v18, 0x1

    .line 470
    :cond_a
    add-int/lit8 v19, v10, 0x1

    iget v0, v13, Lcom/android/internal/telephony/IntRangeManager$ClientRange;->startId:I

    move/from16 v20, v0

    add-int/lit8 v20, v20, -0x1

    const/16 v21, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v20

    move/from16 v3, v21

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/IntRangeManager;->addRange(IIZ)V

    .line 471
    iput v10, v8, Lcom/android/internal/telephony/IntRangeManager$IntRange;->endId:I

    .line 472
    invoke-virtual {v12, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 473
    new-instance v8, Lcom/android/internal/telephony/IntRangeManager$IntRange;

    .end local v8           #currentRange:Lcom/android/internal/telephony/IntRangeManager$IntRange;
    move-object/from16 v0, p0

    invoke-direct {v8, v0, v13}, Lcom/android/internal/telephony/IntRangeManager$IntRange;-><init>(Lcom/android/internal/telephony/IntRangeManager;Lcom/android/internal/telephony/IntRangeManager$ClientRange;)V

    .line 477
    .restart local v8       #currentRange:Lcom/android/internal/telephony/IntRangeManager$IntRange;
    :goto_4
    iget v0, v13, Lcom/android/internal/telephony/IntRangeManager$ClientRange;->endId:I

    move/from16 v19, v0

    move/from16 v0, v19

    if-le v0, v10, :cond_b

    .line 478
    iget v10, v13, Lcom/android/internal/telephony/IntRangeManager$ClientRange;->endId:I

    .line 463
    :cond_b
    add-int/lit8 v14, v14, 0x1

    goto :goto_3

    .line 475
    :cond_c
    iget-object v0, v8, Lcom/android/internal/telephony/IntRangeManager$IntRange;->clients:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_4

    .line 374
    .end local v4           #clients:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/telephony/IntRangeManager$ClientRange;>;"
    .end local v5           #cr:Lcom/android/internal/telephony/IntRangeManager$ClientRange;
    .end local v6           #crIndex:I
    .end local v7           #crLength:I
    .end local v8           #currentRange:Lcom/android/internal/telephony/IntRangeManager$IntRange;
    .end local v9           #i:I
    .end local v10           #largestEndId:I
    .end local v11           #len:I
    .end local v12           #newRanges:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/telephony/IntRangeManager$IntRange;>;"
    .end local v13           #nextCr:Lcom/android/internal/telephony/IntRangeManager$ClientRange;
    .end local v14           #nextIndex:I
    .end local v16           #range:Lcom/android/internal/telephony/IntRangeManager$IntRange;
    .end local v17           #rangeCopy:Lcom/android/internal/telephony/IntRangeManager$IntRange;
    .end local v18           #updateStarted:Z
    :catchall_0
    move-exception v19

    monitor-exit p0

    throw v19

    .line 483
    .restart local v4       #clients:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/telephony/IntRangeManager$ClientRange;>;"
    .restart local v5       #cr:Lcom/android/internal/telephony/IntRangeManager$ClientRange;
    .restart local v6       #crIndex:I
    .restart local v7       #crLength:I
    .restart local v8       #currentRange:Lcom/android/internal/telephony/IntRangeManager$IntRange;
    .restart local v9       #i:I
    .restart local v10       #largestEndId:I
    .restart local v11       #len:I
    .restart local v12       #newRanges:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/telephony/IntRangeManager$IntRange;>;"
    .restart local v14       #nextIndex:I
    .restart local v16       #range:Lcom/android/internal/telephony/IntRangeManager$IntRange;
    .restart local v17       #rangeCopy:Lcom/android/internal/telephony/IntRangeManager$IntRange;
    .restart local v18       #updateStarted:Z
    :cond_d
    move/from16 v0, p2

    if-ge v10, v0, :cond_f

    .line 484
    if-nez v18, :cond_e

    .line 485
    :try_start_2
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/IntRangeManager;->startUpdate()V

    .line 486
    const/16 v18, 0x1

    .line 488
    :cond_e
    add-int/lit8 v19, v10, 0x1

    const/16 v20, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, p2

    move/from16 v3, v20

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/IntRangeManager;->addRange(IIZ)V

    .line 489
    iput v10, v8, Lcom/android/internal/telephony/IntRangeManager$IntRange;->endId:I

    .line 491
    :cond_f
    invoke-virtual {v12, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 493
    if-eqz v18, :cond_10

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/IntRangeManager;->finishUpdate()Z

    move-result v19

    if-nez v19, :cond_10

    .line 494
    const/16 v19, 0x0

    goto/16 :goto_0

    .line 498
    :cond_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/IntRangeManager;->mRanges:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 499
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/IntRangeManager;->mRanges:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v9, v12}, Ljava/util/ArrayList;->addAll(ILjava/util/Collection;)Z

    .line 500
    const/16 v19, 0x1

    goto/16 :goto_0

    .line 503
    .end local v8           #currentRange:Lcom/android/internal/telephony/IntRangeManager$IntRange;
    .end local v12           #newRanges:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/telephony/IntRangeManager$IntRange;>;"
    .end local v14           #nextIndex:I
    .end local v17           #rangeCopy:Lcom/android/internal/telephony/IntRangeManager$IntRange;
    :cond_11
    iget v0, v5, Lcom/android/internal/telephony/IntRangeManager$ClientRange;->endId:I

    move/from16 v19, v0

    move/from16 v0, v19

    if-le v0, v10, :cond_12

    .line 504
    iget v10, v5, Lcom/android/internal/telephony/IntRangeManager$ClientRange;->endId:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 414
    :cond_12
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_2

    .line 381
    .end local v4           #clients:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/telephony/IntRangeManager$ClientRange;>;"
    .end local v5           #cr:Lcom/android/internal/telephony/IntRangeManager$ClientRange;
    .end local v6           #crIndex:I
    .end local v7           #crLength:I
    .end local v10           #largestEndId:I
    .end local v18           #updateStarted:Z
    :cond_13
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_1

    .line 511
    .end local v16           #range:Lcom/android/internal/telephony/IntRangeManager$IntRange;
    :cond_14
    const/16 v19, 0x0

    goto/16 :goto_0
.end method

.method public declared-synchronized enableRange(IILjava/lang/String;)Z
    .locals 19
    .parameter "startId"
    .parameter "endId"
    .parameter "client"

    .prologue
    .line 183
    monitor-enter p0

    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/IntRangeManager;->mRanges:Ljava/util/ArrayList;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->size()I

    move-result v10

    .line 185
    .local v10, len:I
    if-nez p1, :cond_0

    const/16 v16, 0x3e7

    move/from16 v0, p2

    move/from16 v1, v16

    if-ne v0, v1, :cond_0

    .line 186
    const/16 v16, 0x1

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, v16

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/IntRangeManager;->tryAddSingleRange(IIZ)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 187
    const/16 v16, 0x1

    .line 359
    :goto_0
    monitor-exit p0

    return v16

    .line 191
    :cond_0
    if-nez v10, :cond_2

    .line 192
    const/16 v16, 0x1

    :try_start_1
    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, v16

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/IntRangeManager;->tryAddSingleRange(IIZ)Z

    move-result v16

    if-eqz v16, :cond_1

    .line 193
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/IntRangeManager;->mRanges:Ljava/util/ArrayList;

    move-object/from16 v16, v0

    new-instance v17, Lcom/android/internal/telephony/IntRangeManager$IntRange;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    move/from16 v2, p1

    move/from16 v3, p2

    move-object/from16 v4, p3

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/internal/telephony/IntRangeManager$IntRange;-><init>(Lcom/android/internal/telephony/IntRangeManager;IILjava/lang/String;)V

    invoke-virtual/range {v16 .. v17}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 194
    const/16 v16, 0x1

    goto :goto_0

    .line 196
    :cond_1
    const/16 v16, 0x0

    goto :goto_0

    .line 200
    :cond_2
    const/4 v13, 0x0

    .local v13, startIndex:I
    :goto_1
    if-ge v13, v10, :cond_1a

    .line 201
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/IntRangeManager;->mRanges:Ljava/util/ArrayList;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v0, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/internal/telephony/IntRangeManager$IntRange;

    .line 202
    .local v12, range:Lcom/android/internal/telephony/IntRangeManager$IntRange;
    iget v0, v12, Lcom/android/internal/telephony/IntRangeManager$IntRange;->startId:I

    move/from16 v16, v0

    move/from16 v0, p1

    move/from16 v1, v16

    if-ge v0, v1, :cond_10

    .line 205
    add-int/lit8 v16, p2, 0x1

    iget v0, v12, Lcom/android/internal/telephony/IntRangeManager$IntRange;->startId:I

    move/from16 v17, v0

    move/from16 v0, v16

    move/from16 v1, v17

    if-ge v0, v1, :cond_4

    .line 207
    const/16 v16, 0x1

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, v16

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/IntRangeManager;->tryAddSingleRange(IIZ)Z

    move-result v16

    if-eqz v16, :cond_3

    .line 208
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/IntRangeManager;->mRanges:Ljava/util/ArrayList;

    move-object/from16 v16, v0

    new-instance v17, Lcom/android/internal/telephony/IntRangeManager$IntRange;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    move/from16 v2, p1

    move/from16 v3, p2

    move-object/from16 v4, p3

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/internal/telephony/IntRangeManager$IntRange;-><init>(Lcom/android/internal/telephony/IntRangeManager;IILjava/lang/String;)V

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v0, v13, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 209
    const/16 v16, 0x1

    goto/16 :goto_0

    .line 211
    :cond_3
    const/16 v16, 0x0

    goto/16 :goto_0

    .line 213
    :cond_4
    iget v0, v12, Lcom/android/internal/telephony/IntRangeManager$IntRange;->endId:I

    move/from16 v16, v0

    move/from16 v0, p2

    move/from16 v1, v16

    if-gt v0, v1, :cond_6

    .line 215
    iget v0, v12, Lcom/android/internal/telephony/IntRangeManager$IntRange;->startId:I

    move/from16 v16, v0

    add-int/lit8 v16, v16, -0x1

    const/16 v17, 0x1

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, v16

    move/from16 v3, v17

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/IntRangeManager;->tryAddSingleRange(IIZ)Z

    move-result v16

    if-eqz v16, :cond_5

    .line 216
    move/from16 v0, p1

    iput v0, v12, Lcom/android/internal/telephony/IntRangeManager$IntRange;->startId:I

    .line 217
    iget-object v0, v12, Lcom/android/internal/telephony/IntRangeManager$IntRange;->clients:Ljava/util/ArrayList;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    new-instance v18, Lcom/android/internal/telephony/IntRangeManager$ClientRange;

    invoke-direct/range {v18 .. v22}, Lcom/android/internal/telephony/IntRangeManager$ClientRange;-><init>(Lcom/android/internal/telephony/IntRangeManager;IILjava/lang/String;)V

    invoke-virtual/range {v16 .. v18}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 218
    const/16 v16, 0x1

    goto/16 :goto_0

    .line 220
    :cond_5
    const/16 v16, 0x0

    goto/16 :goto_0

    .line 224
    :cond_6
    add-int/lit8 v5, v13, 0x1

    .local v5, endIndex:I
    :goto_2
    if-ge v5, v10, :cond_d

    .line 225
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/IntRangeManager;->mRanges:Ljava/util/ArrayList;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/internal/telephony/IntRangeManager$IntRange;

    .line 226
    .local v6, endRange:Lcom/android/internal/telephony/IntRangeManager$IntRange;
    add-int/lit8 v16, p2, 0x1

    iget v0, v6, Lcom/android/internal/telephony/IntRangeManager$IntRange;->startId:I

    move/from16 v17, v0

    move/from16 v0, v16

    move/from16 v1, v17

    if-ge v0, v1, :cond_9

    .line 228
    const/16 v16, 0x1

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, v16

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/IntRangeManager;->tryAddSingleRange(IIZ)Z

    move-result v16

    if-eqz v16, :cond_8

    .line 229
    move/from16 v0, p1

    iput v0, v12, Lcom/android/internal/telephony/IntRangeManager$IntRange;->startId:I

    .line 230
    move/from16 v0, p2

    iput v0, v12, Lcom/android/internal/telephony/IntRangeManager$IntRange;->endId:I

    .line 232
    iget-object v0, v12, Lcom/android/internal/telephony/IntRangeManager$IntRange;->clients:Ljava/util/ArrayList;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    new-instance v18, Lcom/android/internal/telephony/IntRangeManager$ClientRange;

    invoke-direct/range {v18 .. v22}, Lcom/android/internal/telephony/IntRangeManager$ClientRange;-><init>(Lcom/android/internal/telephony/IntRangeManager;IILjava/lang/String;)V

    invoke-virtual/range {v16 .. v18}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 238
    add-int/lit8 v8, v13, 0x1

    .line 239
    .local v8, joinIndex:I
    move v7, v8

    .local v7, i:I
    :goto_3
    if-ge v7, v5, :cond_7

    .line 240
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/IntRangeManager;->mRanges:Ljava/util/ArrayList;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/internal/telephony/IntRangeManager$IntRange;

    .line 241
    .local v9, joinRange:Lcom/android/internal/telephony/IntRangeManager$IntRange;
    iget-object v0, v12, Lcom/android/internal/telephony/IntRangeManager$IntRange;->clients:Ljava/util/ArrayList;

    move-object/from16 v16, v0

    iget-object v0, v9, Lcom/android/internal/telephony/IntRangeManager$IntRange;->clients:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 242
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/IntRangeManager;->mRanges:Ljava/util/ArrayList;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 239
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    .line 244
    .end local v9           #joinRange:Lcom/android/internal/telephony/IntRangeManager$IntRange;
    :cond_7
    const/16 v16, 0x1

    goto/16 :goto_0

    .line 246
    .end local v7           #i:I
    .end local v8           #joinIndex:I
    :cond_8
    const/16 v16, 0x0

    goto/16 :goto_0

    .line 248
    :cond_9
    iget v0, v6, Lcom/android/internal/telephony/IntRangeManager$IntRange;->endId:I

    move/from16 v16, v0

    move/from16 v0, p2

    move/from16 v1, v16

    if-gt v0, v1, :cond_c

    .line 251
    iget v0, v6, Lcom/android/internal/telephony/IntRangeManager$IntRange;->startId:I

    move/from16 v16, v0

    add-int/lit8 v16, v16, -0x1

    const/16 v17, 0x1

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, v16

    move/from16 v3, v17

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/IntRangeManager;->tryAddSingleRange(IIZ)Z

    move-result v16

    if-eqz v16, :cond_b

    .line 252
    move/from16 v0, p1

    iput v0, v12, Lcom/android/internal/telephony/IntRangeManager$IntRange;->startId:I

    .line 253
    iget v0, v6, Lcom/android/internal/telephony/IntRangeManager$IntRange;->endId:I

    move/from16 v16, v0

    move/from16 v0, v16

    iput v0, v12, Lcom/android/internal/telephony/IntRangeManager$IntRange;->endId:I

    .line 255
    iget-object v0, v12, Lcom/android/internal/telephony/IntRangeManager$IntRange;->clients:Ljava/util/ArrayList;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    new-instance v18, Lcom/android/internal/telephony/IntRangeManager$ClientRange;

    invoke-direct/range {v18 .. v22}, Lcom/android/internal/telephony/IntRangeManager$ClientRange;-><init>(Lcom/android/internal/telephony/IntRangeManager;IILjava/lang/String;)V

    invoke-virtual/range {v16 .. v18}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 261
    add-int/lit8 v8, v13, 0x1

    .line 262
    .restart local v8       #joinIndex:I
    move v7, v8

    .restart local v7       #i:I
    :goto_4
    if-gt v7, v5, :cond_a

    .line 263
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/IntRangeManager;->mRanges:Ljava/util/ArrayList;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/internal/telephony/IntRangeManager$IntRange;

    .line 264
    .restart local v9       #joinRange:Lcom/android/internal/telephony/IntRangeManager$IntRange;
    iget-object v0, v12, Lcom/android/internal/telephony/IntRangeManager$IntRange;->clients:Ljava/util/ArrayList;

    move-object/from16 v16, v0

    iget-object v0, v9, Lcom/android/internal/telephony/IntRangeManager$IntRange;->clients:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 265
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/IntRangeManager;->mRanges:Ljava/util/ArrayList;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 262
    add-int/lit8 v7, v7, 0x1

    goto :goto_4

    .line 267
    .end local v9           #joinRange:Lcom/android/internal/telephony/IntRangeManager$IntRange;
    :cond_a
    const/16 v16, 0x1

    goto/16 :goto_0

    .line 269
    .end local v7           #i:I
    .end local v8           #joinIndex:I
    :cond_b
    const/16 v16, 0x0

    goto/16 :goto_0

    .line 224
    :cond_c
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_2

    .line 275
    .end local v6           #endRange:Lcom/android/internal/telephony/IntRangeManager$IntRange;
    :cond_d
    const/16 v16, 0x1

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, v16

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/IntRangeManager;->tryAddSingleRange(IIZ)Z

    move-result v16

    if-eqz v16, :cond_f

    .line 276
    move/from16 v0, p1

    iput v0, v12, Lcom/android/internal/telephony/IntRangeManager$IntRange;->startId:I

    .line 277
    move/from16 v0, p2

    iput v0, v12, Lcom/android/internal/telephony/IntRangeManager$IntRange;->endId:I

    .line 279
    iget-object v0, v12, Lcom/android/internal/telephony/IntRangeManager$IntRange;->clients:Ljava/util/ArrayList;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    new-instance v18, Lcom/android/internal/telephony/IntRangeManager$ClientRange;

    invoke-direct/range {v18 .. v22}, Lcom/android/internal/telephony/IntRangeManager$ClientRange;-><init>(Lcom/android/internal/telephony/IntRangeManager;IILjava/lang/String;)V

    invoke-virtual/range {v16 .. v18}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 285
    add-int/lit8 v8, v13, 0x1

    .line 286
    .restart local v8       #joinIndex:I
    move v7, v8

    .restart local v7       #i:I
    :goto_5
    if-ge v7, v10, :cond_e

    .line 287
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/IntRangeManager;->mRanges:Ljava/util/ArrayList;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/internal/telephony/IntRangeManager$IntRange;

    .line 288
    .restart local v9       #joinRange:Lcom/android/internal/telephony/IntRangeManager$IntRange;
    iget-object v0, v12, Lcom/android/internal/telephony/IntRangeManager$IntRange;->clients:Ljava/util/ArrayList;

    move-object/from16 v16, v0

    iget-object v0, v9, Lcom/android/internal/telephony/IntRangeManager$IntRange;->clients:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 289
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/IntRangeManager;->mRanges:Ljava/util/ArrayList;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 286
    add-int/lit8 v7, v7, 0x1

    goto :goto_5

    .line 291
    .end local v9           #joinRange:Lcom/android/internal/telephony/IntRangeManager$IntRange;
    :cond_e
    const/16 v16, 0x1

    goto/16 :goto_0

    .line 293
    .end local v7           #i:I
    .end local v8           #joinIndex:I
    :cond_f
    const/16 v16, 0x0

    goto/16 :goto_0

    .line 296
    .end local v5           #endIndex:I
    :cond_10
    add-int/lit8 v16, p1, 0x1

    iget v0, v12, Lcom/android/internal/telephony/IntRangeManager$IntRange;->endId:I

    move/from16 v17, v0

    move/from16 v0, v16

    move/from16 v1, v17

    if-gt v0, v1, :cond_19

    .line 297
    iget v0, v12, Lcom/android/internal/telephony/IntRangeManager$IntRange;->endId:I

    move/from16 v16, v0

    move/from16 v0, p2

    move/from16 v1, v16

    if-gt v0, v1, :cond_11

    .line 299
    new-instance v16, Lcom/android/internal/telephony/IntRangeManager$ClientRange;

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    move/from16 v2, p1

    move/from16 v3, p2

    move-object/from16 v4, p3

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/internal/telephony/IntRangeManager$ClientRange;-><init>(Lcom/android/internal/telephony/IntRangeManager;IILjava/lang/String;)V

    move-object/from16 v0, v16

    invoke-virtual {v12, v0}, Lcom/android/internal/telephony/IntRangeManager$IntRange;->insert(Lcom/android/internal/telephony/IntRangeManager$ClientRange;)V

    .line 300
    const/16 v16, 0x1

    goto/16 :goto_0

    .line 303
    :cond_11
    move v5, v13

    .line 304
    .restart local v5       #endIndex:I
    add-int/lit8 v14, v13, 0x1

    .local v14, testIndex:I
    :goto_6
    if-ge v14, v10, :cond_12

    .line 305
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/IntRangeManager;->mRanges:Ljava/util/ArrayList;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v0, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/internal/telephony/IntRangeManager$IntRange;

    .line 306
    .local v15, testRange:Lcom/android/internal/telephony/IntRangeManager$IntRange;
    add-int/lit8 v16, p2, 0x1

    iget v0, v15, Lcom/android/internal/telephony/IntRangeManager$IntRange;->startId:I

    move/from16 v17, v0

    move/from16 v0, v16

    move/from16 v1, v17

    if-ge v0, v1, :cond_13

    .line 313
    .end local v15           #testRange:Lcom/android/internal/telephony/IntRangeManager$IntRange;
    :cond_12
    if-ne v5, v13, :cond_15

    .line 316
    iget v0, v12, Lcom/android/internal/telephony/IntRangeManager$IntRange;->endId:I

    move/from16 v16, v0

    add-int/lit8 v16, v16, 0x1

    const/16 v17, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v16

    move/from16 v2, p2

    move/from16 v3, v17

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/IntRangeManager;->tryAddSingleRange(IIZ)Z

    move-result v16

    if-eqz v16, :cond_14

    .line 317
    move/from16 v0, p2

    iput v0, v12, Lcom/android/internal/telephony/IntRangeManager$IntRange;->endId:I

    .line 318
    new-instance v16, Lcom/android/internal/telephony/IntRangeManager$ClientRange;

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    move/from16 v2, p1

    move/from16 v3, p2

    move-object/from16 v4, p3

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/internal/telephony/IntRangeManager$ClientRange;-><init>(Lcom/android/internal/telephony/IntRangeManager;IILjava/lang/String;)V

    move-object/from16 v0, v16

    invoke-virtual {v12, v0}, Lcom/android/internal/telephony/IntRangeManager$IntRange;->insert(Lcom/android/internal/telephony/IntRangeManager$ClientRange;)V

    .line 319
    const/16 v16, 0x1

    goto/16 :goto_0

    .line 309
    .restart local v15       #testRange:Lcom/android/internal/telephony/IntRangeManager$IntRange;
    :cond_13
    move v5, v14

    .line 304
    add-int/lit8 v14, v14, 0x1

    goto :goto_6

    .line 321
    .end local v15           #testRange:Lcom/android/internal/telephony/IntRangeManager$IntRange;
    :cond_14
    const/16 v16, 0x0

    goto/16 :goto_0

    .line 325
    :cond_15
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/IntRangeManager;->mRanges:Ljava/util/ArrayList;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/internal/telephony/IntRangeManager$IntRange;

    .line 330
    .restart local v6       #endRange:Lcom/android/internal/telephony/IntRangeManager$IntRange;
    iget v0, v6, Lcom/android/internal/telephony/IntRangeManager$IntRange;->endId:I

    move/from16 v16, v0

    move/from16 v0, p2

    move/from16 v1, v16

    if-gt v0, v1, :cond_16

    iget v0, v6, Lcom/android/internal/telephony/IntRangeManager$IntRange;->startId:I

    move/from16 v16, v0

    add-int/lit8 v11, v16, -0x1

    .line 331
    .local v11, newRangeEndId:I
    :goto_7
    iget v0, v12, Lcom/android/internal/telephony/IntRangeManager$IntRange;->endId:I

    move/from16 v16, v0

    add-int/lit8 v16, v16, 0x1

    const/16 v17, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v16

    move/from16 v2, v17

    invoke-direct {v0, v1, v11, v2}, Lcom/android/internal/telephony/IntRangeManager;->tryAddSingleRange(IIZ)Z

    move-result v16

    if-eqz v16, :cond_18

    .line 332
    move/from16 v0, p2

    iput v0, v12, Lcom/android/internal/telephony/IntRangeManager$IntRange;->endId:I

    .line 334
    new-instance v16, Lcom/android/internal/telephony/IntRangeManager$ClientRange;

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    move/from16 v2, p1

    move/from16 v3, p2

    move-object/from16 v4, p3

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/internal/telephony/IntRangeManager$ClientRange;-><init>(Lcom/android/internal/telephony/IntRangeManager;IILjava/lang/String;)V

    move-object/from16 v0, v16

    invoke-virtual {v12, v0}, Lcom/android/internal/telephony/IntRangeManager$IntRange;->insert(Lcom/android/internal/telephony/IntRangeManager$ClientRange;)V

    .line 340
    add-int/lit8 v8, v13, 0x1

    .line 341
    .restart local v8       #joinIndex:I
    move v7, v8

    .restart local v7       #i:I
    :goto_8
    if-ge v7, v5, :cond_17

    .line 342
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/IntRangeManager;->mRanges:Ljava/util/ArrayList;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/internal/telephony/IntRangeManager$IntRange;

    .line 343
    .restart local v9       #joinRange:Lcom/android/internal/telephony/IntRangeManager$IntRange;
    iget-object v0, v12, Lcom/android/internal/telephony/IntRangeManager$IntRange;->clients:Ljava/util/ArrayList;

    move-object/from16 v16, v0

    iget-object v0, v9, Lcom/android/internal/telephony/IntRangeManager$IntRange;->clients:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 344
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/IntRangeManager;->mRanges:Ljava/util/ArrayList;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 341
    add-int/lit8 v7, v7, 0x1

    goto :goto_8

    .end local v7           #i:I
    .end local v8           #joinIndex:I
    .end local v9           #joinRange:Lcom/android/internal/telephony/IntRangeManager$IntRange;
    .end local v11           #newRangeEndId:I
    :cond_16
    move/from16 v11, p2

    .line 330
    goto :goto_7

    .line 346
    .restart local v7       #i:I
    .restart local v8       #joinIndex:I
    .restart local v11       #newRangeEndId:I
    :cond_17
    const/16 v16, 0x1

    goto/16 :goto_0

    .line 348
    .end local v7           #i:I
    .end local v8           #joinIndex:I
    :cond_18
    const/16 v16, 0x0

    goto/16 :goto_0

    .line 200
    .end local v5           #endIndex:I
    .end local v6           #endRange:Lcom/android/internal/telephony/IntRangeManager$IntRange;
    .end local v11           #newRangeEndId:I
    .end local v14           #testIndex:I
    :cond_19
    add-int/lit8 v13, v13, 0x1

    goto/16 :goto_1

    .line 355
    .end local v12           #range:Lcom/android/internal/telephony/IntRangeManager$IntRange;
    :cond_1a
    const/16 v16, 0x1

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, v16

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/IntRangeManager;->tryAddSingleRange(IIZ)Z

    move-result v16

    if-eqz v16, :cond_1b

    .line 356
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/IntRangeManager;->mRanges:Ljava/util/ArrayList;

    move-object/from16 v16, v0

    new-instance v17, Lcom/android/internal/telephony/IntRangeManager$IntRange;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    move/from16 v2, p1

    move/from16 v3, p2

    move-object/from16 v4, p3

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/internal/telephony/IntRangeManager$IntRange;-><init>(Lcom/android/internal/telephony/IntRangeManager;IILjava/lang/String;)V

    invoke-virtual/range {v16 .. v17}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 357
    const/16 v16, 0x1

    goto/16 :goto_0

    .line 359
    :cond_1b
    const/16 v16, 0x0

    goto/16 :goto_0

    .line 183
    .end local v10           #len:I
    .end local v13           #startIndex:I
    :catchall_0
    move-exception v16

    monitor-exit p0

    throw v16
.end method

.method protected abstract finishUpdate()Z
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 565
    iget-object v0, p0, Lcom/android/internal/telephony/IntRangeManager;->mRanges:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    return v0
.end method

.method protected abstract startUpdate()V
.end method

.method public updateRanges()Z
    .locals 8

    .prologue
    const/4 v7, 0x1

    .line 521
    invoke-virtual {p0}, Lcom/android/internal/telephony/IntRangeManager;->startUpdate()V

    .line 522
    iget-object v5, p0, Lcom/android/internal/telephony/IntRangeManager;->mRanges:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 523
    .local v1, iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/internal/telephony/IntRangeManager$IntRange;>;"
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 524
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/telephony/IntRangeManager$IntRange;

    .line 525
    .local v3, range:Lcom/android/internal/telephony/IntRangeManager$IntRange;
    iget v4, v3, Lcom/android/internal/telephony/IntRangeManager$IntRange;->startId:I

    .line 526
    .local v4, start:I
    iget v0, v3, Lcom/android/internal/telephony/IntRangeManager$IntRange;->endId:I

    .line 528
    .local v0, end:I
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 529
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/IntRangeManager$IntRange;

    .line 531
    .local v2, nextNode:Lcom/android/internal/telephony/IntRangeManager$IntRange;
    iget v5, v2, Lcom/android/internal/telephony/IntRangeManager$IntRange;->startId:I

    add-int/lit8 v6, v0, 0x1

    if-gt v5, v6, :cond_1

    .line 532
    iget v5, v2, Lcom/android/internal/telephony/IntRangeManager$IntRange;->endId:I

    if-le v5, v0, :cond_0

    .line 533
    iget v0, v2, Lcom/android/internal/telephony/IntRangeManager$IntRange;->endId:I

    goto :goto_0

    .line 536
    :cond_1
    invoke-virtual {p0, v4, v0, v7}, Lcom/android/internal/telephony/IntRangeManager;->addRange(IIZ)V

    .line 537
    iget v4, v2, Lcom/android/internal/telephony/IntRangeManager$IntRange;->startId:I

    .line 538
    iget v0, v2, Lcom/android/internal/telephony/IntRangeManager$IntRange;->endId:I

    goto :goto_0

    .line 542
    .end local v2           #nextNode:Lcom/android/internal/telephony/IntRangeManager$IntRange;
    :cond_2
    invoke-virtual {p0, v4, v0, v7}, Lcom/android/internal/telephony/IntRangeManager;->addRange(IIZ)V

    .line 544
    .end local v0           #end:I
    .end local v3           #range:Lcom/android/internal/telephony/IntRangeManager$IntRange;
    .end local v4           #start:I
    :cond_3
    invoke-virtual {p0}, Lcom/android/internal/telephony/IntRangeManager;->finishUpdate()Z

    move-result v5

    return v5
.end method
