.class public Lcom/samsung/dmc/classifier/document/engine/DocumentClassifierEngine;
.super Ljava/lang/Object;
.source "DocumentClassifierEngine.java"


# instance fields
.field mContext:Landroid/content/Context;

.field private mDocumentClassifierJniLib:Lcom/samsung/dmc/classifier/document/engine/DocumentClassifierJniLib;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public closeDocumentClassifierEngine()Z
    .locals 2

    .prologue
    .line 57
    iget-object v1, p0, Lcom/samsung/dmc/classifier/document/engine/DocumentClassifierEngine;->mDocumentClassifierJniLib:Lcom/samsung/dmc/classifier/document/engine/DocumentClassifierJniLib;

    if-nez v1, :cond_0

    .line 58
    const/4 v0, 0x0

    .line 63
    :goto_0
    return v0

    .line 61
    :cond_0
    iget-object v1, p0, Lcom/samsung/dmc/classifier/document/engine/DocumentClassifierEngine;->mDocumentClassifierJniLib:Lcom/samsung/dmc/classifier/document/engine/DocumentClassifierJniLib;

    invoke-virtual {v1}, Lcom/samsung/dmc/classifier/document/engine/DocumentClassifierJniLib;->closeDocumentClassifierEngine()Z

    move-result v0

    .line 63
    .local v0, Result:Z
    goto :goto_0
.end method

.method public imageProcessUri(Landroid/net/Uri;)I
    .locals 21
    .parameter "inputUri"

    .prologue
    .line 81
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/dmc/classifier/document/engine/DocumentClassifierEngine;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v3, p1

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v14

    .line 82
    .local v14, cursor:Landroid/database/Cursor;
    if-nez v14, :cond_0

    .line 84
    const/4 v4, -0x1

    .line 223
    :goto_0
    return v4

    .line 86
    :cond_0
    invoke-interface {v14}, Landroid/database/Cursor;->moveToFirst()Z

    .line 87
    const-string v4, "_data"

    invoke-interface {v14, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v14, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    .line 88
    .local v15, dataPathFromUri:Ljava/lang/String;
    const-string v4, "."

    invoke-virtual {v15, v4}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v15, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v17

    .line 89
    .local v17, extention:Ljava/lang/String;
    const-string v4, "jpg"

    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    const-string v4, "bmp"

    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    const-string v4, "png"

    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    const-string v4, "gif"

    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 90
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    .line 92
    const/4 v4, -0x1

    goto :goto_0

    .line 95
    :cond_1
    const/4 v2, 0x0

    .line 98
    .local v2, selectedImage:Landroid/graphics/Bitmap;
    const/4 v13, 0x0

    .line 99
    .local v13, cr:Landroid/content/ContentResolver;
    const/16 v18, 0x0

    .line 100
    .local v18, in:Ljava/io/InputStream;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/dmc/classifier/document/engine/DocumentClassifierEngine;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v13

    .line 101
    if-nez v13, :cond_2

    .line 102
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    .line 104
    const/4 v4, -0x1

    goto :goto_0

    .line 108
    :cond_2
    :try_start_0
    move-object/from16 v0, p1

    invoke-virtual {v13, v0}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v18

    .line 115
    if-nez v18, :cond_3

    .line 116
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    .line 118
    const/4 v4, -0x1

    goto :goto_0

    .line 109
    :catch_0
    move-exception v16

    .line 110
    .local v16, e:Ljava/io/FileNotFoundException;
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    .line 111
    invoke-virtual/range {v16 .. v16}, Ljava/io/FileNotFoundException;->printStackTrace()V

    .line 112
    const/4 v4, -0x1

    goto :goto_0

    .line 121
    .end local v16           #e:Ljava/io/FileNotFoundException;
    :cond_3
    new-instance v19, Landroid/graphics/BitmapFactory$Options;

    invoke-direct/range {v19 .. v19}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 122
    .local v19, options:Landroid/graphics/BitmapFactory$Options;
    const/4 v4, 0x1

    move-object/from16 v0, v19

    iput-boolean v4, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 124
    const/4 v4, 0x0

    :try_start_1
    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-static {v0, v4, v1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_1

    .line 131
    move-object/from16 v0, v19

    iget v4, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    move-object/from16 v0, v19

    iget v5, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    if-le v4, v5, :cond_6

    .line 132
    move-object/from16 v0, v19

    iget v4, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    const/16 v5, 0xbb8

    if-le v4, v5, :cond_5

    .line 133
    const/4 v4, 0x3

    move-object/from16 v0, v19

    iput v4, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 145
    :cond_4
    :goto_1
    const/4 v4, 0x0

    move-object/from16 v0, v19

    iput-boolean v4, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 148
    :try_start_2
    move-object/from16 v0, p1

    invoke-virtual {v13, v0}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_2

    move-result-object v18

    .line 154
    if-nez v18, :cond_8

    .line 155
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    .line 157
    const/4 v4, -0x1

    goto/16 :goto_0

    .line 125
    :catch_1
    move-exception v16

    .line 126
    .local v16, e:Ljava/lang/OutOfMemoryError;
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    .line 127
    invoke-virtual/range {v16 .. v16}, Ljava/lang/OutOfMemoryError;->printStackTrace()V

    .line 128
    const/4 v4, -0x1

    goto/16 :goto_0

    .line 134
    .end local v16           #e:Ljava/lang/OutOfMemoryError;
    :cond_5
    move-object/from16 v0, v19

    iget v4, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    const/16 v5, 0x7d0

    if-le v4, v5, :cond_4

    .line 135
    const/4 v4, 0x2

    move-object/from16 v0, v19

    iput v4, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    goto :goto_1

    .line 138
    :cond_6
    move-object/from16 v0, v19

    iget v4, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    const/16 v5, 0xbb8

    if-le v4, v5, :cond_7

    .line 139
    const/4 v4, 0x3

    move-object/from16 v0, v19

    iput v4, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    goto :goto_1

    .line 140
    :cond_7
    move-object/from16 v0, v19

    iget v4, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    const/16 v5, 0x7d0

    if-le v4, v5, :cond_4

    .line 141
    const/4 v4, 0x2

    move-object/from16 v0, v19

    iput v4, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    goto :goto_1

    .line 149
    :catch_2
    move-exception v16

    .line 150
    .local v16, e:Ljava/io/FileNotFoundException;
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    .line 151
    invoke-virtual/range {v16 .. v16}, Ljava/io/FileNotFoundException;->printStackTrace()V

    .line 152
    const/4 v4, -0x1

    goto/16 :goto_0

    .line 161
    .end local v16           #e:Ljava/io/FileNotFoundException;
    :cond_8
    const/4 v4, 0x0

    :try_start_3
    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-static {v0, v4, v1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_3
    .catch Ljava/lang/OutOfMemoryError; {:try_start_3 .. :try_end_3} :catch_3

    move-result-object v2

    .line 167
    if-nez v2, :cond_9

    .line 168
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    .line 170
    const/4 v4, -0x1

    goto/16 :goto_0

    .line 162
    :catch_3
    move-exception v16

    .line 163
    .local v16, e:Ljava/lang/OutOfMemoryError;
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    .line 164
    invoke-virtual/range {v16 .. v16}, Ljava/lang/OutOfMemoryError;->printStackTrace()V

    .line 165
    const/4 v4, -0x1

    goto/16 :goto_0

    .line 175
    .end local v16           #e:Ljava/lang/OutOfMemoryError;
    :cond_9
    const/4 v11, 0x0

    .line 176
    .local v11, OutputWitdh:I
    const/4 v10, 0x0

    .line 177
    .local v10, OutputHeight:I
    const/16 v20, 0x0

    .line 179
    .local v20, rate:F
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    if-le v4, v5, :cond_b

    .line 180
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    const/16 v5, 0x280

    if-gt v4, v5, :cond_a

    .line 182
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v11

    .line 183
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v10

    .line 202
    :goto_2
    const/4 v4, 0x1

    invoke-static {v2, v11, v10, v4}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 203
    if-nez v2, :cond_d

    .line 204
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    .line 206
    const/4 v4, -0x1

    goto/16 :goto_0

    .line 185
    :cond_a
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    int-to-float v5, v5

    div-float v20, v4, v5

    .line 186
    const/16 v11, 0x280

    .line 187
    const/high16 v4, 0x4420

    mul-float v4, v4, v20

    float-to-int v10, v4

    goto :goto_2

    .line 190
    :cond_b
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    const/16 v5, 0x280

    if-gt v4, v5, :cond_c

    .line 192
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v11

    .line 193
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v10

    goto :goto_2

    .line 195
    :cond_c
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    int-to-float v5, v5

    div-float v20, v4, v5

    .line 196
    const/high16 v4, 0x4420

    mul-float v4, v4, v20

    float-to-int v11, v4

    .line 197
    const/16 v10, 0x280

    goto :goto_2

    .line 210
    :cond_d
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    mul-int/2addr v4, v5

    new-array v3, v4, [I

    .line 211
    .local v3, ARGBdata:[I
    const/4 v4, 0x0

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    invoke-virtual/range {v2 .. v9}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    .line 214
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/dmc/classifier/document/engine/DocumentClassifierEngine;->mDocumentClassifierJniLib:Lcom/samsung/dmc/classifier/document/engine/DocumentClassifierJniLib;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    invoke-virtual {v4, v3, v5, v6}, Lcom/samsung/dmc/classifier/document/engine/DocumentClassifierJniLib;->imageProcessARGB([III)Z

    move-result v12

    .line 216
    .local v12, Result:Z
    const/4 v2, 0x0

    .line 217
    const/4 v3, 0x0

    .line 218
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    .line 220
    const/4 v4, 0x1

    if-ne v12, v4, :cond_e

    .line 221
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 223
    :cond_e
    const/4 v4, 0x0

    goto/16 :goto_0
.end method

.method public openDocumentClassifierEngine(Landroid/content/Context;)Z
    .locals 2
    .parameter "context"

    .prologue
    .line 37
    iput-object p1, p0, Lcom/samsung/dmc/classifier/document/engine/DocumentClassifierEngine;->mContext:Landroid/content/Context;

    .line 40
    new-instance v1, Lcom/samsung/dmc/classifier/document/engine/DocumentClassifierJniLib;

    invoke-direct {v1}, Lcom/samsung/dmc/classifier/document/engine/DocumentClassifierJniLib;-><init>()V

    iput-object v1, p0, Lcom/samsung/dmc/classifier/document/engine/DocumentClassifierEngine;->mDocumentClassifierJniLib:Lcom/samsung/dmc/classifier/document/engine/DocumentClassifierJniLib;

    .line 41
    iget-object v1, p0, Lcom/samsung/dmc/classifier/document/engine/DocumentClassifierEngine;->mDocumentClassifierJniLib:Lcom/samsung/dmc/classifier/document/engine/DocumentClassifierJniLib;

    if-nez v1, :cond_0

    .line 42
    const/4 v0, 0x0

    .line 47
    :goto_0
    return v0

    .line 45
    :cond_0
    iget-object v1, p0, Lcom/samsung/dmc/classifier/document/engine/DocumentClassifierEngine;->mDocumentClassifierJniLib:Lcom/samsung/dmc/classifier/document/engine/DocumentClassifierJniLib;

    invoke-virtual {v1}, Lcom/samsung/dmc/classifier/document/engine/DocumentClassifierJniLib;->openDocumentClassifierEngine()Z

    move-result v0

    .line 47
    .local v0, Result:Z
    goto :goto_0
.end method
