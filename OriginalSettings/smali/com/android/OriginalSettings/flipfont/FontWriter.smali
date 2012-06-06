.class public Lcom/android/OriginalSettings/flipfont/FontWriter;
.super Ljava/lang/Object;
.source "FontWriter.java"


# static fields
.field private static TAG:Ljava/lang/String;


# instance fields
.field bos:Ljava/io/BufferedOutputStream;

.field fOut:Ljava/io/FileOutputStream;

.field osw:Ljava/io/OutputStreamWriter;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 36
    const-string v0, "FontWriter"

    sput-object v0, Lcom/android/OriginalSettings/flipfont/FontWriter;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 35
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput-object v0, p0, Lcom/android/OriginalSettings/flipfont/FontWriter;->fOut:Ljava/io/FileOutputStream;

    .line 49
    iput-object v0, p0, Lcom/android/OriginalSettings/flipfont/FontWriter;->osw:Ljava/io/OutputStreamWriter;

    .line 51
    iput-object v0, p0, Lcom/android/OriginalSettings/flipfont/FontWriter;->bos:Ljava/io/BufferedOutputStream;

    return-void
.end method

.method private deleteFolder(Ljava/io/File;Ljava/lang/String;)Z
    .locals 6
    .parameter "FontDir"
    .parameter "folderName"

    .prologue
    .line 125
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p1, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 126
    .local v3, newDir:Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v4

    .line 127
    .local v4, tmp:[Ljava/lang/String;
    if-eqz v4, :cond_1

    .line 128
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    array-length v5, v4

    if-ge v2, v5, :cond_0

    .line 129
    new-instance v1, Ljava/io/File;

    aget-object v5, v4, v2

    invoke-direct {v1, v3, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 130
    .local v1, file:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 128
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 132
    .end local v1           #file:Ljava/io/File;
    :cond_0
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    move-result v0

    .line 135
    .end local v2           #i:I
    .local v0, bRet:Z
    :goto_1
    return v0

    .line 134
    .end local v0           #bRet:Z
    :cond_1
    const/4 v0, 0x0

    .restart local v0       #bRet:Z
    goto :goto_1
.end method


# virtual methods
.method public changeFilePermission(Ljava/lang/String;)V
    .locals 5
    .parameter "fontPath"

    .prologue
    .line 143
    :try_start_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 144
    .local v1, file:Ljava/io/File;
    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Ljava/io/File;->setExecutable(ZZ)Z

    .line 145
    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Ljava/io/File;->setWritable(ZZ)Z

    .line 146
    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Ljava/io/File;->setReadable(ZZ)Z
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 150
    .end local v1           #file:Ljava/io/File;
    :goto_0
    return-void

    .line 147
    :catch_0
    move-exception v0

    .line 148
    .local v0, e:Ljava/lang/SecurityException;
    sget-object v2, Lcom/android/OriginalSettings/flipfont/FontWriter;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "changeFilePermission : File permission error, "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public copyFontFile(Ljava/io/File;Ljava/io/InputStream;Ljava/lang/String;)V
    .locals 15
    .parameter "directory"
    .parameter "is"
    .parameter "destination"

    .prologue
    .line 159
    move-object/from16 v10, p2

    .line 160
    .local v10, myInputStream:Ljava/io/InputStream;
    move-object/from16 v9, p1

    .line 161
    .local v9, myDirectory:Ljava/io/File;
    move-object/from16 v8, p3

    .line 162
    .local v8, myDestination:Ljava/lang/String;
    const-string v0, ""

    .line 164
    .local v0, absolutePath:Ljava/lang/String;
    :try_start_0
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v9, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 165
    .local v2, dest:Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->createNewFile()Z

    .line 166
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    .line 167
    new-instance v12, Ljava/io/FileOutputStream;

    invoke-direct {v12, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    iput-object v12, p0, Lcom/android/OriginalSettings/flipfont/FontWriter;->fOut:Ljava/io/FileOutputStream;

    .line 168
    new-instance v12, Ljava/io/BufferedOutputStream;

    iget-object v13, p0, Lcom/android/OriginalSettings/flipfont/FontWriter;->fOut:Ljava/io/FileOutputStream;

    invoke-direct {v12, v13}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    iput-object v12, p0, Lcom/android/OriginalSettings/flipfont/FontWriter;->bos:Ljava/io/BufferedOutputStream;

    .line 169
    const/16 v12, 0x400

    new-array v1, v12, [B

    .line 170
    .local v1, b:[B
    const/4 v11, 0x0

    .line 171
    .local v11, read:I
    :goto_0
    invoke-virtual {v10, v1}, Ljava/io/InputStream;->read([B)I

    move-result v11

    if-lez v11, :cond_5

    .line 172
    iget-object v12, p0, Lcom/android/OriginalSettings/flipfont/FontWriter;->bos:Ljava/io/BufferedOutputStream;

    const/4 v13, 0x0

    invoke-virtual {v12, v1, v13, v11}, Ljava/io/BufferedOutputStream;->write([BII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 178
    .end local v1           #b:[B
    .end local v2           #dest:Ljava/io/File;
    .end local v11           #read:I
    :catch_0
    move-exception v4

    .line 180
    .local v4, ex:Ljava/lang/Exception;
    :try_start_1
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v9, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 181
    .local v5, file:Ljava/io/File;
    invoke-virtual {v5}, Ljava/io/File;->length()J

    move-result-wide v6

    .line 182
    .local v6, length:J
    const-wide/16 v12, 0x0

    cmp-long v12, v6, v12

    if-nez v12, :cond_0

    .line 183
    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    .line 185
    :cond_0
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 188
    if-eqz v10, :cond_1

    .line 189
    :try_start_2
    invoke-virtual {v10}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_4

    .line 194
    :cond_1
    :goto_1
    :try_start_3
    iget-object v12, p0, Lcom/android/OriginalSettings/flipfont/FontWriter;->fOut:Ljava/io/FileOutputStream;

    if-eqz v12, :cond_2

    .line 195
    iget-object v12, p0, Lcom/android/OriginalSettings/flipfont/FontWriter;->fOut:Ljava/io/FileOutputStream;

    invoke-virtual {v12}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_5

    .line 200
    :cond_2
    :goto_2
    :try_start_4
    iget-object v12, p0, Lcom/android/OriginalSettings/flipfont/FontWriter;->bos:Ljava/io/BufferedOutputStream;

    if-eqz v12, :cond_3

    .line 201
    iget-object v12, p0, Lcom/android/OriginalSettings/flipfont/FontWriter;->bos:Ljava/io/BufferedOutputStream;

    invoke-virtual {v12}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_6

    .line 206
    .end local v4           #ex:Ljava/lang/Exception;
    .end local v5           #file:Ljava/io/File;
    .end local v6           #length:J
    :cond_3
    :goto_3
    invoke-virtual {p0, v0}, Lcom/android/OriginalSettings/flipfont/FontWriter;->changeFilePermission(Ljava/lang/String;)V

    .line 208
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v9, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 209
    .restart local v5       #file:Ljava/io/File;
    invoke-virtual {v5}, Ljava/io/File;->length()J

    move-result-wide v6

    .line 210
    .restart local v6       #length:J
    const-wide/16 v12, 0x0

    cmp-long v12, v6, v12

    if-nez v12, :cond_4

    .line 211
    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    .line 213
    :cond_4
    return-void

    .line 174
    .end local v5           #file:Ljava/io/File;
    .end local v6           #length:J
    .restart local v1       #b:[B
    .restart local v2       #dest:Ljava/io/File;
    .restart local v11       #read:I
    :cond_5
    :try_start_5
    iget-object v12, p0, Lcom/android/OriginalSettings/flipfont/FontWriter;->bos:Ljava/io/BufferedOutputStream;

    invoke-virtual {v12}, Ljava/io/BufferedOutputStream;->flush()V

    .line 175
    iget-object v12, p0, Lcom/android/OriginalSettings/flipfont/FontWriter;->fOut:Ljava/io/FileOutputStream;

    invoke-virtual {v12}, Ljava/io/FileOutputStream;->flush()V

    .line 176
    iget-object v12, p0, Lcom/android/OriginalSettings/flipfont/FontWriter;->fOut:Ljava/io/FileOutputStream;

    invoke-static {v12}, Landroid/os/FileUtils;->sync(Ljava/io/FileOutputStream;)Z

    .line 177
    iget-object v12, p0, Lcom/android/OriginalSettings/flipfont/FontWriter;->bos:Ljava/io/BufferedOutputStream;

    invoke-virtual {v12}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    .line 188
    if-eqz v10, :cond_6

    .line 189
    :try_start_6
    invoke-virtual {v10}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2

    .line 194
    :cond_6
    :goto_4
    :try_start_7
    iget-object v12, p0, Lcom/android/OriginalSettings/flipfont/FontWriter;->fOut:Ljava/io/FileOutputStream;

    if-eqz v12, :cond_7

    .line 195
    iget-object v12, p0, Lcom/android/OriginalSettings/flipfont/FontWriter;->fOut:Ljava/io/FileOutputStream;

    invoke-virtual {v12}, Ljava/io/FileOutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3

    .line 200
    :cond_7
    :goto_5
    :try_start_8
    iget-object v12, p0, Lcom/android/OriginalSettings/flipfont/FontWriter;->bos:Ljava/io/BufferedOutputStream;

    if-eqz v12, :cond_3

    .line 201
    iget-object v12, p0, Lcom/android/OriginalSettings/flipfont/FontWriter;->bos:Ljava/io/BufferedOutputStream;

    invoke-virtual {v12}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_1

    goto :goto_3

    .line 202
    :catch_1
    move-exception v3

    .line 203
    .local v3, e:Ljava/io/IOException;
    sget-object v12, Lcom/android/OriginalSettings/flipfont/FontWriter;->TAG:Ljava/lang/String;

    const-string v13, "copyFontFile : bos.close() error"

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 190
    .end local v3           #e:Ljava/io/IOException;
    :catch_2
    move-exception v3

    .line 191
    .restart local v3       #e:Ljava/io/IOException;
    sget-object v12, Lcom/android/OriginalSettings/flipfont/FontWriter;->TAG:Ljava/lang/String;

    const-string v13, "copyFontFile : myInputStream.close() error"

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 196
    .end local v3           #e:Ljava/io/IOException;
    :catch_3
    move-exception v3

    .line 197
    .restart local v3       #e:Ljava/io/IOException;
    sget-object v12, Lcom/android/OriginalSettings/flipfont/FontWriter;->TAG:Ljava/lang/String;

    const-string v13, "copyFontFile : fOut.close() error"

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .line 190
    .end local v1           #b:[B
    .end local v2           #dest:Ljava/io/File;
    .end local v3           #e:Ljava/io/IOException;
    .end local v11           #read:I
    .restart local v4       #ex:Ljava/lang/Exception;
    .restart local v5       #file:Ljava/io/File;
    .restart local v6       #length:J
    :catch_4
    move-exception v3

    .line 191
    .restart local v3       #e:Ljava/io/IOException;
    sget-object v12, Lcom/android/OriginalSettings/flipfont/FontWriter;->TAG:Ljava/lang/String;

    const-string v13, "copyFontFile : myInputStream.close() error"

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 196
    .end local v3           #e:Ljava/io/IOException;
    :catch_5
    move-exception v3

    .line 197
    .restart local v3       #e:Ljava/io/IOException;
    sget-object v12, Lcom/android/OriginalSettings/flipfont/FontWriter;->TAG:Ljava/lang/String;

    const-string v13, "copyFontFile : fOut.close() error"

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 202
    .end local v3           #e:Ljava/io/IOException;
    :catch_6
    move-exception v3

    .line 203
    .restart local v3       #e:Ljava/io/IOException;
    sget-object v12, Lcom/android/OriginalSettings/flipfont/FontWriter;->TAG:Ljava/lang/String;

    const-string v13, "copyFontFile : bos.close() error"

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 187
    .end local v3           #e:Ljava/io/IOException;
    .end local v4           #ex:Ljava/lang/Exception;
    .end local v5           #file:Ljava/io/File;
    .end local v6           #length:J
    :catchall_0
    move-exception v12

    .line 188
    if-eqz v10, :cond_8

    .line 189
    :try_start_9
    invoke-virtual {v10}, Ljava/io/InputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_7

    .line 194
    :cond_8
    :goto_6
    :try_start_a
    iget-object v13, p0, Lcom/android/OriginalSettings/flipfont/FontWriter;->fOut:Ljava/io/FileOutputStream;

    if-eqz v13, :cond_9

    .line 195
    iget-object v13, p0, Lcom/android/OriginalSettings/flipfont/FontWriter;->fOut:Ljava/io/FileOutputStream;

    invoke-virtual {v13}, Ljava/io/FileOutputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_8

    .line 200
    :cond_9
    :goto_7
    :try_start_b
    iget-object v13, p0, Lcom/android/OriginalSettings/flipfont/FontWriter;->bos:Ljava/io/BufferedOutputStream;

    if-eqz v13, :cond_a

    .line 201
    iget-object v13, p0, Lcom/android/OriginalSettings/flipfont/FontWriter;->bos:Ljava/io/BufferedOutputStream;

    invoke-virtual {v13}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_9

    .line 204
    :cond_a
    :goto_8
    throw v12

    .line 190
    :catch_7
    move-exception v3

    .line 191
    .restart local v3       #e:Ljava/io/IOException;
    sget-object v13, Lcom/android/OriginalSettings/flipfont/FontWriter;->TAG:Ljava/lang/String;

    const-string v14, "copyFontFile : myInputStream.close() error"

    invoke-static {v13, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    .line 196
    .end local v3           #e:Ljava/io/IOException;
    :catch_8
    move-exception v3

    .line 197
    .restart local v3       #e:Ljava/io/IOException;
    sget-object v13, Lcom/android/OriginalSettings/flipfont/FontWriter;->TAG:Ljava/lang/String;

    const-string v14, "copyFontFile : fOut.close() error"

    invoke-static {v13, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7

    .line 202
    .end local v3           #e:Ljava/io/IOException;
    :catch_9
    move-exception v3

    .line 203
    .restart local v3       #e:Ljava/io/IOException;
    sget-object v13, Lcom/android/OriginalSettings/flipfont/FontWriter;->TAG:Ljava/lang/String;

    const-string v14, "copyFontFile : bos.close() error"

    invoke-static {v13, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8
.end method

.method public createFontDirectory(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;
    .locals 8
    .parameter "context"
    .parameter "fontName"

    .prologue
    const/4 v6, 0x1

    .line 100
    const-string v5, "fonts"

    invoke-virtual {p1, v5, v6}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v3

    .line 101
    .local v3, newFontDir:Ljava/io/File;
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v3, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 104
    .local v1, fontFile:Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v4

    .line 105
    .local v4, tmp:[Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    array-length v5, v4

    if-ge v2, v5, :cond_0

    .line 106
    aget-object v5, v4, v2

    invoke-direct {p0, v3, v5}, Lcom/android/OriginalSettings/flipfont/FontWriter;->deleteFolder(Ljava/io/File;Ljava/lang/String;)Z

    .line 105
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 109
    :cond_0
    invoke-virtual {v1}, Ljava/io/File;->mkdir()Z

    .line 111
    const/4 v5, 0x1

    const/4 v6, 0x0

    :try_start_0
    invoke-virtual {v1, v5, v6}, Ljava/io/File;->setExecutable(ZZ)Z

    .line 112
    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-virtual {v1, v5, v6}, Ljava/io/File;->setReadable(ZZ)Z

    .line 113
    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-virtual {v1, v5, v6}, Ljava/io/File;->setWritable(ZZ)Z
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 117
    :goto_1
    return-object v1

    .line 114
    :catch_0
    move-exception v0

    .line 115
    .local v0, e:Ljava/lang/SecurityException;
    sget-object v5, Lcom/android/OriginalSettings/flipfont/FontWriter;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "writeLoc : File permission error, "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public writeLoc(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .parameter "context"
    .parameter "filename"
    .parameter "directory"

    .prologue
    .line 64
    const-string v0, ""

    .line 66
    .local v0, absolutePath:Ljava/lang/String;
    :try_start_0
    new-instance v1, Ljava/io/File;

    const-string v4, "/data/data/com.android.settings/app_fonts"

    invoke-direct {v1, v4, p2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    .local v1, dest:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z

    .line 68
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    .line 69
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    iput-object v4, p0, Lcom/android/OriginalSettings/flipfont/FontWriter;->fOut:Ljava/io/FileOutputStream;

    .line 70
    new-instance v4, Ljava/io/OutputStreamWriter;

    iget-object v5, p0, Lcom/android/OriginalSettings/flipfont/FontWriter;->fOut:Ljava/io/FileOutputStream;

    invoke-direct {v4, v5}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    iput-object v4, p0, Lcom/android/OriginalSettings/flipfont/FontWriter;->osw:Ljava/io/OutputStreamWriter;

    .line 71
    iget-object v4, p0, Lcom/android/OriginalSettings/flipfont/FontWriter;->osw:Ljava/io/OutputStreamWriter;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    .line 72
    iget-object v4, p0, Lcom/android/OriginalSettings/flipfont/FontWriter;->osw:Ljava/io/OutputStreamWriter;

    invoke-virtual {v4}, Ljava/io/OutputStreamWriter;->flush()V

    .line 73
    iget-object v4, p0, Lcom/android/OriginalSettings/flipfont/FontWriter;->fOut:Ljava/io/FileOutputStream;

    invoke-virtual {v4}, Ljava/io/FileOutputStream;->flush()V

    .line 74
    iget-object v4, p0, Lcom/android/OriginalSettings/flipfont/FontWriter;->fOut:Ljava/io/FileOutputStream;

    invoke-static {v4}, Landroid/os/FileUtils;->sync(Ljava/io/FileOutputStream;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 79
    :try_start_1
    iget-object v4, p0, Lcom/android/OriginalSettings/flipfont/FontWriter;->osw:Ljava/io/OutputStreamWriter;

    if-eqz v4, :cond_0

    .line 80
    iget-object v4, p0, Lcom/android/OriginalSettings/flipfont/FontWriter;->osw:Ljava/io/OutputStreamWriter;

    invoke-virtual {v4}, Ljava/io/OutputStreamWriter;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 85
    :cond_0
    :goto_0
    :try_start_2
    iget-object v4, p0, Lcom/android/OriginalSettings/flipfont/FontWriter;->fOut:Ljava/io/FileOutputStream;

    if-eqz v4, :cond_1

    .line 86
    iget-object v4, p0, Lcom/android/OriginalSettings/flipfont/FontWriter;->fOut:Ljava/io/FileOutputStream;

    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 91
    .end local v1           #dest:Ljava/io/File;
    :cond_1
    :goto_1
    const-string v4, "persist.sys.flipfontpath"

    invoke-static {v4, p3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    invoke-virtual {p0, v0}, Lcom/android/OriginalSettings/flipfont/FontWriter;->changeFilePermission(Ljava/lang/String;)V

    .line 94
    return-void

    .line 81
    .restart local v1       #dest:Ljava/io/File;
    :catch_0
    move-exception v2

    .line 82
    .local v2, e:Ljava/io/IOException;
    sget-object v4, Lcom/android/OriginalSettings/flipfont/FontWriter;->TAG:Ljava/lang/String;

    const-string v5, "writeLoc : osw.close() error"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 87
    .end local v2           #e:Ljava/io/IOException;
    :catch_1
    move-exception v2

    .line 88
    .restart local v2       #e:Ljava/io/IOException;
    sget-object v4, Lcom/android/OriginalSettings/flipfont/FontWriter;->TAG:Ljava/lang/String;

    const-string v5, "writeLoc : fOut.close() error"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 75
    .end local v1           #dest:Ljava/io/File;
    .end local v2           #e:Ljava/io/IOException;
    :catch_2
    move-exception v3

    .line 76
    .local v3, ex:Ljava/lang/Exception;
    :try_start_3
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 79
    :try_start_4
    iget-object v4, p0, Lcom/android/OriginalSettings/flipfont/FontWriter;->osw:Ljava/io/OutputStreamWriter;

    if-eqz v4, :cond_2

    .line 80
    iget-object v4, p0, Lcom/android/OriginalSettings/flipfont/FontWriter;->osw:Ljava/io/OutputStreamWriter;

    invoke-virtual {v4}, Ljava/io/OutputStreamWriter;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4

    .line 85
    :cond_2
    :goto_2
    :try_start_5
    iget-object v4, p0, Lcom/android/OriginalSettings/flipfont/FontWriter;->fOut:Ljava/io/FileOutputStream;

    if-eqz v4, :cond_1

    .line 86
    iget-object v4, p0, Lcom/android/OriginalSettings/flipfont/FontWriter;->fOut:Ljava/io/FileOutputStream;

    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_1

    .line 87
    :catch_3
    move-exception v2

    .line 88
    .restart local v2       #e:Ljava/io/IOException;
    sget-object v4, Lcom/android/OriginalSettings/flipfont/FontWriter;->TAG:Ljava/lang/String;

    const-string v5, "writeLoc : fOut.close() error"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 81
    .end local v2           #e:Ljava/io/IOException;
    :catch_4
    move-exception v2

    .line 82
    .restart local v2       #e:Ljava/io/IOException;
    sget-object v4, Lcom/android/OriginalSettings/flipfont/FontWriter;->TAG:Ljava/lang/String;

    const-string v5, "writeLoc : osw.close() error"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 78
    .end local v2           #e:Ljava/io/IOException;
    .end local v3           #ex:Ljava/lang/Exception;
    :catchall_0
    move-exception v4

    .line 79
    :try_start_6
    iget-object v5, p0, Lcom/android/OriginalSettings/flipfont/FontWriter;->osw:Ljava/io/OutputStreamWriter;

    if-eqz v5, :cond_3

    .line 80
    iget-object v5, p0, Lcom/android/OriginalSettings/flipfont/FontWriter;->osw:Ljava/io/OutputStreamWriter;

    invoke-virtual {v5}, Ljava/io/OutputStreamWriter;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_5

    .line 85
    :cond_3
    :goto_3
    :try_start_7
    iget-object v5, p0, Lcom/android/OriginalSettings/flipfont/FontWriter;->fOut:Ljava/io/FileOutputStream;

    if-eqz v5, :cond_4

    .line 86
    iget-object v5, p0, Lcom/android/OriginalSettings/flipfont/FontWriter;->fOut:Ljava/io/FileOutputStream;

    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_6

    .line 89
    :cond_4
    :goto_4
    throw v4

    .line 81
    :catch_5
    move-exception v2

    .line 82
    .restart local v2       #e:Ljava/io/IOException;
    sget-object v5, Lcom/android/OriginalSettings/flipfont/FontWriter;->TAG:Ljava/lang/String;

    const-string v6, "writeLoc : osw.close() error"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 87
    .end local v2           #e:Ljava/io/IOException;
    :catch_6
    move-exception v2

    .line 88
    .restart local v2       #e:Ljava/io/IOException;
    sget-object v5, Lcom/android/OriginalSettings/flipfont/FontWriter;->TAG:Ljava/lang/String;

    const-string v6, "writeLoc : fOut.close() error"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4
.end method
