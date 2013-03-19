.class public Lcom/sec/android/glview/TwGLLineTexture;
.super Lcom/sec/android/glview/TwGLTexture;
.source "TwGLLineTexture.java"


# static fields
.field private static final LINE_TEXTURE_STATIC_HEIGHT:I = 0x1

.field private static final LINE_TEXTURE_STATIC_WIDTH:I = 0x1


# instance fields
.field private mCanvas:Landroid/graphics/Canvas;

.field private mColor:I

.field private mOffsetX:F

.field private mOffsetY:F

.field private mPaint:Landroid/graphics/Paint;

.field private mThickness:F


# direct methods
.method public constructor <init>(Lcom/sec/android/glview/TwGLContext;FFFFII)V
    .locals 7
    .parameter "glContext"
    .parameter "startX"
    .parameter "startY"
    .parameter "endX"
    .parameter "endY"
    .parameter "color"
    .parameter "thickness"

    .prologue
    const/4 v6, 0x1

    const/4 v2, 0x0

    const/high16 v4, 0x3f80

    .line 41
    move-object v0, p0

    move-object v1, p1

    move v3, v2

    move v5, v4

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/glview/TwGLTexture;-><init>(Lcom/sec/android/glview/TwGLContext;FFFF)V

    .line 43
    sub-float v0, p4, p2

    iput v0, p0, Lcom/sec/android/glview/TwGLLineTexture;->mOffsetX:F

    .line 44
    sub-float v0, p5, p3

    iput v0, p0, Lcom/sec/android/glview/TwGLLineTexture;->mOffsetY:F

    .line 46
    iput p6, p0, Lcom/sec/android/glview/TwGLLineTexture;->mColor:I

    .line 48
    if-ge p7, v6, :cond_0

    .line 49
    iput v4, p0, Lcom/sec/android/glview/TwGLLineTexture;->mThickness:F

    .line 53
    :goto_0
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/sec/android/glview/TwGLLineTexture;->mPaint:Landroid/graphics/Paint;

    .line 54
    iget-object v0, p0, Lcom/sec/android/glview/TwGLLineTexture;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v6}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 55
    iget-object v0, p0, Lcom/sec/android/glview/TwGLLineTexture;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 57
    cmpg-float v0, p2, p4

    if-gez v0, :cond_1

    move v1, p2

    :goto_1
    cmpg-float v0, p3, p5

    if-gez v0, :cond_2

    move v0, p3

    :goto_2
    invoke-virtual {p0, v1, v0}, Lcom/sec/android/glview/TwGLLineTexture;->translateAbsolute(FF)V

    .line 58
    sub-float v0, p4, p2

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget v1, p0, Lcom/sec/android/glview/TwGLLineTexture;->mThickness:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_3

    sub-float v0, p4, p2

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    :goto_3
    sub-float v1, p5, p3

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    iget v2, p0, Lcom/sec/android/glview/TwGLLineTexture;->mThickness:F

    cmpl-float v1, v1, v2

    if-lez v1, :cond_4

    sub-float v1, p5, p3

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    :goto_4
    invoke-virtual {p0, v0, v1}, Lcom/sec/android/glview/TwGLLineTexture;->setSize(FF)V

    .line 59
    return-void

    .line 51
    :cond_0
    int-to-float v0, p7

    iput v0, p0, Lcom/sec/android/glview/TwGLLineTexture;->mThickness:F

    goto :goto_0

    :cond_1
    move v1, p4

    .line 57
    goto :goto_1

    :cond_2
    move v0, p5

    goto :goto_2

    .line 58
    :cond_3
    iget v0, p0, Lcom/sec/android/glview/TwGLLineTexture;->mThickness:F

    goto :goto_3

    :cond_4
    iget v1, p0, Lcom/sec/android/glview/TwGLLineTexture;->mThickness:F

    goto :goto_4
.end method


# virtual methods
.method public getColor()I
    .locals 1

    .prologue
    .line 134
    iget v0, p0, Lcom/sec/android/glview/TwGLLineTexture;->mColor:I

    return v0
.end method

.method public getThickness()F
    .locals 1

    .prologue
    .line 143
    iget v0, p0, Lcom/sec/android/glview/TwGLLineTexture;->mThickness:F

    return v0
.end method

.method protected loadBitmap()Landroid/graphics/Bitmap;
    .locals 7

    .prologue
    const/4 v2, 0x1

    const/high16 v3, 0x3f80

    const/4 v1, 0x0

    .line 103
    sget-object v0, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, v2, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 104
    .local v6, bitmap:Landroid/graphics/Bitmap;
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, v6}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v0, p0, Lcom/sec/android/glview/TwGLLineTexture;->mCanvas:Landroid/graphics/Canvas;

    .line 106
    iget-object v0, p0, Lcom/sec/android/glview/TwGLLineTexture;->mPaint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/sec/android/glview/TwGLLineTexture;->mColor:I

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 108
    iget-object v0, p0, Lcom/sec/android/glview/TwGLLineTexture;->mCanvas:Landroid/graphics/Canvas;

    iget-object v5, p0, Lcom/sec/android/glview/TwGLLineTexture;->mPaint:Landroid/graphics/Paint;

    move v2, v1

    move v4, v3

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 110
    return-object v6
.end method

.method public setColor(I)V
    .locals 1
    .parameter "color"

    .prologue
    .line 126
    iget v0, p0, Lcom/sec/android/glview/TwGLLineTexture;->mColor:I

    if-ne v0, p1, :cond_0

    .line 131
    :goto_0
    return-void

    .line 129
    :cond_0
    iput p1, p0, Lcom/sec/android/glview/TwGLLineTexture;->mColor:I

    .line 130
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLLineTexture;->reLoad()Z

    goto :goto_0
.end method

.method public setLine(FFFF)V
    .locals 3
    .parameter "startX"
    .parameter "startY"
    .parameter "endX"
    .parameter "endY"

    .prologue
    .line 115
    sub-float v0, p3, p1

    iput v0, p0, Lcom/sec/android/glview/TwGLLineTexture;->mOffsetX:F

    .line 116
    sub-float v0, p4, p2

    iput v0, p0, Lcom/sec/android/glview/TwGLLineTexture;->mOffsetY:F

    .line 118
    cmpg-float v0, p1, p3

    if-gez v0, :cond_0

    move v1, p1

    :goto_0
    cmpg-float v0, p2, p4

    if-gez v0, :cond_1

    move v0, p2

    :goto_1
    invoke-virtual {p0, v1, v0}, Lcom/sec/android/glview/TwGLLineTexture;->translateAbsolute(FF)V

    .line 119
    sub-float v0, p3, p1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget v1, p0, Lcom/sec/android/glview/TwGLLineTexture;->mThickness:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_2

    sub-float v0, p3, p1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    :goto_2
    sub-float v1, p4, p2

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    iget v2, p0, Lcom/sec/android/glview/TwGLLineTexture;->mThickness:F

    cmpl-float v1, v1, v2

    if-lez v1, :cond_3

    sub-float v1, p4, p2

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    :goto_3
    invoke-virtual {p0, v0, v1}, Lcom/sec/android/glview/TwGLLineTexture;->setSize(FF)V

    .line 121
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLLineTexture;->setVertices()V

    .line 122
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLLineTexture;->initBuffers()V

    .line 123
    return-void

    :cond_0
    move v1, p3

    .line 118
    goto :goto_0

    :cond_1
    move v0, p4

    goto :goto_1

    .line 119
    :cond_2
    iget v0, p0, Lcom/sec/android/glview/TwGLLineTexture;->mThickness:F

    goto :goto_2

    :cond_3
    iget v1, p0, Lcom/sec/android/glview/TwGLLineTexture;->mThickness:F

    goto :goto_3
.end method

.method public setThickness(I)V
    .locals 1
    .parameter "thickness"

    .prologue
    .line 138
    int-to-float v0, p1

    iput v0, p0, Lcom/sec/android/glview/TwGLLineTexture;->mThickness:F

    .line 139
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLLineTexture;->reLoad()Z

    .line 140
    return-void
.end method

.method protected declared-synchronized setVertices()V
    .locals 13

    .prologue
    const/high16 v12, 0x4000

    .line 67
    monitor-enter p0

    const/4 v7, 0x2

    :try_start_0
    new-array v2, v7, [F

    .line 68
    .local v2, glCoordinate:[F
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLLineTexture;->getLeft()F

    move-result v3

    .line 70
    .local v3, left:F
    iget v6, p0, Lcom/sec/android/glview/TwGLLineTexture;->mOffsetY:F

    .line 72
    .local v6, width:F
    iget v7, p0, Lcom/sec/android/glview/TwGLLineTexture;->mOffsetX:F

    const/4 v8, 0x0

    cmpl-float v7, v7, v8

    if-eqz v7, :cond_0

    .line 73
    iget v7, p0, Lcom/sec/android/glview/TwGLLineTexture;->mOffsetX:F

    iget v8, p0, Lcom/sec/android/glview/TwGLLineTexture;->mOffsetY:F

    float-to-double v8, v8

    iget v10, p0, Lcom/sec/android/glview/TwGLLineTexture;->mOffsetX:F

    float-to-double v10, v10

    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v8

    neg-double v8, v8

    invoke-static {v8, v9}, Ljava/lang/Math;->cos(D)D

    move-result-wide v8

    double-to-float v8, v8

    div-float v6, v7, v8

    .line 75
    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLLineTexture;->getRight()F

    move-result v7

    sub-float/2addr v7, v3

    sub-float v7, v6, v7

    div-float/2addr v7, v12

    sub-float v4, v3, v7

    .line 76
    .local v4, startX:F
    add-float v5, v4, v6

    .line 77
    .local v5, startY:F
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLLineTexture;->getTop()F

    move-result v7

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLLineTexture;->getBottom()F

    move-result v8

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLLineTexture;->getTop()F

    move-result v9

    sub-float/2addr v8, v9

    iget v9, p0, Lcom/sec/android/glview/TwGLLineTexture;->mThickness:F

    sub-float/2addr v8, v9

    div-float/2addr v8, v12

    add-float v0, v7, v8

    .line 78
    .local v0, endX:F
    iget v7, p0, Lcom/sec/android/glview/TwGLLineTexture;->mThickness:F

    add-float v1, v0, v7

    .line 82
    .local v1, endY:F
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLLineTexture;->getContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v7

    invoke-static {v7, v2, v4, v0}, Lcom/sec/android/glview/TwGLUtil;->getGLCoordinateFromScreenCoordinate(Lcom/sec/android/glview/TwGLContext;[FFF)V

    .line 83
    iget-object v7, p0, Lcom/sec/android/glview/TwGLTexture;->mVertices:[F

    const/4 v8, 0x0

    const/4 v9, 0x0

    aget v9, v2, v9

    aput v9, v7, v8

    .line 84
    iget-object v7, p0, Lcom/sec/android/glview/TwGLTexture;->mVertices:[F

    const/4 v8, 0x1

    const/4 v9, 0x1

    aget v9, v2, v9

    aput v9, v7, v8

    .line 86
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLLineTexture;->getContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v7

    invoke-static {v7, v2, v4, v1}, Lcom/sec/android/glview/TwGLUtil;->getGLCoordinateFromScreenCoordinate(Lcom/sec/android/glview/TwGLContext;[FFF)V

    .line 87
    iget-object v7, p0, Lcom/sec/android/glview/TwGLTexture;->mVertices:[F

    const/4 v8, 0x3

    const/4 v9, 0x0

    aget v9, v2, v9

    aput v9, v7, v8

    .line 88
    iget-object v7, p0, Lcom/sec/android/glview/TwGLTexture;->mVertices:[F

    const/4 v8, 0x4

    const/4 v9, 0x1

    aget v9, v2, v9

    aput v9, v7, v8

    .line 90
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLLineTexture;->getContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v7

    invoke-static {v7, v2, v5, v0}, Lcom/sec/android/glview/TwGLUtil;->getGLCoordinateFromScreenCoordinate(Lcom/sec/android/glview/TwGLContext;[FFF)V

    .line 91
    iget-object v7, p0, Lcom/sec/android/glview/TwGLTexture;->mVertices:[F

    const/4 v8, 0x6

    const/4 v9, 0x0

    aget v9, v2, v9

    aput v9, v7, v8

    .line 92
    iget-object v7, p0, Lcom/sec/android/glview/TwGLTexture;->mVertices:[F

    const/4 v8, 0x7

    const/4 v9, 0x1

    aget v9, v2, v9

    aput v9, v7, v8

    .line 94
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLLineTexture;->getContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v7

    invoke-static {v7, v2, v5, v1}, Lcom/sec/android/glview/TwGLUtil;->getGLCoordinateFromScreenCoordinate(Lcom/sec/android/glview/TwGLContext;[FFF)V

    .line 95
    iget-object v7, p0, Lcom/sec/android/glview/TwGLTexture;->mVertices:[F

    const/16 v8, 0x9

    const/4 v9, 0x0

    aget v9, v2, v9

    aput v9, v7, v8

    .line 96
    iget-object v7, p0, Lcom/sec/android/glview/TwGLTexture;->mVertices:[F

    const/16 v8, 0xa

    const/4 v9, 0x1

    aget v9, v2, v9

    aput v9, v7, v8

    .line 98
    iget v7, p0, Lcom/sec/android/glview/TwGLLineTexture;->mOffsetY:F

    float-to-double v7, v7

    iget v9, p0, Lcom/sec/android/glview/TwGLLineTexture;->mOffsetX:F

    float-to-double v9, v9

    invoke-static {v7, v8, v9, v10}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v7

    double-to-int v7, v7

    mul-int/lit8 v7, v7, -0x1

    invoke-virtual {p0, v7}, Lcom/sec/android/glview/TwGLLineTexture;->rotateDegree(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 99
    monitor-exit p0

    return-void

    .line 67
    .end local v0           #endX:F
    .end local v1           #endY:F
    .end local v2           #glCoordinate:[F
    .end local v3           #left:F
    .end local v4           #startX:F
    .end local v5           #startY:F
    .end local v6           #width:F
    :catchall_0
    move-exception v7

    monitor-exit p0

    throw v7
.end method
