.class public Landroid/media/MediaMetadataRetriever;
.super Ljava/lang/Object;
.source "MediaMetadataRetriever.java"


# static fields
.field private static final EMBEDDED_PICTURE_TYPE_ANY:I = 0xffff

.field public static final METADATA_KEY_ALBUM:I = 0x1

.field public static final METADATA_KEY_ALBUMARTIST:I = 0xd

.field public static final METADATA_KEY_ALBUMARTIST_ASCII:I = 0x6d

.field public static final METADATA_KEY_ALBUM_ASCII:I = 0x65

.field public static final METADATA_KEY_ARTIST:I = 0x2

.field public static final METADATA_KEY_ARTIST_ASCII:I = 0x66

.field public static final METADATA_KEY_AUTHOR:I = 0x3

.field public static final METADATA_KEY_AUTHOR_ASCII:I = 0x67

.field public static final METADATA_KEY_BITRATE:I = 0x14

.field public static final METADATA_KEY_CD_TRACK_NUMBER:I = 0x0

.field public static final METADATA_KEY_COMPILATION:I = 0xf

.field public static final METADATA_KEY_COMPOSER:I = 0x4

.field public static final METADATA_KEY_COMPOSER_ASCII:I = 0x68

.field public static final METADATA_KEY_DATE:I = 0x5

.field public static final METADATA_KEY_DATE_ASCII:I = 0x69

.field public static final METADATA_KEY_DISC_NUMBER:I = 0xe

.field public static final METADATA_KEY_DURATION:I = 0x9

.field public static final METADATA_KEY_GENRE:I = 0x6

.field public static final METADATA_KEY_GENRE_ASCII:I = 0x6a

.field public static final METADATA_KEY_HAS_AUDIO:I = 0x10

.field public static final METADATA_KEY_HAS_VIDEO:I = 0x11

.field public static final METADATA_KEY_IS_DRM:I = 0x16

.field public static final METADATA_KEY_LOCATION:I = 0x17

.field public static final METADATA_KEY_MIMETYPE:I = 0xc

.field public static final METADATA_KEY_MULTI_AUDIO_CHANNELS:I = 0x70

.field public static final METADATA_KEY_MULTI_AUDIO_LANGUAGES:I = 0x6f

.field public static final METADATA_KEY_NUM_AUDIO_TRACKS:I = 0x6e

.field public static final METADATA_KEY_NUM_TEXT_TRACKS:I = 0x71

.field public static final METADATA_KEY_NUM_TRACKS:I = 0xa

.field public static final METADATA_KEY_SEC_AUTHORIZATION:I = 0x73

.field public static final METADATA_KEY_SEC_CITYID:I = 0x75

.field public static final METADATA_KEY_SEC_VIDEOSNAPSHOT:I = 0x74

.field public static final METADATA_KEY_SEC_WEATHER:I = 0x72

.field public static final METADATA_KEY_TIMED_TEXT_LANGUAGES:I = 0x15

.field public static final METADATA_KEY_TITLE:I = 0x7

.field public static final METADATA_KEY_TITLE_ASCII:I = 0x6b

.field public static final METADATA_KEY_VIDEO_HEIGHT:I = 0x13

.field public static final METADATA_KEY_VIDEO_ROTATION:I = 0x64

.field public static final METADATA_KEY_VIDEO_WIDTH:I = 0x12

.field public static final METADATA_KEY_WRITER:I = 0xb

.field public static final METADATA_KEY_WRITER_ASCII:I = 0x6c

.field public static final METADATA_KEY_YEAR:I = 0x8

.field public static final OPTION_CLOSEST:I = 0x3

.field public static final OPTION_CLOSEST_SYNC:I = 0x2

.field public static final OPTION_NEXT_SYNC:I = 0x1

.field public static final OPTION_PREVIOUS_SYNC:I


# instance fields
.field private mNativeContext:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 39
    const-string/jumbo v0, "media_jni"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 40
    invoke-static {}, Landroid/media/MediaMetadataRetriever;->native_init()V

    .line 41
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    invoke-direct {p0}, Landroid/media/MediaMetadataRetriever;->native_setup()V

    .line 51
    return-void
.end method

.method private native _getFrameAtTime(JI)Landroid/graphics/Bitmap;
.end method

.method private native _setDataSource(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation
.end method

.method private native getEmbeddedPicture(I)[B
.end method

.method private final native native_finalize()V
.end method

.method private static native native_init()V
.end method

.method private native native_setup()V
.end method


# virtual methods
.method public native extractMetadata(I)Ljava/lang/String;
.end method

.method protected finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 328
    :try_start_0
    invoke-direct {p0}, Landroid/media/MediaMetadataRetriever;->native_finalize()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 330
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 332
    return-void

    .line 330
    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method

.method public getEmbeddedPicture()[B
    .locals 1

    .prologue
    .line 310
    const v0, 0xffff

    invoke-direct {p0, v0}, Landroid/media/MediaMetadataRetriever;->getEmbeddedPicture(I)[B

    move-result-object v0

    return-object v0
.end method

.method public getFrameAtTime()Landroid/graphics/Bitmap;
    .locals 3

    .prologue
    .line 285
    const-wide/16 v0, -0x1

    const/4 v2, 0x2

    invoke-virtual {p0, v0, v1, v2}, Landroid/media/MediaMetadataRetriever;->getFrameAtTime(JI)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public getFrameAtTime(J)Landroid/graphics/Bitmap;
    .locals 1
    .parameter "timeUs"

    .prologue
    .line 267
    const/4 v0, 0x2

    invoke-virtual {p0, p1, p2, v0}, Landroid/media/MediaMetadataRetriever;->getFrameAtTime(JI)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public getFrameAtTime(JI)Landroid/graphics/Bitmap;
    .locals 3
    .parameter "timeUs"
    .parameter "option"

    .prologue
    .line 238
    if-ltz p3, :cond_0

    const/4 v0, 0x3

    if-le p3, v0, :cond_1

    .line 240
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported option: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 243
    :cond_1
    invoke-direct {p0, p1, p2, p3}, Landroid/media/MediaMetadataRetriever;->_getFrameAtTime(JI)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public native release()V
.end method

.method public setDataSource(Landroid/content/Context;Landroid/net/Uri;)V
    .locals 10
    .parameter "context"
    .parameter "uri"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/SecurityException;
        }
    .end annotation

    .prologue
    .line 149
    if-nez p2, :cond_0

    .line 150
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 153
    :cond_0
    invoke-virtual {p2}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v9

    .line 154
    .local v9, scheme:Ljava/lang/String;
    if-eqz v9, :cond_1

    const-string v0, "file"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 155
    :cond_1
    invoke-virtual {p2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/media/MediaMetadataRetriever;->setDataSource(Ljava/lang/String;)V

    .line 193
    :cond_2
    :goto_0
    return-void

    .line 159
    :cond_3
    const/4 v7, 0x0

    .line 161
    .local v7, fd:Landroid/content/res/AssetFileDescriptor;
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v8

    .line 163
    .local v8, resolver:Landroid/content/ContentResolver;
    :try_start_1
    const-string/jumbo v0, "r"

    invoke-virtual {v8, p2, v0}, Landroid/content/ContentResolver;->openAssetFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v7

    .line 167
    if-nez v7, :cond_6

    .line 168
    :try_start_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_0

    .line 183
    .end local v8           #resolver:Landroid/content/ContentResolver;
    :catch_0
    move-exception v0

    .line 186
    if-eqz v7, :cond_4

    .line 187
    :try_start_3
    invoke-virtual {v7}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    .line 192
    :cond_4
    :goto_1
    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/media/MediaMetadataRetriever;->setDataSource(Ljava/lang/String;)V

    goto :goto_0

    .line 164
    .restart local v8       #resolver:Landroid/content/ContentResolver;
    :catch_1
    move-exception v6

    .line 165
    .local v6, e:Ljava/io/FileNotFoundException;
    :try_start_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/lang/SecurityException; {:try_start_4 .. :try_end_4} :catch_0

    .line 185
    .end local v6           #e:Ljava/io/FileNotFoundException;
    .end local v8           #resolver:Landroid/content/ContentResolver;
    :catchall_0
    move-exception v0

    .line 186
    if-eqz v7, :cond_5

    .line 187
    :try_start_5
    invoke-virtual {v7}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    .line 190
    :cond_5
    :goto_2
    throw v0

    .line 170
    .restart local v8       #resolver:Landroid/content/ContentResolver;
    :cond_6
    :try_start_6
    invoke-virtual {v7}, Landroid/content/res/AssetFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v1

    .line 171
    .local v1, descriptor:Ljava/io/FileDescriptor;
    invoke-virtual {v1}, Ljava/io/FileDescriptor;->valid()Z

    move-result v0

    if-nez v0, :cond_7

    .line 172
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 177
    :cond_7
    invoke-virtual {v7}, Landroid/content/res/AssetFileDescriptor;->getDeclaredLength()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-gez v0, :cond_8

    .line 178
    invoke-virtual {p0, v1}, Landroid/media/MediaMetadataRetriever;->setDataSource(Ljava/io/FileDescriptor;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
    .catch Ljava/lang/SecurityException; {:try_start_6 .. :try_end_6} :catch_0

    .line 186
    :goto_3
    if-eqz v7, :cond_2

    .line 187
    :try_start_7
    invoke-virtual {v7}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2

    goto :goto_0

    .line 189
    :catch_2
    move-exception v0

    goto :goto_0

    .line 180
    :cond_8
    :try_start_8
    invoke-virtual {v7}, Landroid/content/res/AssetFileDescriptor;->getStartOffset()J

    move-result-wide v2

    invoke-virtual {v7}, Landroid/content/res/AssetFileDescriptor;->getDeclaredLength()J

    move-result-wide v4

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/media/MediaMetadataRetriever;->setDataSource(Ljava/io/FileDescriptor;JJ)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0
    .catch Ljava/lang/SecurityException; {:try_start_8 .. :try_end_8} :catch_0

    goto :goto_3

    .line 189
    .end local v1           #descriptor:Ljava/io/FileDescriptor;
    .end local v8           #resolver:Landroid/content/ContentResolver;
    :catch_3
    move-exception v0

    goto :goto_1

    :catch_4
    move-exception v2

    goto :goto_2
.end method

.method public setDataSource(Ljava/io/FileDescriptor;)V
    .locals 6
    .parameter "fd"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 134
    const-wide/16 v2, 0x0

    const-wide v4, 0x7ffffffffffffffL

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Landroid/media/MediaMetadataRetriever;->setDataSource(Ljava/io/FileDescriptor;JJ)V

    .line 135
    return-void
.end method

.method public native setDataSource(Ljava/io/FileDescriptor;JJ)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation
.end method

.method public setDataSource(Ljava/lang/String;)V
    .locals 10
    .parameter "path"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 62
    const/4 v8, 0x0

    .line 64
    .local v8, is:Ljava/io/FileInputStream;
    :try_start_0
    new-instance v9, Ljava/io/FileInputStream;

    invoke-direct {v9, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 65
    .end local v8           #is:Ljava/io/FileInputStream;
    .local v9, is:Ljava/io/FileInputStream;
    :try_start_1
    invoke-virtual {v9}, Ljava/io/FileInputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v1

    .line 66
    .local v1, fd:Ljava/io/FileDescriptor;
    const-wide/16 v2, 0x0

    const-wide v4, 0x7ffffffffffffffL

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/media/MediaMetadataRetriever;->setDataSource(Ljava/io/FileDescriptor;JJ)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3

    .line 74
    if-eqz v9, :cond_0

    .line 75
    :try_start_2
    invoke-virtual {v9}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 78
    :cond_0
    :goto_0
    return-void

    .line 67
    .end local v1           #fd:Ljava/io/FileDescriptor;
    .end local v9           #is:Ljava/io/FileInputStream;
    .restart local v8       #is:Ljava/io/FileInputStream;
    :catch_0
    move-exception v6

    .line 68
    .local v6, fileEx:Ljava/io/FileNotFoundException;
    :goto_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 69
    .end local v6           #fileEx:Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v7

    .line 70
    .local v7, ioEx:Ljava/io/IOException;
    :goto_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 77
    .end local v7           #ioEx:Ljava/io/IOException;
    .end local v8           #is:Ljava/io/FileInputStream;
    .restart local v1       #fd:Ljava/io/FileDescriptor;
    .restart local v9       #is:Ljava/io/FileInputStream;
    :catch_2
    move-exception v0

    goto :goto_0

    .line 69
    .end local v1           #fd:Ljava/io/FileDescriptor;
    :catch_3
    move-exception v7

    move-object v8, v9

    .end local v9           #is:Ljava/io/FileInputStream;
    .restart local v8       #is:Ljava/io/FileInputStream;
    goto :goto_2

    .line 67
    .end local v8           #is:Ljava/io/FileInputStream;
    .restart local v9       #is:Ljava/io/FileInputStream;
    :catch_4
    move-exception v6

    move-object v8, v9

    .end local v9           #is:Ljava/io/FileInputStream;
    .restart local v8       #is:Ljava/io/FileInputStream;
    goto :goto_1
.end method

.method public setDataSource(Ljava/lang/String;Ljava/util/Map;)V
    .locals 6
    .parameter "uri"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 91
    .local p2, headers:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v1, 0x0

    .line 92
    .local v1, i:I
    invoke-interface {p2}, Ljava/util/Map;->size()I

    move-result v5

    new-array v3, v5, [Ljava/lang/String;

    .line 93
    .local v3, keys:[Ljava/lang/String;
    invoke-interface {p2}, Ljava/util/Map;->size()I

    move-result v5

    new-array v4, v5, [Ljava/lang/String;

    .line 94
    .local v4, values:[Ljava/lang/String;
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 95
    .local v0, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    aput-object v5, v3, v1

    .line 96
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    aput-object v5, v4, v1

    .line 97
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 99
    .end local v0           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_0
    invoke-direct {p0, p1, v3, v4}, Landroid/media/MediaMetadataRetriever;->_setDataSource(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    .line 100
    return-void
.end method

.method public native setVideoSize(IIZZ)V
.end method
