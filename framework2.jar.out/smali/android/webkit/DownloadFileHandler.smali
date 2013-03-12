.class Landroid/webkit/DownloadFileHandler;
.super Landroid/os/Handler;
.source "DownloadFileHandler.java"


# static fields
.field private static final LOGTAG:Ljava/lang/String; = "DownloadFileHandler"

.field public static MIME_APPLICATION_VND_OMA_DD_XML:Ljava/lang/String;

.field public static MIME_APPLICATION_VND_OMA_DRM_DCF:Ljava/lang/String;

.field public static MIME_APPLICATION_VND_OMA_DRM_RO_XML:Ljava/lang/String;

.field public static MIME_APPLICATION_VND_OMA_ROAPPDU_XML:Ljava/lang/String;

.field public static MIME_APPLICATION_VND_OMA_ROAPTRIGGER_XML:Ljava/lang/String;


# instance fields
.field public isDownloadabelfile:Z

.field public mContentDisposition:Ljava/lang/String;

.field public mContentLength:J

.field private final mDataBuilder:Landroid/webkit/ByteArrayBuilder;

.field public mMimeType:Ljava/lang/String;

.field public mUrl:Ljava/lang/String;

.field public mUserAgent:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 46
    const-string v0, "application/vnd.oma.dd+xml"

    sput-object v0, Landroid/webkit/DownloadFileHandler;->MIME_APPLICATION_VND_OMA_DD_XML:Ljava/lang/String;

    .line 47
    const-string v0, "application/vnd.oma.drm.roap-trigger+xml"

    sput-object v0, Landroid/webkit/DownloadFileHandler;->MIME_APPLICATION_VND_OMA_ROAPTRIGGER_XML:Ljava/lang/String;

    .line 49
    const-string v0, "application/vnd.oma.drm.ro+xml"

    sput-object v0, Landroid/webkit/DownloadFileHandler;->MIME_APPLICATION_VND_OMA_DRM_RO_XML:Ljava/lang/String;

    .line 50
    const-string v0, "application/vnd.oma.drm.dcf"

    sput-object v0, Landroid/webkit/DownloadFileHandler;->MIME_APPLICATION_VND_OMA_DRM_DCF:Ljava/lang/String;

    .line 51
    const-string v0, "application/vnd.oma.drm.roap-pdu+xml"

    sput-object v0, Landroid/webkit/DownloadFileHandler;->MIME_APPLICATION_VND_OMA_ROAPPDU_XML:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 1
    .parameter "url"
    .parameter "userAgent"
    .parameter "contentDisposition"
    .parameter "mimetype"
    .parameter "contentLength"

    .prologue
    .line 55
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 36
    new-instance v0, Landroid/webkit/ByteArrayBuilder;

    invoke-direct {v0}, Landroid/webkit/ByteArrayBuilder;-><init>()V

    iput-object v0, p0, Landroid/webkit/DownloadFileHandler;->mDataBuilder:Landroid/webkit/ByteArrayBuilder;

    .line 56
    iput-object p1, p0, Landroid/webkit/DownloadFileHandler;->mUrl:Ljava/lang/String;

    .line 57
    iput-object p3, p0, Landroid/webkit/DownloadFileHandler;->mContentDisposition:Ljava/lang/String;

    .line 58
    iput-wide p5, p0, Landroid/webkit/DownloadFileHandler;->mContentLength:J

    .line 59
    iput-object p2, p0, Landroid/webkit/DownloadFileHandler;->mUserAgent:Ljava/lang/String;

    .line 60
    iput-object p4, p0, Landroid/webkit/DownloadFileHandler;->mMimeType:Ljava/lang/String;

    .line 61
    return-void
.end method

.method private static getSubType(Ljava/lang/String;)Ljava/lang/String;
    .locals 11
    .parameter "contentType"

    .prologue
    const/16 v10, 0x3b

    const/16 v9, 0x22

    const/16 v8, 0xd

    const/16 v7, 0xa

    const/16 v6, 0x20

    .line 164
    const/4 v3, 0x0

    .line 166
    .local v3, bValue:Ljava/lang/String;
    const-string v5, "type="

    invoke-virtual {p0, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 167
    .local v0, bPos:I
    const/4 v5, -0x1

    if-eq v0, v5, :cond_7

    .line 168
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {p0, v0, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 169
    .local v4, subType:Ljava/lang/String;
    const/16 v5, 0x3d

    invoke-virtual {v4, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    .line 170
    .local v2, bValpos:I
    add-int/lit8 v2, v2, 0x1

    .line 172
    :goto_0
    invoke-virtual {v4, v2}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-eq v5, v9, :cond_0

    invoke-virtual {v4, v2}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-ne v5, v6, :cond_1

    .line 173
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 174
    :cond_1
    move v1, v2

    .line 178
    .local v1, bValEndPos:I
    :cond_2
    invoke-virtual {v4, v1}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-eq v5, v10, :cond_3

    invoke-virtual {v4, v1}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-eq v5, v8, :cond_3

    invoke-virtual {v4, v1}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-eq v5, v7, :cond_3

    invoke-virtual {v4, v1}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-eq v5, v6, :cond_3

    .line 183
    add-int/lit8 v1, v1, 0x1

    .line 184
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    if-ne v1, v5, :cond_2

    .line 187
    :cond_3
    invoke-virtual {v4, v1}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-eq v5, v10, :cond_4

    invoke-virtual {v4, v1}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-eq v5, v8, :cond_4

    invoke-virtual {v4, v1}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-eq v5, v7, :cond_4

    invoke-virtual {v4, v1}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-ne v5, v6, :cond_5

    .line 192
    :cond_4
    add-int/lit8 v1, v1, -0x1

    .line 198
    :cond_5
    :goto_1
    invoke-virtual {v4, v1}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-ne v5, v9, :cond_6

    .line 199
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 206
    :cond_6
    add-int/lit8 v5, v1, 0x1

    invoke-virtual {v4, v2, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 216
    .end local v1           #bValEndPos:I
    .end local v2           #bValpos:I
    .end local v4           #subType:Ljava/lang/String;
    :cond_7
    return-object v3
.end method

.method static isDownLoadableContent(Ljava/lang/String;)Z
    .locals 4
    .parameter "contentType"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 88
    invoke-static {p0}, Landroid/webkit/DownloadFileHandler;->isOMAorDRMMimeType(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 109
    :cond_0
    :goto_0
    return v1

    .line 93
    :cond_1
    invoke-static {p0}, Landroid/webkit/DownloadFileHandler;->getSubType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 98
    .local v0, bValue:Ljava/lang/String;
    if-nez v0, :cond_2

    move v1, v2

    .line 99
    goto :goto_0

    .line 101
    :cond_2
    sget-object v3, Landroid/webkit/DownloadFileHandler;->MIME_APPLICATION_VND_OMA_DD_XML:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    sget-object v3, Landroid/webkit/DownloadFileHandler;->MIME_APPLICATION_VND_OMA_DRM_RO_XML:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    sget-object v3, Landroid/webkit/DownloadFileHandler;->MIME_APPLICATION_VND_OMA_DRM_DCF:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    sget-object v3, Landroid/webkit/DownloadFileHandler;->MIME_APPLICATION_VND_OMA_ROAPPDU_XML:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    sget-object v3, Landroid/webkit/DownloadFileHandler;->MIME_APPLICATION_VND_OMA_ROAPTRIGGER_XML:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    move v1, v2

    .line 109
    goto :goto_0
.end method

.method private static isOMAorDRMMimeType(Ljava/lang/String;)Z
    .locals 3
    .parameter "mimeType"

    .prologue
    .line 77
    sget-object v0, Landroid/webkit/DownloadFileHandler;->MIME_APPLICATION_VND_OMA_DD_XML:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Landroid/webkit/DownloadFileHandler;->MIME_APPLICATION_VND_OMA_ROAPTRIGGER_XML:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 79
    :cond_0
    const-string v0, "DownloadFileHandler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isOMAorDRMMimeType: mimeType = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    const/4 v0, 0x1

    .line 82
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public didReceiveData([BI)V
    .locals 3
    .parameter "data"
    .parameter "length"

    .prologue
    .line 69
    iget-object v1, p0, Landroid/webkit/DownloadFileHandler;->mDataBuilder:Landroid/webkit/ByteArrayBuilder;

    monitor-enter v1

    .line 70
    :try_start_0
    iget-object v0, p0, Landroid/webkit/DownloadFileHandler;->mDataBuilder:Landroid/webkit/ByteArrayBuilder;

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2, p2}, Landroid/webkit/ByteArrayBuilder;->append([BII)V

    .line 71
    monitor-exit v1

    .line 72
    return-void

    .line 71
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public handleFile()Z
    .locals 11

    .prologue
    const/4 v6, 0x0

    .line 117
    const/4 v1, 0x0

    .line 118
    .local v1, downloadStream:Ljava/io/FileOutputStream;
    const/4 v5, 0x1

    .line 121
    .local v5, result:Z
    :try_start_0
    new-instance v2, Ljava/io/FileOutputStream;

    const-string v7, "/sdcard/tempfile1.xml"

    invoke-direct {v2, v7}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 122
    .end local v1           #downloadStream:Ljava/io/FileOutputStream;
    .local v2, downloadStream:Ljava/io/FileOutputStream;
    const/4 v7, 0x1

    :try_start_1
    iput-boolean v7, p0, Landroid/webkit/DownloadFileHandler;->isDownloadabelfile:Z

    .line 123
    const-string v7, "DownloadFileHandler"

    const-string v8, "****Download File Creation Sucess *****"

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_5

    .line 131
    iget-object v7, p0, Landroid/webkit/DownloadFileHandler;->mDataBuilder:Landroid/webkit/ByteArrayBuilder;

    monitor-enter v7

    .line 136
    :try_start_2
    iget-object v6, p0, Landroid/webkit/DownloadFileHandler;->mDataBuilder:Landroid/webkit/ByteArrayBuilder;

    invoke-virtual {v6}, Landroid/webkit/ByteArrayBuilder;->getFirstChunk()Landroid/webkit/ByteArrayBuilder$Chunk;

    move-result-object v0

    .line 137
    .local v0, data:Landroid/webkit/ByteArrayBuilder$Chunk;
    if-eqz v0, :cond_1

    iget v6, v0, Landroid/webkit/ByteArrayBuilder$Chunk;->mLength:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz v6, :cond_1

    .line 138
    if-eqz v2, :cond_0

    .line 140
    :try_start_3
    iget-object v6, v0, Landroid/webkit/ByteArrayBuilder$Chunk;->mArray:[B

    const/4 v8, 0x0

    iget v9, v0, Landroid/webkit/ByteArrayBuilder$Chunk;->mLength:I

    invoke-virtual {v2, v6, v8, v9}, Ljava/io/FileOutputStream;->write([BII)V

    .line 141
    const-string v6, "DownloadFileHandler"

    const-string v8, "***Downloadable File Writing Sucess *****"

    invoke-static {v6, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    .line 147
    if-eqz v2, :cond_0

    .line 148
    :try_start_4
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4

    .line 156
    :cond_0
    :goto_0
    :try_start_5
    iget-object v6, p0, Landroid/webkit/DownloadFileHandler;->mDataBuilder:Landroid/webkit/ByteArrayBuilder;

    invoke-virtual {v6, v0}, Landroid/webkit/ByteArrayBuilder;->releaseChunk(Landroid/webkit/ByteArrayBuilder$Chunk;)V

    .line 158
    :cond_1
    monitor-exit v7
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    move-object v1, v2

    .end local v2           #downloadStream:Ljava/io/FileOutputStream;
    .restart local v1       #downloadStream:Ljava/io/FileOutputStream;
    move v6, v5

    .line 159
    .end local v0           #data:Landroid/webkit/ByteArrayBuilder$Chunk;
    :goto_1
    return v6

    .line 124
    :catch_0
    move-exception v3

    .line 125
    .local v3, e:Ljava/io/FileNotFoundException;
    :goto_2
    const-string v7, "DownloadFileHandler"

    const-string v8, "Fail to Create Download temp file"

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 142
    .end local v1           #downloadStream:Ljava/io/FileOutputStream;
    .end local v3           #e:Ljava/io/FileNotFoundException;
    .restart local v0       #data:Landroid/webkit/ByteArrayBuilder$Chunk;
    .restart local v2       #downloadStream:Ljava/io/FileOutputStream;
    :catch_1
    move-exception v3

    .line 143
    .local v3, e:Ljava/io/IOException;
    :try_start_6
    const-string v6, "DownloadFileHandler"

    const-string v8, "****Download File Writing Failure *****"

    invoke-static {v6, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 144
    const/4 v5, 0x0

    .line 147
    if-eqz v2, :cond_0

    .line 148
    :try_start_7
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2

    goto :goto_0

    .line 150
    :catch_2
    move-exception v4

    .line 151
    .local v4, ex:Ljava/io/IOException;
    :try_start_8
    const-string v6, "DownloadFileHandler"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "exception when closing the file : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 152
    .end local v3           #e:Ljava/io/IOException;
    :goto_3
    const/4 v5, 0x0

    goto :goto_0

    .line 146
    .end local v4           #ex:Ljava/io/IOException;
    :catchall_0
    move-exception v6

    .line 147
    if-eqz v2, :cond_2

    .line 148
    :try_start_9
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_3

    .line 146
    :cond_2
    :goto_4
    :try_start_a
    throw v6

    .line 158
    .end local v0           #data:Landroid/webkit/ByteArrayBuilder$Chunk;
    :catchall_1
    move-exception v6

    monitor-exit v7
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    throw v6

    .line 150
    .restart local v0       #data:Landroid/webkit/ByteArrayBuilder$Chunk;
    :catch_3
    move-exception v4

    .line 151
    .restart local v4       #ex:Ljava/io/IOException;
    :try_start_b
    const-string v8, "DownloadFileHandler"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "exception when closing the file : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    const/4 v5, 0x0

    goto :goto_4

    .line 150
    .end local v4           #ex:Ljava/io/IOException;
    :catch_4
    move-exception v4

    .line 151
    .restart local v4       #ex:Ljava/io/IOException;
    const-string v6, "DownloadFileHandler"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "exception when closing the file : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    goto :goto_3

    .line 124
    .end local v0           #data:Landroid/webkit/ByteArrayBuilder$Chunk;
    .end local v4           #ex:Ljava/io/IOException;
    :catch_5
    move-exception v3

    move-object v1, v2

    .end local v2           #downloadStream:Ljava/io/FileOutputStream;
    .restart local v1       #downloadStream:Ljava/io/FileOutputStream;
    goto :goto_2
.end method
