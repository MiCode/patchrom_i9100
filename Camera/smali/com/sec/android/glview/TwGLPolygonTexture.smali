.class public Lcom/sec/android/glview/TwGLPolygonTexture;
.super Lcom/sec/android/glview/TwGLTexture;
.source "TwGLPolygonTexture.java"


# static fields
.field public static final POLYGON_RECTANGLE:I = 0x1

.field public static final POLYGON_TRIANGLE:I = 0x2


# instance fields
.field private mCanvas:Landroid/graphics/Canvas;

.field private mColor:I

.field private mDirection:F

.field private mHeight:F

.field private mPaint:Landroid/graphics/Paint;

.field private mPolygonType:I

.field private mThickness:I

.field private mWidth:F


# direct methods
.method public constructor <init>(Lcom/sec/android/glview/TwGLContext;FFFFIIFI)V
    .locals 2
    .parameter "glContext"
    .parameter "left"
    .parameter "top"
    .parameter "width"
    .parameter "height"
    .parameter "polygonType"
    .parameter "color"
    .parameter "direction"
    .parameter "thickness"

    .prologue
    const/4 v1, 0x1

    .line 62
    invoke-direct/range {p0 .. p5}, Lcom/sec/android/glview/TwGLTexture;-><init>(Lcom/sec/android/glview/TwGLContext;FFFF)V

    .line 33
    iput v1, p0, Lcom/sec/android/glview/TwGLPolygonTexture;->mPolygonType:I

    .line 41
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/glview/TwGLPolygonTexture;->mDirection:F

    .line 64
    iput p4, p0, Lcom/sec/android/glview/TwGLPolygonTexture;->mWidth:F

    .line 65
    iput p5, p0, Lcom/sec/android/glview/TwGLPolygonTexture;->mHeight:F

    .line 66
    iput p7, p0, Lcom/sec/android/glview/TwGLPolygonTexture;->mColor:I

    .line 67
    iput p8, p0, Lcom/sec/android/glview/TwGLPolygonTexture;->mDirection:F

    .line 68
    iput p6, p0, Lcom/sec/android/glview/TwGLPolygonTexture;->mPolygonType:I

    .line 69
    iput p9, p0, Lcom/sec/android/glview/TwGLPolygonTexture;->mThickness:I

    .line 71
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/sec/android/glview/TwGLPolygonTexture;->mPaint:Landroid/graphics/Paint;

    .line 72
    iget-object v0, p0, Lcom/sec/android/glview/TwGLPolygonTexture;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 73
    iget-object v0, p0, Lcom/sec/android/glview/TwGLPolygonTexture;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p7}, Landroid/graphics/Paint;->setColor(I)V

    .line 74
    iget-object v0, p0, Lcom/sec/android/glview/TwGLPolygonTexture;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 75
    iget-object v0, p0, Lcom/sec/android/glview/TwGLPolygonTexture;->mPaint:Landroid/graphics/Paint;

    int-to-float v1, p9

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 76
    return-void
.end method

.method public constructor <init>(Lcom/sec/android/glview/TwGLContext;FFFFIII)V
    .locals 2
    .parameter "glContext"
    .parameter "left"
    .parameter "top"
    .parameter "width"
    .parameter "height"
    .parameter "polygonType"
    .parameter "color"
    .parameter "thickness"

    .prologue
    const/4 v1, 0x1

    .line 46
    invoke-direct/range {p0 .. p5}, Lcom/sec/android/glview/TwGLTexture;-><init>(Lcom/sec/android/glview/TwGLContext;FFFF)V

    .line 33
    iput v1, p0, Lcom/sec/android/glview/TwGLPolygonTexture;->mPolygonType:I

    .line 41
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/glview/TwGLPolygonTexture;->mDirection:F

    .line 48
    iput p4, p0, Lcom/sec/android/glview/TwGLPolygonTexture;->mWidth:F

    .line 49
    iput p5, p0, Lcom/sec/android/glview/TwGLPolygonTexture;->mHeight:F

    .line 50
    iput p7, p0, Lcom/sec/android/glview/TwGLPolygonTexture;->mColor:I

    .line 51
    iput p6, p0, Lcom/sec/android/glview/TwGLPolygonTexture;->mPolygonType:I

    .line 52
    iput p8, p0, Lcom/sec/android/glview/TwGLPolygonTexture;->mThickness:I

    .line 54
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/sec/android/glview/TwGLPolygonTexture;->mPaint:Landroid/graphics/Paint;

    .line 55
    iget-object v0, p0, Lcom/sec/android/glview/TwGLPolygonTexture;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 56
    iget-object v0, p0, Lcom/sec/android/glview/TwGLPolygonTexture;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p7}, Landroid/graphics/Paint;->setColor(I)V

    .line 57
    iget-object v0, p0, Lcom/sec/android/glview/TwGLPolygonTexture;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 58
    iget-object v0, p0, Lcom/sec/android/glview/TwGLPolygonTexture;->mPaint:Landroid/graphics/Paint;

    int-to-float v1, p8

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 59
    return-void
.end method


# virtual methods
.method public getColor()I
    .locals 1

    .prologue
    .line 118
    iget v0, p0, Lcom/sec/android/glview/TwGLPolygonTexture;->mColor:I

    return v0
.end method

.method public getThickness()I
    .locals 1

    .prologue
    .line 127
    iget v0, p0, Lcom/sec/android/glview/TwGLPolygonTexture;->mThickness:I

    return v0
.end method

.method protected loadBitmap()Landroid/graphics/Bitmap;
    .locals 8

    .prologue
    const/high16 v3, 0x3f00

    const/high16 v4, 0x4000

    const/4 v1, 0x0

    .line 80
    iget v0, p0, Lcom/sec/android/glview/TwGLPolygonTexture;->mWidth:F

    add-float/2addr v0, v3

    float-to-int v0, v0

    iget v2, p0, Lcom/sec/android/glview/TwGLPolygonTexture;->mHeight:F

    add-float/2addr v2, v3

    float-to-int v2, v2

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v2, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 81
    .local v6, bitmap:Landroid/graphics/Bitmap;
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, v6}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v0, p0, Lcom/sec/android/glview/TwGLPolygonTexture;->mCanvas:Landroid/graphics/Canvas;

    .line 83
    iget v0, p0, Lcom/sec/android/glview/TwGLPolygonTexture;->mPolygonType:I

    packed-switch v0, :pswitch_data_0

    .line 102
    :goto_0
    return-object v6

    .line 85
    :pswitch_0
    const-string v0, "TwGLPolygonTexture"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "RECT left="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLPolygonTexture;->getLeft()F

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", top="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLPolygonTexture;->getTop()F

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", width="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/sec/android/glview/TwGLPolygonTexture;->mWidth:F

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", height="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/sec/android/glview/TwGLPolygonTexture;->mHeight:F

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    iget-object v0, p0, Lcom/sec/android/glview/TwGLPolygonTexture;->mCanvas:Landroid/graphics/Canvas;

    iget v3, p0, Lcom/sec/android/glview/TwGLPolygonTexture;->mWidth:F

    iget v4, p0, Lcom/sec/android/glview/TwGLPolygonTexture;->mHeight:F

    iget-object v5, p0, Lcom/sec/android/glview/TwGLPolygonTexture;->mPaint:Landroid/graphics/Paint;

    move v2, v1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    goto :goto_0

    .line 89
    :pswitch_1
    const-string v0, "TwGLPolygonTexture"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Triangle left="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLPolygonTexture;->getLeft()F

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", top="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLPolygonTexture;->getTop()F

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", width="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/sec/android/glview/TwGLPolygonTexture;->mWidth:F

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", height="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/sec/android/glview/TwGLPolygonTexture;->mHeight:F

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", mDirection="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/sec/android/glview/TwGLPolygonTexture;->mDirection:F

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    new-instance v7, Landroid/graphics/Path;

    invoke-direct {v7}, Landroid/graphics/Path;-><init>()V

    .line 92
    .local v7, path:Landroid/graphics/Path;
    sget-object v0, Landroid/graphics/Path$FillType;->EVEN_ODD:Landroid/graphics/Path$FillType;

    invoke-virtual {v7, v0}, Landroid/graphics/Path;->setFillType(Landroid/graphics/Path$FillType;)V

    .line 93
    invoke-virtual {v7, v1, v1}, Landroid/graphics/Path;->moveTo(FF)V

    .line 94
    iget v0, p0, Lcom/sec/android/glview/TwGLPolygonTexture;->mWidth:F

    iget v2, p0, Lcom/sec/android/glview/TwGLPolygonTexture;->mHeight:F

    div-float/2addr v2, v4

    invoke-virtual {v7, v0, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 95
    iget v0, p0, Lcom/sec/android/glview/TwGLPolygonTexture;->mHeight:F

    invoke-virtual {v7, v1, v0}, Landroid/graphics/Path;->lineTo(FF)V

    .line 96
    invoke-virtual {v7, v1, v1}, Landroid/graphics/Path;->lineTo(FF)V

    .line 97
    invoke-virtual {v7}, Landroid/graphics/Path;->close()V

    .line 98
    iget-object v0, p0, Lcom/sec/android/glview/TwGLPolygonTexture;->mCanvas:Landroid/graphics/Canvas;

    iget v1, p0, Lcom/sec/android/glview/TwGLPolygonTexture;->mDirection:F

    iget v2, p0, Lcom/sec/android/glview/TwGLPolygonTexture;->mWidth:F

    div-float/2addr v2, v4

    iget v3, p0, Lcom/sec/android/glview/TwGLPolygonTexture;->mHeight:F

    div-float/2addr v3, v4

    invoke-virtual {v0, v1, v2, v3}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 99
    iget-object v0, p0, Lcom/sec/android/glview/TwGLPolygonTexture;->mCanvas:Landroid/graphics/Canvas;

    iget-object v1, p0, Lcom/sec/android/glview/TwGLPolygonTexture;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v7, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    goto/16 :goto_0

    .line 83
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public setColor(I)V
    .locals 0
    .parameter "color"

    .prologue
    .line 113
    iput p1, p0, Lcom/sec/android/glview/TwGLPolygonTexture;->mColor:I

    .line 114
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLPolygonTexture;->reLoad()Z

    .line 115
    return-void
.end method

.method public setSize(FF)V
    .locals 2
    .parameter "width"
    .parameter "height"

    .prologue
    .line 106
    iput p1, p0, Lcom/sec/android/glview/TwGLPolygonTexture;->mWidth:F

    .line 107
    iput p2, p0, Lcom/sec/android/glview/TwGLPolygonTexture;->mHeight:F

    .line 108
    iget v0, p0, Lcom/sec/android/glview/TwGLPolygonTexture;->mWidth:F

    iget v1, p0, Lcom/sec/android/glview/TwGLPolygonTexture;->mHeight:F

    invoke-super {p0, v0, v1}, Lcom/sec/android/glview/TwGLTexture;->setSize(FF)V

    .line 109
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLPolygonTexture;->reLoad()Z

    .line 110
    return-void
.end method

.method public setThickness(I)V
    .locals 0
    .parameter "thickness"

    .prologue
    .line 122
    iput p1, p0, Lcom/sec/android/glview/TwGLPolygonTexture;->mThickness:I

    .line 123
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLPolygonTexture;->reLoad()Z

    .line 124
    return-void
.end method
