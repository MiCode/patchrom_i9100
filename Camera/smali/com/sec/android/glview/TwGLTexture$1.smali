.class Lcom/sec/android/glview/TwGLTexture$1;
.super Ljava/lang/Object;
.source "TwGLTexture.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/glview/TwGLTexture;->onLoad(Ljavax/microedition/khronos/opengles/GL11;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/glview/TwGLTexture;


# direct methods
.method constructor <init>(Lcom/sec/android/glview/TwGLTexture;)V
    .locals 0
    .parameter

    .prologue
    .line 263
    iput-object p1, p0, Lcom/sec/android/glview/TwGLTexture$1;->this$0:Lcom/sec/android/glview/TwGLTexture;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .prologue
    const v9, 0x46180400

    const/4 v4, 0x0

    const/4 v8, 0x0

    const/16 v7, 0xde1

    const/4 v6, 0x1

    .line 266
    iget-object v3, p0, Lcom/sec/android/glview/TwGLTexture$1;->this$0:Lcom/sec/android/glview/TwGLTexture;

    #setter for: Lcom/sec/android/glview/TwGLTexture;->mAsyncLodingInProgress:Z
    invoke-static {v3, v6}, Lcom/sec/android/glview/TwGLTexture;->access$002(Lcom/sec/android/glview/TwGLTexture;Z)Z

    .line 267
    iget-object v3, p0, Lcom/sec/android/glview/TwGLTexture$1;->this$0:Lcom/sec/android/glview/TwGLTexture;

    invoke-virtual {v3}, Lcom/sec/android/glview/TwGLTexture;->initSize()V

    .line 268
    iget-object v3, p0, Lcom/sec/android/glview/TwGLTexture$1;->this$0:Lcom/sec/android/glview/TwGLTexture;

    iget-object v3, v3, Lcom/sec/android/glview/TwGLTexture;->mBitmap:Landroid/graphics/Bitmap;

    if-nez v3, :cond_0

    .line 300
    :goto_0
    return-void

    .line 270
    :cond_0
    iget-object v3, p0, Lcom/sec/android/glview/TwGLTexture$1;->this$0:Lcom/sec/android/glview/TwGLTexture;

    invoke-virtual {v3}, Lcom/sec/android/glview/TwGLTexture;->setVertices()V

    .line 271
    iget-object v3, p0, Lcom/sec/android/glview/TwGLTexture$1;->this$0:Lcom/sec/android/glview/TwGLTexture;

    invoke-virtual {v3}, Lcom/sec/android/glview/TwGLTexture;->initBuffers()V

    .line 273
    iget-object v3, p0, Lcom/sec/android/glview/TwGLTexture$1;->this$0:Lcom/sec/android/glview/TwGLTexture;

    iget-object v3, v3, Lcom/sec/android/glview/TwGLTexture;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    .line 274
    .local v2, width:I
    iget-object v3, p0, Lcom/sec/android/glview/TwGLTexture$1;->this$0:Lcom/sec/android/glview/TwGLTexture;

    iget-object v3, v3, Lcom/sec/android/glview/TwGLTexture;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    .line 276
    .local v1, height:I
    const/4 v3, 0x4

    new-array v0, v3, [F

    aput v4, v0, v8

    aput v4, v0, v6

    const/4 v3, 0x2

    int-to-float v4, v2

    aput v4, v0, v3

    const/4 v3, 0x3

    int-to-float v4, v1

    aput v4, v0, v3

    .line 278
    .local v0, cropRect:[F
    iget-object v3, p0, Lcom/sec/android/glview/TwGLTexture$1;->this$0:Lcom/sec/android/glview/TwGLTexture;

    iget-object v3, v3, Lcom/sec/android/glview/TwGLTexture;->mTextures:[I

    if-nez v3, :cond_1

    .line 279
    iget-object v3, p0, Lcom/sec/android/glview/TwGLTexture$1;->this$0:Lcom/sec/android/glview/TwGLTexture;

    new-array v4, v6, [I

    iput-object v4, v3, Lcom/sec/android/glview/TwGLTexture;->mTextures:[I

    .line 280
    :cond_1
    iget-object v3, p0, Lcom/sec/android/glview/TwGLTexture$1;->this$0:Lcom/sec/android/glview/TwGLTexture;

    iget-object v3, v3, Lcom/sec/android/glview/TwGLTexture;->mGL:Ljavax/microedition/khronos/opengles/GL11;

    iget-object v4, p0, Lcom/sec/android/glview/TwGLTexture$1;->this$0:Lcom/sec/android/glview/TwGLTexture;

    iget-object v4, v4, Lcom/sec/android/glview/TwGLTexture;->mTextures:[I

    invoke-interface {v3, v6, v4, v8}, Ljavax/microedition/khronos/opengles/GL11;->glGenTextures(I[II)V

    .line 281
    iget-object v3, p0, Lcom/sec/android/glview/TwGLTexture$1;->this$0:Lcom/sec/android/glview/TwGLTexture;

    iget-object v3, v3, Lcom/sec/android/glview/TwGLTexture;->mGL:Ljavax/microedition/khronos/opengles/GL11;

    iget-object v4, p0, Lcom/sec/android/glview/TwGLTexture$1;->this$0:Lcom/sec/android/glview/TwGLTexture;

    iget-object v4, v4, Lcom/sec/android/glview/TwGLTexture;->mTextures:[I

    aget v4, v4, v8

    invoke-interface {v3, v7, v4}, Ljavax/microedition/khronos/opengles/GL11;->glBindTexture(II)V

    .line 283
    rem-int/lit8 v3, v2, 0x2

    if-ne v3, v6, :cond_2

    .line 284
    iget-object v3, p0, Lcom/sec/android/glview/TwGLTexture$1;->this$0:Lcom/sec/android/glview/TwGLTexture;

    iget-object v3, v3, Lcom/sec/android/glview/TwGLTexture;->mGL:Ljavax/microedition/khronos/opengles/GL11;

    const/16 v4, 0xcf5

    const/4 v5, 0x2

    invoke-interface {v3, v4, v5}, Ljavax/microedition/khronos/opengles/GL11;->glPixelStorei(II)V

    .line 288
    :goto_1
    iget-object v3, p0, Lcom/sec/android/glview/TwGLTexture$1;->this$0:Lcom/sec/android/glview/TwGLTexture;

    iget-object v3, v3, Lcom/sec/android/glview/TwGLTexture;->mGL:Ljavax/microedition/khronos/opengles/GL11;

    const v4, 0x8b9d

    invoke-interface {v3, v7, v4, v0, v8}, Ljavax/microedition/khronos/opengles/GL11;->glTexParameterfv(II[FI)V

    .line 290
    iget-object v3, p0, Lcom/sec/android/glview/TwGLTexture$1;->this$0:Lcom/sec/android/glview/TwGLTexture;

    iget-object v3, v3, Lcom/sec/android/glview/TwGLTexture;->mGL:Ljavax/microedition/khronos/opengles/GL11;

    const/16 v4, 0x2801

    invoke-interface {v3, v7, v4, v9}, Ljavax/microedition/khronos/opengles/GL11;->glTexParameterf(IIF)V

    .line 291
    iget-object v3, p0, Lcom/sec/android/glview/TwGLTexture$1;->this$0:Lcom/sec/android/glview/TwGLTexture;

    iget-object v3, v3, Lcom/sec/android/glview/TwGLTexture;->mGL:Ljavax/microedition/khronos/opengles/GL11;

    const/16 v4, 0x2800

    invoke-interface {v3, v7, v4, v9}, Ljavax/microedition/khronos/opengles/GL11;->glTexParameterf(IIF)V

    .line 293
    iget-object v3, p0, Lcom/sec/android/glview/TwGLTexture$1;->this$0:Lcom/sec/android/glview/TwGLTexture;

    iget-object v3, v3, Lcom/sec/android/glview/TwGLTexture;->mGL:Ljavax/microedition/khronos/opengles/GL11;

    const/16 v4, 0x2802

    const v5, 0x46240400

    invoke-interface {v3, v7, v4, v5}, Ljavax/microedition/khronos/opengles/GL11;->glTexParameterf(IIF)V

    .line 294
    iget-object v3, p0, Lcom/sec/android/glview/TwGLTexture$1;->this$0:Lcom/sec/android/glview/TwGLTexture;

    iget-object v3, v3, Lcom/sec/android/glview/TwGLTexture;->mGL:Ljavax/microedition/khronos/opengles/GL11;

    const/16 v4, 0x2803

    const v5, 0x46240400

    invoke-interface {v3, v7, v4, v5}, Ljavax/microedition/khronos/opengles/GL11;->glTexParameterf(IIF)V

    .line 296
    iget-object v3, p0, Lcom/sec/android/glview/TwGLTexture$1;->this$0:Lcom/sec/android/glview/TwGLTexture;

    iget-object v4, p0, Lcom/sec/android/glview/TwGLTexture$1;->this$0:Lcom/sec/android/glview/TwGLTexture;

    iget-object v4, v4, Lcom/sec/android/glview/TwGLTexture;->mGL:Ljavax/microedition/khronos/opengles/GL11;

    invoke-virtual {v3, v4}, Lcom/sec/android/glview/TwGLTexture;->loadGLTexture(Ljavax/microedition/khronos/opengles/GL11;)V

    .line 298
    iget-object v3, p0, Lcom/sec/android/glview/TwGLTexture$1;->this$0:Lcom/sec/android/glview/TwGLTexture;

    iput-boolean v6, v3, Lcom/sec/android/glview/TwGLTexture;->mTextureLoaded:Z

    .line 299
    iget-object v3, p0, Lcom/sec/android/glview/TwGLTexture$1;->this$0:Lcom/sec/android/glview/TwGLTexture;

    #setter for: Lcom/sec/android/glview/TwGLTexture;->mAsyncLodingInProgress:Z
    invoke-static {v3, v8}, Lcom/sec/android/glview/TwGLTexture;->access$002(Lcom/sec/android/glview/TwGLTexture;Z)Z

    goto/16 :goto_0

    .line 286
    :cond_2
    iget-object v3, p0, Lcom/sec/android/glview/TwGLTexture$1;->this$0:Lcom/sec/android/glview/TwGLTexture;

    iget-object v3, v3, Lcom/sec/android/glview/TwGLTexture;->mGL:Ljavax/microedition/khronos/opengles/GL11;

    const/16 v4, 0xcf5

    const/4 v5, 0x4

    invoke-interface {v3, v4, v5}, Ljavax/microedition/khronos/opengles/GL11;->glPixelStorei(II)V

    goto :goto_1
.end method
