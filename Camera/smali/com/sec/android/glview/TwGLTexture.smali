.class public abstract Lcom/sec/android/glview/TwGLTexture;
.super Lcom/sec/android/glview/TwGLView;
.source "TwGLTexture.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "TwGLTexture"

.field private static final TEXTURE_PADDING_SIZE:I = 0x2


# instance fields
.field private mAsyncLodingInProgress:Z

.field protected mBitmap:Landroid/graphics/Bitmap;

.field protected mCoordBuffer:[F

.field protected mFlip:Z

.field protected mGL:Ljavax/microedition/khronos/opengles/GL11;

.field protected mIndexBuffer:Ljava/nio/ByteBuffer;

.field mIndices:[B

.field protected mTexCoordBuffer:Ljava/nio/ByteBuffer;

.field protected mTexCoordHeight:F

.field protected mTexCoordWidth:F

.field protected mTexFlipCoordBuffer:Ljava/nio/ByteBuffer;

.field protected mTextureLoaded:Z

.field protected mTextureReloaded:Z

.field protected mTextures:[I

.field protected mVertexBuffer:Ljava/nio/FloatBuffer;

.field mVertices:[F


# direct methods
.method public constructor <init>(Lcom/sec/android/glview/TwGLContext;FF)V
    .locals 2
    .parameter "glContext"
    .parameter "left"
    .parameter "top"

    .prologue
    const/4 v1, 0x0

    .line 101
    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/glview/TwGLView;-><init>(Lcom/sec/android/glview/TwGLContext;FF)V

    .line 55
    const/4 v0, 0x1

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/sec/android/glview/TwGLTexture;->mTextures:[I

    .line 71
    iput-boolean v1, p0, Lcom/sec/android/glview/TwGLTexture;->mFlip:Z

    .line 73
    iput-boolean v1, p0, Lcom/sec/android/glview/TwGLTexture;->mTextureReloaded:Z

    .line 75
    iput-boolean v1, p0, Lcom/sec/android/glview/TwGLTexture;->mAsyncLodingInProgress:Z

    .line 80
    const/16 v0, 0xc

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/sec/android/glview/TwGLTexture;->mVertices:[F

    .line 91
    iput-boolean v1, p0, Lcom/sec/android/glview/TwGLTexture;->mTextureLoaded:Z

    .line 102
    return-void

    .line 80
    nop

    :array_0
    .array-data 0x4
        0x0t 0x0t 0x80t 0xbft
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0xbft
        0x0t 0x0t 0x80t 0xbft
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x80t 0xbft
        0x0t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public constructor <init>(Lcom/sec/android/glview/TwGLContext;FFFF)V
    .locals 2
    .parameter "glContext"
    .parameter "left"
    .parameter "top"
    .parameter "width"
    .parameter "height"

    .prologue
    const/4 v1, 0x0

    .line 114
    invoke-direct/range {p0 .. p5}, Lcom/sec/android/glview/TwGLView;-><init>(Lcom/sec/android/glview/TwGLContext;FFFF)V

    .line 55
    const/4 v0, 0x1

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/sec/android/glview/TwGLTexture;->mTextures:[I

    .line 71
    iput-boolean v1, p0, Lcom/sec/android/glview/TwGLTexture;->mFlip:Z

    .line 73
    iput-boolean v1, p0, Lcom/sec/android/glview/TwGLTexture;->mTextureReloaded:Z

    .line 75
    iput-boolean v1, p0, Lcom/sec/android/glview/TwGLTexture;->mAsyncLodingInProgress:Z

    .line 80
    const/16 v0, 0xc

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/sec/android/glview/TwGLTexture;->mVertices:[F

    .line 91
    iput-boolean v1, p0, Lcom/sec/android/glview/TwGLTexture;->mTextureLoaded:Z

    .line 115
    return-void

    .line 80
    nop

    :array_0
    .array-data 0x4
        0x0t 0x0t 0x80t 0xbft
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0xbft
        0x0t 0x0t 0x80t 0xbft
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x80t 0xbft
        0x0t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method static synthetic access$002(Lcom/sec/android/glview/TwGLTexture;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 39
    iput-boolean p1, p0, Lcom/sec/android/glview/TwGLTexture;->mAsyncLodingInProgress:Z

    return p1
.end method


# virtual methods
.method public declared-synchronized clear()V
    .locals 1

    .prologue
    .line 197
    monitor-enter p0

    :try_start_0
    invoke-super {p0}, Lcom/sec/android/glview/TwGLView;->clear()V

    .line 199
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/glview/TwGLTexture;->mGL:Ljavax/microedition/khronos/opengles/GL11;

    .line 201
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/glview/TwGLTexture;->mCoordBuffer:[F

    .line 202
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLTexture;->clearBuffers()V

    .line 203
    iget-object v0, p0, Lcom/sec/android/glview/TwGLTexture;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 204
    iget-object v0, p0, Lcom/sec/android/glview/TwGLTexture;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 205
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/glview/TwGLTexture;->mBitmap:Landroid/graphics/Bitmap;

    .line 207
    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLTexture;->getContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/sec/android/glview/TwGLContext;->addTextureToDelete(Lcom/sec/android/glview/TwGLTexture;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 208
    monitor-exit p0

    return-void

    .line 197
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected declared-synchronized clearBuffers()V
    .locals 1

    .prologue
    .line 159
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/sec/android/glview/TwGLTexture;->mVertexBuffer:Ljava/nio/FloatBuffer;

    if-eqz v0, :cond_0

    .line 160
    iget-object v0, p0, Lcom/sec/android/glview/TwGLTexture;->mVertexBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v0}, Ljava/nio/FloatBuffer;->clear()Ljava/nio/Buffer;

    .line 162
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/glview/TwGLTexture;->mVertexBuffer:Ljava/nio/FloatBuffer;

    .line 163
    iget-object v0, p0, Lcom/sec/android/glview/TwGLTexture;->mIndexBuffer:Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_1

    .line 164
    iget-object v0, p0, Lcom/sec/android/glview/TwGLTexture;->mIndexBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 166
    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/glview/TwGLTexture;->mIndexBuffer:Ljava/nio/ByteBuffer;

    .line 167
    iget-object v0, p0, Lcom/sec/android/glview/TwGLTexture;->mTexCoordBuffer:Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_2

    .line 168
    iget-object v0, p0, Lcom/sec/android/glview/TwGLTexture;->mTexCoordBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 170
    :cond_2
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/glview/TwGLTexture;->mTexCoordBuffer:Ljava/nio/ByteBuffer;

    .line 171
    iget-object v0, p0, Lcom/sec/android/glview/TwGLTexture;->mTexFlipCoordBuffer:Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_3

    .line 172
    iget-object v0, p0, Lcom/sec/android/glview/TwGLTexture;->mTexFlipCoordBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 174
    :cond_3
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/glview/TwGLTexture;->mTexFlipCoordBuffer:Ljava/nio/ByteBuffer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 175
    monitor-exit p0

    return-void

    .line 159
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public clearTexture(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 4
    .parameter "gl"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 211
    iget-object v0, p0, Lcom/sec/android/glview/TwGLTexture;->mTextures:[I

    if-eqz v0, :cond_0

    new-array v0, v3, [I

    iget-object v1, p0, Lcom/sec/android/glview/TwGLTexture;->mTextures:[I

    aget v1, v1, v2

    aput v1, v0, v2

    invoke-interface {p1, v3, v0, v2}, Ljavax/microedition/khronos/opengles/GL10;->glDeleteTextures(I[II)V

    .line 212
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/glview/TwGLTexture;->mTextures:[I

    .line 213
    return-void
.end method

.method public declared-synchronized getLoaded(Ljavax/microedition/khronos/opengles/GL11;)Z
    .locals 1
    .parameter "gl"

    .prologue
    .line 385
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/sec/android/glview/TwGLTexture;->mTextureLoaded:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected declared-synchronized initBuffers()V
    .locals 4

    .prologue
    .line 121
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLTexture;->clearBuffers()V

    .line 122
    iget-object v2, p0, Lcom/sec/android/glview/TwGLTexture;->mVertices:[F

    invoke-static {v2}, Lcom/sec/android/glview/TwGLUtil;->getFloatBufferFromFloatArray([F)Ljava/nio/FloatBuffer;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/glview/TwGLTexture;->mVertexBuffer:Ljava/nio/FloatBuffer;

    .line 124
    const/4 v0, 0x0

    .line 125
    .local v0, offset:I
    iget-object v2, p0, Lcom/sec/android/glview/TwGLTexture;->mIndices:[B

    if-nez v2, :cond_0

    .line 126
    const/4 v2, 0x6

    new-array v2, v2, [B

    iput-object v2, p0, Lcom/sec/android/glview/TwGLTexture;->mIndices:[B

    .line 127
    :cond_0
    iget-object v2, p0, Lcom/sec/android/glview/TwGLTexture;->mIndices:[B

    add-int/lit8 v1, v0, 0x1

    .end local v0           #offset:I
    .local v1, offset:I
    const/4 v3, 0x0

    aput-byte v3, v2, v0

    .line 128
    iget-object v2, p0, Lcom/sec/android/glview/TwGLTexture;->mIndices:[B

    add-int/lit8 v0, v1, 0x1

    .end local v1           #offset:I
    .restart local v0       #offset:I
    const/4 v3, 0x1

    aput-byte v3, v2, v1

    .line 129
    iget-object v2, p0, Lcom/sec/android/glview/TwGLTexture;->mIndices:[B

    add-int/lit8 v1, v0, 0x1

    .end local v0           #offset:I
    .restart local v1       #offset:I
    const/4 v3, 0x3

    aput-byte v3, v2, v0

    .line 130
    iget-object v2, p0, Lcom/sec/android/glview/TwGLTexture;->mIndices:[B

    add-int/lit8 v0, v1, 0x1

    .end local v1           #offset:I
    .restart local v0       #offset:I
    const/4 v3, 0x0

    aput-byte v3, v2, v1

    .line 131
    iget-object v2, p0, Lcom/sec/android/glview/TwGLTexture;->mIndices:[B

    add-int/lit8 v1, v0, 0x1

    .end local v0           #offset:I
    .restart local v1       #offset:I
    const/4 v3, 0x3

    aput-byte v3, v2, v0

    .line 132
    iget-object v2, p0, Lcom/sec/android/glview/TwGLTexture;->mIndices:[B

    const/4 v3, 0x2

    aput-byte v3, v2, v1

    .line 134
    iget-object v2, p0, Lcom/sec/android/glview/TwGLTexture;->mIndices:[B

    invoke-static {v2}, Lcom/sec/android/glview/TwGLUtil;->getByteBufferFromByteArray([B)Ljava/nio/ByteBuffer;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/glview/TwGLTexture;->mIndexBuffer:Ljava/nio/ByteBuffer;

    .line 136
    const/16 v2, 0x20

    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/glview/TwGLTexture;->mTexCoordBuffer:Ljava/nio/ByteBuffer;

    .line 137
    const/16 v2, 0x20

    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/glview/TwGLTexture;->mTexFlipCoordBuffer:Ljava/nio/ByteBuffer;

    .line 139
    const/4 v0, 0x0

    .line 140
    .end local v1           #offset:I
    .restart local v0       #offset:I
    iget-object v2, p0, Lcom/sec/android/glview/TwGLTexture;->mCoordBuffer:[F

    if-nez v2, :cond_1

    .line 141
    const/16 v2, 0x8

    new-array v2, v2, [F

    iput-object v2, p0, Lcom/sec/android/glview/TwGLTexture;->mCoordBuffer:[F

    .line 142
    :cond_1
    iget-object v2, p0, Lcom/sec/android/glview/TwGLTexture;->mCoordBuffer:[F

    add-int/lit8 v1, v0, 0x1

    .end local v0           #offset:I
    .restart local v1       #offset:I
    const/4 v3, 0x0

    aput v3, v2, v0

    .line 143
    iget-object v2, p0, Lcom/sec/android/glview/TwGLTexture;->mCoordBuffer:[F

    add-int/lit8 v0, v1, 0x1

    .end local v1           #offset:I
    .restart local v0       #offset:I
    const/4 v3, 0x0

    aput v3, v2, v1

    .line 144
    iget-object v2, p0, Lcom/sec/android/glview/TwGLTexture;->mCoordBuffer:[F

    add-int/lit8 v1, v0, 0x1

    .end local v0           #offset:I
    .restart local v1       #offset:I
    const/4 v3, 0x0

    aput v3, v2, v0

    .line 145
    iget-object v2, p0, Lcom/sec/android/glview/TwGLTexture;->mCoordBuffer:[F

    add-int/lit8 v0, v1, 0x1

    .end local v1           #offset:I
    .restart local v0       #offset:I
    const/high16 v3, 0x3f80

    aput v3, v2, v1

    .line 146
    iget-object v2, p0, Lcom/sec/android/glview/TwGLTexture;->mCoordBuffer:[F

    add-int/lit8 v1, v0, 0x1

    .end local v0           #offset:I
    .restart local v1       #offset:I
    const/high16 v3, 0x3f80

    aput v3, v2, v0

    .line 147
    iget-object v2, p0, Lcom/sec/android/glview/TwGLTexture;->mCoordBuffer:[F

    add-int/lit8 v0, v1, 0x1

    .end local v1           #offset:I
    .restart local v0       #offset:I
    const/4 v3, 0x0

    aput v3, v2, v1

    .line 148
    iget-object v2, p0, Lcom/sec/android/glview/TwGLTexture;->mCoordBuffer:[F

    add-int/lit8 v1, v0, 0x1

    .end local v0           #offset:I
    .restart local v1       #offset:I
    const/high16 v3, 0x3f80

    aput v3, v2, v0

    .line 149
    iget-object v2, p0, Lcom/sec/android/glview/TwGLTexture;->mCoordBuffer:[F

    const/high16 v3, 0x3f80

    aput v3, v2, v1

    .line 151
    iget-object v2, p0, Lcom/sec/android/glview/TwGLTexture;->mTexCoordBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/glview/TwGLTexture;->mCoordBuffer:[F

    invoke-virtual {v2, v3}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 152
    iget-object v2, p0, Lcom/sec/android/glview/TwGLTexture;->mTexFlipCoordBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/glview/TwGLTexture;->mCoordBuffer:[F

    invoke-virtual {v2, v3}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 153
    monitor-exit p0

    return-void

    .line 121
    .end local v1           #offset:I
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method protected declared-synchronized initCoordBuffer(IIII)V
    .locals 4
    .parameter "width"
    .parameter "height"
    .parameter "newWidth"
    .parameter "newHeight"

    .prologue
    .line 397
    monitor-enter p0

    int-to-float v2, p1

    int-to-float v3, p3

    div-float/2addr v2, v3

    :try_start_0
    iput v2, p0, Lcom/sec/android/glview/TwGLTexture;->mTexCoordWidth:F

    .line 398
    int-to-float v2, p2

    int-to-float v3, p4

    div-float/2addr v2, v3

    iput v2, p0, Lcom/sec/android/glview/TwGLTexture;->mTexCoordHeight:F

    .line 400
    const/4 v0, 0x0

    .line 401
    .local v0, offset:I
    iget-object v2, p0, Lcom/sec/android/glview/TwGLTexture;->mCoordBuffer:[F

    add-int/lit8 v1, v0, 0x1

    .end local v0           #offset:I
    .local v1, offset:I
    const/4 v3, 0x0

    aput v3, v2, v0

    .line 402
    iget-object v2, p0, Lcom/sec/android/glview/TwGLTexture;->mCoordBuffer:[F

    add-int/lit8 v0, v1, 0x1

    .end local v1           #offset:I
    .restart local v0       #offset:I
    const/4 v3, 0x0

    aput v3, v2, v1

    .line 403
    iget-object v2, p0, Lcom/sec/android/glview/TwGLTexture;->mCoordBuffer:[F

    add-int/lit8 v1, v0, 0x1

    .end local v0           #offset:I
    .restart local v1       #offset:I
    const/4 v3, 0x0

    aput v3, v2, v0

    .line 404
    iget-object v2, p0, Lcom/sec/android/glview/TwGLTexture;->mCoordBuffer:[F

    add-int/lit8 v0, v1, 0x1

    .end local v1           #offset:I
    .restart local v0       #offset:I
    iget v3, p0, Lcom/sec/android/glview/TwGLTexture;->mTexCoordHeight:F

    aput v3, v2, v1

    .line 405
    iget-object v2, p0, Lcom/sec/android/glview/TwGLTexture;->mCoordBuffer:[F

    add-int/lit8 v1, v0, 0x1

    .end local v0           #offset:I
    .restart local v1       #offset:I
    iget v3, p0, Lcom/sec/android/glview/TwGLTexture;->mTexCoordWidth:F

    aput v3, v2, v0

    .line 406
    iget-object v2, p0, Lcom/sec/android/glview/TwGLTexture;->mCoordBuffer:[F

    add-int/lit8 v0, v1, 0x1

    .end local v1           #offset:I
    .restart local v0       #offset:I
    const/4 v3, 0x0

    aput v3, v2, v1

    .line 407
    iget-object v2, p0, Lcom/sec/android/glview/TwGLTexture;->mCoordBuffer:[F

    add-int/lit8 v1, v0, 0x1

    .end local v0           #offset:I
    .restart local v1       #offset:I
    iget v3, p0, Lcom/sec/android/glview/TwGLTexture;->mTexCoordWidth:F

    aput v3, v2, v0

    .line 408
    iget-object v2, p0, Lcom/sec/android/glview/TwGLTexture;->mCoordBuffer:[F

    iget v3, p0, Lcom/sec/android/glview/TwGLTexture;->mTexCoordHeight:F

    aput v3, v2, v1

    .line 410
    iget-object v2, p0, Lcom/sec/android/glview/TwGLTexture;->mTexCoordBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/glview/TwGLTexture;->mCoordBuffer:[F

    invoke-virtual {v2, v3}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 412
    const/4 v0, 0x0

    .line 413
    .end local v1           #offset:I
    .restart local v0       #offset:I
    iget-object v2, p0, Lcom/sec/android/glview/TwGLTexture;->mCoordBuffer:[F

    add-int/lit8 v1, v0, 0x1

    .end local v0           #offset:I
    .restart local v1       #offset:I
    iget v3, p0, Lcom/sec/android/glview/TwGLTexture;->mTexCoordWidth:F

    aput v3, v2, v0

    .line 414
    iget-object v2, p0, Lcom/sec/android/glview/TwGLTexture;->mCoordBuffer:[F

    add-int/lit8 v0, v1, 0x1

    .end local v1           #offset:I
    .restart local v0       #offset:I
    const/4 v3, 0x0

    aput v3, v2, v1

    .line 415
    iget-object v2, p0, Lcom/sec/android/glview/TwGLTexture;->mCoordBuffer:[F

    add-int/lit8 v1, v0, 0x1

    .end local v0           #offset:I
    .restart local v1       #offset:I
    iget v3, p0, Lcom/sec/android/glview/TwGLTexture;->mTexCoordWidth:F

    aput v3, v2, v0

    .line 416
    iget-object v2, p0, Lcom/sec/android/glview/TwGLTexture;->mCoordBuffer:[F

    add-int/lit8 v0, v1, 0x1

    .end local v1           #offset:I
    .restart local v0       #offset:I
    iget v3, p0, Lcom/sec/android/glview/TwGLTexture;->mTexCoordHeight:F

    aput v3, v2, v1

    .line 417
    iget-object v2, p0, Lcom/sec/android/glview/TwGLTexture;->mCoordBuffer:[F

    add-int/lit8 v1, v0, 0x1

    .end local v0           #offset:I
    .restart local v1       #offset:I
    const/4 v3, 0x0

    aput v3, v2, v0

    .line 418
    iget-object v2, p0, Lcom/sec/android/glview/TwGLTexture;->mCoordBuffer:[F

    add-int/lit8 v0, v1, 0x1

    .end local v1           #offset:I
    .restart local v0       #offset:I
    const/4 v3, 0x0

    aput v3, v2, v1

    .line 419
    iget-object v2, p0, Lcom/sec/android/glview/TwGLTexture;->mCoordBuffer:[F

    add-int/lit8 v1, v0, 0x1

    .end local v0           #offset:I
    .restart local v1       #offset:I
    const/4 v3, 0x0

    aput v3, v2, v0

    .line 420
    iget-object v2, p0, Lcom/sec/android/glview/TwGLTexture;->mCoordBuffer:[F

    iget v3, p0, Lcom/sec/android/glview/TwGLTexture;->mTexCoordHeight:F

    aput v3, v2, v1

    .line 422
    iget-object v2, p0, Lcom/sec/android/glview/TwGLTexture;->mTexFlipCoordBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/glview/TwGLTexture;->mCoordBuffer:[F

    invoke-virtual {v2, v3}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 424
    monitor-exit p0

    return-void

    .line 397
    .end local v1           #offset:I
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized initSize()V
    .locals 2

    .prologue
    .line 182
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/sec/android/glview/TwGLTexture;->mBitmap:Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    .line 183
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLTexture;->loadBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/glview/TwGLTexture;->mBitmap:Landroid/graphics/Bitmap;

    .line 185
    :cond_0
    iget-object v0, p0, Lcom/sec/android/glview/TwGLTexture;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    .line 186
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLTexture;->getSizeSpecified()Z

    move-result v0

    if-nez v0, :cond_2

    .line 187
    iget-object v0, p0, Lcom/sec/android/glview/TwGLTexture;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Lcom/sec/android/glview/TwGLTexture;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/glview/TwGLTexture;->setSize(FF)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 191
    :cond_1
    :goto_0
    monitor-exit p0

    return-void

    .line 189
    :cond_2
    :try_start_1
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLTexture;->getWidth()F

    move-result v0

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLTexture;->getHeight()F

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/glview/TwGLTexture;->setSize(FF)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 182
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected abstract loadBitmap()Landroid/graphics/Bitmap;
.end method

.method protected declared-synchronized loadGLTexture(Ljavax/microedition/khronos/opengles/GL11;)V
    .locals 21
    .parameter "gl"

    .prologue
    .line 433
    monitor-enter p0

    :try_start_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/glview/TwGLTexture;->mBitmap:Landroid/graphics/Bitmap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v3, :cond_0

    .line 475
    :goto_0
    monitor-exit p0

    return-void

    .line 436
    :cond_0
    :try_start_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/glview/TwGLTexture;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v20

    .line 437
    .local v20, width:I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/glview/TwGLTexture;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v19

    .line 438
    .local v19, height:I
    invoke-static/range {v20 .. v20}, Lcom/sec/android/glview/TwGLUtil;->nextPowerOf2(I)I

    move-result v7

    .line 439
    .local v7, newWidth:I
    invoke-static/range {v19 .. v19}, Lcom/sec/android/glview/TwGLUtil;->nextPowerOf2(I)I

    move-result v8

    .line 441
    .local v8, newHeight:I
    move/from16 v0, v20

    if-ne v0, v7, :cond_2

    move/from16 v0, v19

    if-ne v0, v8, :cond_2

    .line 442
    const/16 v3, 0xde1

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/glview/TwGLTexture;->mBitmap:Landroid/graphics/Bitmap;

    const/4 v9, 0x0

    invoke-static {v3, v4, v5, v9}, Landroid/opengl/GLUtils;->texImage2D(IILandroid/graphics/Bitmap;I)V

    .line 469
    :goto_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/glview/TwGLTexture;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v3, :cond_1

    .line 470
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/glview/TwGLTexture;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->recycle()V

    .line 471
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/sec/android/glview/TwGLTexture;->mBitmap:Landroid/graphics/Bitmap;

    .line 474
    :cond_1
    move-object/from16 v0, p0

    move/from16 v1, v20

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2, v7, v8}, Lcom/sec/android/glview/TwGLTexture;->initCoordBuffer(IIII)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 433
    .end local v7           #newWidth:I
    .end local v8           #newHeight:I
    .end local v19           #height:I
    .end local v20           #width:I
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .line 444
    .restart local v7       #newWidth:I
    .restart local v8       #newHeight:I
    .restart local v19       #height:I
    .restart local v20       #width:I
    :cond_2
    :try_start_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/glview/TwGLTexture;->mBitmap:Landroid/graphics/Bitmap;

    invoke-static {v3}, Landroid/opengl/GLUtils;->getInternalFormat(Landroid/graphics/Bitmap;)I

    move-result v6

    .line 445
    .local v6, format:I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/glview/TwGLTexture;->mBitmap:Landroid/graphics/Bitmap;

    invoke-static {v3}, Landroid/opengl/GLUtils;->getType(Landroid/graphics/Bitmap;)I

    move-result v11

    .line 447
    .local v11, type:I
    const/16 v4, 0xde1

    const/4 v5, 0x0

    const/4 v9, 0x0

    const/4 v12, 0x0

    move-object/from16 v3, p1

    move v10, v6

    invoke-interface/range {v3 .. v12}, Ljavax/microedition/khronos/opengles/GL11;->glTexImage2D(IIIIIIIILjava/nio/Buffer;)V

    .line 466
    const/16 v12, 0xde1

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/glview/TwGLTexture;->mBitmap:Landroid/graphics/Bitmap;

    move-object/from16 v16, v0

    move/from16 v17, v6

    move/from16 v18, v11

    invoke-static/range {v12 .. v18}, Landroid/opengl/GLUtils;->texSubImage2D(IIIILandroid/graphics/Bitmap;II)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method

.method public onAlphaUpdated()V
    .locals 0

    .prologue
    .line 226
    invoke-super {p0}, Lcom/sec/android/glview/TwGLView;->onAlphaUpdated()V

    .line 227
    return-void
.end method

.method public declared-synchronized onDraw(Ljavax/microedition/khronos/opengles/GL11;)V
    .locals 4
    .parameter "gl"

    .prologue
    .line 481
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/sec/android/glview/TwGLTexture;->mTextures:[I

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/sec/android/glview/TwGLTexture;->mTextureLoaded:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_1

    .line 528
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 484
    :cond_1
    :try_start_1
    iget-boolean v0, p0, Lcom/sec/android/glview/TwGLView;->mLayoutUpdated:Z

    if-eqz v0, :cond_5

    .line 485
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLTexture;->setVertices()V

    .line 486
    iget-object v0, p0, Lcom/sec/android/glview/TwGLTexture;->mVertexBuffer:Ljava/nio/FloatBuffer;

    if-eqz v0, :cond_2

    .line 487
    iget-object v0, p0, Lcom/sec/android/glview/TwGLTexture;->mVertexBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v0}, Ljava/nio/FloatBuffer;->clear()Ljava/nio/Buffer;

    .line 489
    :cond_2
    iget-object v0, p0, Lcom/sec/android/glview/TwGLTexture;->mVertices:[F

    invoke-static {v0}, Lcom/sec/android/glview/TwGLUtil;->getFloatBufferFromFloatArray([F)Ljava/nio/FloatBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/glview/TwGLTexture;->mVertexBuffer:Ljava/nio/FloatBuffer;

    .line 490
    iget-object v0, p0, Lcom/sec/android/glview/TwGLTexture;->mVertexBuffer:Ljava/nio/FloatBuffer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/glview/TwGLTexture;->mTexFlipCoordBuffer:Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_0

    .line 492
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/glview/TwGLView;->mLayoutUpdated:Z

    .line 501
    :cond_3
    :goto_1
    const/16 v0, 0xde1

    iget-object v1, p0, Lcom/sec/android/glview/TwGLTexture;->mTextures:[I

    const/4 v2, 0x0

    aget v1, v1, v2

    invoke-interface {p1, v0, v1}, Ljavax/microedition/khronos/opengles/GL11;->glBindTexture(II)V

    .line 510
    const v0, 0x8074

    invoke-interface {p1, v0}, Ljavax/microedition/khronos/opengles/GL11;->glEnableClientState(I)V

    .line 511
    const v0, 0x8078

    invoke-interface {p1, v0}, Ljavax/microedition/khronos/opengles/GL11;->glEnableClientState(I)V

    .line 513
    const/16 v0, 0x900

    invoke-interface {p1, v0}, Ljavax/microedition/khronos/opengles/GL11;->glFrontFace(I)V

    .line 514
    const/4 v0, 0x3

    const/16 v1, 0x1406

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/sec/android/glview/TwGLTexture;->mVertexBuffer:Ljava/nio/FloatBuffer;

    invoke-interface {p1, v0, v1, v2, v3}, Ljavax/microedition/khronos/opengles/GL11;->glVertexPointer(IIILjava/nio/Buffer;)V

    .line 516
    iget-boolean v0, p0, Lcom/sec/android/glview/TwGLTexture;->mFlip:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_7

    .line 517
    const/4 v0, 0x2

    const/16 v1, 0x1406

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/sec/android/glview/TwGLTexture;->mTexFlipCoordBuffer:Ljava/nio/ByteBuffer;

    invoke-interface {p1, v0, v1, v2, v3}, Ljavax/microedition/khronos/opengles/GL11;->glTexCoordPointer(IIILjava/nio/Buffer;)V

    .line 521
    :goto_2
    iget-boolean v0, p0, Lcom/sec/android/glview/TwGLTexture;->mTextureReloaded:Z

    if-eqz v0, :cond_4

    .line 522
    invoke-virtual {p0, p1}, Lcom/sec/android/glview/TwGLTexture;->loadGLTexture(Ljavax/microedition/khronos/opengles/GL11;)V

    .line 523
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/glview/TwGLTexture;->mTextureReloaded:Z

    .line 525
    :cond_4
    const/4 v0, 0x4

    iget-object v1, p0, Lcom/sec/android/glview/TwGLTexture;->mIndices:[B

    array-length v1, v1

    const/16 v2, 0x1401

    iget-object v3, p0, Lcom/sec/android/glview/TwGLTexture;->mIndexBuffer:Ljava/nio/ByteBuffer;

    invoke-interface {p1, v0, v1, v2, v3}, Ljavax/microedition/khronos/opengles/GL11;->glDrawElements(IIILjava/nio/Buffer;)V

    .line 526
    const v0, 0x8074

    invoke-interface {p1, v0}, Ljavax/microedition/khronos/opengles/GL11;->glDisableClientState(I)V

    .line 527
    const v0, 0x8078

    invoke-interface {p1, v0}, Ljavax/microedition/khronos/opengles/GL11;->glDisableClientState(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 481
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 494
    :cond_5
    :try_start_2
    iget-object v0, p0, Lcom/sec/android/glview/TwGLTexture;->mVertexBuffer:Ljava/nio/FloatBuffer;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/sec/android/glview/TwGLTexture;->mTexFlipCoordBuffer:Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/sec/android/glview/TwGLTexture;->mTexCoordBuffer:Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/sec/android/glview/TwGLTexture;->mIndexBuffer:Ljava/nio/ByteBuffer;

    if-nez v0, :cond_3

    .line 495
    :cond_6
    const-string v0, "TwGLTexture"

    const-string v1, "init buffers on onDraw"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 496
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLTexture;->setVertices()V

    .line 497
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLTexture;->initBuffers()V

    goto :goto_1

    .line 519
    :cond_7
    const/4 v0, 0x2

    const/16 v1, 0x1406

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/sec/android/glview/TwGLTexture;->mTexCoordBuffer:Ljava/nio/ByteBuffer;

    invoke-interface {p1, v0, v1, v2, v3}, Ljavax/microedition/khronos/opengles/GL11;->glTexCoordPointer(IIILjava/nio/Buffer;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2
.end method

.method public onLayoutUpdated()V
    .locals 1

    .prologue
    .line 220
    invoke-super {p0}, Lcom/sec/android/glview/TwGLView;->onLayoutUpdated()V

    .line 221
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/glview/TwGLView;->mLayoutUpdated:Z

    .line 222
    return-void
.end method

.method protected declared-synchronized onLoad(Ljavax/microedition/khronos/opengles/GL11;)Z
    .locals 10
    .parameter "gl"

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 259
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/sec/android/glview/TwGLTexture;->mGL:Ljavax/microedition/khronos/opengles/GL11;

    .line 261
    iget-boolean v8, p0, Lcom/sec/android/glview/TwGLView;->mAsyncLoad:Z

    if-eqz v8, :cond_2

    .line 262
    iget-boolean v8, p0, Lcom/sec/android/glview/TwGLTexture;->mAsyncLodingInProgress:Z

    if-nez v8, :cond_0

    .line 263
    new-instance v4, Ljava/lang/Thread;

    new-instance v8, Lcom/sec/android/glview/TwGLTexture$1;

    invoke-direct {v8, p0}, Lcom/sec/android/glview/TwGLTexture$1;-><init>(Lcom/sec/android/glview/TwGLTexture;)V

    invoke-direct {v4, v8}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 302
    .local v4, t:Ljava/lang/Thread;
    invoke-virtual {v4}, Ljava/lang/Thread;->start()V

    .line 303
    iget-boolean v8, p0, Lcom/sec/android/glview/TwGLTexture;->mTextureLoaded:Z

    if-eqz v8, :cond_1

    iget-boolean v8, p0, Lcom/sec/android/glview/TwGLTexture;->mAsyncLodingInProgress:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v8, :cond_1

    .line 356
    .end local v4           #t:Ljava/lang/Thread;
    :cond_0
    :goto_0
    monitor-exit p0

    return v6

    .restart local v4       #t:Ljava/lang/Thread;
    :cond_1
    move v6, v7

    .line 306
    goto :goto_0

    .line 310
    .end local v4           #t:Ljava/lang/Thread;
    :cond_2
    :try_start_1
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLTexture;->initSize()V

    .line 311
    iget-object v8, p0, Lcom/sec/android/glview/TwGLTexture;->mBitmap:Landroid/graphics/Bitmap;

    if-nez v8, :cond_3

    move v6, v7

    .line 312
    goto :goto_0

    .line 313
    :cond_3
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLTexture;->setVertices()V

    .line 314
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLTexture;->initBuffers()V

    .line 316
    iget-object v7, p0, Lcom/sec/android/glview/TwGLTexture;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    .line 317
    .local v5, width:I
    iget-object v7, p0, Lcom/sec/android/glview/TwGLTexture;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    .line 319
    .local v3, height:I
    const/4 v7, 0x4

    new-array v0, v7, [F

    const/4 v7, 0x0

    const/4 v8, 0x0

    aput v8, v0, v7

    const/4 v7, 0x1

    const/4 v8, 0x0

    aput v8, v0, v7

    const/4 v7, 0x2

    int-to-float v8, v5

    aput v8, v0, v7

    const/4 v7, 0x3

    int-to-float v8, v3

    aput v8, v0, v7

    .line 321
    .local v0, cropRect:[F
    iget-object v7, p0, Lcom/sec/android/glview/TwGLTexture;->mTextures:[I

    if-nez v7, :cond_4

    .line 322
    const/4 v7, 0x1

    new-array v7, v7, [I

    iput-object v7, p0, Lcom/sec/android/glview/TwGLTexture;->mTextures:[I

    .line 323
    :cond_4
    const/4 v7, 0x1

    iget-object v8, p0, Lcom/sec/android/glview/TwGLTexture;->mTextures:[I

    const/4 v9, 0x0

    invoke-interface {p1, v7, v8, v9}, Ljavax/microedition/khronos/opengles/GL11;->glGenTextures(I[II)V

    .line 325
    invoke-interface {p1}, Ljavax/microedition/khronos/opengles/GL11;->glGetError()I

    move-result v1

    .line 326
    .local v1, error:I
    const/16 v7, 0x501

    if-ne v1, v7, :cond_7

    .line 327
    const-string v7, "TwGLTexture"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "onLoad glGenTextures width : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "  height : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 332
    :cond_5
    :goto_1
    const/16 v7, 0xde1

    iget-object v8, p0, Lcom/sec/android/glview/TwGLTexture;->mTextures:[I

    const/4 v9, 0x0

    aget v8, v8, v9

    invoke-interface {p1, v7, v8}, Ljavax/microedition/khronos/opengles/GL11;->glBindTexture(II)V

    .line 334
    invoke-interface {p1}, Ljavax/microedition/khronos/opengles/GL11;->glGetError()I

    move-result v2

    .line 335
    .local v2, errorBind:I
    if-eqz v2, :cond_6

    .line 336
    const-string v7, "TwGLTexture"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "onLoad glBindTexture GL_ERROR NUM : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "  ex)GL_OUT_OF_MEMORY = 1285"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 339
    :cond_6
    rem-int/lit8 v7, v5, 0x2

    if-ne v7, v6, :cond_8

    .line 340
    const/16 v7, 0xcf5

    const/4 v8, 0x2

    invoke-interface {p1, v7, v8}, Ljavax/microedition/khronos/opengles/GL11;->glPixelStorei(II)V

    .line 344
    :goto_2
    const/16 v7, 0xde1

    const v8, 0x8b9d

    const/4 v9, 0x0

    invoke-interface {p1, v7, v8, v0, v9}, Ljavax/microedition/khronos/opengles/GL11;->glTexParameterfv(II[FI)V

    .line 346
    const/16 v7, 0xde1

    const/16 v8, 0x2801

    const v9, 0x46180400

    invoke-interface {p1, v7, v8, v9}, Ljavax/microedition/khronos/opengles/GL11;->glTexParameterf(IIF)V

    .line 347
    const/16 v7, 0xde1

    const/16 v8, 0x2800

    const v9, 0x46180400

    invoke-interface {p1, v7, v8, v9}, Ljavax/microedition/khronos/opengles/GL11;->glTexParameterf(IIF)V

    .line 349
    const/16 v7, 0xde1

    const/16 v8, 0x2802

    const v9, 0x46240400

    invoke-interface {p1, v7, v8, v9}, Ljavax/microedition/khronos/opengles/GL11;->glTexParameterf(IIF)V

    .line 350
    const/16 v7, 0xde1

    const/16 v8, 0x2803

    const v9, 0x46240400

    invoke-interface {p1, v7, v8, v9}, Ljavax/microedition/khronos/opengles/GL11;->glTexParameterf(IIF)V

    .line 352
    invoke-virtual {p0, p1}, Lcom/sec/android/glview/TwGLTexture;->loadGLTexture(Ljavax/microedition/khronos/opengles/GL11;)V

    .line 354
    const/4 v7, 0x1

    iput-boolean v7, p0, Lcom/sec/android/glview/TwGLTexture;->mTextureLoaded:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0

    .line 259
    .end local v0           #cropRect:[F
    .end local v1           #error:I
    .end local v2           #errorBind:I
    .end local v3           #height:I
    .end local v5           #width:I
    :catchall_0
    move-exception v6

    monitor-exit p0

    throw v6

    .line 328
    .restart local v0       #cropRect:[F
    .restart local v1       #error:I
    .restart local v3       #height:I
    .restart local v5       #width:I
    :cond_7
    if-eqz v1, :cond_5

    .line 329
    :try_start_2
    const-string v7, "TwGLTexture"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "onLoad glGenTextures GL_ERROR NUM : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 342
    .restart local v2       #errorBind:I
    :cond_8
    const/16 v7, 0xcf5

    const/4 v8, 0x4

    invoke-interface {p1, v7, v8}, Ljavax/microedition/khronos/opengles/GL11;->glPixelStorei(II)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2
.end method

.method public onReset()V
    .locals 1

    .prologue
    .line 539
    iget-object v0, p0, Lcom/sec/android/glview/TwGLTexture;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 540
    iget-object v0, p0, Lcom/sec/android/glview/TwGLTexture;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 541
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/glview/TwGLTexture;->mBitmap:Landroid/graphics/Bitmap;

    .line 544
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/glview/TwGLTexture;->mTextureLoaded:Z

    .line 545
    return-void
.end method

.method protected declared-synchronized reLoad()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 360
    monitor-enter p0

    :try_start_0
    iget-boolean v2, p0, Lcom/sec/android/glview/TwGLTexture;->mTextureLoaded:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_0

    .line 377
    :goto_0
    monitor-exit p0

    return v0

    .line 363
    :cond_0
    const/4 v0, 0x0

    :try_start_1
    iput-boolean v0, p0, Lcom/sec/android/glview/TwGLTexture;->mTextureLoaded:Z

    .line 365
    iget-object v0, p0, Lcom/sec/android/glview/TwGLTexture;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    .line 366
    iget-object v0, p0, Lcom/sec/android/glview/TwGLTexture;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 367
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/glview/TwGLTexture;->mBitmap:Landroid/graphics/Bitmap;

    .line 369
    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLTexture;->loadBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/glview/TwGLTexture;->mBitmap:Landroid/graphics/Bitmap;

    .line 371
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLTexture;->setVertices()V

    .line 372
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLTexture;->initBuffers()V

    .line 374
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/glview/TwGLTexture;->mTextureLoaded:Z

    .line 375
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/glview/TwGLTexture;->mTextureReloaded:Z

    .line 376
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLTexture;->getContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/sec/android/glview/TwGLContext;->setDirty(Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v0, v1

    .line 377
    goto :goto_0

    .line 360
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setFlip(Z)V
    .locals 0
    .parameter "flip"

    .prologue
    .line 230
    iput-boolean p1, p0, Lcom/sec/android/glview/TwGLTexture;->mFlip:Z

    .line 231
    return-void
.end method

.method protected declared-synchronized setVertices()V
    .locals 4

    .prologue
    .line 237
    monitor-enter p0

    const/4 v1, 0x2

    :try_start_0
    new-array v0, v1, [F

    .line 238
    .local v0, glCoordinate:[F
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLTexture;->getContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLTexture;->getLeft()F

    move-result v2

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLTexture;->getTop()F

    move-result v3

    invoke-static {v1, v0, v2, v3}, Lcom/sec/android/glview/TwGLUtil;->getGLCoordinateFromScreenCoordinate(Lcom/sec/android/glview/TwGLContext;[FFF)V

    .line 239
    iget-object v1, p0, Lcom/sec/android/glview/TwGLTexture;->mVertices:[F

    const/4 v2, 0x0

    const/4 v3, 0x0

    aget v3, v0, v3

    aput v3, v1, v2

    .line 240
    iget-object v1, p0, Lcom/sec/android/glview/TwGLTexture;->mVertices:[F

    const/4 v2, 0x1

    const/4 v3, 0x1

    aget v3, v0, v3

    aput v3, v1, v2

    .line 242
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLTexture;->getContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLTexture;->getLeft()F

    move-result v2

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLTexture;->getBottom()F

    move-result v3

    invoke-static {v1, v0, v2, v3}, Lcom/sec/android/glview/TwGLUtil;->getGLCoordinateFromScreenCoordinate(Lcom/sec/android/glview/TwGLContext;[FFF)V

    .line 243
    iget-object v1, p0, Lcom/sec/android/glview/TwGLTexture;->mVertices:[F

    const/4 v2, 0x3

    const/4 v3, 0x0

    aget v3, v0, v3

    aput v3, v1, v2

    .line 244
    iget-object v1, p0, Lcom/sec/android/glview/TwGLTexture;->mVertices:[F

    const/4 v2, 0x4

    const/4 v3, 0x1

    aget v3, v0, v3

    aput v3, v1, v2

    .line 246
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLTexture;->getContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLTexture;->getRight()F

    move-result v2

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLTexture;->getTop()F

    move-result v3

    invoke-static {v1, v0, v2, v3}, Lcom/sec/android/glview/TwGLUtil;->getGLCoordinateFromScreenCoordinate(Lcom/sec/android/glview/TwGLContext;[FFF)V

    .line 247
    iget-object v1, p0, Lcom/sec/android/glview/TwGLTexture;->mVertices:[F

    const/4 v2, 0x6

    const/4 v3, 0x0

    aget v3, v0, v3

    aput v3, v1, v2

    .line 248
    iget-object v1, p0, Lcom/sec/android/glview/TwGLTexture;->mVertices:[F

    const/4 v2, 0x7

    const/4 v3, 0x1

    aget v3, v0, v3

    aput v3, v1, v2

    .line 250
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLTexture;->getContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLTexture;->getRight()F

    move-result v2

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLTexture;->getBottom()F

    move-result v3

    invoke-static {v1, v0, v2, v3}, Lcom/sec/android/glview/TwGLUtil;->getGLCoordinateFromScreenCoordinate(Lcom/sec/android/glview/TwGLContext;[FFF)V

    .line 251
    iget-object v1, p0, Lcom/sec/android/glview/TwGLTexture;->mVertices:[F

    const/16 v2, 0x9

    const/4 v3, 0x0

    aget v3, v0, v3

    aput v3, v1, v2

    .line 252
    iget-object v1, p0, Lcom/sec/android/glview/TwGLTexture;->mVertices:[F

    const/16 v2, 0xa

    const/4 v3, 0x1

    aget v3, v0, v3

    aput v3, v1, v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 253
    monitor-exit p0

    return-void

    .line 237
    .end local v0           #glCoordinate:[F
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method
