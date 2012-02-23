.class public final Landroid/graphics/BitmapRegionDecoder;
.super Ljava/lang/Object;
.source "BitmapRegionDecoder.java"


# instance fields
.field private mNativeBitmapRegionDecoder:I

.field private mRecycled:Z


# direct methods
.method private constructor <init>(I)V
    .locals 1
    .parameter "decoder"

    .prologue
    .line 352
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 353
    iput p1, p0, Landroid/graphics/BitmapRegionDecoder;->mNativeBitmapRegionDecoder:I

    .line 354
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/graphics/BitmapRegionDecoder;->mRecycled:Z

    .line 355
    return-void
.end method

.method private checkRecycled(Ljava/lang/String;)V
    .locals 1
    .parameter "errorMessage"

    .prologue
    .line 419
    iget-boolean v0, p0, Landroid/graphics/BitmapRegionDecoder;->mRecycled:Z

    if-eqz v0, :cond_0

    .line 420
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 422
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
    .line 92
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

    .line 117
    invoke-virtual {p0}, Ljava/io/InputStream;->markSupported()Z

    move-result v2

    if-nez v2, :cond_0

    .line 118
    new-instance v0, Ljava/io/BufferedInputStream;

    invoke-direct {v0, p0, v3}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    .end local p0
    .local v0, is:Ljava/io/InputStream;
    move-object p0, v0

    .line 121
    .end local v0           #is:Ljava/io/InputStream;
    .restart local p0
    :cond_0
    instance-of v2, p0, Landroid/content/res/AssetManager$AssetInputStream;

    if-eqz v2, :cond_1

    .line 122
    check-cast p0, Landroid/content/res/AssetManager$AssetInputStream;

    .end local p0
    invoke-virtual {p0}, Landroid/content/res/AssetManager$AssetInputStream;->getAssetInt()I

    move-result v2

    invoke-static {v2, p1}, Landroid/graphics/BitmapRegionDecoder;->nativeNewInstance(IZ)Landroid/graphics/BitmapRegionDecoder;

    move-result-object v2

    .line 130
    :goto_0
    return-object v2

    .line 129
    .restart local p0
    :cond_1
    new-array v1, v3, [B

    .line 130
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
    .line 152
    const-string v13, "BitmapRegionDecoder"

    const-string v14, "***********************newInstance  In"

    invoke-static {v13, v14}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    const/4 v1, 0x0

    .line 155
    .local v1, decoder:Landroid/graphics/BitmapRegionDecoder;
    const/4 v11, 0x0

    .line 156
    .local v11, stream:Ljava/io/InputStream;
    const/4 v6, 0x0

    .line 157
    .local v6, isdrm:Z
    const/4 v7, 0x0

    .line 159
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

    .line 160
    :cond_0
    const/4 v6, 0x1

    .line 162
    :cond_1
    if-eqz v6, :cond_5

    .line 164
    const-string v13, "BitmapRegionDecoder"

    const-string v14, "***********************newInstance  DRM File"

    invoke-static {v13, v14}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    const-string v7, "application/vnd.oma.drm.content"

    .line 167
    new-instance v3, Landroid/drm/DrmManagerClient;

    const/4 v13, 0x0

    invoke-direct {v3, v13}, Landroid/drm/DrmManagerClient;-><init>(Landroid/content/Context;)V

    .line 168
    .local v3, drmclient:Landroid/drm/DrmManagerClient;
    new-instance v13, Ljava/io/File;

    move-object/from16 v0, p0

    invoke-direct {v13, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13}, Ljava/io/File;->length()J

    move-result-wide v4

    .line 169
    .local v4, fileLength:J
    const/4 v13, 0x7

    move-object/from16 v0, p0

    invoke-virtual {v3, v0, v13}, Landroid/drm/DrmManagerClient;->checkRightsStatus(Ljava/lang/String;I)I

    move-result v9

    .line 170
    .local v9, rightStatus:I
    if-nez v9, :cond_4

    .line 172
    const-string v13, "BitmapRegionDecoder"

    const-string v14, "***********************newInstance  DRM File  Has valid Rights"

    invoke-static {v13, v14}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    new-instance v2, Landroid/drm/DrmInfoRequest;

    const/16 v13, 0xa

    invoke-direct {v2, v13, v7}, Landroid/drm/DrmInfoRequest;-><init>(ILjava/lang/String;)V

    .line 175
    .local v2, drmInfoRequest:Landroid/drm/DrmInfoRequest;
    const-string v13, "drm_path"

    move-object/from16 v0, p0

    invoke-virtual {v2, v13, v0}, Landroid/drm/DrmInfoRequest;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 176
    const-string v13, "LENGTH"

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v2, v13, v14}, Landroid/drm/DrmInfoRequest;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 179
    const-string/jumbo v13, "preview_option"

    const-string v14, "false"

    invoke-virtual {v2, v13, v14}, Landroid/drm/DrmInfoRequest;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 182
    invoke-virtual {v3, v2}, Landroid/drm/DrmManagerClient;->processDrmRequest(Landroid/drm/DrmInfoRequest;)Landroid/drm/DrmInfo;

    move-result-object v8

    .line 183
    .local v8, resultInfo:Landroid/drm/DrmInfo;
    const-string/jumbo v13, "status"

    invoke-virtual {v8, v13}, Landroid/drm/DrmInfo;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    .line 185
    .local v10, status_req1:Ljava/lang/String;
    const-string/jumbo v13, "success"

    invoke-virtual {v10, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_3

    .line 187
    const-string v13, "BitmapRegionDecoder"

    const-string v14, "***********************newInstance  DRM File  DEcoding is success"

    invoke-static {v13, v14}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    invoke-virtual {v8}, Landroid/drm/DrmInfo;->getData()[B

    move-result-object v13

    if-eqz v13, :cond_2

    .line 190
    new-instance v11, Ljava/io/ByteArrayInputStream;

    .end local v11           #stream:Ljava/io/InputStream;
    invoke-virtual {v8}, Landroid/drm/DrmInfo;->getData()[B

    move-result-object v13

    invoke-direct {v11, v13}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 191
    .restart local v11       #stream:Ljava/io/InputStream;
    move/from16 v0, p1

    invoke-static {v11, v0}, Landroid/graphics/BitmapRegionDecoder;->newInstance(Ljava/io/InputStream;Z)Landroid/graphics/BitmapRegionDecoder;

    move-result-object v1

    .line 192
    const-string v13, "BitmapRegionDecoder"

    const-string v14, "***********************newInstance  DRM File  DEcoding is success 1"

    invoke-static {v13, v14}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 229
    .end local v2           #drmInfoRequest:Landroid/drm/DrmInfoRequest;
    .end local v3           #drmclient:Landroid/drm/DrmManagerClient;
    .end local v4           #fileLength:J
    .end local v8           #resultInfo:Landroid/drm/DrmInfo;
    .end local v9           #rightStatus:I
    .end local v10           #status_req1:Ljava/lang/String;
    :goto_0
    const-string v13, "BitmapRegionDecoder"

    const-string v14, "***********************newInstance  DRM File  OUT"

    invoke-static {v13, v14}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 230
    return-object v1

    .line 196
    .restart local v2       #drmInfoRequest:Landroid/drm/DrmInfoRequest;
    .restart local v3       #drmclient:Landroid/drm/DrmManagerClient;
    .restart local v4       #fileLength:J
    .restart local v8       #resultInfo:Landroid/drm/DrmInfo;
    .restart local v9       #rightStatus:I
    .restart local v10       #status_req1:Ljava/lang/String;
    :cond_2
    sget-object v13, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v14, "BitmapRegionDecoder ::newInstance::custom api returned null"

    invoke-virtual {v13, v14}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 202
    :cond_3
    sget-object v13, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v14, "BitmapRegionDecoder ::newInstance::Plug-In Returned FAIL as STATUS "

    invoke-virtual {v13, v14}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 208
    .end local v2           #drmInfoRequest:Landroid/drm/DrmInfoRequest;
    .end local v8           #resultInfo:Landroid/drm/DrmInfo;
    .end local v10           #status_req1:Ljava/lang/String;
    :cond_4
    sget-object v13, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "BitmapRegionDecoder ::newInstance::Rights are not Present for the file "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 215
    .end local v3           #drmclient:Landroid/drm/DrmManagerClient;
    .end local v4           #fileLength:J
    .end local v9           #rightStatus:I
    :cond_5
    :try_start_0
    new-instance v12, Ljava/io/FileInputStream;

    move-object/from16 v0, p0

    invoke-direct {v12, v0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 216
    .end local v11           #stream:Ljava/io/InputStream;
    .local v12, stream:Ljava/io/InputStream;
    :try_start_1
    move/from16 v0, p1

    invoke-static {v12, v0}, Landroid/graphics/BitmapRegionDecoder;->newInstance(Ljava/io/InputStream;Z)Landroid/graphics/BitmapRegionDecoder;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v1

    .line 218
    if-eqz v12, :cond_7

    .line 221
    :try_start_2
    invoke-virtual {v12}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    move-object v11, v12

    .line 224
    .end local v12           #stream:Ljava/io/InputStream;
    .restart local v11       #stream:Ljava/io/InputStream;
    goto :goto_0

    .line 222
    .end local v11           #stream:Ljava/io/InputStream;
    .restart local v12       #stream:Ljava/io/InputStream;
    :catch_0
    move-exception v13

    move-object v11, v12

    .line 224
    .end local v12           #stream:Ljava/io/InputStream;
    .restart local v11       #stream:Ljava/io/InputStream;
    goto :goto_0

    .line 218
    :catchall_0
    move-exception v13

    :goto_1
    if-eqz v11, :cond_6

    .line 221
    :try_start_3
    invoke-virtual {v11}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    .line 224
    :cond_6
    :goto_2
    throw v13

    .line 222
    :catch_1
    move-exception v14

    goto :goto_2

    .line 218
    .end local v11           #stream:Ljava/io/InputStream;
    .restart local v12       #stream:Ljava/io/InputStream;
    :catchall_1
    move-exception v13

    move-object v11, v12

    .end local v12           #stream:Ljava/io/InputStream;
    .restart local v11       #stream:Ljava/io/InputStream;
    goto :goto_1

    .end local v11           #stream:Ljava/io/InputStream;
    .restart local v12       #stream:Ljava/io/InputStream;
    :cond_7
    move-object v11, v12

    .end local v12           #stream:Ljava/io/InputStream;
    .restart local v11       #stream:Ljava/io/InputStream;
    goto :goto_0
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
    .line 259
    const-string v13, "BitmapRegionDecoder"

    const-string v14, "***********************newInstance  In"

    invoke-static {v13, v14}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 261
    const/4 v1, 0x0

    .line 262
    .local v1, decoder:Landroid/graphics/BitmapRegionDecoder;
    const/4 v11, 0x0

    .line 263
    .local v11, stream:Ljava/io/InputStream;
    const/4 v6, 0x0

    .line 264
    .local v6, isdrm:Z
    const/4 v7, 0x0

    .line 266
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

    .line 267
    :cond_0
    const/4 v6, 0x1

    .line 269
    :cond_1
    if-eqz v6, :cond_7

    .line 271
    const-string v13, "BitmapRegionDecoder"

    const-string v14, "***********************newInstance  DRM File"

    invoke-static {v13, v14}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 273
    const-string v7, "application/vnd.oma.drm.content"

    .line 274
    new-instance v3, Landroid/drm/DrmManagerClient;

    const/4 v13, 0x0

    invoke-direct {v3, v13}, Landroid/drm/DrmManagerClient;-><init>(Landroid/content/Context;)V

    .line 275
    .local v3, drmclient:Landroid/drm/DrmManagerClient;
    new-instance v13, Ljava/io/File;

    move-object/from16 v0, p0

    invoke-direct {v13, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13}, Ljava/io/File;->length()J

    move-result-wide v4

    .line 276
    .local v4, fileLength:J
    const/4 v13, 0x7

    move-object/from16 v0, p0

    invoke-virtual {v3, v0, v13}, Landroid/drm/DrmManagerClient;->checkRightsStatus(Ljava/lang/String;I)I

    move-result v9

    .line 278
    .local v9, rightStatus:I
    if-nez v9, :cond_6

    .line 280
    const-string v13, "BitmapRegionDecoder"

    const-string v14, "***********************newInstance  DRM File  Has valid Rights"

    invoke-static {v13, v14}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 282
    new-instance v2, Landroid/drm/DrmInfoRequest;

    const/16 v13, 0xa

    invoke-direct {v2, v13, v7}, Landroid/drm/DrmInfoRequest;-><init>(ILjava/lang/String;)V

    .line 283
    .local v2, drmInfoRequest:Landroid/drm/DrmInfoRequest;
    const-string v13, "drm_path"

    move-object/from16 v0, p0

    invoke-virtual {v2, v13, v0}, Landroid/drm/DrmInfoRequest;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 284
    const-string v13, "LENGTH"

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v2, v13, v14}, Landroid/drm/DrmInfoRequest;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 287
    const-string/jumbo v14, "preview_option"

    if-eqz p2, :cond_3

    const-string/jumbo v13, "true"

    :goto_0
    invoke-virtual {v2, v14, v13}, Landroid/drm/DrmInfoRequest;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 290
    invoke-virtual {v3, v2}, Landroid/drm/DrmManagerClient;->processDrmRequest(Landroid/drm/DrmInfoRequest;)Landroid/drm/DrmInfo;

    move-result-object v8

    .line 291
    .local v8, resultInfo:Landroid/drm/DrmInfo;
    const-string/jumbo v13, "status"

    invoke-virtual {v8, v13}, Landroid/drm/DrmInfo;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    .line 292
    .local v10, status_req1:Ljava/lang/String;
    const-string/jumbo v13, "success"

    invoke-virtual {v10, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_5

    .line 294
    const-string v13, "BitmapRegionDecoder"

    const-string v14, "***********************newInstance  DRM File  DEcoding is success"

    invoke-static {v13, v14}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 295
    invoke-virtual {v8}, Landroid/drm/DrmInfo;->getData()[B

    move-result-object v13

    if-eqz v13, :cond_4

    .line 297
    new-instance v11, Ljava/io/ByteArrayInputStream;

    .end local v11           #stream:Ljava/io/InputStream;
    invoke-virtual {v8}, Landroid/drm/DrmInfo;->getData()[B

    move-result-object v13

    invoke-direct {v11, v13}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 298
    .restart local v11       #stream:Ljava/io/InputStream;
    move/from16 v0, p1

    invoke-static {v11, v0}, Landroid/graphics/BitmapRegionDecoder;->newInstance(Ljava/io/InputStream;Z)Landroid/graphics/BitmapRegionDecoder;

    move-result-object v1

    .line 299
    const-string v13, "BitmapRegionDecoder"

    const-string v14, "***********************newInstance  DRM File  DEcoding is success 1"

    invoke-static {v13, v14}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 318
    .end local v2           #drmInfoRequest:Landroid/drm/DrmInfoRequest;
    .end local v8           #resultInfo:Landroid/drm/DrmInfo;
    .end local v10           #status_req1:Ljava/lang/String;
    :goto_1
    if-eqz v3, :cond_2

    .line 320
    sget-object v13, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v14, "BitmapRegionDecoder::decodeFile ::  drmclient  deinitialised"

    invoke-virtual {v13, v14}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 321
    invoke-virtual {v3}, Landroid/drm/DrmManagerClient;->deInitialize()V

    .line 343
    .end local v3           #drmclient:Landroid/drm/DrmManagerClient;
    .end local v4           #fileLength:J
    .end local v9           #rightStatus:I
    :cond_2
    :goto_2
    const-string v13, "BitmapRegionDecoder"

    const-string v14, "***********************newInstance  DRM File  OUT"

    invoke-static {v13, v14}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 344
    return-object v1

    .line 287
    .restart local v2       #drmInfoRequest:Landroid/drm/DrmInfoRequest;
    .restart local v3       #drmclient:Landroid/drm/DrmManagerClient;
    .restart local v4       #fileLength:J
    .restart local v9       #rightStatus:I
    :cond_3
    const-string v13, "false"

    goto :goto_0

    .line 303
    .restart local v8       #resultInfo:Landroid/drm/DrmInfo;
    .restart local v10       #status_req1:Ljava/lang/String;
    :cond_4
    sget-object v13, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v14, "BitmapRegionDecoder ::newInstance::custom api returned null"

    invoke-virtual {v13, v14}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_1

    .line 309
    :cond_5
    sget-object v13, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v14, "BitmapRegionDecoder ::newInstance::Plug-In Returned FAIL as STATUS "

    invoke-virtual {v13, v14}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_1

    .line 315
    .end local v2           #drmInfoRequest:Landroid/drm/DrmInfoRequest;
    .end local v8           #resultInfo:Landroid/drm/DrmInfo;
    .end local v10           #status_req1:Ljava/lang/String;
    :cond_6
    sget-object v13, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "BitmapRegionDecoder ::newInstance::Rights are not Present for the file "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_1

    .line 329
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

    .line 330
    .end local v11           #stream:Ljava/io/InputStream;
    .local v12, stream:Ljava/io/InputStream;
    :try_start_1
    move/from16 v0, p1

    invoke-static {v12, v0}, Landroid/graphics/BitmapRegionDecoder;->newInstance(Ljava/io/InputStream;Z)Landroid/graphics/BitmapRegionDecoder;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v1

    .line 332
    if-eqz v12, :cond_9

    .line 335
    :try_start_2
    invoke-virtual {v12}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    move-object v11, v12

    .line 338
    .end local v12           #stream:Ljava/io/InputStream;
    .restart local v11       #stream:Ljava/io/InputStream;
    goto :goto_2

    .line 336
    .end local v11           #stream:Ljava/io/InputStream;
    .restart local v12       #stream:Ljava/io/InputStream;
    :catch_0
    move-exception v13

    move-object v11, v12

    .line 338
    .end local v12           #stream:Ljava/io/InputStream;
    .restart local v11       #stream:Ljava/io/InputStream;
    goto :goto_2

    .line 332
    :catchall_0
    move-exception v13

    :goto_3
    if-eqz v11, :cond_8

    .line 335
    :try_start_3
    invoke-virtual {v11}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    .line 338
    :cond_8
    :goto_4
    throw v13

    .line 336
    :catch_1
    move-exception v14

    goto :goto_4

    .line 332
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
    .line 67
    or-int v0, p1, p2

    if-ltz v0, :cond_0

    array-length v0, p0

    add-int v1, p1, p2

    if-ge v0, v1, :cond_1

    .line 68
    :cond_0
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v0

    .line 70
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
    .line 367
    const-string v0, "decodeRegion called on recycled region decoder"

    invoke-direct {p0, v0}, Landroid/graphics/BitmapRegionDecoder;->checkRecycled(Ljava/lang/String;)V

    .line 368
    iget v0, p1, Landroid/graphics/Rect;->left:I

    if-ltz v0, :cond_0

    iget v0, p1, Landroid/graphics/Rect;->top:I

    if-ltz v0, :cond_0

    iget v0, p1, Landroid/graphics/Rect;->right:I

    invoke-virtual {p0}, Landroid/graphics/BitmapRegionDecoder;->getWidth()I

    move-result v1

    if-gt v0, v1, :cond_0

    iget v0, p1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p0}, Landroid/graphics/BitmapRegionDecoder;->getHeight()I

    move-result v1

    if-le v0, v1, :cond_1

    .line 370
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "rectangle is not inside the image"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 371
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
    .line 427
    :try_start_0
    invoke-virtual {p0}, Landroid/graphics/BitmapRegionDecoder;->recycle()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 429
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 431
    return-void

    .line 429
    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method

.method public getHeight()I
    .locals 1

    .prologue
    .line 383
    const-string v0, "getHeight called on recycled region decoder"

    invoke-direct {p0, v0}, Landroid/graphics/BitmapRegionDecoder;->checkRecycled(Ljava/lang/String;)V

    .line 384
    iget v0, p0, Landroid/graphics/BitmapRegionDecoder;->mNativeBitmapRegionDecoder:I

    invoke-static {v0}, Landroid/graphics/BitmapRegionDecoder;->nativeGetHeight(I)I

    move-result v0

    return v0
.end method

.method public getWidth()I
    .locals 1

    .prologue
    .line 377
    const-string v0, "getWidth called on recycled region decoder"

    invoke-direct {p0, v0}, Landroid/graphics/BitmapRegionDecoder;->checkRecycled(Ljava/lang/String;)V

    .line 378
    iget v0, p0, Landroid/graphics/BitmapRegionDecoder;->mNativeBitmapRegionDecoder:I

    invoke-static {v0}, Landroid/graphics/BitmapRegionDecoder;->nativeGetWidth(I)I

    move-result v0

    return v0
.end method

.method public final isRecycled()Z
    .locals 1

    .prologue
    .line 411
    iget-boolean v0, p0, Landroid/graphics/BitmapRegionDecoder;->mRecycled:Z

    return v0
.end method

.method public recycle()V
    .locals 1

    .prologue
    .line 398
    iget-boolean v0, p0, Landroid/graphics/BitmapRegionDecoder;->mRecycled:Z

    if-nez v0, :cond_0

    .line 399
    iget v0, p0, Landroid/graphics/BitmapRegionDecoder;->mNativeBitmapRegionDecoder:I

    invoke-static {v0}, Landroid/graphics/BitmapRegionDecoder;->nativeClean(I)V

    .line 400
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/graphics/BitmapRegionDecoder;->mRecycled:Z

    .line 402
    :cond_0
    return-void
.end method
