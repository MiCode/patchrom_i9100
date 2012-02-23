.class public Landroid/sec/clipboard/util/ClipboardDataBitmapUrl;
.super Ljava/lang/Object;
.source "ClipboardDataBitmapUrl.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 52
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static downloadSimpleBitmap(Ljava/lang/String;II)Landroid/graphics/Bitmap;
    .locals 10
    .parameter "urlname"
    .parameter "reqWidth"
    .parameter "reqHeight"

    .prologue
    const/4 v7, 0x1

    .line 57
    const/4 v5, 0x0

    .line 58
    .local v5, url:Ljava/net/URL;
    const/4 v0, 0x0

    .line 59
    .local v0, Result:Landroid/graphics/Bitmap;
    const/4 v4, 0x2

    .line 61
    .local v4, sampleSize:I
    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 62
    .local v1, bitmapOption:Landroid/graphics/BitmapFactory$Options;
    iput-boolean v7, v1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 65
    iput-boolean v7, v1, Landroid/graphics/BitmapFactory$Options;->inPurgeable:Z

    .line 69
    :try_start_0
    new-instance v6, Ljava/net/URL;

    invoke-direct {v6, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_2

    .line 71
    .end local v5           #url:Ljava/net/URL;
    .local v6, url:Ljava/net/URL;
    :try_start_1
    invoke-virtual {v6}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v2

    .line 72
    .local v2, connection:Ljava/net/URLConnection;
    const/16 v7, 0xbb8

    invoke-virtual {v2, v7}, Ljava/net/URLConnection;->setConnectTimeout(I)V

    .line 73
    const/16 v7, 0xbb8

    invoke-virtual {v2, v7}, Ljava/net/URLConnection;->setReadTimeout(I)V

    .line 76
    invoke-virtual {v2}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v7

    const/4 v8, 0x0

    invoke-static {v7, v8, v1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_1
    .catch Ljava/net/MalformedURLException; {:try_start_1 .. :try_end_1} :catch_8
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_6

    move-result-object v0

    move-object v5, v6

    .line 90
    .end local v2           #connection:Ljava/net/URLConnection;
    .end local v6           #url:Ljava/net/URL;
    .restart local v5       #url:Ljava/net/URL;
    :goto_0
    iget v7, v1, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    div-int/2addr v7, v4

    if-lt v7, p1, :cond_3

    iget v7, v1, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    div-int/2addr v7, v4

    if-lt v7, p2, :cond_3

    .line 92
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 79
    :catch_0
    move-exception v3

    .line 80
    .local v3, e:Ljava/net/MalformedURLException;
    :goto_1
    sget-boolean v7, Landroid/sec/clipboard/data/ClipboardDefine;->INFO_DEBUG:Z

    if-eqz v7, :cond_0

    const-string v7, "ClipboardServiceEx"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "downloadSimpleBitmap1 Url-"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " /  Error : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v3}, Ljava/net/MalformedURLException;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    :cond_0
    const/4 v0, 0x0

    .line 88
    goto :goto_0

    .line 82
    .end local v3           #e:Ljava/net/MalformedURLException;
    :catch_1
    move-exception v3

    .line 83
    .local v3, e:Ljava/io/IOException;
    :goto_2
    sget-boolean v7, Landroid/sec/clipboard/data/ClipboardDefine;->INFO_DEBUG:Z

    if-eqz v7, :cond_1

    const-string v7, "ClipboardServiceEx"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "downloadSimpleBitmap2 Url-"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " / Error : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v3}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    :cond_1
    const/4 v0, 0x0

    .line 88
    goto :goto_0

    .line 85
    .end local v3           #e:Ljava/io/IOException;
    :catch_2
    move-exception v3

    .line 86
    .local v3, e:Ljava/lang/OutOfMemoryError;
    :goto_3
    sget-boolean v7, Landroid/sec/clipboard/data/ClipboardDefine;->INFO_DEBUG:Z

    if-eqz v7, :cond_2

    const-string v7, "ClipboardServiceEx"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "downloadSimpleBitmap2 Url-"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " / Error : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v3}, Ljava/lang/OutOfMemoryError;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    :cond_2
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 94
    .end local v3           #e:Ljava/lang/OutOfMemoryError;
    :cond_3
    add-int/lit8 v4, v4, -0x1

    .line 96
    iput v4, v1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 99
    const/4 v7, 0x0

    :try_start_2
    iput-boolean v7, v1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 102
    invoke-virtual {v5}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v2

    .line 103
    .restart local v2       #connection:Ljava/net/URLConnection;
    const/16 v7, 0xbb8

    invoke-virtual {v2, v7}, Ljava/net/URLConnection;->setConnectTimeout(I)V

    .line 104
    const/16 v7, 0xbb8

    invoke-virtual {v2, v7}, Ljava/net/URLConnection;->setReadTimeout(I)V

    .line 106
    invoke-virtual {v2}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v7

    const/4 v8, 0x0

    invoke-static {v7, v8, v1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_2
    .catch Ljava/net/MalformedURLException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/lang/OutOfMemoryError; {:try_start_2 .. :try_end_2} :catch_5

    move-result-object v0

    .line 118
    .end local v2           #connection:Ljava/net/URLConnection;
    :goto_4
    return-object v0

    .line 107
    :catch_3
    move-exception v3

    .line 108
    .local v3, e:Ljava/net/MalformedURLException;
    sget-boolean v7, Landroid/sec/clipboard/data/ClipboardDefine;->INFO_DEBUG:Z

    if-eqz v7, :cond_4

    const-string v7, "ClipboardServiceEx"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "downloadSimpleBitmap1 Url-"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " /  Error : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v3}, Ljava/net/MalformedURLException;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    :cond_4
    const/4 v0, 0x0

    .line 116
    goto :goto_4

    .line 110
    .end local v3           #e:Ljava/net/MalformedURLException;
    :catch_4
    move-exception v3

    .line 111
    .local v3, e:Ljava/io/IOException;
    sget-boolean v7, Landroid/sec/clipboard/data/ClipboardDefine;->INFO_DEBUG:Z

    if-eqz v7, :cond_5

    const-string v7, "ClipboardServiceEx"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "downloadSimpleBitmap2 Url-"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " / Error : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v3}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    :cond_5
    const/4 v0, 0x0

    .line 116
    goto :goto_4

    .line 113
    .end local v3           #e:Ljava/io/IOException;
    :catch_5
    move-exception v3

    .line 114
    .local v3, e:Ljava/lang/OutOfMemoryError;
    sget-boolean v7, Landroid/sec/clipboard/data/ClipboardDefine;->INFO_DEBUG:Z

    if-eqz v7, :cond_6

    const-string v7, "ClipboardServiceEx"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "downloadSimpleBitmap2 Url-"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " / Error : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v3}, Ljava/lang/OutOfMemoryError;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    :cond_6
    const/4 v0, 0x0

    goto/16 :goto_4

    .line 85
    .end local v3           #e:Ljava/lang/OutOfMemoryError;
    .end local v5           #url:Ljava/net/URL;
    .restart local v6       #url:Ljava/net/URL;
    :catch_6
    move-exception v3

    move-object v5, v6

    .end local v6           #url:Ljava/net/URL;
    .restart local v5       #url:Ljava/net/URL;
    goto/16 :goto_3

    .line 82
    .end local v5           #url:Ljava/net/URL;
    .restart local v6       #url:Ljava/net/URL;
    :catch_7
    move-exception v3

    move-object v5, v6

    .end local v6           #url:Ljava/net/URL;
    .restart local v5       #url:Ljava/net/URL;
    goto/16 :goto_2

    .line 79
    .end local v5           #url:Ljava/net/URL;
    .restart local v6       #url:Ljava/net/URL;
    :catch_8
    move-exception v3

    move-object v5, v6

    .end local v6           #url:Ljava/net/URL;
    .restart local v5       #url:Ljava/net/URL;
    goto/16 :goto_1
.end method

.method public static getFilePathBitmap(Ljava/lang/String;II)Landroid/graphics/Bitmap;
    .locals 6
    .parameter "fileName"
    .parameter "reqWidth"
    .parameter "reqHeight"

    .prologue
    const/4 v4, 0x1

    .line 126
    const/4 v3, 0x2

    .line 127
    .local v3, sampleSize:I
    const/4 v1, 0x0

    .line 129
    .local v1, bm:Landroid/graphics/Bitmap;
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 132
    .local v0, bitmapOption:Landroid/graphics/BitmapFactory$Options;
    iput-boolean v4, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 135
    iput-boolean v4, v0, Landroid/graphics/BitmapFactory$Options;->inPurgeable:Z

    .line 140
    :try_start_0
    invoke-static {p0, v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 147
    :cond_0
    :goto_0
    iget v4, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    div-int/2addr v4, v3

    if-lt v4, p1, :cond_1

    iget v4, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    div-int/2addr v4, v3

    if-lt v4, p2, :cond_1

    .line 149
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 141
    :catch_0
    move-exception v2

    .line 143
    .local v2, e:Ljava/lang/Exception;
    sget-boolean v4, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v4, :cond_0

    const-string v4, "ClipboardServiceEx"

    const-string v5, "exception arised during bm = BitmapFactory.decodeFile(((ClipboardDataBitmap) cbData).GetBitmapPath());"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 151
    .end local v2           #e:Ljava/lang/Exception;
    :cond_1
    add-int/lit8 v3, v3, -0x1

    .line 153
    iput v3, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 157
    const/4 v4, 0x0

    :try_start_1
    iput-boolean v4, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 158
    invoke-static {p0, v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v1

    .line 165
    :cond_2
    :goto_1
    return-object v1

    .line 159
    :catch_1
    move-exception v2

    .line 161
    .restart local v2       #e:Ljava/lang/Exception;
    sget-boolean v4, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v4, :cond_2

    const-string v4, "ClipboardServiceEx"

    const-string v5, "exception arised during bm = BitmapFactory.decodeFile(((ClipboardDataBitmap) cbData).GetBitmapPath());"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method
