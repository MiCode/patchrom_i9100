.class public Landroid/graphics/Movie;
.super Ljava/lang/Object;
.source "Movie.java"


# instance fields
.field private final mNativeMovie:I


# direct methods
.method private constructor <init>(I)V
    .locals 2
    .parameter "nativeMovie"

    .prologue
    .line 25
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 26
    if-nez p1, :cond_0

    .line 27
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "native movie creation failed"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 29
    :cond_0
    iput p1, p0, Landroid/graphics/Movie;->mNativeMovie:I

    .line 30
    return-void
.end method

.method public static native decodeByteArray([BII)Landroid/graphics/Movie;
.end method

.method public static decodeFile(Ljava/lang/String;)Landroid/graphics/Movie;
    .locals 3
    .parameter "pathName"

    .prologue
    .line 54
    :try_start_0
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 59
    .local v1, is:Ljava/io/InputStream;
    invoke-static {v1}, Landroid/graphics/Movie;->decodeTempStream(Ljava/io/InputStream;)Landroid/graphics/Movie;

    move-result-object v2

    .end local v1           #is:Ljava/io/InputStream;
    :goto_0
    return-object v2

    .line 56
    :catch_0
    move-exception v0

    .line 57
    .local v0, e:Ljava/io/FileNotFoundException;
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static native decodeStream(Ljava/io/InputStream;)Landroid/graphics/Movie;
.end method

.method private static decodeTempStream(Ljava/io/InputStream;)Landroid/graphics/Movie;
    .locals 2
    .parameter "is"

    .prologue
    .line 72
    const/4 v0, 0x0

    .line 74
    .local v0, moov:Landroid/graphics/Movie;
    :try_start_0
    invoke-static {p0}, Landroid/graphics/Movie;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Movie;

    move-result-object v0

    .line 75
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 83
    :goto_0
    return-object v0

    .line 77
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private static native nativeDestructor(I)V
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;FF)V
    .locals 1
    .parameter "canvas"
    .parameter "x"
    .parameter "y"

    .prologue
    .line 42
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Landroid/graphics/Movie;->draw(Landroid/graphics/Canvas;FFLandroid/graphics/Paint;)V

    .line 43
    return-void
.end method

.method public native draw(Landroid/graphics/Canvas;FFLandroid/graphics/Paint;)V
.end method

.method public native duration()I
.end method

.method protected finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 65
    :try_start_0
    iget v0, p0, Landroid/graphics/Movie;->mNativeMovie:I

    invoke-static {v0}, Landroid/graphics/Movie;->nativeDestructor(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 67
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 69
    return-void

    .line 67
    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method

.method public native height()I
.end method

.method public native isOpaque()Z
.end method

.method public native setTime(I)Z
.end method

.method public native width()I
.end method
