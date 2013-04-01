.class public Lcom/sec/android/app/fm/listplayer/FMListUtil;
.super Ljava/lang/Object;
.source "FMListUtil.java"


# static fields
.field public static FUNC_RETURN_CORRECT:I

.field public static FUNC_RETURN_INCORRECT:I

.field public static FUNC_RETURN_INVALID:I

.field public static avaliableSize:J

.field private static mActivePointerId:I

.field private static mCurrentSaveId:J

.field public static mExternalStorage:Ljava/lang/String;

.field private static toast:Landroid/widget/Toast;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const-wide/16 v2, -0x1

    const/4 v1, 0x0

    const/4 v0, -0x1

    .line 71
    sput-wide v2, Lcom/sec/android/app/fm/listplayer/FMListUtil;->avaliableSize:J

    .line 78
    sput-object v1, Lcom/sec/android/app/fm/listplayer/FMListUtil;->mExternalStorage:Ljava/lang/String;

    .line 82
    sput v0, Lcom/sec/android/app/fm/listplayer/FMListUtil;->mActivePointerId:I

    .line 86
    sput-wide v2, Lcom/sec/android/app/fm/listplayer/FMListUtil;->mCurrentSaveId:J

    .line 176
    sput v0, Lcom/sec/android/app/fm/listplayer/FMListUtil;->FUNC_RETURN_INVALID:I

    .line 177
    const/4 v0, 0x0

    sput v0, Lcom/sec/android/app/fm/listplayer/FMListUtil;->FUNC_RETURN_CORRECT:I

    .line 178
    const/4 v0, 0x1

    sput v0, Lcom/sec/android/app/fm/listplayer/FMListUtil;->FUNC_RETURN_INCORRECT:I

    .line 261
    sput-object v1, Lcom/sec/android/app/fm/listplayer/FMListUtil;->toast:Landroid/widget/Toast;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 64
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 638
    return-void
.end method

.method public static deleteFile(Landroid/content/Context;JLjava/lang/String;)Z
    .locals 12
    .parameter "context"
    .parameter "id"
    .parameter "path"

    .prologue
    const/4 v11, 0x0

    const/4 v2, 0x0

    .line 460
    if-nez p3, :cond_0

    move v0, v11

    .line 490
    :goto_0
    return v0

    .line 463
    :cond_0
    new-instance v9, Ljava/io/File;

    invoke-direct {v9, p3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 466
    .local v9, tempFile:Ljava/io/File;
    invoke-static {v9}, Lcom/sec/android/app/fm/listplayer/FMListUtil;->isExistFile(Ljava/io/File;)I

    move-result v0

    sget v1, Lcom/sec/android/app/fm/listplayer/FMListUtil;->FUNC_RETURN_CORRECT:I

    if-ne v0, v1, :cond_1

    .line 467
    invoke-virtual {v9}, Ljava/io/File;->delete()Z

    .line 469
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 470
    .local v6, c:Landroid/database/Cursor;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 472
    .local v8, strBuilder:Ljava/lang/StringBuilder;
    if-eqz v6, :cond_4

    invoke-interface {v6}, Landroid/database/Cursor;->moveToLast()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 473
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v7

    .local v7, i:I
    :goto_1
    if-lez v7, :cond_3

    .line 474
    const-string v0, "_id"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    int-to-long v0, v0

    cmp-long v0, p1, v0

    if-nez v0, :cond_2

    .line 475
    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 476
    const-string v0, "_id="

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 477
    const-string v0, "_id"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 478
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 479
    .local v10, where:Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1, v10, v2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 480
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 481
    invoke-static {p0}, Lcom/sec/android/app/fm/listplayer/FMListUtil;->sendFileDeleteBroadcast(Landroid/content/Context;)V

    .line 483
    const/4 v0, 0x1

    goto :goto_0

    .line 485
    .end local v10           #where:Ljava/lang/String;
    :cond_2
    invoke-interface {v6}, Landroid/database/Cursor;->moveToPrevious()Z

    .line 473
    add-int/lit8 v7, v7, -0x1

    goto :goto_1

    .line 487
    :cond_3
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .end local v7           #i:I
    :cond_4
    move v0, v11

    .line 490
    goto :goto_0
.end method

.method public static getCurrentSaveId()J
    .locals 2

    .prologue
    .line 92
    sget-wide v0, Lcom/sec/android/app/fm/listplayer/FMListUtil;->mCurrentSaveId:J

    return-wide v0
.end method

.method public static getItemLong(Landroid/content/Context;JLjava/lang/String;)J
    .locals 11
    .parameter "context"
    .parameter "id"
    .parameter "column"

    .prologue
    const/4 v2, 0x0

    .line 512
    const/4 v3, 0x0

    .line 513
    .local v3, selection:Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 514
    .local v6, builder:Ljava/lang/StringBuilder;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "_id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 515
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 517
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 520
    .local v7, cursor:Landroid/database/Cursor;
    const-wide/16 v8, 0x0

    .line 521
    .local v8, data:J
    if-eqz v7, :cond_0

    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 522
    invoke-interface {v7, p3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    .line 523
    .local v10, index:I
    invoke-interface {v7, v10}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    .line 524
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 526
    .end local v10           #index:I
    :cond_0
    return-wide v8
.end method

.method public static getItemString(Landroid/content/Context;JLjava/lang/String;)Ljava/lang/String;
    .locals 10
    .parameter "context"
    .parameter "id"
    .parameter "column"

    .prologue
    const/4 v2, 0x0

    .line 494
    const/4 v3, 0x0

    .line 495
    .local v3, selection:Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 496
    .local v6, builder:Ljava/lang/StringBuilder;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "_id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 497
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 499
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 502
    .local v7, cursor:Landroid/database/Cursor;
    const/4 v8, 0x0

    .line 503
    .local v8, data:Ljava/lang/String;
    if-eqz v7, :cond_0

    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 504
    invoke-interface {v7, p3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    .line 505
    .local v9, index:I
    invoke-interface {v7, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 506
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 508
    .end local v9           #index:I
    :cond_0
    return-object v8
.end method

.method public static getNextId(Landroid/content/Context;JLjava/lang/String;)J
    .locals 7
    .parameter "context"
    .parameter "id"
    .parameter "selection"

    .prologue
    const/4 v2, 0x0

    .line 578
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    move-object v3, p3

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 580
    .local v6, c:Landroid/database/Cursor;
    if-nez v6, :cond_1

    .line 581
    const-string v0, "FMListUtil"

    const-string v1, "fail to open the cursor."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 603
    .end local p1
    :cond_0
    :goto_0
    return-wide p1

    .line 585
    .restart local p1
    :cond_1
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 586
    const-string v0, "_id"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    int-to-long v0, v0

    cmp-long v0, p1, v0

    if-nez v0, :cond_2

    .line 587
    invoke-interface {v6}, Landroid/database/Cursor;->moveToLast()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 588
    const-string v0, "_id"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    int-to-long p1, v0

    goto :goto_0

    .line 592
    :cond_2
    invoke-interface {v6}, Landroid/database/Cursor;->moveToLast()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 594
    :cond_3
    const-string v0, "_id"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    int-to-long v0, v0

    cmp-long v0, p1, v0

    if-nez v0, :cond_4

    .line 595
    invoke-interface {v6}, Landroid/database/Cursor;->moveToPrevious()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 596
    const-string v0, "_id"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    int-to-long p1, v0

    goto :goto_0

    .line 599
    :cond_4
    invoke-interface {v6}, Landroid/database/Cursor;->moveToPrevious()Z

    .line 600
    :cond_5
    invoke-interface {v6}, Landroid/database/Cursor;->isFirst()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 601
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0
.end method

.method public static getPreviousId(Landroid/content/Context;JLjava/lang/String;)J
    .locals 7
    .parameter "context"
    .parameter "id"
    .parameter "selection"

    .prologue
    const/4 v2, 0x0

    .line 548
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    move-object v3, p3

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 550
    .local v6, c:Landroid/database/Cursor;
    if-nez v6, :cond_1

    .line 551
    const-string v0, "FMListUtil"

    const-string v1, "fail to open the cursor."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 574
    .end local p1
    :cond_0
    :goto_0
    return-wide p1

    .line 554
    .restart local p1
    :cond_1
    invoke-interface {v6}, Landroid/database/Cursor;->moveToLast()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 555
    const-string v0, "_id"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    int-to-long v0, v0

    cmp-long v0, p1, v0

    if-nez v0, :cond_2

    .line 556
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 557
    const-string v0, "_id"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    int-to-long p1, v0

    goto :goto_0

    .line 563
    :cond_2
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 565
    :cond_3
    const-string v0, "_id"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    int-to-long v0, v0

    cmp-long v0, p1, v0

    if-nez v0, :cond_4

    .line 566
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 567
    const-string v0, "_id"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    int-to-long p1, v0

    goto :goto_0

    .line 570
    :cond_4
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    .line 571
    :cond_5
    invoke-interface {v6}, Landroid/database/Cursor;->isLast()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 572
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0
.end method

.method private static getVoltage()Ljava/lang/String;
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v13, -0x1

    const/4 v12, 0x0

    .line 755
    const-string v0, "/sys/class/power_supply/battery/capacity"

    .line 756
    .local v0, BATT_FILE:Ljava/lang/String;
    const/4 v8, 0x0

    .line 758
    .local v8, value:Ljava/lang/String;
    const/16 v1, 0x64

    .line 759
    .local v1, MAX_BUFFER_SIZE:I
    const/4 v7, 0x0

    .line 761
    .local v7, length:I
    const/4 v5, 0x0

    .line 762
    .local v5, in:Ljava/io/InputStream;
    new-array v2, v1, [B

    .line 764
    .local v2, buffer:[B
    const/4 v4, 0x0

    .local v4, i:I
    :goto_0
    if-ge v4, v1, :cond_0

    .line 765
    aput-byte v12, v2, v4

    .line 764
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 770
    :cond_0
    :try_start_0
    new-instance v6, Ljava/io/FileInputStream;

    invoke-direct {v6, v0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 771
    .end local v5           #in:Ljava/io/InputStream;
    .local v6, in:Ljava/io/InputStream;
    :try_start_1
    invoke-virtual {v6, v2}, Ljava/io/InputStream;->read([B)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v7

    .line 779
    if-eqz v6, :cond_1

    .line 780
    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V

    .line 784
    :cond_1
    if-eqz v7, :cond_6

    .line 785
    new-instance v8, Ljava/lang/String;

    .end local v8           #value:Ljava/lang/String;
    add-int/lit8 v9, v7, -0x1

    invoke-direct {v8, v2, v12, v9}, Ljava/lang/String;-><init>([BII)V

    .restart local v8       #value:Ljava/lang/String;
    move-object v5, v6

    .line 791
    .end local v6           #in:Ljava/io/InputStream;
    .restart local v5       #in:Ljava/io/InputStream;
    :cond_2
    :goto_1
    return-object v8

    .line 772
    :catch_0
    move-exception v3

    .line 773
    .local v3, e:Ljava/io/FileNotFoundException;
    :goto_2
    :try_start_2
    invoke-virtual {v3}, Ljava/io/FileNotFoundException;->printStackTrace()V

    .line 774
    const-string v9, "FMListUtil"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "getVoltage : FileNotFoundException : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 779
    if-eqz v5, :cond_3

    .line 780
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V

    .line 784
    :cond_3
    if-eqz v7, :cond_2

    .line 785
    new-instance v8, Ljava/lang/String;

    .end local v8           #value:Ljava/lang/String;
    invoke-direct {v8, v2, v12, v13}, Ljava/lang/String;-><init>([BII)V

    .restart local v8       #value:Ljava/lang/String;
    goto :goto_1

    .line 779
    .end local v3           #e:Ljava/io/FileNotFoundException;
    :catchall_0
    move-exception v9

    :goto_3
    if-eqz v5, :cond_4

    .line 780
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V

    .line 784
    :cond_4
    if-eqz v7, :cond_5

    .line 785
    new-instance v8, Ljava/lang/String;

    .end local v8           #value:Ljava/lang/String;
    invoke-direct {v8, v2, v12, v13}, Ljava/lang/String;-><init>([BII)V

    .restart local v8       #value:Ljava/lang/String;
    :cond_5
    throw v9

    .line 779
    .end local v5           #in:Ljava/io/InputStream;
    .restart local v6       #in:Ljava/io/InputStream;
    :catchall_1
    move-exception v9

    move-object v5, v6

    .end local v6           #in:Ljava/io/InputStream;
    .restart local v5       #in:Ljava/io/InputStream;
    goto :goto_3

    .line 772
    .end local v5           #in:Ljava/io/InputStream;
    .restart local v6       #in:Ljava/io/InputStream;
    :catch_1
    move-exception v3

    move-object v5, v6

    .end local v6           #in:Ljava/io/InputStream;
    .restart local v5       #in:Ljava/io/InputStream;
    goto :goto_2

    .end local v5           #in:Ljava/io/InputStream;
    .restart local v6       #in:Ljava/io/InputStream;
    :cond_6
    move-object v5, v6

    .end local v6           #in:Ljava/io/InputStream;
    .restart local v5       #in:Ljava/io/InputStream;
    goto :goto_1
.end method

.method public static isExistFile(Ljava/io/File;)I
    .locals 3
    .parameter "file"

    .prologue
    .line 190
    if-nez p0, :cond_0

    .line 191
    const-string v1, "FMListUtil"

    const-string v2, "isExistFile file is null"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    sget v1, Lcom/sec/android/app/fm/listplayer/FMListUtil;->FUNC_RETURN_INVALID:I

    .line 213
    :goto_0
    return v1

    .line 195
    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    .line 197
    .local v0, parentDirectory:Ljava/io/File;
    if-nez v0, :cond_1

    .line 198
    const-string v1, "FMListUtil"

    const-string v2, "isExistFile parentDirectory is null"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    sget v1, Lcom/sec/android/app/fm/listplayer/FMListUtil;->FUNC_RETURN_INVALID:I

    goto :goto_0

    .line 202
    :cond_1
    new-instance v1, Lcom/sec/android/app/fm/listplayer/FMListUtil$1;

    invoke-direct {v1, p0}, Lcom/sec/android/app/fm/listplayer/FMListUtil$1;-><init>(Ljava/io/File;)V

    invoke-virtual {v0, v1}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v1

    array-length v1, v1

    if-lez v1, :cond_2

    .line 208
    const-string v1, "FMListUtil"

    const-string v2, "isExistFile FUNC_RETURN_CORRECT"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 209
    sget v1, Lcom/sec/android/app/fm/listplayer/FMListUtil;->FUNC_RETURN_CORRECT:I

    goto :goto_0

    .line 212
    :cond_2
    const-string v1, "FMListUtil"

    const-string v2, "isExistFile FUNC_RETURN_INCORRECT"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 213
    sget v1, Lcom/sec/android/app/fm/listplayer/FMListUtil;->FUNC_RETURN_INCORRECT:I

    goto :goto_0
.end method

.method public static isExistFile(Ljava/lang/String;)I
    .locals 2
    .parameter "path"

    .prologue
    .line 181
    if-nez p0, :cond_0

    .line 182
    const-string v0, "FMListUtil"

    const-string v1, "isExistFile path is null"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    sget v0, Lcom/sec/android/app/fm/listplayer/FMListUtil;->FUNC_RETURN_INVALID:I

    .line 186
    :goto_0
    return v0

    :cond_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/sec/android/app/fm/listplayer/FMListUtil;->isExistFile(Ljava/io/File;)I

    move-result v0

    goto :goto_0
.end method

.method public static isGoogleTalkVideoChatRunning(Landroid/content/Context;)Z
    .locals 3
    .parameter "context"

    .prologue
    .line 405
    const-string v2, "audio"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 406
    .local v0, am:Landroid/media/AudioManager;
    invoke-virtual {v0}, Landroid/media/AudioManager;->getMode()I

    move-result v1

    .line 407
    .local v1, mode:I
    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    .line 408
    const/4 v2, 0x1

    .line 411
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static isLowBattery()Z
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v14, 0xa

    const/4 v12, 0x1

    const/4 v11, 0x0

    .line 680
    const/4 v10, 0x0

    .line 681
    .local v10, voltage:I
    const/4 v2, 0x0

    .line 682
    .local v2, charging_source:I
    const/4 v8, 0x0

    .line 683
    .local v8, length:I
    new-array v1, v14, [B

    .line 685
    .local v1, buffer:[B
    const/4 v9, 0x0

    .line 686
    .local v9, value:Ljava/lang/String;
    const-string v0, "/sys/class/power_supply/battery/batt_charging_source"

    .line 689
    .local v0, CHARGESOURCE_FILE:Ljava/lang/String;
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 690
    .local v4, f:Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v13

    if-eqz v13, :cond_1

    .line 691
    const/4 v6, 0x0

    .line 694
    .local v6, in:Ljava/io/InputStream;
    :try_start_0
    new-instance v7, Ljava/io/FileInputStream;

    invoke-direct {v7, v0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 696
    .end local v6           #in:Ljava/io/InputStream;
    .local v7, in:Ljava/io/InputStream;
    if-eqz v7, :cond_0

    .line 697
    :try_start_1
    invoke-virtual {v7, v1}, Ljava/io/InputStream;->read([B)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4

    move-result v8

    .line 704
    :cond_0
    if-eqz v7, :cond_1

    .line 705
    invoke-virtual {v7}, Ljava/io/FileInputStream;->close()V

    .line 714
    .end local v7           #in:Ljava/io/InputStream;
    :cond_1
    :goto_0
    if-lez v8, :cond_4

    if-ge v8, v14, :cond_4

    .line 715
    :try_start_2
    new-instance v9, Ljava/lang/String;

    .end local v9           #value:Ljava/lang/String;
    const/4 v13, 0x0

    add-int/lit8 v14, v8, -0x1

    invoke-direct {v9, v1, v13, v14}, Ljava/lang/String;-><init>([BII)V
    :try_end_2
    .catch Ljava/lang/StringIndexOutOfBoundsException; {:try_start_2 .. :try_end_2} :catch_2

    .line 727
    .restart local v9       #value:Ljava/lang/String;
    :goto_1
    if-nez v9, :cond_5

    .line 749
    :cond_2
    :goto_2
    return v11

    .line 699
    .restart local v6       #in:Ljava/io/InputStream;
    :catch_0
    move-exception v3

    .line 700
    .local v3, e:Ljava/io/FileNotFoundException;
    :goto_3
    :try_start_3
    invoke-virtual {v3}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 704
    if-eqz v6, :cond_1

    .line 705
    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V

    goto :goto_0

    .line 701
    .end local v3           #e:Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v3

    .line 702
    .local v3, e:Ljava/lang/Exception;
    :goto_4
    :try_start_4
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 704
    if-eqz v6, :cond_1

    .line 705
    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V

    goto :goto_0

    .line 704
    .end local v3           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v11

    :goto_5
    if-eqz v6, :cond_3

    .line 705
    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V

    :cond_3
    throw v11

    .line 718
    .end local v6           #in:Ljava/io/InputStream;
    :cond_4
    :try_start_5
    const-string v13, "FMListUtil"

    const-string v14, "batteryCheck() length is 0.."

    invoke-static {v13, v14}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catch Ljava/lang/StringIndexOutOfBoundsException; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_1

    .line 720
    .end local v9           #value:Ljava/lang/String;
    :catch_2
    move-exception v3

    .line 721
    .local v3, e:Ljava/lang/StringIndexOutOfBoundsException;
    const-string v13, "FMListUtil"

    const-string v14, "\'value = new String(buffer, 0, length - 1)\' has StringIndexOutOfBoundsException"

    invoke-static {v13, v14}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 722
    const/4 v9, 0x0

    .line 723
    .restart local v9       #value:Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/StringIndexOutOfBoundsException;->printStackTrace()V

    goto :goto_1

    .line 730
    .end local v3           #e:Ljava/lang/StringIndexOutOfBoundsException;
    :cond_5
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 732
    if-nez v2, :cond_2

    .line 734
    const/4 v5, 0x0

    .local v5, i:I
    :goto_6
    const/4 v13, 0x5

    if-ge v5, v13, :cond_6

    .line 735
    :try_start_6
    invoke-static {}, Lcom/sec/android/app/fm/listplayer/FMListUtil;->getVoltage()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    move-result v13

    add-int/2addr v10, v13

    .line 734
    add-int/lit8 v5, v5, 0x1

    goto :goto_6

    .line 737
    :catch_3
    move-exception v3

    .line 738
    .local v3, e:Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    .line 739
    const-string v13, "FMListUtil"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "batteryCheck : IOException : "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 742
    .end local v3           #e:Ljava/io/IOException;
    :cond_6
    div-int/lit8 v13, v10, 0x5

    if-gt v13, v12, :cond_2

    .line 743
    const-string v11, "FMListUtil"

    const-string v13, "batteryCheck : Low Battery.."

    invoke-static {v11, v13}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v11, v12

    .line 744
    goto :goto_2

    .line 704
    .end local v5           #i:I
    .restart local v7       #in:Ljava/io/InputStream;
    :catchall_1
    move-exception v11

    move-object v6, v7

    .end local v7           #in:Ljava/io/InputStream;
    .restart local v6       #in:Ljava/io/InputStream;
    goto :goto_5

    .line 701
    .end local v6           #in:Ljava/io/InputStream;
    .restart local v7       #in:Ljava/io/InputStream;
    :catch_4
    move-exception v3

    move-object v6, v7

    .end local v7           #in:Ljava/io/InputStream;
    .restart local v6       #in:Ljava/io/InputStream;
    goto :goto_4

    .line 699
    .end local v6           #in:Ljava/io/InputStream;
    .restart local v7       #in:Ljava/io/InputStream;
    :catch_5
    move-exception v3

    move-object v6, v7

    .end local v7           #in:Ljava/io/InputStream;
    .restart local v6       #in:Ljava/io/InputStream;
    goto :goto_3
.end method

.method public static isOnCall(Landroid/content/Context;)Z
    .locals 3
    .parameter "context"

    .prologue
    .line 372
    const-string v1, "phone"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 374
    .local v0, tm:Landroid/telephony/TelephonyManager;
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 375
    const/4 v1, 0x1

    .line 377
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isOnVoIP(Landroid/content/Context;)Z
    .locals 3
    .parameter "context"

    .prologue
    .line 386
    :try_start_0
    const-string v2, "voip"

    invoke-static {v2}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/os/IVoIPInterface$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IVoIPInterface;

    move-result-object v1

    .line 388
    .local v1, voipCall:Landroid/os/IVoIPInterface;
    if-eqz v1, :cond_0

    .line 389
    invoke-interface {v1}, Landroid/os/IVoIPInterface;->isVoIPIdle()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-nez v2, :cond_0

    .line 390
    const/4 v2, 0x1

    .line 399
    .end local v1           #voipCall:Landroid/os/IVoIPInterface;
    :goto_0
    return v2

    .line 393
    :catch_0
    move-exception v0

    .line 394
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 399
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static renameFile(Landroid/content/Context;JLjava/lang/String;Ljava/lang/String;)Z
    .locals 19
    .parameter "context"
    .parameter "id"
    .parameter "oldPath"
    .parameter "newTitle"

    .prologue
    .line 418
    new-instance v13, Ljava/io/File;

    move-object/from16 v0, p3

    invoke-direct {v13, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 419
    .local v13, oldFile:Ljava/io/File;
    invoke-virtual {v13}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v15

    .line 420
    .local v15, oldFileName:Ljava/lang/String;
    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x4

    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v15, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v14

    .line 422
    .local v14, oldFileExtension:Ljava/lang/String;
    invoke-virtual {v13}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v12

    .line 423
    .local v12, newPath:Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p4

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 424
    .local v11, newName:Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 427
    invoke-static {v13}, Lcom/sec/android/app/fm/listplayer/FMListUtil;->isExistFile(Ljava/io/File;)I

    move-result v2

    sget v3, Lcom/sec/android/app/fm/listplayer/FMListUtil;->FUNC_RETURN_CORRECT:I

    if-ne v2, v3, :cond_0

    .line 428
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v12}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13, v2}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 430
    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 431
    .local v8, c:Landroid/database/Cursor;
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    .line 432
    .local v16, strBuilder:Ljava/lang/StringBuilder;
    if-eqz v8, :cond_3

    invoke-interface {v8}, Landroid/database/Cursor;->moveToLast()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 433
    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v10

    .local v10, i:I
    :goto_0
    if-lez v10, :cond_2

    .line 434
    const-string v2, "_id"

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    int-to-long v2, v2

    cmp-long v2, p1, v2

    if-nez v2, :cond_1

    .line 435
    const/4 v2, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 436
    const-string v2, "_id="

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 437
    const-string v2, "_id"

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 438
    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    .line 439
    .local v18, where:Ljava/lang/String;
    new-instance v17, Landroid/content/ContentValues;

    invoke-direct/range {v17 .. v17}, Landroid/content/ContentValues;-><init>()V

    .line 440
    .local v17, v:Landroid/content/ContentValues;
    const-string v2, "title"

    move-object/from16 v0, v17

    move-object/from16 v1, p4

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 441
    const-string v2, "_display_name"

    move-object/from16 v0, v17

    invoke-virtual {v0, v2, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 442
    const-string v2, "_data"

    move-object/from16 v0, v17

    invoke-virtual {v0, v2, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 445
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const/4 v4, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v2, v3, v0, v1, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteConstraintException; {:try_start_0 .. :try_end_0} :catch_0

    .line 449
    :goto_1
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 450
    const/4 v2, 0x1

    .line 456
    .end local v10           #i:I
    .end local v17           #v:Landroid/content/ContentValues;
    .end local v18           #where:Ljava/lang/String;
    :goto_2
    return v2

    .line 446
    .restart local v10       #i:I
    .restart local v17       #v:Landroid/content/ContentValues;
    .restart local v18       #where:Ljava/lang/String;
    :catch_0
    move-exception v9

    .line 447
    .local v9, e:Landroid/database/sqlite/SQLiteConstraintException;
    invoke-virtual {v9}, Landroid/database/sqlite/SQLiteConstraintException;->printStackTrace()V

    goto :goto_1

    .line 452
    .end local v9           #e:Landroid/database/sqlite/SQLiteConstraintException;
    .end local v17           #v:Landroid/content/ContentValues;
    .end local v18           #where:Ljava/lang/String;
    :cond_1
    invoke-interface {v8}, Landroid/database/Cursor;->moveToPrevious()Z

    .line 433
    add-int/lit8 v10, v10, -0x1

    goto :goto_0

    .line 454
    :cond_2
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 456
    .end local v10           #i:I
    :cond_3
    const/4 v2, 0x0

    goto :goto_2
.end method

.method public static sendFileDeleteBroadcast(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 660
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.sec.android.fm.listplayer.service.FILE_DELETE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 661
    .local v0, i:Landroid/content/Intent;
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 662
    return-void
.end method

.method public static setCurrentSaveId(J)V
    .locals 0
    .parameter "currentSaveId"

    .prologue
    .line 89
    sput-wide p0, Lcom/sec/android/app/fm/listplayer/FMListUtil;->mCurrentSaveId:J

    .line 90
    return-void
.end method

.method public static showManagedToast(Landroid/content/Context;II)V
    .locals 1
    .parameter "context"
    .parameter "stringId"
    .parameter "toastLength"

    .prologue
    .line 263
    sget-object v0, Lcom/sec/android/app/fm/listplayer/FMListUtil;->toast:Landroid/widget/Toast;

    if-nez v0, :cond_0

    .line 264
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, p2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/fm/listplayer/FMListUtil;->toast:Landroid/widget/Toast;

    .line 271
    :goto_0
    sget-object v0, Lcom/sec/android/app/fm/listplayer/FMListUtil;->toast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 272
    return-void

    .line 268
    :cond_0
    sget-object v0, Lcom/sec/android/app/fm/listplayer/FMListUtil;->toast:Landroid/widget/Toast;

    invoke-virtual {v0, p2}, Landroid/widget/Toast;->setDuration(I)V

    .line 269
    sget-object v0, Lcom/sec/android/app/fm/listplayer/FMListUtil;->toast:Landroid/widget/Toast;

    invoke-virtual {v0, p1}, Landroid/widget/Toast;->setText(I)V

    goto :goto_0
.end method

.method public static showManagedToast(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 1
    .parameter "context"
    .parameter "str"
    .parameter "toastLength"

    .prologue
    .line 275
    sget-object v0, Lcom/sec/android/app/fm/listplayer/FMListUtil;->toast:Landroid/widget/Toast;

    if-nez v0, :cond_0

    .line 276
    invoke-static {p0, p1, p2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/fm/listplayer/FMListUtil;->toast:Landroid/widget/Toast;

    .line 283
    :goto_0
    sget-object v0, Lcom/sec/android/app/fm/listplayer/FMListUtil;->toast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 284
    return-void

    .line 280
    :cond_0
    sget-object v0, Lcom/sec/android/app/fm/listplayer/FMListUtil;->toast:Landroid/widget/Toast;

    invoke-virtual {v0, p2}, Landroid/widget/Toast;->setDuration(I)V

    .line 281
    sget-object v0, Lcom/sec/android/app/fm/listplayer/FMListUtil;->toast:Landroid/widget/Toast;

    invoke-virtual {v0, p1}, Landroid/widget/Toast;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public static showToast(Landroid/content/Context;II)V
    .locals 0
    .parameter "context"
    .parameter "stringId"
    .parameter "toastLength"

    .prologue
    .line 244
    invoke-static {p0, p1, p2}, Lcom/sec/android/app/fm/listplayer/FMListUtil;->showManagedToast(Landroid/content/Context;II)V

    .line 246
    return-void
.end method

.method public static showToast(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 0
    .parameter "context"
    .parameter "str"
    .parameter "toastLength"

    .prologue
    .line 249
    invoke-static {p0, p1, p2}, Lcom/sec/android/app/fm/listplayer/FMListUtil;->showManagedToast(Landroid/content/Context;Ljava/lang/String;I)V

    .line 251
    return-void
.end method

.method public static showToastAudioShock(Landroid/content/Context;ILandroid/media/AudioManager;)V
    .locals 0
    .parameter "context"
    .parameter "targetVolume"
    .parameter "audioManager"

    .prologue
    .line 905
    return-void
.end method

.method public static showToastAudioShockForAdjust(Landroid/content/Context;ILandroid/media/AudioManager;)V
    .locals 0
    .parameter "context"
    .parameter "adjustArg"
    .parameter "audioManager"

    .prologue
    .line 916
    return-void
.end method
