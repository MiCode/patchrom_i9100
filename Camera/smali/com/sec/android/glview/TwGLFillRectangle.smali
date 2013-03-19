.class public Lcom/sec/android/glview/TwGLFillRectangle;
.super Lcom/sec/android/glview/TwGLTexture;
.source "TwGLFillRectangle.java"


# instance fields
.field private mCanvas:Landroid/graphics/Canvas;

.field private mColor:I

.field private mPaint:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>(Lcom/sec/android/glview/TwGLContext;FFFFI)V
    .locals 6
    .parameter "glContext"
    .parameter "startX"
    .parameter "startY"
    .parameter "endX"
    .parameter "endY"
    .parameter "color"

    .prologue
    const/high16 v4, 0x3f80

    const/4 v2, 0x0

    .line 34
    move-object v0, p0

    move-object v1, p1

    move v3, v2

    move v5, v4

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/glview/TwGLTexture;-><init>(Lcom/sec/android/glview/TwGLContext;FFFF)V

    .line 36
    iput p6, p0, Lcom/sec/android/glview/TwGLFillRectangle;->mColor:I

    .line 38
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/sec/android/glview/TwGLFillRectangle;->mPaint:Landroid/graphics/Paint;

    .line 39
    iget-object v0, p0, Lcom/sec/android/glview/TwGLFillRectangle;->mPaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 40
    iget-object v0, p0, Lcom/sec/android/glview/TwGLFillRectangle;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 42
    cmpg-float v0, p2, p4

    if-gez v0, :cond_0

    move v1, p2

    :goto_0
    cmpg-float v0, p3, p5

    if-gez v0, :cond_1

    move v0, p3

    :goto_1
    invoke-virtual {p0, v1, v0}, Lcom/sec/android/glview/TwGLFillRectangle;->translateAbsolute(FF)V

    .line 43
    sub-float v0, p4, p2

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    sub-float v1, p5, p3

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/glview/TwGLFillRectangle;->setSize(FF)V

    .line 44
    return-void

    :cond_0
    move v1, p4

    .line 42
    goto :goto_0

    :cond_1
    move v0, p5

    goto :goto_1
.end method


# virtual methods
.method public getColor()I
    .locals 1

    .prologue
    .line 73
    iget v0, p0, Lcom/sec/android/glview/TwGLFillRectangle;->mColor:I

    return v0
.end method

.method protected loadBitmap()Landroid/graphics/Bitmap;
    .locals 7

    .prologue
    const/4 v2, 0x1

    const/high16 v3, 0x3f80

    const/4 v1, 0x0

    .line 48
    sget-object v0, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, v2, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 49
    .local v6, bitmap:Landroid/graphics/Bitmap;
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, v6}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v0, p0, Lcom/sec/android/glview/TwGLFillRectangle;->mCanvas:Landroid/graphics/Canvas;

    .line 51
    iget-object v0, p0, Lcom/sec/android/glview/TwGLFillRectangle;->mPaint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/sec/android/glview/TwGLFillRectangle;->mColor:I

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 53
    iget-object v0, p0, Lcom/sec/android/glview/TwGLFillRectangle;->mCanvas:Landroid/graphics/Canvas;

    iget-object v5, p0, Lcom/sec/android/glview/TwGLFillRectangle;->mPaint:Landroid/graphics/Paint;

    move v2, v1

    move v4, v3

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 55
    return-object v6
.end method

.method public setColor(I)V
    .locals 0
    .parameter "color"

    .prologue
    .line 68
    iput p1, p0, Lcom/sec/android/glview/TwGLFillRectangle;->mColor:I

    .line 69
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLFillRectangle;->reLoad()Z

    .line 70
    return-void
.end method

.method public setLine(FFFF)V
    .locals 2
    .parameter "startX"
    .parameter "startY"
    .parameter "endX"
    .parameter "endY"

    .prologue
    .line 60
    cmpg-float v0, p1, p3

    if-gez v0, :cond_0

    move v1, p1

    :goto_0
    cmpg-float v0, p2, p4

    if-gez v0, :cond_1

    move v0, p2

    :goto_1
    invoke-virtual {p0, v1, v0}, Lcom/sec/android/glview/TwGLFillRectangle;->translateAbsolute(FF)V

    .line 61
    sub-float v0, p3, p1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    sub-float v1, p4, p2

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/glview/TwGLFillRectangle;->setSize(FF)V

    .line 63
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLFillRectangle;->setVertices()V

    .line 64
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLFillRectangle;->initBuffers()V

    .line 65
    return-void

    :cond_0
    move v1, p3

    .line 60
    goto :goto_0

    :cond_1
    move v0, p4

    goto :goto_1
.end method
