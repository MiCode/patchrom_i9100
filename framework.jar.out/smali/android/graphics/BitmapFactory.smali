.class public Landroid/graphics/BitmapFactory;
.super Ljava/lang/Object;
.source "BitmapFactory.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/graphics/BitmapFactory$Options;
    }
.end annotation


# static fields
.field private static final DECODE_BUFFER_SIZE:I = 0x4000

.field private static final TAG:Ljava/lang/String; = "BitmapFactory"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 47
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 52
    return-void
.end method

.method public static decodeByteArray([BII)Landroid/graphics/Bitmap;
    .locals 1
    .parameter "data"
    .parameter "offset"
    .parameter "length"

    .prologue
    .line 569
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .locals 3
    .parameter "data"
    .parameter "offset"
    .parameter "length"
    .parameter "opts"

    .prologue
    .line 548
    or-int v1, p1, p2

    if-ltz v1, :cond_0

    array-length v1, p0

    add-int v2, p1, p2

    if-ge v1, v2, :cond_1

    .line 549
    :cond_0
    new-instance v1, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v1

    .line 551
    :cond_1
    invoke-static {p0, p1, p2, p3}, Landroid/graphics/BitmapFactory;->nativeDecodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 553
    .local v0, bm:Landroid/graphics/Bitmap;
    if-nez v0, :cond_2

    if-eqz p3, :cond_2

    iget-object v1, p3, Landroid/graphics/BitmapFactory$Options;->inBitmap:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_2

    .line 554
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Problem decoding into existing bitmap"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 556
    :cond_2
    return-object v0
.end method

.method public static decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 1
    .parameter "pathName"

    .prologue
    .line 451
    const/4 v0, 0x0

    invoke-static {p0, v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .locals 18
    .parameter "pathName"
    .parameter "opts"

    .prologue
    .line 319
    const/4 v1, 0x0

    .line 320
    .local v1, bm:Landroid/graphics/Bitmap;
    const/4 v13, 0x0

    .line 324
    .local v13, stream:Ljava/io/InputStream;
    if-eqz p0, :cond_1

    .line 326
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v15

    int-to-long v7, v15

    .line 329
    .local v7, length:J
    const-string v15, ".dcf"

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v15

    if-nez v15, :cond_0

    const-string v15, ".odf"

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_4

    :cond_0
    const/4 v6, 0x1

    .line 331
    .local v6, isDRM:Z
    :goto_0
    const/4 v9, 0x0

    .line 333
    .local v9, mimeType:Ljava/lang/String;
    if-eqz v6, :cond_a

    .line 334
    const-string v9, "application/vnd.oma.drm.content"

    .line 335
    new-instance v3, Landroid/drm/DrmManagerClient;

    const/4 v15, 0x0

    invoke-direct {v3, v15}, Landroid/drm/DrmManagerClient;-><init>(Landroid/content/Context;)V

    .line 336
    .local v3, drmclient:Landroid/drm/DrmManagerClient;
    const/4 v13, 0x0

    .line 340
    new-instance v15, Ljava/io/File;

    move-object/from16 v0, p0

    invoke-direct {v15, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v15}, Ljava/io/File;->length()J

    move-result-wide v4

    .line 343
    .local v4, fileLength:J
    const/4 v15, 0x7

    move-object/from16 v0, p0

    invoke-virtual {v3, v0, v15}, Landroid/drm/DrmManagerClient;->checkRightsStatus(Ljava/lang/String;I)I

    move-result v11

    .line 345
    .local v11, rightStatus:I
    if-nez v11, :cond_9

    .line 346
    new-instance v2, Landroid/drm/DrmInfoRequest;

    const/16 v15, 0xa

    invoke-direct {v2, v15, v9}, Landroid/drm/DrmInfoRequest;-><init>(ILjava/lang/String;)V

    .line 347
    .local v2, drmInfoRequest:Landroid/drm/DrmInfoRequest;
    const-string v15, "drm_path"

    move-object/from16 v0, p0

    invoke-virtual {v2, v15, v0}, Landroid/drm/DrmInfoRequest;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 348
    const-string v15, "LENGTH"

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v2, v15, v0}, Landroid/drm/DrmInfoRequest;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 351
    const-string/jumbo v16, "preview_option"

    move-object/from16 v0, p1

    iget-boolean v15, v0, Landroid/graphics/BitmapFactory$Options;->isPreview:Z

    if-eqz v15, :cond_5

    const-string/jumbo v15, "true"

    :goto_1
    move-object/from16 v0, v16

    invoke-virtual {v2, v0, v15}, Landroid/drm/DrmInfoRequest;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 354
    invoke-virtual {v3, v2}, Landroid/drm/DrmManagerClient;->acquireDrmInfo(Landroid/drm/DrmInfoRequest;)Landroid/drm/DrmInfo;

    move-result-object v10

    .line 355
    .local v10, resultInfo:Landroid/drm/DrmInfo;
    const-string/jumbo v15, "status"

    invoke-virtual {v10, v15}, Landroid/drm/DrmInfo;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v12

    .line 356
    .local v12, status_req1:Ljava/lang/String;
    const-string v15, "BitmapFactory"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "decodeFile :: processRequest status is "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 358
    const-string/jumbo v15, "success"

    invoke-virtual {v12, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_7

    .line 361
    invoke-virtual {v10}, Landroid/drm/DrmInfo;->getData()[B

    move-result-object v15

    if-eqz v15, :cond_6

    .line 362
    new-instance v14, Ljava/io/ByteArrayInputStream;

    invoke-virtual {v10}, Landroid/drm/DrmInfo;->getData()[B

    move-result-object v15

    invoke-direct {v14, v15}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .end local v13           #stream:Ljava/io/InputStream;
    .local v14, stream:Ljava/io/InputStream;
    move-object v13, v14

    .line 375
    .end local v2           #drmInfoRequest:Landroid/drm/DrmInfoRequest;
    .end local v10           #resultInfo:Landroid/drm/DrmInfo;
    .end local v12           #status_req1:Ljava/lang/String;
    .end local v14           #stream:Ljava/io/InputStream;
    .restart local v13       #stream:Ljava/io/InputStream;
    :goto_2
    if-eqz v3, :cond_1

    .line 377
    invoke-virtual {v3}, Landroid/drm/DrmManagerClient;->release()V

    .line 390
    .end local v3           #drmclient:Landroid/drm/DrmManagerClient;
    .end local v4           #fileLength:J
    .end local v6           #isDRM:Z
    .end local v7           #length:J
    .end local v9           #mimeType:Ljava/lang/String;
    .end local v11           #rightStatus:I
    :cond_1
    :goto_3
    if-eqz v13, :cond_2

    .line 391
    const/4 v15, 0x0

    move-object/from16 v0, p1

    invoke-static {v13, v15, v0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 392
    invoke-virtual {v13}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 405
    :cond_2
    if-eqz v13, :cond_3

    .line 407
    :try_start_1
    invoke-virtual {v13}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    .line 413
    :cond_3
    :goto_4
    return-object v1

    .line 329
    .restart local v7       #length:J
    :cond_4
    const/4 v6, 0x0

    goto/16 :goto_0

    .line 351
    .restart local v2       #drmInfoRequest:Landroid/drm/DrmInfoRequest;
    .restart local v3       #drmclient:Landroid/drm/DrmManagerClient;
    .restart local v4       #fileLength:J
    .restart local v6       #isDRM:Z
    .restart local v9       #mimeType:Ljava/lang/String;
    .restart local v11       #rightStatus:I
    :cond_5
    :try_start_2
    const-string v15, "false"

    goto :goto_1

    .line 364
    .restart local v10       #resultInfo:Landroid/drm/DrmInfo;
    .restart local v12       #status_req1:Ljava/lang/String;
    :cond_6
    const-string v15, "BitmapFactory"

    const-string v16, "decodeFile :: custom api returned null"

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_2

    .line 400
    .end local v2           #drmInfoRequest:Landroid/drm/DrmInfoRequest;
    .end local v3           #drmclient:Landroid/drm/DrmManagerClient;
    .end local v4           #fileLength:J
    .end local v6           #isDRM:Z
    .end local v7           #length:J
    .end local v9           #mimeType:Ljava/lang/String;
    .end local v10           #resultInfo:Landroid/drm/DrmInfo;
    .end local v11           #rightStatus:I
    .end local v12           #status_req1:Ljava/lang/String;
    :catch_0
    move-exception v15

    .line 405
    if-eqz v13, :cond_3

    .line 407
    :try_start_3
    invoke-virtual {v13}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_4

    .line 408
    :catch_1
    move-exception v15

    goto :goto_4

    .line 368
    .restart local v2       #drmInfoRequest:Landroid/drm/DrmInfoRequest;
    .restart local v3       #drmclient:Landroid/drm/DrmManagerClient;
    .restart local v4       #fileLength:J
    .restart local v6       #isDRM:Z
    .restart local v7       #length:J
    .restart local v9       #mimeType:Ljava/lang/String;
    .restart local v10       #resultInfo:Landroid/drm/DrmInfo;
    .restart local v11       #rightStatus:I
    .restart local v12       #status_req1:Ljava/lang/String;
    :cond_7
    :try_start_4
    const-string v15, "BitmapFactory"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "decodeFile :: FAIL reason is "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, "INFO"

    move-object/from16 v0, v17

    invoke-virtual {v10, v0}, Landroid/drm/DrmInfo;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_2

    .line 405
    .end local v2           #drmInfoRequest:Landroid/drm/DrmInfoRequest;
    .end local v3           #drmclient:Landroid/drm/DrmManagerClient;
    .end local v4           #fileLength:J
    .end local v6           #isDRM:Z
    .end local v7           #length:J
    .end local v9           #mimeType:Ljava/lang/String;
    .end local v10           #resultInfo:Landroid/drm/DrmInfo;
    .end local v11           #rightStatus:I
    .end local v12           #status_req1:Ljava/lang/String;
    :catchall_0
    move-exception v15

    if-eqz v13, :cond_8

    .line 407
    :try_start_5
    invoke-virtual {v13}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 410
    :cond_8
    :goto_5
    throw v15

    .line 371
    .restart local v3       #drmclient:Landroid/drm/DrmManagerClient;
    .restart local v4       #fileLength:J
    .restart local v6       #isDRM:Z
    .restart local v7       #length:J
    .restart local v9       #mimeType:Ljava/lang/String;
    .restart local v11       #rightStatus:I
    :cond_9
    :try_start_6
    const-string v15, "BitmapFactory"

    const-string v16, "decodeFile :: Rights not present. Handle here and show pop up for no license present"

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 384
    .end local v3           #drmclient:Landroid/drm/DrmManagerClient;
    .end local v4           #fileLength:J
    .end local v11           #rightStatus:I
    :cond_a
    new-instance v14, Ljava/io/FileInputStream;

    move-object/from16 v0, p0

    invoke-direct {v14, v0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    .end local v13           #stream:Ljava/io/InputStream;
    .restart local v14       #stream:Ljava/io/InputStream;
    move-object v13, v14

    .end local v14           #stream:Ljava/io/InputStream;
    .restart local v13       #stream:Ljava/io/InputStream;
    goto :goto_3

    .line 408
    .end local v6           #isDRM:Z
    .end local v7           #length:J
    .end local v9           #mimeType:Ljava/lang/String;
    :catch_2
    move-exception v15

    goto :goto_4

    :catch_3
    move-exception v16

    goto :goto_5
.end method

.method public static decodeFileDescriptor(Ljava/io/FileDescriptor;)Landroid/graphics/Bitmap;
    .locals 1
    .parameter "fd"

    .prologue
    const/4 v0, 0x0

    .line 769
    invoke-static {p0, v0, v0}, Landroid/graphics/BitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static decodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .locals 4
    .parameter "fd"
    .parameter "outPadding"
    .parameter "opts"

    .prologue
    .line 742
    invoke-static {p0}, Landroid/graphics/BitmapFactory;->nativeIsSeekable(Ljava/io/FileDescriptor;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 743
    invoke-static {p0, p1, p2}, Landroid/graphics/BitmapFactory;->nativeDecodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 744
    .local v0, bm:Landroid/graphics/Bitmap;
    if-nez v0, :cond_0

    if-eqz p2, :cond_0

    iget-object v2, p2, Landroid/graphics/BitmapFactory$Options;->inBitmap:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_0

    .line 745
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Problem decoding into existing bitmap"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 747
    :cond_0
    invoke-static {v0, p1, p2}, Landroid/graphics/BitmapFactory;->finishDecode(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 755
    .end local v0           #bm:Landroid/graphics/Bitmap;
    :goto_0
    return-object v2

    .line 749
    :cond_1
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V

    .line 751
    .local v1, fis:Ljava/io/FileInputStream;
    :try_start_0
    invoke-static {v1, p1, p2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 754
    :try_start_1
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 755
    :catch_0
    move-exception v3

    goto :goto_0

    .line 753
    :catchall_0
    move-exception v2

    .line 754
    :try_start_2
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    .line 755
    :goto_1
    throw v2

    :catch_1
    move-exception v3

    goto :goto_1
.end method

.method public static decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;
    .locals 1
    .parameter "res"
    .parameter "id"

    .prologue
    .line 531
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .locals 5
    .parameter "res"
    .parameter "id"
    .parameter "opts"

    .prologue
    .line 494
    const/4 v0, 0x0

    .line 495
    .local v0, bm:Landroid/graphics/Bitmap;
    const/4 v1, 0x0

    .line 498
    .local v1, is:Ljava/io/InputStream;
    :try_start_0
    new-instance v2, Landroid/util/TypedValue;

    invoke-direct {v2}, Landroid/util/TypedValue;-><init>()V

    .line 499
    .local v2, value:Landroid/util/TypedValue;
    invoke-virtual {p0, p1, v2}, Landroid/content/res/Resources;->openRawResource(ILandroid/util/TypedValue;)Ljava/io/InputStream;

    move-result-object v1

    .line 501
    const/4 v3, 0x0

    invoke-static {p0, v2, v1, v3, p2}, Landroid/graphics/BitmapFactory;->decodeResourceStream(Landroid/content/res/Resources;Landroid/util/TypedValue;Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 509
    if-eqz v1, :cond_0

    :try_start_1
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    .line 515
    .end local v2           #value:Landroid/util/TypedValue;
    :cond_0
    :goto_0
    if-nez v0, :cond_2

    if-eqz p2, :cond_2

    iget-object v3, p2, Landroid/graphics/BitmapFactory$Options;->inBitmap:Landroid/graphics/Bitmap;

    if-eqz v3, :cond_2

    .line 516
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Problem decoding into existing bitmap"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 502
    :catch_0
    move-exception v3

    .line 509
    if-eqz v1, :cond_0

    :try_start_2
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 510
    :catch_1
    move-exception v3

    goto :goto_0

    .line 508
    :catchall_0
    move-exception v3

    .line 509
    if-eqz v1, :cond_1

    :try_start_3
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    .line 512
    :cond_1
    :goto_1
    throw v3

    .line 510
    .restart local v2       #value:Landroid/util/TypedValue;
    :catch_2
    move-exception v3

    goto :goto_0

    .end local v2           #value:Landroid/util/TypedValue;
    :catch_3
    move-exception v4

    goto :goto_1

    .line 519
    :cond_2
    return-object v0
.end method

.method public static decodeResourceStream(Landroid/content/res/Resources;Landroid/util/TypedValue;Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .locals 2
    .parameter "res"
    .parameter "value"
    .parameter "is"
    .parameter "pad"
    .parameter "opts"

    .prologue
    .line 461
    if-nez p4, :cond_0

    .line 462
    new-instance p4, Landroid/graphics/BitmapFactory$Options;

    .end local p4
    invoke-direct {p4}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 465
    .restart local p4
    :cond_0
    iget v1, p4, Landroid/graphics/BitmapFactory$Options;->inDensity:I

    if-nez v1, :cond_1

    if-eqz p1, :cond_1

    .line 466
    iget v0, p1, Landroid/util/TypedValue;->density:I

    .line 467
    .local v0, density:I
    if-nez v0, :cond_3

    .line 468
    const/16 v1, 0xa0

    iput v1, p4, Landroid/graphics/BitmapFactory$Options;->inDensity:I

    .line 474
    .end local v0           #density:I
    :cond_1
    :goto_0
    iget v1, p4, Landroid/graphics/BitmapFactory$Options;->inTargetDensity:I

    if-nez v1, :cond_2

    if-eqz p0, :cond_2

    .line 475
    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->densityDpi:I

    iput v1, p4, Landroid/graphics/BitmapFactory$Options;->inTargetDensity:I

    .line 478
    :cond_2
    invoke-static {p2, p3, p4}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v1

    return-object v1

    .line 469
    .restart local v0       #density:I
    :cond_3
    const v1, 0xffff

    if-eq v0, v1, :cond_1

    .line 470
    iput v0, p4, Landroid/graphics/BitmapFactory$Options;->inDensity:I

    goto :goto_0
.end method

.method public static decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;
    .locals 1
    .parameter "is"

    .prologue
    const/4 v0, 0x0

    .line 724
    invoke-static {p0, v0, v0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .locals 12
    .parameter "is"
    .parameter "outPadding"
    .parameter "opts"

    .prologue
    const/16 v2, 0x4000

    const/4 v4, 0x1

    .line 593
    if-nez p0, :cond_1

    .line 594
    const/4 v7, 0x0

    .line 665
    .end local p0
    :cond_0
    :goto_0
    return-object v7

    .line 599
    .restart local p0
    :cond_1
    invoke-virtual {p0}, Ljava/io/InputStream;->markSupported()Z

    move-result v0

    if-nez v0, :cond_2

    .line 600
    new-instance v10, Ljava/io/BufferedInputStream;

    invoke-direct {v10, p0, v2}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    .end local p0
    .local v10, is:Ljava/io/InputStream;
    move-object p0, v10

    .line 606
    .end local v10           #is:Ljava/io/InputStream;
    .restart local p0
    :cond_2
    const/16 v0, 0x400

    invoke-virtual {p0, v0}, Ljava/io/InputStream;->mark(I)V

    .line 609
    const/4 v9, 0x1

    .line 611
    .local v9, finish:Z
    instance-of v0, p0, Landroid/content/res/AssetManager$AssetInputStream;

    if-eqz v0, :cond_7

    .line 612
    check-cast p0, Landroid/content/res/AssetManager$AssetInputStream;

    .end local p0
    invoke-virtual {p0}, Landroid/content/res/AssetManager$AssetInputStream;->getAssetInt()I

    move-result v6

    .line 614
    .local v6, asset:I
    if-eqz p2, :cond_3

    iget-boolean v0, p2, Landroid/graphics/BitmapFactory$Options;->inScaled:Z

    if-eqz v0, :cond_6

    iget-object v0, p2, Landroid/graphics/BitmapFactory$Options;->inBitmap:Landroid/graphics/Bitmap;

    if-nez v0, :cond_6

    .line 615
    :cond_3
    const/high16 v5, 0x3f80

    .line 616
    .local v5, scale:F
    const/4 v11, 0x0

    .line 617
    .local v11, targetDensity:I
    if-eqz p2, :cond_4

    .line 618
    iget v8, p2, Landroid/graphics/BitmapFactory$Options;->inDensity:I

    .line 619
    .local v8, density:I
    iget v11, p2, Landroid/graphics/BitmapFactory$Options;->inTargetDensity:I

    .line 620
    if-eqz v8, :cond_4

    if-eqz v11, :cond_4

    .line 621
    int-to-float v0, v11

    int-to-float v2, v8

    div-float v5, v0, v2

    .line 625
    .end local v8           #density:I
    :cond_4
    invoke-static {v6, p1, p2, v4, v5}, Landroid/graphics/BitmapFactory;->nativeDecodeAsset(ILandroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;ZF)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 626
    .local v7, bm:Landroid/graphics/Bitmap;
    if-eqz v7, :cond_5

    if-eqz v11, :cond_5

    invoke-virtual {v7, v11}, Landroid/graphics/Bitmap;->setDensity(I)V

    .line 628
    :cond_5
    const/4 v9, 0x0

    .line 661
    .end local v5           #scale:F
    .end local v6           #asset:I
    .end local v11           #targetDensity:I
    :goto_1
    if-nez v7, :cond_e

    if-eqz p2, :cond_e

    iget-object v0, p2, Landroid/graphics/BitmapFactory$Options;->inBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_e

    .line 662
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v2, "Problem decoding into existing bitmap"

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 630
    .end local v7           #bm:Landroid/graphics/Bitmap;
    .restart local v6       #asset:I
    :cond_6
    invoke-static {v6, p1, p2}, Landroid/graphics/BitmapFactory;->nativeDecodeAsset(ILandroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v7

    .restart local v7       #bm:Landroid/graphics/Bitmap;
    goto :goto_1

    .line 637
    .end local v6           #asset:I
    .end local v7           #bm:Landroid/graphics/Bitmap;
    .restart local p0
    :cond_7
    const/4 v1, 0x0

    .line 638
    .local v1, tempStorage:[B
    if-eqz p2, :cond_8

    iget-object v1, p2, Landroid/graphics/BitmapFactory$Options;->inTempStorage:[B

    .line 639
    :cond_8
    if-nez v1, :cond_9

    new-array v1, v2, [B

    .line 641
    :cond_9
    if-eqz p2, :cond_a

    iget-boolean v0, p2, Landroid/graphics/BitmapFactory$Options;->inScaled:Z

    if-eqz v0, :cond_d

    iget-object v0, p2, Landroid/graphics/BitmapFactory$Options;->inBitmap:Landroid/graphics/Bitmap;

    if-nez v0, :cond_d

    .line 642
    :cond_a
    const/high16 v5, 0x3f80

    .line 643
    .restart local v5       #scale:F
    const/4 v11, 0x0

    .line 644
    .restart local v11       #targetDensity:I
    if-eqz p2, :cond_b

    .line 645
    iget v8, p2, Landroid/graphics/BitmapFactory$Options;->inDensity:I

    .line 646
    .restart local v8       #density:I
    iget v11, p2, Landroid/graphics/BitmapFactory$Options;->inTargetDensity:I

    .line 647
    if-eqz v8, :cond_b

    if-eqz v11, :cond_b

    .line 648
    int-to-float v0, v11

    int-to-float v2, v8

    div-float v5, v0, v2

    .end local v8           #density:I
    :cond_b
    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    .line 652
    invoke-static/range {v0 .. v5}, Landroid/graphics/BitmapFactory;->nativeDecodeStream(Ljava/io/InputStream;[BLandroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;ZF)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 653
    .restart local v7       #bm:Landroid/graphics/Bitmap;
    if-eqz v7, :cond_c

    if-eqz v11, :cond_c

    invoke-virtual {v7, v11}, Landroid/graphics/Bitmap;->setDensity(I)V

    .line 655
    :cond_c
    const/4 v9, 0x0

    .line 656
    goto :goto_1

    .line 657
    .end local v5           #scale:F
    .end local v7           #bm:Landroid/graphics/Bitmap;
    .end local v11           #targetDensity:I
    :cond_d
    invoke-static {p0, v1, p1, p2}, Landroid/graphics/BitmapFactory;->nativeDecodeStream(Ljava/io/InputStream;[BLandroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v7

    .restart local v7       #bm:Landroid/graphics/Bitmap;
    goto :goto_1

    .line 665
    .end local v1           #tempStorage:[B
    .end local p0
    :cond_e
    if-eqz v9, :cond_0

    invoke-static {v7, p1, p2}, Landroid/graphics/BitmapFactory;->finishDecode(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v7

    goto/16 :goto_0
.end method

.method private static finishDecode(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .locals 13
    .parameter "bm"
    .parameter "outPadding"
    .parameter "opts"

    .prologue
    const/4 v9, 0x1

    const/high16 v12, 0x3f00

    .line 669
    if-eqz p0, :cond_0

    if-nez p2, :cond_1

    .line 710
    :cond_0
    :goto_0
    return-object p0

    .line 673
    :cond_1
    iget v0, p2, Landroid/graphics/BitmapFactory$Options;->inDensity:I

    .line 674
    .local v0, density:I
    if-eqz v0, :cond_0

    .line 678
    invoke-virtual {p0, v0}, Landroid/graphics/Bitmap;->setDensity(I)V

    .line 679
    iget v8, p2, Landroid/graphics/BitmapFactory$Options;->inTargetDensity:I

    .line 680
    .local v8, targetDensity:I
    if-eqz v8, :cond_0

    if-eq v0, v8, :cond_0

    iget v10, p2, Landroid/graphics/BitmapFactory$Options;->inScreenDensity:I

    if-eq v0, v10, :cond_0

    .line 683
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getNinePatchChunk()[B

    move-result-object v5

    .line 684
    .local v5, np:[B
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getLayoutBounds()[I

    move-result-object v3

    .line 685
    .local v3, lb:[I
    if-eqz v5, :cond_5

    invoke-static {v5}, Landroid/graphics/NinePatch;->isNinePatchChunk([B)Z

    move-result v10

    if-eqz v10, :cond_5

    move v2, v9

    .line 686
    .local v2, isNinePatch:Z
    :goto_1
    iget-boolean v10, p2, Landroid/graphics/BitmapFactory$Options;->inScaled:Z

    if-nez v10, :cond_2

    if-eqz v2, :cond_0

    .line 687
    :cond_2
    int-to-float v10, v8

    int-to-float v11, v0

    div-float v7, v10, v11

    .line 688
    .local v7, scale:F
    const/high16 v10, 0x3f80

    cmpl-float v10, v7, v10

    if-eqz v10, :cond_7

    .line 689
    move-object v6, p0

    .line 690
    .local v6, oldBitmap:Landroid/graphics/Bitmap;
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v10

    int-to-float v10, v10

    mul-float/2addr v10, v7

    add-float/2addr v10, v12

    float-to-int v10, v10

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v11

    int-to-float v11, v11

    mul-float/2addr v11, v7

    add-float/2addr v11, v12

    float-to-int v11, v11

    invoke-static {v6, v10, v11, v9}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object p0

    .line 692
    if-eq p0, v6, :cond_3

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->recycle()V

    .line 694
    :cond_3
    if-eqz v2, :cond_4

    .line 695
    invoke-static {v5, v7, p1}, Landroid/graphics/BitmapFactory;->nativeScaleNinePatch([BFLandroid/graphics/Rect;)[B

    move-result-object v5

    .line 696
    invoke-virtual {p0, v5}, Landroid/graphics/Bitmap;->setNinePatchChunk([B)V

    .line 698
    :cond_4
    if-eqz v3, :cond_7

    .line 699
    array-length v9, v3

    new-array v4, v9, [I

    .line 700
    .local v4, newLb:[I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_2
    array-length v9, v3

    if-ge v1, v9, :cond_6

    .line 701
    aget v9, v3, v1

    int-to-float v9, v9

    mul-float/2addr v9, v7

    add-float/2addr v9, v12

    float-to-int v9, v9

    aput v9, v4, v1

    .line 700
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 685
    .end local v1           #i:I
    .end local v2           #isNinePatch:Z
    .end local v4           #newLb:[I
    .end local v6           #oldBitmap:Landroid/graphics/Bitmap;
    .end local v7           #scale:F
    :cond_5
    const/4 v2, 0x0

    goto :goto_1

    .line 703
    .restart local v1       #i:I
    .restart local v2       #isNinePatch:Z
    .restart local v4       #newLb:[I
    .restart local v6       #oldBitmap:Landroid/graphics/Bitmap;
    .restart local v7       #scale:F
    :cond_6
    invoke-virtual {p0, v4}, Landroid/graphics/Bitmap;->setLayoutBounds([I)V

    .line 707
    .end local v1           #i:I
    .end local v4           #newLb:[I
    .end local v6           #oldBitmap:Landroid/graphics/Bitmap;
    :cond_7
    invoke-virtual {p0, v8}, Landroid/graphics/Bitmap;->setDensity(I)V

    goto :goto_0
.end method

.method public static getImageBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 6
    .parameter "url"

    .prologue
    .line 425
    const/4 v2, 0x0

    .line 427
    .local v2, bm:Landroid/graphics/Bitmap;
    :try_start_0
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 429
    .local v0, aURL:Ljava/net/URL;
    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v3

    .line 430
    .local v3, conn:Ljava/net/URLConnection;
    invoke-virtual {v3}, Ljava/net/URLConnection;->connect()V

    .line 431
    invoke-virtual {v3}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v4

    .line 432
    .local v4, is:Ljava/io/InputStream;
    new-instance v1, Ljava/io/BufferedInputStream;

    invoke-direct {v1, v4}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 433
    .local v1, bis:Ljava/io/BufferedInputStream;
    invoke-static {v1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 434
    invoke-virtual {v1}, Ljava/io/BufferedInputStream;->close()V

    .line 435
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 439
    .end local v0           #aURL:Ljava/net/URL;
    .end local v1           #bis:Ljava/io/BufferedInputStream;
    .end local v3           #conn:Ljava/net/URLConnection;
    .end local v4           #is:Ljava/io/InputStream;
    :goto_0
    return-object v2

    .line 436
    :catch_0
    move-exception v5

    goto :goto_0
.end method

.method private static native nativeDecodeAsset(ILandroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
.end method

.method private static native nativeDecodeAsset(ILandroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;ZF)Landroid/graphics/Bitmap;
.end method

.method private static native nativeDecodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
.end method

.method private static native nativeDecodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
.end method

.method private static native nativeDecodeStream(Ljava/io/InputStream;[BLandroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
.end method

.method private static native nativeDecodeStream(Ljava/io/InputStream;[BLandroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;ZF)Landroid/graphics/Bitmap;
.end method

.method private static native nativeIsSeekable(Ljava/io/FileDescriptor;)Z
.end method

.method private static native nativeScaleNinePatch([BFLandroid/graphics/Rect;)[B
.end method
