.class public Landroid/provider/BuAPlusConsts;
.super Ljava/lang/Object;
.source "BuAPlusConsts.java"


# static fields
.field public static final ACTION_AUDIO_PL_DELETED:Ljava/lang/String; = "com.android.providers.media.intent.action.AUDIO_PL_DELETED"

.field public static final ACTION_DOWNLOAD_CONTENT:Ljava/lang/String; = "Intent.ACTION_DOWNLOAD_CONTENT"

.field public static final ACTION_IMAGE_PL_DELETED:Ljava/lang/String; = "com.android.providers.media.intent.action.IMAGE_PL_DELETED"

.field public static final ACTION_REFRESH_VOSPALBUMLIST:Ljava/lang/String; = "com.samsung.vmmhux.intent.action.REFRESH_VOSPALBUMLIST"

.field public static final ACTION_REFRESH_VOSPICALBUM:Ljava/lang/String; = "com.samsung.vmmhux.intent.action.REFRESH_VOSPICALBUM"

.field public static final ACTION_REFRESH_VOSPLAYLIST:Ljava/lang/String; = "com.samsung.vmmhux.intent.action.REFRESH_VOSPLAYLIST"

.field public static final ACTION_REFRESH_VOSPLS:Ljava/lang/String; = "com.samsung.vmmhux.intent.action.REFRESH_VOSPLS"

.field public static final ACTION_REFRESH_VOSSONGS:Ljava/lang/String; = "com.samsung.vmmhux.intent.action.REFRESH_VOSSONGS"

.field public static final ACTION_REFRESH_VOSVALBUMLIST:Ljava/lang/String; = "com.samsung.vmmhux.intent.action.REFRESH_VOSVALBUMLIST"

.field public static final ACTION_REFRESH_VOSVIDEOALBUM:Ljava/lang/String; = "com.samsung.vmmhux.intent.action.REFRESH_VOSVIDEOALBUM"

.field public static final ACTION_UPLOAD_CONTENT:Ljava/lang/String; = "Intent.ACTION_UPLOAD_CONTENT"

.field public static final ACTION_VIDEO_PL_DELETED:Ljava/lang/String; = "com.android.providers.media.intent.action.VIDEO_PL_DELETED"

.field public static final VOS_DIR:Ljava/lang/String; = "/mnt/BackupPlus"

.field public static final VOS_IMAGES:Ljava/lang/String; = "Backup+ Pictures"

.field public static final VOS_VIDEOS:Ljava/lang/String; = "Backup+ Videos"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getDefaultThumb(Z)Landroid/graphics/Bitmap;
    .locals 6
    .parameter "isVideo"

    .prologue
    .line 132
    const/4 v0, 0x0

    .line 133
    .local v0, b:Landroid/graphics/Bitmap;
    const/4 v2, 0x0

    .line 134
    .local v2, fileName:Ljava/lang/String;
    if-eqz p0, :cond_0

    .line 135
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/.BackupPlus/.vthumbs/default-thumb.png"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 140
    :goto_0
    :try_start_0
    invoke-static {v2}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 144
    :goto_1
    return-object v0

    .line 137
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/.BackupPlus/.pthumbs/default-thumb.png"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 141
    :catch_0
    move-exception v1

    .line 142
    .local v1, ex:Ljava/lang/OutOfMemoryError;
    const-string v3, "BuAPlusCOnsts"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "failed to allocate memory for thumbnail for File:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public static readFileToEnd(Ljava/lang/String;)Z
    .locals 12
    .parameter "filePath1"

    .prologue
    const/4 v9, 0x0

    .line 99
    if-nez p0, :cond_0

    .line 128
    :goto_0
    return v9

    .line 102
    :cond_0
    const/16 v10, 0x400

    new-array v0, v10, [B

    .line 103
    .local v0, buffer:[B
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 104
    .local v4, file:Ljava/io/File;
    const-wide/16 v5, 0x0

    .line 107
    .local v5, fileSize:J
    :try_start_0
    new-instance v7, Ljava/io/FileInputStream;

    invoke-direct {v7, v4}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_2

    .line 110
    .local v7, fis:Ljava/io/FileInputStream;
    :goto_1
    :try_start_1
    invoke-virtual {v7, v0}, Ljava/io/FileInputStream;->read([B)I

    move-result v8

    .line 111
    .local v8, read:I
    const/4 v10, -0x1

    if-ne v10, v8, :cond_1

    .line 112
    invoke-virtual {v7}, Ljava/io/FileInputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_2

    .line 113
    const/4 v9, 0x1

    goto :goto_0

    .line 115
    :cond_1
    int-to-long v10, v8

    add-long/2addr v5, v10

    goto :goto_1

    .line 117
    .end local v8           #read:I
    :catch_0
    move-exception v1

    .line 119
    .local v1, e:Ljava/io/IOException;
    :try_start_2
    invoke-virtual {v7}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_0

    .line 120
    :catch_1
    move-exception v2

    .line 121
    .local v2, e1:Ljava/io/IOException;
    :try_start_3
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_0

    .line 127
    .end local v1           #e:Ljava/io/IOException;
    .end local v2           #e1:Ljava/io/IOException;
    .end local v7           #fis:Ljava/io/FileInputStream;
    :catch_2
    move-exception v3

    .line 128
    .local v3, ex:Ljava/io/FileNotFoundException;
    goto :goto_0
.end method
