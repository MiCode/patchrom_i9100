.class public Landroid/sec/clipboard/data/list/ClipboardDataBitmap;
.super Landroid/sec/clipboard/data/ClipboardData;
.source "ClipboardDataBitmap.java"


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private mInitBaseValue:Ljava/lang/String;

.field private mInitBaseValueCheck:Z

.field private mValue:Ljava/lang/String;

.field private mValueUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 72
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Landroid/sec/clipboard/data/ClipboardData;-><init>(I)V

    .line 65
    const-string v0, ""

    iput-object v0, p0, Landroid/sec/clipboard/data/list/ClipboardDataBitmap;->mValue:Ljava/lang/String;

    .line 66
    const-string v0, ""

    iput-object v0, p0, Landroid/sec/clipboard/data/list/ClipboardDataBitmap;->mValueUrl:Ljava/lang/String;

    .line 67
    const-string v0, ""

    iput-object v0, p0, Landroid/sec/clipboard/data/list/ClipboardDataBitmap;->mInitBaseValue:Ljava/lang/String;

    .line 68
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/sec/clipboard/data/list/ClipboardDataBitmap;->mInitBaseValueCheck:Z

    .line 73
    return-void
.end method

.method private CompareFile(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 31
    .parameter "src"
    .parameter "dest"

    .prologue
    .line 301
    const/4 v10, 0x5

    .line 302
    .local v10, compareCount:I
    const/16 v11, 0x80

    .line 304
    .local v11, compareSize:I
    const/4 v2, 0x0

    .line 305
    .local v2, Result:Z
    const/16 v17, 0x0

    .line 306
    .local v17, fisSrc:Ljava/io/FileInputStream;
    const/4 v15, 0x0

    .line 309
    .local v15, fisDest:Ljava/io/FileInputStream;
    :try_start_0
    new-instance v18, Ljava/io/FileInputStream;

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 310
    .end local v17           #fisSrc:Ljava/io/FileInputStream;
    .local v18, fisSrc:Ljava/io/FileInputStream;
    :try_start_1
    new-instance v16, Ljava/io/FileInputStream;

    move-object/from16 v0, v16

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_a

    .line 316
    .end local v15           #fisDest:Ljava/io/FileInputStream;
    .local v16, fisDest:Ljava/io/FileInputStream;
    const/4 v14, 0x0

    .line 319
    .local v14, fileSize:I
    :try_start_2
    invoke-virtual/range {v18 .. v18}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v27

    move-wide/from16 v0, v27

    long-to-int v14, v0

    .line 320
    invoke-virtual/range {v16 .. v16}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v27

    move-wide/from16 v0, v27

    long-to-int v0, v0

    move/from16 v27, v0

    move/from16 v0, v27

    if-eq v14, v0, :cond_0

    .line 322
    invoke-virtual/range {v18 .. v18}, Ljava/io/FileInputStream;->close()V

    .line 323
    invoke-virtual/range {v16 .. v16}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    move-object/from16 v15, v16

    .end local v16           #fisDest:Ljava/io/FileInputStream;
    .restart local v15       #fisDest:Ljava/io/FileInputStream;
    move-object/from16 v17, v18

    .end local v18           #fisSrc:Ljava/io/FileInputStream;
    .restart local v17       #fisSrc:Ljava/io/FileInputStream;
    move v3, v2

    .line 410
    .end local v2           #Result:Z
    .end local v14           #fileSize:I
    .local v3, Result:I
    :goto_0
    return v3

    .line 311
    .end local v3           #Result:I
    .restart local v2       #Result:Z
    :catch_0
    move-exception v12

    .line 312
    .local v12, e:Ljava/io/FileNotFoundException;
    :goto_1
    invoke-virtual {v12}, Ljava/io/FileNotFoundException;->printStackTrace()V

    move v3, v2

    .line 313
    .restart local v3       #Result:I
    goto :goto_0

    .line 326
    .end local v3           #Result:I
    .end local v12           #e:Ljava/io/FileNotFoundException;
    .end local v15           #fisDest:Ljava/io/FileInputStream;
    .end local v17           #fisSrc:Ljava/io/FileInputStream;
    .restart local v14       #fileSize:I
    .restart local v16       #fisDest:Ljava/io/FileInputStream;
    .restart local v18       #fisSrc:Ljava/io/FileInputStream;
    :catch_1
    move-exception v12

    .line 327
    .local v12, e:Ljava/io/IOException;
    invoke-virtual {v12}, Ljava/io/IOException;->printStackTrace()V

    .line 329
    :try_start_3
    invoke-virtual/range {v18 .. v18}, Ljava/io/FileInputStream;->close()V

    .line 330
    invoke-virtual/range {v16 .. v16}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    :goto_2
    move-object/from16 v15, v16

    .end local v16           #fisDest:Ljava/io/FileInputStream;
    .restart local v15       #fisDest:Ljava/io/FileInputStream;
    move-object/from16 v17, v18

    .end local v18           #fisSrc:Ljava/io/FileInputStream;
    .restart local v17       #fisSrc:Ljava/io/FileInputStream;
    move v3, v2

    .line 334
    .restart local v3       #Result:I
    goto :goto_0

    .line 331
    .end local v3           #Result:I
    .end local v15           #fisDest:Ljava/io/FileInputStream;
    .end local v17           #fisSrc:Ljava/io/FileInputStream;
    .restart local v16       #fisDest:Ljava/io/FileInputStream;
    .restart local v18       #fisSrc:Ljava/io/FileInputStream;
    :catch_2
    move-exception v13

    .line 332
    .local v13, e1:Ljava/io/IOException;
    invoke-virtual {v13}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 337
    .end local v12           #e:Ljava/io/IOException;
    .end local v13           #e1:Ljava/io/IOException;
    :cond_0
    const/16 v27, 0x1

    move/from16 v0, v27

    if-ge v14, v0, :cond_1

    .line 340
    :try_start_4
    invoke-virtual/range {v18 .. v18}, Ljava/io/FileInputStream;->close()V

    .line 341
    invoke-virtual/range {v16 .. v16}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    :goto_3
    move-object/from16 v15, v16

    .end local v16           #fisDest:Ljava/io/FileInputStream;
    .restart local v15       #fisDest:Ljava/io/FileInputStream;
    move-object/from16 v17, v18

    .end local v18           #fisSrc:Ljava/io/FileInputStream;
    .restart local v17       #fisSrc:Ljava/io/FileInputStream;
    move v3, v2

    .line 345
    .restart local v3       #Result:I
    goto :goto_0

    .line 342
    .end local v3           #Result:I
    .end local v15           #fisDest:Ljava/io/FileInputStream;
    .end local v17           #fisSrc:Ljava/io/FileInputStream;
    .restart local v16       #fisDest:Ljava/io/FileInputStream;
    .restart local v18       #fisSrc:Ljava/io/FileInputStream;
    :catch_3
    move-exception v13

    .line 343
    .restart local v13       #e1:Ljava/io/IOException;
    invoke-virtual {v13}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    .line 348
    .end local v13           #e1:Ljava/io/IOException;
    :cond_1
    const/16 v27, 0x80

    move/from16 v0, v27

    if-gt v14, v0, :cond_2

    move v9, v14

    .line 350
    .local v9, buffSize:I
    :goto_4
    const/16 v21, 0x0

    .line 352
    .local v21, iCnt:I
    div-int v26, v14, v9

    .line 353
    .local v26, tmp:I
    const/16 v27, 0x5

    move/from16 v0, v26

    move/from16 v1, v27

    if-lt v0, v1, :cond_3

    const/16 v21, 0x5

    .line 357
    :goto_5
    const/16 v22, 0x0

    .line 359
    .local v22, offset:I
    mul-int v27, v9, v21

    sub-int v26, v14, v27

    .line 360
    div-int v22, v26, v21

    .line 363
    const/4 v4, 0x1

    .line 365
    .local v4, bSameData:Z
    const/4 v7, 0x0

    .line 366
    .local v7, bisSrc:Ljava/io/BufferedInputStream;
    const/4 v5, 0x0

    .line 370
    .local v5, bisDest:Ljava/io/BufferedInputStream;
    const/16 v23, 0x0

    .line 371
    .local v23, position:I
    :try_start_5
    new-array v0, v9, [B

    move-object/from16 v25, v0

    .line 372
    .local v25, readSrcData:[B
    new-array v0, v9, [B

    move-object/from16 v24, v0

    .line 374
    .local v24, readDestData:[B
    new-instance v8, Ljava/io/BufferedInputStream;

    move-object/from16 v0, v18

    invoke-direct {v8, v0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_5

    .line 375
    .end local v7           #bisSrc:Ljava/io/BufferedInputStream;
    .local v8, bisSrc:Ljava/io/BufferedInputStream;
    :try_start_6
    new-instance v6, Ljava/io/BufferedInputStream;

    move-object/from16 v0, v16

    invoke-direct {v6, v0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_8

    .line 377
    .end local v5           #bisDest:Ljava/io/BufferedInputStream;
    .local v6, bisDest:Ljava/io/BufferedInputStream;
    const/16 v19, 0x0

    .local v19, i1:I
    :goto_6
    move/from16 v0, v19

    move/from16 v1, v21

    if-ge v0, v1, :cond_6

    if-eqz v4, :cond_6

    .line 379
    const/16 v27, 0x0

    :try_start_7
    move-object/from16 v0, v25

    move/from16 v1, v27

    invoke-virtual {v8, v0, v1, v9}, Ljava/io/BufferedInputStream;->read([BII)I

    .line 380
    const/16 v27, 0x0

    move-object/from16 v0, v24

    move/from16 v1, v27

    invoke-virtual {v6, v0, v1, v9}, Ljava/io/BufferedInputStream;->read([BII)I

    .line 382
    add-int v27, v9, v22

    add-int v23, v23, v27

    .line 384
    move/from16 v0, v23

    int-to-long v0, v0

    move-wide/from16 v27, v0

    move-wide/from16 v0, v27

    invoke-virtual {v8, v0, v1}, Ljava/io/BufferedInputStream;->skip(J)J

    .line 385
    move/from16 v0, v23

    int-to-long v0, v0

    move-wide/from16 v27, v0

    move-wide/from16 v0, v27

    invoke-virtual {v6, v0, v1}, Ljava/io/BufferedInputStream;->skip(J)J

    .line 387
    const/16 v20, 0x0

    .local v20, i2:I
    :goto_7
    move/from16 v0, v20

    if-ge v0, v9, :cond_5

    if-eqz v4, :cond_5

    .line 388
    aget-byte v27, v25, v20

    aget-byte v28, v24, v20
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_9

    move/from16 v0, v27

    move/from16 v1, v28

    if-ne v0, v1, :cond_4

    const/4 v4, 0x1

    .line 387
    :goto_8
    add-int/lit8 v20, v20, 0x1

    goto :goto_7

    .line 348
    .end local v4           #bSameData:Z
    .end local v6           #bisDest:Ljava/io/BufferedInputStream;
    .end local v8           #bisSrc:Ljava/io/BufferedInputStream;
    .end local v9           #buffSize:I
    .end local v19           #i1:I
    .end local v20           #i2:I
    .end local v21           #iCnt:I
    .end local v22           #offset:I
    .end local v23           #position:I
    .end local v24           #readDestData:[B
    .end local v25           #readSrcData:[B
    .end local v26           #tmp:I
    :cond_2
    const/16 v9, 0x80

    goto :goto_4

    .restart local v9       #buffSize:I
    .restart local v21       #iCnt:I
    .restart local v26       #tmp:I
    :cond_3
    move/from16 v21, v26

    .line 353
    goto :goto_5

    .line 388
    .restart local v4       #bSameData:Z
    .restart local v6       #bisDest:Ljava/io/BufferedInputStream;
    .restart local v8       #bisSrc:Ljava/io/BufferedInputStream;
    .restart local v19       #i1:I
    .restart local v20       #i2:I
    .restart local v22       #offset:I
    .restart local v23       #position:I
    .restart local v24       #readDestData:[B
    .restart local v25       #readSrcData:[B
    :cond_4
    const/4 v4, 0x0

    goto :goto_8

    .line 377
    :cond_5
    add-int/lit8 v19, v19, 0x1

    goto :goto_6

    .line 398
    .end local v20           #i2:I
    :cond_6
    if-eqz v8, :cond_7

    :try_start_8
    invoke-virtual {v8}, Ljava/io/BufferedInputStream;->close()V

    .line 399
    :cond_7
    if-eqz v6, :cond_8

    invoke-virtual {v6}, Ljava/io/BufferedInputStream;->close()V

    .line 400
    :cond_8
    if-eqz v18, :cond_9

    invoke-virtual/range {v18 .. v18}, Ljava/io/FileInputStream;->close()V

    .line 401
    :cond_9
    if-eqz v16, :cond_a

    invoke-virtual/range {v16 .. v16}, Ljava/io/FileInputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_4

    :cond_a
    move-object v5, v6

    .end local v6           #bisDest:Ljava/io/BufferedInputStream;
    .restart local v5       #bisDest:Ljava/io/BufferedInputStream;
    move-object v7, v8

    .line 408
    .end local v8           #bisSrc:Ljava/io/BufferedInputStream;
    .end local v19           #i1:I
    .end local v24           #readDestData:[B
    .end local v25           #readSrcData:[B
    .restart local v7       #bisSrc:Ljava/io/BufferedInputStream;
    :cond_b
    :goto_9
    move v2, v4

    move-object/from16 v15, v16

    .end local v16           #fisDest:Ljava/io/FileInputStream;
    .restart local v15       #fisDest:Ljava/io/FileInputStream;
    move-object/from16 v17, v18

    .end local v18           #fisSrc:Ljava/io/FileInputStream;
    .restart local v17       #fisSrc:Ljava/io/FileInputStream;
    move v3, v2

    .line 410
    .restart local v3       #Result:I
    goto/16 :goto_0

    .line 402
    .end local v3           #Result:I
    .end local v5           #bisDest:Ljava/io/BufferedInputStream;
    .end local v7           #bisSrc:Ljava/io/BufferedInputStream;
    .end local v15           #fisDest:Ljava/io/FileInputStream;
    .end local v17           #fisSrc:Ljava/io/FileInputStream;
    .restart local v6       #bisDest:Ljava/io/BufferedInputStream;
    .restart local v8       #bisSrc:Ljava/io/BufferedInputStream;
    .restart local v16       #fisDest:Ljava/io/FileInputStream;
    .restart local v18       #fisSrc:Ljava/io/FileInputStream;
    .restart local v19       #i1:I
    .restart local v24       #readDestData:[B
    .restart local v25       #readSrcData:[B
    :catch_4
    move-exception v12

    .line 403
    .restart local v12       #e:Ljava/io/IOException;
    sget-boolean v27, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v27, :cond_c

    const-string v27, "ClipboardServiceEx"

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "close : "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual {v12}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v29

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v27 .. v28}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 404
    :cond_c
    invoke-virtual {v12}, Ljava/io/IOException;->printStackTrace()V

    move-object v5, v6

    .end local v6           #bisDest:Ljava/io/BufferedInputStream;
    .restart local v5       #bisDest:Ljava/io/BufferedInputStream;
    move-object v7, v8

    .line 406
    .end local v8           #bisSrc:Ljava/io/BufferedInputStream;
    .restart local v7       #bisSrc:Ljava/io/BufferedInputStream;
    goto :goto_9

    .line 391
    .end local v12           #e:Ljava/io/IOException;
    .end local v19           #i1:I
    .end local v24           #readDestData:[B
    .end local v25           #readSrcData:[B
    :catch_5
    move-exception v12

    .line 392
    .restart local v12       #e:Ljava/io/IOException;
    :goto_a
    :try_start_9
    invoke-virtual {v12}, Ljava/io/IOException;->printStackTrace()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 393
    const/4 v4, 0x0

    .line 398
    if-eqz v7, :cond_d

    :try_start_a
    invoke-virtual {v7}, Ljava/io/BufferedInputStream;->close()V

    .line 399
    :cond_d
    if-eqz v5, :cond_e

    invoke-virtual {v5}, Ljava/io/BufferedInputStream;->close()V

    .line 400
    :cond_e
    if-eqz v18, :cond_f

    invoke-virtual/range {v18 .. v18}, Ljava/io/FileInputStream;->close()V

    .line 401
    :cond_f
    if-eqz v16, :cond_b

    invoke-virtual/range {v16 .. v16}, Ljava/io/FileInputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_6

    goto :goto_9

    .line 402
    :catch_6
    move-exception v12

    .line 403
    sget-boolean v27, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v27, :cond_10

    const-string v27, "ClipboardServiceEx"

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "close : "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual {v12}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v29

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v27 .. v28}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 404
    :cond_10
    invoke-virtual {v12}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_9

    .line 397
    .end local v12           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v27

    .line 398
    :goto_b
    if-eqz v7, :cond_11

    :try_start_b
    invoke-virtual {v7}, Ljava/io/BufferedInputStream;->close()V

    .line 399
    :cond_11
    if-eqz v5, :cond_12

    invoke-virtual {v5}, Ljava/io/BufferedInputStream;->close()V

    .line 400
    :cond_12
    if-eqz v18, :cond_13

    invoke-virtual/range {v18 .. v18}, Ljava/io/FileInputStream;->close()V

    .line 401
    :cond_13
    if-eqz v16, :cond_14

    invoke-virtual/range {v16 .. v16}, Ljava/io/FileInputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_7

    .line 405
    :cond_14
    :goto_c
    throw v27

    .line 402
    :catch_7
    move-exception v12

    .line 403
    .restart local v12       #e:Ljava/io/IOException;
    sget-boolean v28, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v28, :cond_15

    const-string v28, "ClipboardServiceEx"

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "close : "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual {v12}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v30

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v28 .. v29}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 404
    :cond_15
    invoke-virtual {v12}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_c

    .line 397
    .end local v7           #bisSrc:Ljava/io/BufferedInputStream;
    .end local v12           #e:Ljava/io/IOException;
    .restart local v8       #bisSrc:Ljava/io/BufferedInputStream;
    .restart local v24       #readDestData:[B
    .restart local v25       #readSrcData:[B
    :catchall_1
    move-exception v27

    move-object v7, v8

    .end local v8           #bisSrc:Ljava/io/BufferedInputStream;
    .restart local v7       #bisSrc:Ljava/io/BufferedInputStream;
    goto :goto_b

    .end local v5           #bisDest:Ljava/io/BufferedInputStream;
    .end local v7           #bisSrc:Ljava/io/BufferedInputStream;
    .restart local v6       #bisDest:Ljava/io/BufferedInputStream;
    .restart local v8       #bisSrc:Ljava/io/BufferedInputStream;
    .restart local v19       #i1:I
    :catchall_2
    move-exception v27

    move-object v5, v6

    .end local v6           #bisDest:Ljava/io/BufferedInputStream;
    .restart local v5       #bisDest:Ljava/io/BufferedInputStream;
    move-object v7, v8

    .end local v8           #bisSrc:Ljava/io/BufferedInputStream;
    .restart local v7       #bisSrc:Ljava/io/BufferedInputStream;
    goto :goto_b

    .line 391
    .end local v7           #bisSrc:Ljava/io/BufferedInputStream;
    .end local v19           #i1:I
    .restart local v8       #bisSrc:Ljava/io/BufferedInputStream;
    :catch_8
    move-exception v12

    move-object v7, v8

    .end local v8           #bisSrc:Ljava/io/BufferedInputStream;
    .restart local v7       #bisSrc:Ljava/io/BufferedInputStream;
    goto/16 :goto_a

    .end local v5           #bisDest:Ljava/io/BufferedInputStream;
    .end local v7           #bisSrc:Ljava/io/BufferedInputStream;
    .restart local v6       #bisDest:Ljava/io/BufferedInputStream;
    .restart local v8       #bisSrc:Ljava/io/BufferedInputStream;
    .restart local v19       #i1:I
    :catch_9
    move-exception v12

    move-object v5, v6

    .end local v6           #bisDest:Ljava/io/BufferedInputStream;
    .restart local v5       #bisDest:Ljava/io/BufferedInputStream;
    move-object v7, v8

    .end local v8           #bisSrc:Ljava/io/BufferedInputStream;
    .restart local v7       #bisSrc:Ljava/io/BufferedInputStream;
    goto/16 :goto_a

    .line 311
    .end local v4           #bSameData:Z
    .end local v5           #bisDest:Ljava/io/BufferedInputStream;
    .end local v7           #bisSrc:Ljava/io/BufferedInputStream;
    .end local v9           #buffSize:I
    .end local v14           #fileSize:I
    .end local v16           #fisDest:Ljava/io/FileInputStream;
    .end local v19           #i1:I
    .end local v21           #iCnt:I
    .end local v22           #offset:I
    .end local v23           #position:I
    .end local v24           #readDestData:[B
    .end local v25           #readSrcData:[B
    .end local v26           #tmp:I
    .restart local v15       #fisDest:Ljava/io/FileInputStream;
    :catch_a
    move-exception v12

    move-object/from16 v17, v18

    .end local v18           #fisSrc:Ljava/io/FileInputStream;
    .restart local v17       #fisSrc:Ljava/io/FileInputStream;
    goto/16 :goto_1
.end method

.method private compareFileSize(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 6
    .parameter "f1"
    .parameter "f2"

    .prologue
    .line 287
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 288
    .local v0, file1:Ljava/io/File;
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 290
    .local v1, file2:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v2

    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v2

    const-wide/16 v4, 0x1

    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    .line 291
    const/4 v2, 0x1

    .line 294
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method


# virtual methods
.method public GetBitmap()Landroid/graphics/Bitmap;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 256
    const/4 v0, 0x0

    return-object v0
.end method

.method public GetBitmapPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 239
    iget-object v0, p0, Landroid/sec/clipboard/data/list/ClipboardDataBitmap;->mValue:Ljava/lang/String;

    return-object v0
.end method

.method public GetHtmlUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 249
    iget-object v0, p0, Landroid/sec/clipboard/data/list/ClipboardDataBitmap;->mValueUrl:Ljava/lang/String;

    return-object v0
.end method

.method public SetAlternateFormat(ILandroid/sec/clipboard/data/ClipboardData;)Z
    .locals 4
    .parameter "format"
    .parameter "altData"

    .prologue
    .line 85
    invoke-super {p0, p1, p2}, Landroid/sec/clipboard/data/ClipboardData;->SetAlternateFormat(ILandroid/sec/clipboard/data/ClipboardData;)Z

    move-result v0

    .line 86
    .local v0, Result:Z
    if-eqz v0, :cond_0

    iget-object v2, p0, Landroid/sec/clipboard/data/list/ClipboardDataBitmap;->mValue:Ljava/lang/String;

    if-nez v2, :cond_1

    :cond_0
    move v1, v0

    .line 111
    .end local v0           #Result:Z
    .end local p2
    .local v1, Result:Z
    :goto_0
    return v1

    .line 88
    .end local v1           #Result:Z
    .restart local v0       #Result:Z
    .restart local p2
    :cond_1
    packed-switch p1, :pswitch_data_0

    .end local p2
    :goto_1
    move v1, v0

    .line 111
    .end local v0           #Result:Z
    .restart local v1       #Result:Z
    goto :goto_0

    .line 91
    .end local v1           #Result:Z
    .restart local v0       #Result:Z
    .restart local p2
    :pswitch_0
    const/4 v0, 0x0

    .line 92
    goto :goto_1

    .line 94
    :pswitch_1
    check-cast p2, Landroid/sec/clipboard/data/list/ClipboardDataBitmap;

    .end local p2
    invoke-virtual {p0}, Landroid/sec/clipboard/data/list/ClipboardDataBitmap;->GetBitmapPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Landroid/sec/clipboard/data/list/ClipboardDataBitmap;->GetHtmlUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v2, v3}, Landroid/sec/clipboard/data/list/ClipboardDataBitmap;->SetBitmapPath(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    .line 95
    goto :goto_1

    .line 98
    .restart local p2
    :pswitch_2
    const/4 v0, 0x0

    .line 99
    goto :goto_1

    .line 102
    :pswitch_3
    const/4 v0, 0x0

    .line 103
    goto :goto_1

    .line 106
    :pswitch_4
    const/4 v0, 0x0

    goto :goto_1

    .line 88
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public SetBitmap(Landroid/graphics/Bitmap;)Z
    .locals 1
    .parameter "bitmap"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 157
    const/4 v0, 0x0

    return v0
.end method

.method public SetBitmapPath(Ljava/lang/String;)Z
    .locals 5
    .parameter "FilePath"

    .prologue
    .line 162
    const/4 v0, 0x0

    .line 163
    .local v0, Result:Z
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x1

    if-ge v3, v4, :cond_1

    :cond_0
    move v1, v0

    .line 179
    .end local v0           #Result:Z
    .local v1, Result:I
    :goto_0
    return v1

    .line 166
    .end local v1           #Result:I
    .restart local v0       #Result:Z
    :cond_1
    iget-boolean v3, p0, Landroid/sec/clipboard/data/list/ClipboardDataBitmap;->mInitBaseValueCheck:Z

    if-eqz v3, :cond_2

    .line 167
    iput-object p1, p0, Landroid/sec/clipboard/data/list/ClipboardDataBitmap;->mInitBaseValue:Ljava/lang/String;

    .line 168
    const/4 v3, 0x0

    iput-boolean v3, p0, Landroid/sec/clipboard/data/list/ClipboardDataBitmap;->mInitBaseValueCheck:Z

    .line 170
    :cond_2
    iput-object p1, p0, Landroid/sec/clipboard/data/list/ClipboardDataBitmap;->mValue:Ljava/lang/String;

    .line 172
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 173
    .local v2, tempFile:Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->isFile()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 174
    const/4 v0, 0x1

    :cond_3
    :goto_1
    move v1, v0

    .line 179
    .restart local v1       #Result:I
    goto :goto_0

    .line 176
    .end local v1           #Result:I
    :cond_4
    sget-boolean v3, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v3, :cond_3

    const-string v3, "ClipboardServiceEx"

    const-string v4, "ClipboardDataBitmap : value is no file path ..check plz"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public SetBitmapPath(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 6
    .parameter "FilePath"
    .parameter "HtmlUrl"

    .prologue
    .line 194
    sget-boolean v3, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v3, :cond_0

    const-string v3, "ClipboardServiceEx"

    const-string v4, "SetBitmapPath( String FilePath , String HtmlUrl )"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 196
    :cond_0
    const/4 v0, 0x0

    .line 197
    .local v0, Result:Z
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x1

    if-ge v3, v4, :cond_2

    :cond_1
    move v1, v0

    .line 220
    .end local v0           #Result:Z
    .local v1, Result:I
    :goto_0
    return v1

    .line 200
    .end local v1           #Result:I
    .restart local v0       #Result:Z
    :cond_2
    iget-boolean v3, p0, Landroid/sec/clipboard/data/list/ClipboardDataBitmap;->mInitBaseValueCheck:Z

    if-eqz v3, :cond_3

    .line 201
    iput-object p1, p0, Landroid/sec/clipboard/data/list/ClipboardDataBitmap;->mInitBaseValue:Ljava/lang/String;

    .line 202
    const/4 v3, 0x0

    iput-boolean v3, p0, Landroid/sec/clipboard/data/list/ClipboardDataBitmap;->mInitBaseValueCheck:Z

    .line 204
    :cond_3
    iput-object p1, p0, Landroid/sec/clipboard/data/list/ClipboardDataBitmap;->mValue:Ljava/lang/String;

    .line 207
    if-eqz p2, :cond_5

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_5

    .line 208
    sget-boolean v3, Landroid/sec/clipboard/data/ClipboardDefine;->INFO_DEBUG:Z

    if-eqz v3, :cond_4

    const-string v3, "ClipboardServiceEx"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "HtmlUrl ="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 209
    :cond_4
    iput-object p2, p0, Landroid/sec/clipboard/data/list/ClipboardDataBitmap;->mValueUrl:Ljava/lang/String;

    .line 213
    :cond_5
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 214
    .local v2, tempFile:Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->isFile()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 215
    const/4 v0, 0x1

    :cond_6
    :goto_1
    move v1, v0

    .line 220
    .restart local v1       #Result:I
    goto :goto_0

    .line 217
    .end local v1           #Result:I
    :cond_7
    sget-boolean v3, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v3, :cond_6

    const-string v3, "ClipboardServiceEx"

    const-string v4, "ClipboardDataBitmap : value is no file path ..check plz"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public clearData()V
    .locals 1

    .prologue
    .line 120
    const-string v0, ""

    iput-object v0, p0, Landroid/sec/clipboard/data/list/ClipboardDataBitmap;->mValue:Ljava/lang/String;

    .line 121
    const-string v0, ""

    iput-object v0, p0, Landroid/sec/clipboard/data/list/ClipboardDataBitmap;->mValueUrl:Ljava/lang/String;

    .line 123
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6
    .parameter "o"

    .prologue
    .line 261
    sget-boolean v4, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v4, :cond_0

    const-string v4, "ClipboardServiceEx"

    const-string v5, "bitmap equals"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 262
    :cond_0
    const/4 v0, 0x0

    .line 263
    .local v0, result:Z
    invoke-super {p0, p1}, Landroid/sec/clipboard/data/ClipboardData;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    move v1, v0

    .line 280
    .end local v0           #result:Z
    .local v1, result:I
    :goto_0
    return v1

    .line 266
    .end local v1           #result:I
    .restart local v0       #result:Z
    :cond_1
    instance-of v4, p1, Landroid/sec/clipboard/data/list/ClipboardDataBitmap;

    if-nez v4, :cond_2

    move v1, v0

    .line 267
    .restart local v1       #result:I
    goto :goto_0

    .end local v1           #result:I
    :cond_2
    move-object v3, p1

    .line 269
    check-cast v3, Landroid/sec/clipboard/data/list/ClipboardDataBitmap;

    .line 270
    .local v3, trgData:Landroid/sec/clipboard/data/list/ClipboardDataBitmap;
    invoke-virtual {v3}, Landroid/sec/clipboard/data/list/ClipboardDataBitmap;->GetBitmapPath()Ljava/lang/String;

    move-result-object v2

    .line 272
    .local v2, trgBmp:Ljava/lang/String;
    iget-object v4, p0, Landroid/sec/clipboard/data/list/ClipboardDataBitmap;->mInitBaseValue:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v4

    if-nez v4, :cond_3

    .line 273
    iget-object v4, p0, Landroid/sec/clipboard/data/list/ClipboardDataBitmap;->mValue:Ljava/lang/String;

    invoke-direct {p0, v4, v2}, Landroid/sec/clipboard/data/list/ClipboardDataBitmap;->CompareFile(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 274
    const/4 v0, 0x1

    .line 275
    sget-boolean v4, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v4, :cond_3

    const-string v4, "ClipboardServiceEx"

    const-string v5, "bitmap equals"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    move v1, v0

    .line 280
    .restart local v1       #result:I
    goto :goto_0
.end method

.method protected readFormSource(Landroid/os/Parcel;)V
    .locals 4
    .parameter "source"

    .prologue
    .line 439
    :try_start_0
    const-class v1, Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, p0, Landroid/sec/clipboard/data/list/ClipboardDataBitmap;->mValue:Ljava/lang/String;

    .line 440
    const-class v1, Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, p0, Landroid/sec/clipboard/data/list/ClipboardDataBitmap;->mInitBaseValue:Ljava/lang/String;

    .line 441
    const-class v1, Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, p0, Landroid/sec/clipboard/data/list/ClipboardDataBitmap;->mValueUrl:Ljava/lang/String;

    .line 442
    sget-boolean v1, Landroid/sec/clipboard/data/ClipboardDefine;->INFO_DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "ClipboardServiceEx"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ClipboardDataBitmap : readFormSource : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/sec/clipboard/data/list/ClipboardDataBitmap;->mValue:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 449
    :cond_0
    :goto_0
    return-void

    .line 445
    :catch_0
    move-exception v0

    .line 447
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "ClipboardServiceEx"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    const/16 v3, 0x14

    .line 453
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "this Bitmap class. Value is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p0, Landroid/sec/clipboard/data/list/ClipboardDataBitmap;->mValue:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, v3, :cond_0

    iget-object v0, p0, Landroid/sec/clipboard/data/list/ClipboardDataBitmap;->mValue:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Landroid/sec/clipboard/data/list/ClipboardDataBitmap;->mValue:Ljava/lang/String;

    goto :goto_0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .parameter "dest"
    .parameter "flags"

    .prologue
    .line 415
    sget-boolean v0, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "ClipboardServiceEx"

    const-string v1, "Bitmap write to parcel"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 416
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/sec/clipboard/data/ClipboardData;->writeToParcel(Landroid/os/Parcel;I)V

    .line 419
    iget-object v0, p0, Landroid/sec/clipboard/data/list/ClipboardDataBitmap;->mValue:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    .line 420
    iget-object v0, p0, Landroid/sec/clipboard/data/list/ClipboardDataBitmap;->mInitBaseValue:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    .line 421
    iget-object v0, p0, Landroid/sec/clipboard/data/list/ClipboardDataBitmap;->mValueUrl:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    .line 432
    return-void
.end method
