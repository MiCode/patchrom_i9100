.class public final Landroid/graphics/BitmapRegionDecoder;
.super Ljava/lang/Object;
.source "BitmapRegionDecoder.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "BitmapRegionDecoder"


# instance fields
.field private mNativeBitmapRegionDecoder:I

.field private mRecycled:Z


# direct methods
.method private constructor <init>(I)V
    .locals 1
    .parameter "decoder"

    .prologue
    .line 383
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 384
    iput p1, p0, Landroid/graphics/BitmapRegionDecoder;->mNativeBitmapRegionDecoder:I

    .line 385
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/graphics/BitmapRegionDecoder;->mRecycled:Z

    .line 386
    return-void
.end method

.method private checkRecycled(Ljava/lang/String;)V
    .locals 1
    .parameter "errorMessage"

    .prologue
    .line 450
    iget-boolean v0, p0, Landroid/graphics/BitmapRegionDecoder;->mRecycled:Z

    if-eqz v0, :cond_0

    .line 451
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 453
    :cond_0
    return-void
.end method

.method private static native nativeClean(I)V
.end method

.method private static native nativeDecodeRegion(IIIIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
.end method

.method private static native nativeGetHeight(I)I
.end method

.method private static native nativeGetWidth(I)I
.end method

.method private static native nativeNewInstance(IZ)Landroid/graphics/BitmapRegionDecoder;
.end method

.method private static native nativeNewInstance(Ljava/io/FileDescriptor;Z)Landroid/graphics/BitmapRegionDecoder;
.end method

.method private static native nativeNewInstance(Ljava/io/InputStream;[BZ)Landroid/graphics/BitmapRegionDecoder;
.end method

.method private static native nativeNewInstance([BIIZ)Landroid/graphics/BitmapRegionDecoder;
.end method

.method public static newInstance(Ljava/io/FileDescriptor;Z)Landroid/graphics/BitmapRegionDecoder;
    .locals 1
    .parameter "fd"
    .parameter "isShareable"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 95
    invoke-static {p0, p1}, Landroid/graphics/BitmapRegionDecoder;->nativeNewInstance(Ljava/io/FileDescriptor;Z)Landroid/graphics/BitmapRegionDecoder;

    move-result-object v0

    return-object v0
.end method

.method public static newInstance(Ljava/io/InputStream;Z)Landroid/graphics/BitmapRegionDecoder;
    .locals 4
    .parameter "is"
    .parameter "isShareable"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v3, 0x4000

    .line 120
    invoke-virtual {p0}, Ljava/io/InputStream;->markSupported()Z

    move-result v2

    if-nez v2, :cond_0

    .line 121
    new-instance v0, Ljava/io/BufferedInputStream;

    invoke-direct {v0, p0, v3}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    .end local p0
    .local v0, is:Ljava/io/InputStream;
    move-object p0, v0

    .line 124
    .end local v0           #is:Ljava/io/InputStream;
    .restart local p0
    :cond_0
    instance-of v2, p0, Landroid/content/res/AssetManager$AssetInputStream;

    if-eqz v2, :cond_1

    .line 125
    check-cast p0, Landroid/content/res/AssetManager$AssetInputStream;

    .end local p0
    invoke-virtual {p0}, Landroid/content/res/AssetManager$AssetInputStream;->getAssetInt()I

    move-result v2

    invoke-static {v2, p1}, Landroid/graphics/BitmapRegionDecoder;->nativeNewInstance(IZ)Landroid/graphics/BitmapRegionDecoder;

    move-result-object v2

    .line 133
    :goto_0
    return-object v2

    .line 132
    .restart local p0
    :cond_1
    new-array v1, v3, [B

    .line 133
    .local v1, tempStorage:[B
    invoke-static {p0, v1, p1}, Landroid/graphics/BitmapRegionDecoder;->nativeNewInstance(Ljava/io/InputStream;[BZ)Landroid/graphics/BitmapRegionDecoder;

    move-result-object v2

    goto :goto_0
.end method

.method public static newInstance(Ljava/lang/String;Z)Landroid/graphics/BitmapRegionDecoder;
    .locals 16
    .parameter "pathName"
    .parameter "isShareable"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 159
    const/4 v1, 0x0

    .line 160
    .local v1, decoder:Landroid/graphics/BitmapRegionDecoder;
    const/4 v11, 0x0

    .line 161
    .local v11, stream:Ljava/io/InputStream;
    const/4 v6, 0x0

    .line 162
    .local v6, isdrm:Z
    const/4 v7, 0x0

    .line 164
    .local v7, mime:Ljava/lang/String;
    const-string v13, ".dcf"

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v13

    if-nez v13, :cond_0

    const-string v13, ".odf"

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_1

    .line 165
    :cond_0
    const/4 v6, 0x1

    .line 167
    :cond_1
    if-eqz v6, :cond_6

    .line 171
    const-string v7, "application/vnd.oma.drm.content"

    .line 172
    new-instance v3, Landroid/drm/DrmManagerClient;

    const/4 v13, 0x0

    invoke-direct {v3, v13}, Landroid/drm/DrmManagerClient;-><init>(Landroid/content/Context;)V

    .line 173
    .local v3, drmclient:Landroid/drm/DrmManagerClient;
    new-instance v13, Ljava/io/File;

    move-object/from16 v0, p0

    invoke-direct {v13, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13}, Ljava/io/File;->length()J

    move-result-wide v4

    .line 174
    .local v4, fileLength:J
    const/4 v13, 0x7

    move-object/from16 v0, p0

    invoke-virtual {v3, v0, v13}, Landroid/drm/DrmManagerClient;->checkRightsStatus(Ljava/lang/String;I)I

    move-result v9

    .line 175
    .local v9, rightStatus:I
    if-nez v9, :cond_5

    .line 179
    new-instance v2, Landroid/drm/DrmInfoRequest;

    const/16 v13, 0xa

    invoke-direct {v2, v13, v7}, Landroid/drm/DrmInfoRequest;-><init>(ILjava/lang/String;)V

    .line 180
    .local v2, drmInfoRequest:Landroid/drm/DrmInfoRequest;
    const-string v13, "drm_path"

    move-object/from16 v0, p0

    invoke-virtual {v2, v13, v0}, Landroid/drm/DrmInfoRequest;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 181
    const-string v13, "LENGTH"

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v2, v13, v14}, Landroid/drm/DrmInfoRequest;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 184
    const-string/jumbo v13, "preview_option"

    const-string v14, "false"

    invoke-virtual {v2, v13, v14}, Landroid/drm/DrmInfoRequest;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 187
    invoke-virtual {v3, v2}, Landroid/drm/DrmManagerClient;->acquireDrmInfo(Landroid/drm/DrmInfoRequest;)Landroid/drm/DrmInfo;

    move-result-object v8

    .line 188
    .local v8, resultInfo:Landroid/drm/DrmInfo;
    const-string/jumbo v13, "status"

    invoke-virtual {v8, v13}, Landroid/drm/DrmInfo;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    .line 190
    .local v10, status_req1:Ljava/lang/String;
    const-string/jumbo v13, "success"

    invoke-virtual {v10, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_4

    .line 193
    invoke-virtual {v8}, Landroid/drm/DrmInfo;->getData()[B

    move-result-object v13

    if-eqz v13, :cond_3

    .line 195
    new-instance v11, Ljava/io/ByteArrayInputStream;

    .end local v11           #stream:Ljava/io/InputStream;
    invoke-virtual {v8}, Landroid/drm/DrmInfo;->getData()[B

    move-result-object v13

    invoke-direct {v11, v13}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 196
    .restart local v11       #stream:Ljava/io/InputStream;
    move/from16 v0, p1

    invoke-static {v11, v0}, Landroid/graphics/BitmapRegionDecoder;->newInstance(Ljava/io/InputStream;Z)Landroid/graphics/BitmapRegionDecoder;

    move-result-object v1

    .line 216
    .end local v2           #drmInfoRequest:Landroid/drm/DrmInfoRequest;
    .end local v8           #resultInfo:Landroid/drm/DrmInfo;
    .end local v10           #status_req1:Ljava/lang/String;
    :goto_0
    if-eqz v3, :cond_2

    .line 219
    invoke-virtual {v3}, Landroid/drm/DrmManagerClient;->release()V

    .line 242
    .end local v3           #drmclient:Landroid/drm/DrmManagerClient;
    .end local v4           #fileLength:J
    .end local v9           #rightStatus:I
    :cond_2
    :goto_1
    return-object v1

    .line 201
    .restart local v2       #drmInfoRequest:Landroid/drm/DrmInfoRequest;
    .restart local v3       #drmclient:Landroid/drm/DrmManagerClient;
    .restart local v4       #fileLength:J
    .restart local v8       #resultInfo:Landroid/drm/DrmInfo;
    .restart local v9       #rightStatus:I
    .restart local v10       #status_req1:Ljava/lang/String;
    :cond_3
    const-string v13, "BitmapRegionDecoder"

    const-string/jumbo v14, "newInstance :: custom api returned null"

    invoke-static {v13, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 207
    :cond_4
    const-string v13, "BitmapRegionDecoder"

    const-string/jumbo v14, "newInstance :: Plug-In Returned FAIL as STATUS "

    invoke-static {v13, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 213
    .end local v2           #drmInfoRequest:Landroid/drm/DrmInfoRequest;
    .end local v8           #resultInfo:Landroid/drm/DrmInfo;
    .end local v10           #status_req1:Ljava/lang/String;
    :cond_5
    const-string v13, "BitmapRegionDecoder"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "newInstance :: Rights are not Present for the file "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 227
    .end local v3           #drmclient:Landroid/drm/DrmManagerClient;
    .end local v4           #fileLength:J
    .end local v9           #rightStatus:I
    :cond_6
    :try_start_0
    new-instance v12, Ljava/io/FileInputStream;

    move-object/from16 v0, p0

    invoke-direct {v12, v0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 228
    .end local v11           #stream:Ljava/io/InputStream;
    .local v12, stream:Ljava/io/InputStream;
    :try_start_1
    move/from16 v0, p1

    invoke-static {v12, v0}, Landroid/graphics/BitmapRegionDecoder;->newInstance(Ljava/io/InputStream;Z)Landroid/graphics/BitmapRegionDecoder;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v1

    .line 230
    if-eqz v12, :cond_8

    .line 233
    :try_start_2
    invoke-virtual {v12}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    move-object v11, v12

    .line 236
    .end local v12           #stream:Ljava/io/InputStream;
    .restart local v11       #stream:Ljava/io/InputStream;
    goto :goto_1

    .line 234
    .end local v11           #stream:Ljava/io/InputStream;
    .restart local v12       #stream:Ljava/io/InputStream;
    :catch_0
    move-exception v13

    move-object v11, v12

    .line 236
    .end local v12           #stream:Ljava/io/InputStream;
    .restart local v11       #stream:Ljava/io/InputStream;
    goto :goto_1

    .line 230
    :catchall_0
    move-exception v13

    :goto_2
    if-eqz v11, :cond_7

    .line 233
    :try_start_3
    invoke-virtual {v11}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    .line 236
    :cond_7
    :goto_3
    throw v13

    .line 234
    :catch_1
    move-exception v14

    goto :goto_3

    .line 230
    .end local v11           #stream:Ljava/io/InputStream;
    .restart local v12       #stream:Ljava/io/InputStream;
    :catchall_1
    move-exception v13

    move-object v11, v12

    .end local v12           #stream:Ljava/io/InputStream;
    .restart local v11       #stream:Ljava/io/InputStream;
    goto :goto_2

    .end local v11           #stream:Ljava/io/InputStream;
    .restart local v12       #stream:Ljava/io/InputStream;
    :cond_8
    move-object v11, v12

    .end local v12           #stream:Ljava/io/InputStream;
    .restart local v11       #stream:Ljava/io/InputStream;
    goto :goto_1
.end method

.method public static newInstance(Ljava/lang/String;ZZ)Landroid/graphics/BitmapRegionDecoder;
    .locals 16
    .parameter "pathName"
    .parameter "isShareable"
    .parameter "isPreview"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 291
    const/4 v1, 0x0

    .line 292
    .local v1, decoder:Landroid/graphics/BitmapRegionDecoder;
    const/4 v11, 0x0

    .line 293
    .local v11, stream:Ljava/io/InputStream;
    const/4 v6, 0x0

    .line 294
    .local v6, isdrm:Z
    const/4 v7, 0x0

    .line 296
    .local v7, mime:Ljava/lang/String;
    const-string v13, ".dcf"

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v13

    if-nez v13, :cond_0

    const-string v13, ".odf"

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_1

    .line 297
    :cond_0
    const/4 v6, 0x1

    .line 299
    :cond_1
    if-eqz v6, :cond_7

    .line 303
    const-string v7, "application/vnd.oma.drm.content"

    .line 304
    new-instance v3, Landroid/drm/DrmManagerClient;

    const/4 v13, 0x0

    invoke-direct {v3, v13}, Landroid/drm/DrmManagerClient;-><init>(Landroid/content/Context;)V

    .line 305
    .local v3, drmclient:Landroid/drm/DrmManagerClient;
    new-instance v13, Ljava/io/File;

    move-object/from16 v0, p0

    invoke-direct {v13, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13}, Ljava/io/File;->length()J

    move-result-wide v4

    .line 306
    .local v4, fileLength:J
    const/4 v13, 0x7

    move-object/from16 v0, p0

    invoke-virtual {v3, v0, v13}, Landroid/drm/DrmManagerClient;->checkRightsStatus(Ljava/lang/String;I)I

    move-result v9

    .line 308
    .local v9, rightStatus:I
    if-nez v9, :cond_6

    .line 312
    new-instance v2, Landroid/drm/DrmInfoRequest;

    const/16 v13, 0xa

    invoke-direct {v2, v13, v7}, Landroid/drm/DrmInfoRequest;-><init>(ILjava/lang/String;)V

    .line 313
    .local v2, drmInfoRequest:Landroid/drm/DrmInfoRequest;
    const-string v13, "drm_path"

    move-object/from16 v0, p0

    invoke-virtual {v2, v13, v0}, Landroid/drm/DrmInfoRequest;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 314
    const-string v13, "LENGTH"

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v2, v13, v14}, Landroid/drm/DrmInfoRequest;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 317
    const-string/jumbo v14, "preview_option"

    if-eqz p2, :cond_3

    const-string/jumbo v13, "true"

    :goto_0
    invoke-virtual {v2, v14, v13}, Landroid/drm/DrmInfoRequest;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 320
    invoke-virtual {v3, v2}, Landroid/drm/DrmManagerClient;->acquireDrmInfo(Landroid/drm/DrmInfoRequest;)Landroid/drm/DrmInfo;

    move-result-object v8

    .line 321
    .local v8, resultInfo:Landroid/drm/DrmInfo;
    const-string/jumbo v13, "status"

    invoke-virtual {v8, v13}, Landroid/drm/DrmInfo;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    .line 322
    .local v10, status_req1:Ljava/lang/String;
    const-string/jumbo v13, "success"

    invoke-virtual {v10, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_5

    .line 325
    invoke-virtual {v8}, Landroid/drm/DrmInfo;->getData()[B

    move-result-object v13

    if-eqz v13, :cond_4

    .line 327
    new-instance v11, Ljava/io/ByteArrayInputStream;

    .end local v11           #stream:Ljava/io/InputStream;
    invoke-virtual {v8}, Landroid/drm/DrmInfo;->getData()[B

    move-result-object v13

    invoke-direct {v11, v13}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 328
    .restart local v11       #stream:Ljava/io/InputStream;
    move/from16 v0, p1

    invoke-static {v11, v0}, Landroid/graphics/BitmapRegionDecoder;->newInstance(Ljava/io/InputStream;Z)Landroid/graphics/BitmapRegionDecoder;

    move-result-object v1

    .line 348
    .end local v2           #drmInfoRequest:Landroid/drm/DrmInfoRequest;
    .end local v8           #resultInfo:Landroid/drm/DrmInfo;
    .end local v10           #status_req1:Ljava/lang/String;
    :goto_1
    if-eqz v3, :cond_2

    .line 351
    invoke-virtual {v3}, Landroid/drm/DrmManagerClient;->release()V

    .line 374
    .end local v3           #drmclient:Landroid/drm/DrmManagerClient;
    .end local v4           #fileLength:J
    .end local v9           #rightStatus:I
    :cond_2
    :goto_2
    return-object v1

    .line 317
    .restart local v2       #drmInfoRequest:Landroid/drm/DrmInfoRequest;
    .restart local v3       #drmclient:Landroid/drm/DrmManagerClient;
    .restart local v4       #fileLength:J
    .restart local v9       #rightStatus:I
    :cond_3
    const-string v13, "false"

    goto :goto_0

    .line 333
    .restart local v8       #resultInfo:Landroid/drm/DrmInfo;
    .restart local v10       #status_req1:Ljava/lang/String;
    :cond_4
    const-string v13, "BitmapRegionDecoder"

    const-string/jumbo v14, "newInstance + isPreview :: custom api returned null"

    invoke-static {v13, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 339
    :cond_5
    const-string v13, "BitmapRegionDecoder"

    const-string/jumbo v14, "newInstance + isPreview :: Plug-In Returned FAIL as STATUS "

    invoke-static {v13, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 345
    .end local v2           #drmInfoRequest:Landroid/drm/DrmInfoRequest;
    .end local v8           #resultInfo:Landroid/drm/DrmInfo;
    .end local v10           #status_req1:Ljava/lang/String;
    :cond_6
    const-string v13, "BitmapRegionDecoder"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "newInstance + isPreview :: Rights are not Present for the file "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 359
    .end local v3           #drmclient:Landroid/drm/DrmManagerClient;
    .end local v4           #fileLength:J
    .end local v9           #rightStatus:I
    :cond_7
    :try_start_0
    new-instance v12, Ljava/io/FileInputStream;

    move-object/from16 v0, p0

    invoke-direct {v12, v0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 360
    .end local v11           #stream:Ljava/io/InputStream;
    .local v12, stream:Ljava/io/InputStream;
    :try_start_1
    move/from16 v0, p1

    invoke-static {v12, v0}, Landroid/graphics/BitmapRegionDecoder;->newInstance(Ljava/io/InputStream;Z)Landroid/graphics/BitmapRegionDecoder;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v1

    .line 362
    if-eqz v12, :cond_9

    .line 365
    :try_start_2
    invoke-virtual {v12}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    move-object v11, v12

    .line 368
    .end local v12           #stream:Ljava/io/InputStream;
    .restart local v11       #stream:Ljava/io/InputStream;
    goto :goto_2

    .line 366
    .end local v11           #stream:Ljava/io/InputStream;
    .restart local v12       #stream:Ljava/io/InputStream;
    :catch_0
    move-exception v13

    move-object v11, v12

    .line 368
    .end local v12           #stream:Ljava/io/InputStream;
    .restart local v11       #stream:Ljava/io/InputStream;
    goto :goto_2

    .line 362
    :catchall_0
    move-exception v13

    :goto_3
    if-eqz v11, :cond_8

    .line 365
    :try_start_3
    invoke-virtual {v11}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    .line 368
    :cond_8
    :goto_4
    throw v13

    .line 366
    :catch_1
    move-exception v14

    goto :goto_4

    .line 362
    .end local v11           #stream:Ljava/io/InputStream;
    .restart local v12       #stream:Ljava/io/InputStream;
    :catchall_1
    move-exception v13

    move-object v11, v12

    .end local v12           #stream:Ljava/io/InputStream;
    .restart local v11       #stream:Ljava/io/InputStream;
    goto :goto_3

    .end local v11           #stream:Ljava/io/InputStream;
    .restart local v12       #stream:Ljava/io/InputStream;
    :cond_9
    move-object v11, v12

    .end local v12           #stream:Ljava/io/InputStream;
    .restart local v11       #stream:Ljava/io/InputStream;
    goto :goto_2
.end method

.method public static newInstance([BIIZ)Landroid/graphics/BitmapRegionDecoder;
    .locals 2
    .parameter "data"
    .parameter "offset"
    .parameter "length"
    .parameter "isShareable"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 70
    or-int v0, p1, p2

    if-ltz v0, :cond_0

    array-length v0, p0

    add-int v1, p1, p2

    if-ge v0, v1, :cond_1

    .line 71
    :cond_0
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v0

    .line 73
    :cond_1
    invoke-static {p0, p1, p2, p3}, Landroid/graphics/BitmapRegionDecoder;->nativeNewInstance([BIIZ)Landroid/graphics/BitmapRegionDecoder;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public decodeRegion(Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .locals 6
    .parameter "rect"
    .parameter "options"

    .prologue
    .line 398
    const-string v0, "decodeRegion called on recycled region decoder"

    invoke-direct {p0, v0}, Landroid/graphics/BitmapRegionDecoder;->checkRecycled(Ljava/lang/String;)V

    .line 399
    iget v0, p1, Landroid/graphics/Rect;->right:I

    if-lez v0, :cond_0

    iget v0, p1, Landroid/graphics/Rect;->bottom:I

    if-lez v0, :cond_0

    iget v0, p1, Landroid/graphics/Rect;->left:I

    invoke-virtual {p0}, Landroid/graphics/BitmapRegionDecoder;->getWidth()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget v0, p1, Landroid/graphics/Rect;->top:I

    invoke-virtual {p0}, Landroid/graphics/BitmapRegionDecoder;->getHeight()I

    move-result v1

    if-lt v0, v1, :cond_1

    .line 401
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "rectangle is outside the image"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 402
    :cond_1
    iget v0, p0, Landroid/graphics/BitmapRegionDecoder;->mNativeBitmapRegionDecoder:I

    iget v1, p1, Landroid/graphics/Rect;->left:I

    iget v2, p1, Landroid/graphics/Rect;->top:I

    iget v3, p1, Landroid/graphics/Rect;->right:I

    iget v4, p1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v3, v4

    iget v4, p1, Landroid/graphics/Rect;->bottom:I

    iget v5, p1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v4, v5

    move-object v5, p2

    invoke-static/range {v0 .. v5}, Landroid/graphics/BitmapRegionDecoder;->nativeDecodeRegion(IIIIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method protected finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 458
    :try_start_0
    invoke-virtual {p0}, Landroid/graphics/BitmapRegionDecoder;->recycle()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 460
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 462
    return-void

    .line 460
    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method

.method public getHeight()I
    .locals 1

    .prologue
    .line 414
    const-string v0, "getHeight called on recycled region decoder"

    invoke-direct {p0, v0}, Landroid/graphics/BitmapRegionDecoder;->checkRecycled(Ljava/lang/String;)V

    .line 415
    iget v0, p0, Landroid/graphics/BitmapRegionDecoder;->mNativeBitmapRegionDecoder:I

    invoke-static {v0}, Landroid/graphics/BitmapRegionDecoder;->nativeGetHeight(I)I

    move-result v0

    return v0
.end method

.method public getWidth()I
    .locals 1

    .prologue
    .line 408
    const-string v0, "getWidth called on recycled region decoder"

    invoke-direct {p0, v0}, Landroid/graphics/BitmapRegionDecoder;->checkRecycled(Ljava/lang/String;)V

    .line 409
    iget v0, p0, Landroid/graphics/BitmapRegionDecoder;->mNativeBitmapRegionDecoder:I

    invoke-static {v0}, Landroid/graphics/BitmapRegionDecoder;->nativeGetWidth(I)I

    move-result v0

    return v0
.end method

.method public final isRecycled()Z
    .locals 1

    .prologue
    .line 442
    iget-boolean v0, p0, Landroid/graphics/BitmapRegionDecoder;->mRecycled:Z

    return v0
.end method

.method public recycle()V
    .locals 1

    .prologue
    .line 429
    iget-boolean v0, p0, Landroid/graphics/BitmapRegionDecoder;->mRecycled:Z

    if-nez v0, :cond_0

    .line 430
    iget v0, p0, Landroid/graphics/BitmapRegionDecoder;->mNativeBitmapRegionDecoder:I

    invoke-static {v0}, Landroid/graphics/BitmapRegionDecoder;->nativeClean(I)V

    .line 431
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/graphics/BitmapRegionDecoder;->mRecycled:Z

    .line 433
    :cond_0
    return-void
.end method
