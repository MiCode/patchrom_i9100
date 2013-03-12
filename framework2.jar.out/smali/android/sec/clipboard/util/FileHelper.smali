.class public Landroid/sec/clipboard/util/FileHelper;
.super Ljava/lang/Object;
.source "FileHelper.java"


# static fields
.field private static instance:Landroid/sec/clipboard/util/FileHelper;


# instance fields
.field private NullFile:Ljava/io/File;

.field private final tag:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 58
    new-instance v0, Landroid/sec/clipboard/util/FileHelper;

    invoke-direct {v0}, Landroid/sec/clipboard/util/FileHelper;-><init>()V

    sput-object v0, Landroid/sec/clipboard/util/FileHelper;->instance:Landroid/sec/clipboard/util/FileHelper;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 56
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 57
    const-string v0, "FileHelper"

    iput-object v0, p0, Landroid/sec/clipboard/util/FileHelper;->tag:Ljava/lang/String;

    .line 59
    new-instance v0, Ljava/io/File;

    const-string v1, "_TEMP_FILE"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Landroid/sec/clipboard/util/FileHelper;->NullFile:Ljava/io/File;

    return-void
.end method

.method private getBitmap(Ljava/lang/String;II)Landroid/graphics/Bitmap;
    .locals 7
    .parameter "bitmapPath"
    .parameter "reqWidth"
    .parameter "reqHeight"

    .prologue
    const/4 v4, 0x1

    .line 228
    const/4 v3, 0x2

    .line 229
    .local v3, sampleSize:I
    const/4 v1, 0x0

    .line 231
    .local v1, bm:Landroid/graphics/Bitmap;
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 236
    .local v0, bitmapOption:Landroid/graphics/BitmapFactory$Options;
    iput-boolean v4, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 239
    iput-boolean v4, v0, Landroid/graphics/BitmapFactory$Options;->inPurgeable:Z

    .line 245
    :try_start_0
    sget-boolean v4, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v4, :cond_0

    const-string v4, "ClipboardServiceEx"

    const-string v5, "BitmapFactory.decodeFile(bitmapPath, bitmapOption"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 246
    :cond_0
    invoke-static {p1, v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 255
    :cond_1
    :goto_0
    sget-boolean v4, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v4, :cond_2

    const-string v4, "ClipboardServiceEx"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "bitmapOption.outWidth:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " bitmapOption.outHieght:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 256
    :cond_2
    sget-boolean v4, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v4, :cond_3

    const-string v4, "ClipboardServiceEx"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mGridItemWidth:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " mGridItemHeight:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 258
    :cond_3
    :goto_1
    iget v4, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    div-int/2addr v4, v3

    if-lt v4, p2, :cond_4

    iget v4, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    div-int/2addr v4, v3

    if-lt v4, p3, :cond_4

    .line 260
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 247
    :catch_0
    move-exception v2

    .line 249
    .local v2, e:Ljava/lang/Exception;
    sget-boolean v4, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v4, :cond_1

    const-string v4, "ClipboardServiceEx"

    const-string v5, "exception arised during bm = BitmapFactory.decodeFile(bitmapPath, bitmapOption);"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 262
    .end local v2           #e:Ljava/lang/Exception;
    :cond_4
    add-int/lit8 v3, v3, -0x1

    .line 266
    iput v3, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 270
    const/4 v4, 0x0

    :try_start_1
    iput-boolean v4, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 271
    invoke-static {p1, v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v1

    .line 278
    :cond_5
    :goto_2
    return-object v1

    .line 272
    :catch_1
    move-exception v2

    .line 274
    .restart local v2       #e:Ljava/lang/Exception;
    sget-boolean v4, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v4, :cond_5

    const-string v4, "ClipboardServiceEx"

    const-string v5, "exception arised during bm = BitmapFactory.decodeFile(((ClipboardDataBitmap) cbData).GetBitmapPath());"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method public static getInstance()Landroid/sec/clipboard/util/FileHelper;
    .locals 1

    .prologue
    .line 63
    sget-object v0, Landroid/sec/clipboard/util/FileHelper;->instance:Landroid/sec/clipboard/util/FileHelper;

    return-object v0
.end method


# virtual methods
.method public checkDir(Ljava/io/File;)Z
    .locals 1
    .parameter "file"

    .prologue
    .line 344
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v0

    return v0
.end method

.method public checkFile(Ljava/io/File;)Z
    .locals 1
    .parameter "file"

    .prologue
    .line 366
    invoke-virtual {p1}, Ljava/io/File;->isFile()Z

    move-result v0

    return v0
.end method

.method public createThumnailImage(Ljava/lang/String;)Z
    .locals 11
    .parameter "filePath"

    .prologue
    .line 179
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Landroid/sec/clipboard/data/ClipboardDefine;->THUMBNAIL_SUFFIX:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 181
    .local v6, thumFullPath:Ljava/lang/String;
    const/4 v2, 0x0

    .line 183
    .local v2, bm:Landroid/graphics/Bitmap;
    const/4 v0, 0x0

    .line 187
    .local v0, Result:Z
    const/16 v7, 0x99

    const/16 v8, 0x56

    invoke-direct {p0, p1, v7, v8}, Landroid/sec/clipboard/util/FileHelper;->getBitmap(Ljava/lang/String;II)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 190
    if-nez v2, :cond_1

    .line 191
    sget-boolean v7, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v7, :cond_0

    const-string v7, "ClipboardServiceEx"

    const-string v8, "createThumnailImage Bitmap is null"

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    move v1, v0

    .line 220
    .end local v0           #Result:Z
    .local v1, Result:I
    :goto_0
    return v1

    .line 195
    .end local v1           #Result:I
    .restart local v0       #Result:Z
    :cond_1
    const/4 v4, 0x0

    .line 198
    .local v4, fos:Ljava/io/FileOutputStream;
    :try_start_0
    new-instance v5, Ljava/io/FileOutputStream;

    invoke-direct {v5, v6}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 200
    .end local v4           #fos:Ljava/io/FileOutputStream;
    .local v5, fos:Ljava/io/FileOutputStream;
    if-eqz v5, :cond_2

    .line 201
    :try_start_1
    sget-object v7, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v8, 0x32

    invoke-virtual {v2, v7, v8, v5}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4

    .line 202
    const/4 v0, 0x1

    .line 210
    :cond_2
    if-eqz v5, :cond_3

    .line 211
    :try_start_2
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :cond_3
    move-object v4, v5

    .line 219
    .end local v5           #fos:Ljava/io/FileOutputStream;
    .restart local v4       #fos:Ljava/io/FileOutputStream;
    :cond_4
    :goto_1
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    move v1, v0

    .line 220
    .restart local v1       #Result:I
    goto :goto_0

    .line 213
    .end local v1           #Result:I
    .end local v4           #fos:Ljava/io/FileOutputStream;
    .restart local v5       #fos:Ljava/io/FileOutputStream;
    :catch_0
    move-exception v3

    .line 214
    .local v3, e:Ljava/io/IOException;
    sget-boolean v7, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v7, :cond_5

    const-string v7, "ClipboardServiceEx"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "close : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v3}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 215
    :cond_5
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    move-object v4, v5

    .line 217
    .end local v5           #fos:Ljava/io/FileOutputStream;
    .restart local v4       #fos:Ljava/io/FileOutputStream;
    goto :goto_1

    .line 205
    .end local v3           #e:Ljava/io/IOException;
    :catch_1
    move-exception v3

    .line 206
    .local v3, e:Ljava/lang/Exception;
    :goto_2
    :try_start_3
    sget-boolean v7, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v7, :cond_6

    const-string v7, "ClipboardServiceEx"

    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 207
    :cond_6
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 210
    if-eqz v4, :cond_4

    .line 211
    :try_start_4
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_1

    .line 213
    :catch_2
    move-exception v3

    .line 214
    .local v3, e:Ljava/io/IOException;
    sget-boolean v7, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v7, :cond_7

    const-string v7, "ClipboardServiceEx"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "close : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v3}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 215
    :cond_7
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 209
    .end local v3           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v7

    .line 210
    :goto_3
    if-eqz v4, :cond_8

    .line 211
    :try_start_5
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 216
    :cond_8
    :goto_4
    throw v7

    .line 213
    :catch_3
    move-exception v3

    .line 214
    .restart local v3       #e:Ljava/io/IOException;
    sget-boolean v8, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v8, :cond_9

    const-string v8, "ClipboardServiceEx"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "close : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v3}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 215
    :cond_9
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    .line 209
    .end local v3           #e:Ljava/io/IOException;
    .end local v4           #fos:Ljava/io/FileOutputStream;
    .restart local v5       #fos:Ljava/io/FileOutputStream;
    :catchall_1
    move-exception v7

    move-object v4, v5

    .end local v5           #fos:Ljava/io/FileOutputStream;
    .restart local v4       #fos:Ljava/io/FileOutputStream;
    goto :goto_3

    .line 205
    .end local v4           #fos:Ljava/io/FileOutputStream;
    .restart local v5       #fos:Ljava/io/FileOutputStream;
    :catch_4
    move-exception v3

    move-object v4, v5

    .end local v5           #fos:Ljava/io/FileOutputStream;
    .restart local v4       #fos:Ljava/io/FileOutputStream;
    goto :goto_2
.end method

.method public delete(Ljava/io/File;)V
    .locals 6
    .parameter "file"

    .prologue
    .line 378
    invoke-virtual {p1}, Ljava/io/File;->isFile()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 379
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    .line 390
    :cond_0
    :goto_0
    return-void

    .line 383
    :cond_1
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 384
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v4

    .line 385
    .local v4, list:[Ljava/io/File;
    move-object v0, v4

    .local v0, arr$:[Ljava/io/File;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_1
    if-ge v2, v3, :cond_2

    aget-object v1, v0, v2

    .line 386
    .local v1, f:Ljava/io/File;
    invoke-virtual {p0, v1}, Landroid/sec/clipboard/util/FileHelper;->delete(Ljava/io/File;)V

    .line 385
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 388
    .end local v1           #f:Ljava/io/File;
    :cond_2
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    goto :goto_0
.end method

.method public fileCopy(Ljava/io/File;Ljava/io/File;)Z
    .locals 16
    .parameter "src"
    .parameter "dest"

    .prologue
    .line 75
    const/4 v7, 0x0

    .line 76
    .local v7, Result:Z
    const/4 v10, 0x0

    .line 77
    .local v10, inputStream:Ljava/io/FileInputStream;
    const/4 v12, 0x0

    .line 80
    .local v12, outputStream:Ljava/io/FileOutputStream;
    :try_start_0
    invoke-virtual/range {p2 .. p2}, Ljava/io/File;->createNewFile()Z

    .line 81
    invoke-virtual/range {p2 .. p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x1fd

    const/4 v14, -0x1

    const/4 v15, -0x1

    invoke-static {v2, v3, v14, v15}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I

    .line 82
    new-instance v11, Ljava/io/FileInputStream;

    move-object/from16 v0, p1

    invoke-direct {v11, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .end local v10           #inputStream:Ljava/io/FileInputStream;
    .local v11, inputStream:Ljava/io/FileInputStream;
    move-object v10, v11

    .line 93
    .end local v11           #inputStream:Ljava/io/FileInputStream;
    .restart local v10       #inputStream:Ljava/io/FileInputStream;
    :goto_0
    :try_start_1
    new-instance v13, Ljava/io/FileOutputStream;

    move-object/from16 v0, p2

    invoke-direct {v13, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_2

    .end local v12           #outputStream:Ljava/io/FileOutputStream;
    .local v13, outputStream:Ljava/io/FileOutputStream;
    move-object v12, v13

    .line 100
    .end local v13           #outputStream:Ljava/io/FileOutputStream;
    .restart local v12       #outputStream:Ljava/io/FileOutputStream;
    :cond_0
    :goto_1
    invoke-virtual {v10}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v1

    .line 101
    .local v1, fcin:Ljava/nio/channels/FileChannel;
    invoke-virtual {v12}, Ljava/io/FileOutputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v6

    .line 103
    .local v6, fcout:Ljava/nio/channels/FileChannel;
    :try_start_2
    invoke-virtual {v1}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v4

    .line 104
    .local v4, lSize:J
    const-wide/16 v2, 0x0

    invoke-virtual/range {v1 .. v6}, Ljava/nio/channels/FileChannel;->transferTo(JJLjava/nio/channels/WritableByteChannel;)J

    .line 106
    invoke-virtual {v6}, Ljava/nio/channels/FileChannel;->close()V

    .line 107
    invoke-virtual {v1}, Ljava/nio/channels/FileChannel;->close()V

    .line 109
    invoke-virtual {v12}, Ljava/io/FileOutputStream;->close()V

    .line 110
    invoke-virtual {v10}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_4

    .line 111
    const/4 v7, 0x1

    .line 120
    if-eqz v1, :cond_1

    :try_start_3
    invoke-virtual {v1}, Ljava/nio/channels/FileChannel;->close()V

    .line 121
    :cond_1
    if-eqz v6, :cond_2

    invoke-virtual {v6}, Ljava/nio/channels/FileChannel;->close()V

    .line 122
    :cond_2
    if-eqz v10, :cond_3

    invoke-virtual {v10}, Ljava/io/FileInputStream;->close()V

    .line 123
    :cond_3
    if-eqz v12, :cond_4

    invoke-virtual {v12}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    .end local v4           #lSize:J
    :cond_4
    :goto_2
    move v8, v7

    .line 131
    .end local v1           #fcin:Ljava/nio/channels/FileChannel;
    .end local v6           #fcout:Ljava/nio/channels/FileChannel;
    .end local v7           #Result:Z
    .local v8, Result:I
    :goto_3
    return v8

    .line 84
    .end local v8           #Result:I
    .restart local v7       #Result:Z
    :catch_0
    move-exception v9

    .line 85
    .local v9, e:Ljava/io/FileNotFoundException;
    sget-boolean v2, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v2, :cond_5

    const-string v2, "ClipboardServiceEx"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "InputStream~ FileNotFoundException Error : "

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v9}, Ljava/io/FileNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    :cond_5
    sget-boolean v2, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v2, :cond_6

    const-string v2, "ClipboardServiceEx"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "FileCopy~ Source file:"

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v14, "/ Destination file:"

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p2

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    move v8, v7

    .line 87
    .restart local v8       #Result:I
    goto :goto_3

    .line 88
    .end local v8           #Result:I
    .end local v9           #e:Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v9

    .line 89
    .local v9, e:Ljava/io/IOException;
    invoke-virtual {v9}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_0

    .line 94
    .end local v9           #e:Ljava/io/IOException;
    :catch_2
    move-exception v9

    .line 95
    .local v9, e:Ljava/io/FileNotFoundException;
    sget-boolean v2, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v2, :cond_7

    const-string v2, "ClipboardServiceEx"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "OutputStream~ FileNotFoundException Error : "

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v9}, Ljava/io/FileNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    :cond_7
    sget-boolean v2, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v2, :cond_0

    const-string v2, "ClipboardServiceEx"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "FileCopy~ Source file:"

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v14, "/ Destination file:"

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p2

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 124
    .end local v9           #e:Ljava/io/FileNotFoundException;
    .restart local v1       #fcin:Ljava/nio/channels/FileChannel;
    .restart local v4       #lSize:J
    .restart local v6       #fcout:Ljava/nio/channels/FileChannel;
    :catch_3
    move-exception v9

    .line 125
    .local v9, e:Ljava/io/IOException;
    sget-boolean v2, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v2, :cond_8

    const-string v2, "ClipboardServiceEx"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "close : "

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v9}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    :cond_8
    invoke-virtual {v9}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_2

    .line 112
    .end local v4           #lSize:J
    .end local v9           #e:Ljava/io/IOException;
    :catch_4
    move-exception v9

    .line 113
    .restart local v9       #e:Ljava/io/IOException;
    :try_start_4
    sget-boolean v2, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v2, :cond_9

    const-string v2, "ClipboardServiceEx"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "FileCopy~ IOException Error : "

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v9}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    :cond_9
    sget-boolean v2, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v2, :cond_a

    const-string v2, "ClipboardServiceEx"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "FileCopy~ Source file:"

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v14, "/ Destination file:"

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p2

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 115
    :cond_a
    const/4 v7, 0x0

    .line 120
    if-eqz v1, :cond_b

    :try_start_5
    invoke-virtual {v1}, Ljava/nio/channels/FileChannel;->close()V

    .line 121
    :cond_b
    if-eqz v6, :cond_c

    invoke-virtual {v6}, Ljava/nio/channels/FileChannel;->close()V

    .line 122
    :cond_c
    if-eqz v10, :cond_d

    invoke-virtual {v10}, Ljava/io/FileInputStream;->close()V

    .line 123
    :cond_d
    if-eqz v12, :cond_4

    invoke-virtual {v12}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_5

    goto/16 :goto_2

    .line 124
    :catch_5
    move-exception v9

    .line 125
    sget-boolean v2, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v2, :cond_e

    const-string v2, "ClipboardServiceEx"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "close : "

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v9}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    :cond_e
    invoke-virtual {v9}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_2

    .line 119
    .end local v9           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v2

    .line 120
    if-eqz v1, :cond_f

    :try_start_6
    invoke-virtual {v1}, Ljava/nio/channels/FileChannel;->close()V

    .line 121
    :cond_f
    if-eqz v6, :cond_10

    invoke-virtual {v6}, Ljava/nio/channels/FileChannel;->close()V

    .line 122
    :cond_10
    if-eqz v10, :cond_11

    invoke-virtual {v10}, Ljava/io/FileInputStream;->close()V

    .line 123
    :cond_11
    if-eqz v12, :cond_12

    invoke-virtual {v12}, Ljava/io/FileOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_6

    .line 127
    :cond_12
    :goto_4
    throw v2

    .line 124
    :catch_6
    move-exception v9

    .line 125
    .restart local v9       #e:Ljava/io/IOException;
    sget-boolean v3, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v3, :cond_13

    const-string v3, "ClipboardServiceEx"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "close : "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v9}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v3, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    :cond_13
    invoke-virtual {v9}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4
.end method

.method public getAbsoluteNullFile()Ljava/lang/String;
    .locals 1

    .prologue
    .line 399
    iget-object v0, p0, Landroid/sec/clipboard/util/FileHelper;->NullFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getList(Ljava/io/File;)[Ljava/io/File;
    .locals 1
    .parameter "file"

    .prologue
    .line 371
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    .line 373
    .local v0, list:[Ljava/io/File;
    return-object v0
.end method

.method public getNullFile()Ljava/io/File;
    .locals 1

    .prologue
    .line 394
    iget-object v0, p0, Landroid/sec/clipboard/util/FileHelper;->NullFile:Ljava/io/File;

    return-object v0
.end method

.method public getSDCardPath()Ljava/lang/String;
    .locals 3

    .prologue
    .line 328
    const-string v1, ""

    .line 329
    .local v1, path:Ljava/lang/String;
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    .line 330
    .local v0, ext:Ljava/lang/String;
    const-string v2, "mounted"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 331
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    .line 335
    :goto_0
    return-object v1

    .line 333
    :cond_0
    const-string v1, "unmounted"

    goto :goto_0
.end method

.method public loadObjectFile(Ljava/io/File;)Ljava/lang/Object;
    .locals 9
    .parameter "file"

    .prologue
    .line 287
    const/4 v5, 0x0

    .line 288
    .local v5, result:Ljava/lang/Object;
    const/4 v1, 0x0

    .line 289
    .local v1, fis:Ljava/io/FileInputStream;
    const/4 v3, 0x0

    .line 291
    .local v3, ois:Ljava/io/ObjectInputStream;
    :try_start_0
    sget-boolean v6, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v6, :cond_0

    const-string v6, "ClipboardServiceEx"

    const-string v7, "load object file"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 292
    :cond_0
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/StreamCorruptedException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_7
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_9

    .line 293
    .end local v1           #fis:Ljava/io/FileInputStream;
    .local v2, fis:Ljava/io/FileInputStream;
    :try_start_1
    new-instance v4, Ljava/io/ObjectInputStream;

    invoke-direct {v4, v2}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_14
    .catch Ljava/io/StreamCorruptedException; {:try_start_1 .. :try_end_1} :catch_12
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_10
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_e
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_c

    .line 294
    .end local v3           #ois:Ljava/io/ObjectInputStream;
    .local v4, ois:Ljava/io/ObjectInputStream;
    :try_start_2
    invoke-virtual {v4}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_15
    .catch Ljava/io/StreamCorruptedException; {:try_start_2 .. :try_end_2} :catch_13
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2 .. :try_end_2} :catch_11
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_f
    .catch Ljava/lang/ClassCastException; {:try_start_2 .. :try_end_2} :catch_d

    move-result-object v5

    .line 312
    if-eqz v4, :cond_1

    :try_start_3
    invoke-virtual {v4}, Ljava/io/ObjectInputStream;->close()V

    .line 313
    :cond_1
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    :cond_2
    move-object v3, v4

    .end local v4           #ois:Ljava/io/ObjectInputStream;
    .restart local v3       #ois:Ljava/io/ObjectInputStream;
    move-object v1, v2

    .line 319
    .end local v2           #fis:Ljava/io/FileInputStream;
    .end local v5           #result:Ljava/lang/Object;
    .restart local v1       #fis:Ljava/io/FileInputStream;
    :cond_3
    :goto_0
    return-object v5

    .line 314
    .end local v1           #fis:Ljava/io/FileInputStream;
    .end local v3           #ois:Ljava/io/ObjectInputStream;
    .restart local v2       #fis:Ljava/io/FileInputStream;
    .restart local v4       #ois:Ljava/io/ObjectInputStream;
    .restart local v5       #result:Ljava/lang/Object;
    :catch_0
    move-exception v0

    .line 315
    .local v0, e:Ljava/io/IOException;
    sget-boolean v6, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v6, :cond_4

    const-string v6, "ClipboardServiceEx"

    const-string v7, "close IOException"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 316
    :cond_4
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    move-object v3, v4

    .end local v4           #ois:Ljava/io/ObjectInputStream;
    .restart local v3       #ois:Ljava/io/ObjectInputStream;
    move-object v1, v2

    .line 318
    .end local v2           #fis:Ljava/io/FileInputStream;
    .restart local v1       #fis:Ljava/io/FileInputStream;
    goto :goto_0

    .line 295
    .end local v0           #e:Ljava/io/IOException;
    :catch_1
    move-exception v0

    .line 296
    .local v0, e:Ljava/io/FileNotFoundException;
    :goto_1
    :try_start_4
    sget-boolean v6, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v6, :cond_5

    const-string v6, "ClipboardServiceEx"

    const-string v7, "FileNotFoundException"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 297
    :cond_5
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 312
    if-eqz v3, :cond_6

    :try_start_5
    invoke-virtual {v3}, Ljava/io/ObjectInputStream;->close()V

    .line 313
    :cond_6
    if-eqz v1, :cond_3

    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_0

    .line 314
    :catch_2
    move-exception v0

    .line 315
    .local v0, e:Ljava/io/IOException;
    sget-boolean v6, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v6, :cond_7

    const-string v6, "ClipboardServiceEx"

    const-string v7, "close IOException"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 316
    :cond_7
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 298
    .end local v0           #e:Ljava/io/IOException;
    :catch_3
    move-exception v0

    .line 299
    .local v0, e:Ljava/io/StreamCorruptedException;
    :goto_2
    :try_start_6
    sget-boolean v6, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v6, :cond_8

    const-string v6, "ClipboardServiceEx"

    const-string v7, "StreamCorruptedException"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 300
    :cond_8
    invoke-virtual {v0}, Ljava/io/StreamCorruptedException;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 312
    if-eqz v3, :cond_9

    :try_start_7
    invoke-virtual {v3}, Ljava/io/ObjectInputStream;->close()V

    .line 313
    :cond_9
    if-eqz v1, :cond_3

    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_4

    goto :goto_0

    .line 314
    :catch_4
    move-exception v0

    .line 315
    .local v0, e:Ljava/io/IOException;
    sget-boolean v6, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v6, :cond_a

    const-string v6, "ClipboardServiceEx"

    const-string v7, "close IOException"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 316
    :cond_a
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 301
    .end local v0           #e:Ljava/io/IOException;
    :catch_5
    move-exception v0

    .line 302
    .local v0, e:Ljava/lang/ClassNotFoundException;
    :goto_3
    :try_start_8
    sget-boolean v6, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v6, :cond_b

    const-string v6, "ClipboardServiceEx"

    const-string v7, "ClassNotFoundException"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 303
    :cond_b
    invoke-virtual {v0}, Ljava/lang/ClassNotFoundException;->printStackTrace()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 312
    if-eqz v3, :cond_c

    :try_start_9
    invoke-virtual {v3}, Ljava/io/ObjectInputStream;->close()V

    .line 313
    :cond_c
    if-eqz v1, :cond_3

    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_6

    goto :goto_0

    .line 314
    :catch_6
    move-exception v0

    .line 315
    .local v0, e:Ljava/io/IOException;
    sget-boolean v6, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v6, :cond_d

    const-string v6, "ClipboardServiceEx"

    const-string v7, "close IOException"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 316
    :cond_d
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_0

    .line 304
    .end local v0           #e:Ljava/io/IOException;
    :catch_7
    move-exception v0

    .line 305
    .restart local v0       #e:Ljava/io/IOException;
    :goto_4
    :try_start_a
    sget-boolean v6, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v6, :cond_e

    const-string v6, "ClipboardServiceEx"

    const-string v7, "ClassNotFoundException"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 306
    :cond_e
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 312
    if-eqz v3, :cond_f

    :try_start_b
    invoke-virtual {v3}, Ljava/io/ObjectInputStream;->close()V

    .line 313
    :cond_f
    if-eqz v1, :cond_3

    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_8

    goto/16 :goto_0

    .line 314
    :catch_8
    move-exception v0

    .line 315
    sget-boolean v6, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v6, :cond_10

    const-string v6, "ClipboardServiceEx"

    const-string v7, "close IOException"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 316
    :cond_10
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_0

    .line 307
    .end local v0           #e:Ljava/io/IOException;
    :catch_9
    move-exception v0

    .line 308
    .local v0, e:Ljava/lang/ClassCastException;
    :goto_5
    :try_start_c
    sget-boolean v6, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v6, :cond_11

    const-string v6, "ClipboardServiceEx"

    const-string v7, "ClassCastException"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 309
    :cond_11
    invoke-virtual {v0}, Ljava/lang/ClassCastException;->printStackTrace()V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    .line 312
    if-eqz v3, :cond_12

    :try_start_d
    invoke-virtual {v3}, Ljava/io/ObjectInputStream;->close()V

    .line 313
    :cond_12
    if-eqz v1, :cond_3

    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_a

    goto/16 :goto_0

    .line 314
    :catch_a
    move-exception v0

    .line 315
    .local v0, e:Ljava/io/IOException;
    sget-boolean v6, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v6, :cond_13

    const-string v6, "ClipboardServiceEx"

    const-string v7, "close IOException"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 316
    :cond_13
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_0

    .line 311
    .end local v0           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v6

    .line 312
    :goto_6
    if-eqz v3, :cond_14

    :try_start_e
    invoke-virtual {v3}, Ljava/io/ObjectInputStream;->close()V

    .line 313
    :cond_14
    if-eqz v1, :cond_15

    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_b

    .line 317
    :cond_15
    :goto_7
    throw v6

    .line 314
    :catch_b
    move-exception v0

    .line 315
    .restart local v0       #e:Ljava/io/IOException;
    sget-boolean v7, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v7, :cond_16

    const-string v7, "ClipboardServiceEx"

    const-string v8, "close IOException"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 316
    :cond_16
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_7

    .line 311
    .end local v0           #e:Ljava/io/IOException;
    .end local v1           #fis:Ljava/io/FileInputStream;
    .restart local v2       #fis:Ljava/io/FileInputStream;
    :catchall_1
    move-exception v6

    move-object v1, v2

    .end local v2           #fis:Ljava/io/FileInputStream;
    .restart local v1       #fis:Ljava/io/FileInputStream;
    goto :goto_6

    .end local v1           #fis:Ljava/io/FileInputStream;
    .end local v3           #ois:Ljava/io/ObjectInputStream;
    .restart local v2       #fis:Ljava/io/FileInputStream;
    .restart local v4       #ois:Ljava/io/ObjectInputStream;
    :catchall_2
    move-exception v6

    move-object v3, v4

    .end local v4           #ois:Ljava/io/ObjectInputStream;
    .restart local v3       #ois:Ljava/io/ObjectInputStream;
    move-object v1, v2

    .end local v2           #fis:Ljava/io/FileInputStream;
    .restart local v1       #fis:Ljava/io/FileInputStream;
    goto :goto_6

    .line 307
    .end local v1           #fis:Ljava/io/FileInputStream;
    .restart local v2       #fis:Ljava/io/FileInputStream;
    :catch_c
    move-exception v0

    move-object v1, v2

    .end local v2           #fis:Ljava/io/FileInputStream;
    .restart local v1       #fis:Ljava/io/FileInputStream;
    goto :goto_5

    .end local v1           #fis:Ljava/io/FileInputStream;
    .end local v3           #ois:Ljava/io/ObjectInputStream;
    .restart local v2       #fis:Ljava/io/FileInputStream;
    .restart local v4       #ois:Ljava/io/ObjectInputStream;
    :catch_d
    move-exception v0

    move-object v3, v4

    .end local v4           #ois:Ljava/io/ObjectInputStream;
    .restart local v3       #ois:Ljava/io/ObjectInputStream;
    move-object v1, v2

    .end local v2           #fis:Ljava/io/FileInputStream;
    .restart local v1       #fis:Ljava/io/FileInputStream;
    goto :goto_5

    .line 304
    .end local v1           #fis:Ljava/io/FileInputStream;
    .restart local v2       #fis:Ljava/io/FileInputStream;
    :catch_e
    move-exception v0

    move-object v1, v2

    .end local v2           #fis:Ljava/io/FileInputStream;
    .restart local v1       #fis:Ljava/io/FileInputStream;
    goto/16 :goto_4

    .end local v1           #fis:Ljava/io/FileInputStream;
    .end local v3           #ois:Ljava/io/ObjectInputStream;
    .restart local v2       #fis:Ljava/io/FileInputStream;
    .restart local v4       #ois:Ljava/io/ObjectInputStream;
    :catch_f
    move-exception v0

    move-object v3, v4

    .end local v4           #ois:Ljava/io/ObjectInputStream;
    .restart local v3       #ois:Ljava/io/ObjectInputStream;
    move-object v1, v2

    .end local v2           #fis:Ljava/io/FileInputStream;
    .restart local v1       #fis:Ljava/io/FileInputStream;
    goto/16 :goto_4

    .line 301
    .end local v1           #fis:Ljava/io/FileInputStream;
    .restart local v2       #fis:Ljava/io/FileInputStream;
    :catch_10
    move-exception v0

    move-object v1, v2

    .end local v2           #fis:Ljava/io/FileInputStream;
    .restart local v1       #fis:Ljava/io/FileInputStream;
    goto/16 :goto_3

    .end local v1           #fis:Ljava/io/FileInputStream;
    .end local v3           #ois:Ljava/io/ObjectInputStream;
    .restart local v2       #fis:Ljava/io/FileInputStream;
    .restart local v4       #ois:Ljava/io/ObjectInputStream;
    :catch_11
    move-exception v0

    move-object v3, v4

    .end local v4           #ois:Ljava/io/ObjectInputStream;
    .restart local v3       #ois:Ljava/io/ObjectInputStream;
    move-object v1, v2

    .end local v2           #fis:Ljava/io/FileInputStream;
    .restart local v1       #fis:Ljava/io/FileInputStream;
    goto/16 :goto_3

    .line 298
    .end local v1           #fis:Ljava/io/FileInputStream;
    .restart local v2       #fis:Ljava/io/FileInputStream;
    :catch_12
    move-exception v0

    move-object v1, v2

    .end local v2           #fis:Ljava/io/FileInputStream;
    .restart local v1       #fis:Ljava/io/FileInputStream;
    goto/16 :goto_2

    .end local v1           #fis:Ljava/io/FileInputStream;
    .end local v3           #ois:Ljava/io/ObjectInputStream;
    .restart local v2       #fis:Ljava/io/FileInputStream;
    .restart local v4       #ois:Ljava/io/ObjectInputStream;
    :catch_13
    move-exception v0

    move-object v3, v4

    .end local v4           #ois:Ljava/io/ObjectInputStream;
    .restart local v3       #ois:Ljava/io/ObjectInputStream;
    move-object v1, v2

    .end local v2           #fis:Ljava/io/FileInputStream;
    .restart local v1       #fis:Ljava/io/FileInputStream;
    goto/16 :goto_2

    .line 295
    .end local v1           #fis:Ljava/io/FileInputStream;
    .restart local v2       #fis:Ljava/io/FileInputStream;
    :catch_14
    move-exception v0

    move-object v1, v2

    .end local v2           #fis:Ljava/io/FileInputStream;
    .restart local v1       #fis:Ljava/io/FileInputStream;
    goto/16 :goto_1

    .end local v1           #fis:Ljava/io/FileInputStream;
    .end local v3           #ois:Ljava/io/ObjectInputStream;
    .restart local v2       #fis:Ljava/io/FileInputStream;
    .restart local v4       #ois:Ljava/io/ObjectInputStream;
    :catch_15
    move-exception v0

    move-object v3, v4

    .end local v4           #ois:Ljava/io/ObjectInputStream;
    .restart local v3       #ois:Ljava/io/ObjectInputStream;
    move-object v1, v2

    .end local v2           #fis:Ljava/io/FileInputStream;
    .restart local v1       #fis:Ljava/io/FileInputStream;
    goto/16 :goto_1
.end method

.method public makeDir(Ljava/io/File;)V
    .locals 3
    .parameter "file"

    .prologue
    const/4 v2, -0x1

    .line 353
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    .line 354
    invoke-virtual {p1}, Ljava/io/File;->mkdirs()Z

    .line 355
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x1fd

    invoke-static {v0, v1, v2, v2}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I

    .line 357
    :cond_0
    return-void
.end method

.method public saveObjectFile(Ljava/lang/String;Ljava/lang/Object;)Z
    .locals 10
    .parameter "file"
    .parameter "obj"

    .prologue
    .line 144
    if-nez p2, :cond_2

    .line 145
    sget-boolean v6, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v6, :cond_0

    const-string v6, "ClipboardServiceEx"

    const-string v7, "obj == null"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    :cond_0
    const/4 v5, 0x0

    .line 172
    :cond_1
    :goto_0
    return v5

    .line 150
    :cond_2
    const/4 v5, 0x1

    .line 151
    .local v5, result:Z
    const/4 v1, 0x0

    .line 152
    .local v1, fos:Ljava/io/FileOutputStream;
    const/4 v3, 0x0

    .line 155
    .local v3, oos:Ljava/io/ObjectOutputStream;
    :try_start_0
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 156
    .end local v1           #fos:Ljava/io/FileOutputStream;
    .local v2, fos:Ljava/io/FileOutputStream;
    :try_start_1
    new-instance v4, Ljava/io/ObjectOutputStream;

    invoke-direct {v4, v2}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4

    .line 157
    .end local v3           #oos:Ljava/io/ObjectOutputStream;
    .local v4, oos:Ljava/io/ObjectOutputStream;
    :try_start_2
    invoke-virtual {v4, p2}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_5

    .line 164
    if-eqz v4, :cond_3

    :try_start_3
    invoke-virtual {v4}, Ljava/io/ObjectOutputStream;->close()V

    .line 165
    :cond_3
    if-eqz v2, :cond_4

    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    :cond_4
    move-object v3, v4

    .end local v4           #oos:Ljava/io/ObjectOutputStream;
    .restart local v3       #oos:Ljava/io/ObjectOutputStream;
    move-object v1, v2

    .line 169
    .end local v2           #fos:Ljava/io/FileOutputStream;
    .restart local v1       #fos:Ljava/io/FileOutputStream;
    goto :goto_0

    .line 166
    .end local v1           #fos:Ljava/io/FileOutputStream;
    .end local v3           #oos:Ljava/io/ObjectOutputStream;
    .restart local v2       #fos:Ljava/io/FileOutputStream;
    .restart local v4       #oos:Ljava/io/ObjectOutputStream;
    :catch_0
    move-exception v0

    .line 167
    .local v0, e:Ljava/io/IOException;
    sget-boolean v6, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v6, :cond_5

    const-string v6, "ClipboardServiceEx"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "close : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    :cond_5
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    move-object v3, v4

    .end local v4           #oos:Ljava/io/ObjectOutputStream;
    .restart local v3       #oos:Ljava/io/ObjectOutputStream;
    move-object v1, v2

    .line 170
    .end local v2           #fos:Ljava/io/FileOutputStream;
    .restart local v1       #fos:Ljava/io/FileOutputStream;
    goto :goto_0

    .line 158
    .end local v0           #e:Ljava/io/IOException;
    :catch_1
    move-exception v0

    .line 159
    .restart local v0       #e:Ljava/io/IOException;
    :goto_1
    :try_start_4
    sget-boolean v6, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v6, :cond_6

    const-string v6, "ClipboardServiceEx"

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    :cond_6
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 161
    const/4 v5, 0x0

    .line 164
    if-eqz v3, :cond_7

    :try_start_5
    invoke-virtual {v3}, Ljava/io/ObjectOutputStream;->close()V

    .line 165
    :cond_7
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_0

    .line 166
    :catch_2
    move-exception v0

    .line 167
    sget-boolean v6, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v6, :cond_8

    const-string v6, "ClipboardServiceEx"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "close : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    :cond_8
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_0

    .line 163
    .end local v0           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v6

    .line 164
    :goto_2
    if-eqz v3, :cond_9

    :try_start_6
    invoke-virtual {v3}, Ljava/io/ObjectOutputStream;->close()V

    .line 165
    :cond_9
    if-eqz v1, :cond_a

    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    .line 169
    :cond_a
    :goto_3
    throw v6

    .line 166
    :catch_3
    move-exception v0

    .line 167
    .restart local v0       #e:Ljava/io/IOException;
    sget-boolean v7, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v7, :cond_b

    const-string v7, "ClipboardServiceEx"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "close : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    :cond_b
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    .line 163
    .end local v0           #e:Ljava/io/IOException;
    .end local v1           #fos:Ljava/io/FileOutputStream;
    .restart local v2       #fos:Ljava/io/FileOutputStream;
    :catchall_1
    move-exception v6

    move-object v1, v2

    .end local v2           #fos:Ljava/io/FileOutputStream;
    .restart local v1       #fos:Ljava/io/FileOutputStream;
    goto :goto_2

    .end local v1           #fos:Ljava/io/FileOutputStream;
    .end local v3           #oos:Ljava/io/ObjectOutputStream;
    .restart local v2       #fos:Ljava/io/FileOutputStream;
    .restart local v4       #oos:Ljava/io/ObjectOutputStream;
    :catchall_2
    move-exception v6

    move-object v3, v4

    .end local v4           #oos:Ljava/io/ObjectOutputStream;
    .restart local v3       #oos:Ljava/io/ObjectOutputStream;
    move-object v1, v2

    .end local v2           #fos:Ljava/io/FileOutputStream;
    .restart local v1       #fos:Ljava/io/FileOutputStream;
    goto :goto_2

    .line 158
    .end local v1           #fos:Ljava/io/FileOutputStream;
    .restart local v2       #fos:Ljava/io/FileOutputStream;
    :catch_4
    move-exception v0

    move-object v1, v2

    .end local v2           #fos:Ljava/io/FileOutputStream;
    .restart local v1       #fos:Ljava/io/FileOutputStream;
    goto :goto_1

    .end local v1           #fos:Ljava/io/FileOutputStream;
    .end local v3           #oos:Ljava/io/ObjectOutputStream;
    .restart local v2       #fos:Ljava/io/FileOutputStream;
    .restart local v4       #oos:Ljava/io/ObjectOutputStream;
    :catch_5
    move-exception v0

    move-object v3, v4

    .end local v4           #oos:Ljava/io/ObjectOutputStream;
    .restart local v3       #oos:Ljava/io/ObjectOutputStream;
    move-object v1, v2

    .end local v2           #fos:Ljava/io/FileOutputStream;
    .restart local v1       #fos:Ljava/io/FileOutputStream;
    goto :goto_1
.end method
