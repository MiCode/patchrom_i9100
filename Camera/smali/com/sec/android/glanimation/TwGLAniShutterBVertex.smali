.class public Lcom/sec/android/glanimation/TwGLAniShutterBVertex;
.super Lcom/sec/android/glview/TwGLAniVertex;
.source "TwGLAniShutterBVertex.java"


# instance fields
.field protected final INCR_CNT_L:F

.field protected final INCR_CNT_P:F

.field private mPortrait:Z


# direct methods
.method public constructor <init>(Lcom/sec/android/glview/TwGLContext;FFFFZ)V
    .locals 1
    .parameter "glContext"
    .parameter "left"
    .parameter "top"
    .parameter "width"
    .parameter "height"
    .parameter "portrait"

    .prologue
    .line 38
    invoke-direct/range {p0 .. p5}, Lcom/sec/android/glview/TwGLAniVertex;-><init>(Lcom/sec/android/glview/TwGLContext;FFFF)V

    .line 32
    const v0, 0x3f35c28f

    iput v0, p0, Lcom/sec/android/glanimation/TwGLAniShutterBVertex;->INCR_CNT_L:F

    .line 33
    const v0, 0x3f2147ae

    iput v0, p0, Lcom/sec/android/glanimation/TwGLAniShutterBVertex;->INCR_CNT_P:F

    .line 35
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/glanimation/TwGLAniShutterBVertex;->mPortrait:Z

    .line 40
    iput-boolean p6, p0, Lcom/sec/android/glanimation/TwGLAniShutterBVertex;->mPortrait:Z

    .line 42
    return-void
.end method


# virtual methods
.method protected getDrawRatio()F
    .locals 3

    .prologue
    const/high16 v2, 0x4120

    .line 97
    iget-boolean v0, p0, Lcom/sec/android/glanimation/TwGLAniShutterBVertex;->mPortrait:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 98
    iget v0, p0, Lcom/sec/android/glview/TwGLAniVertex;->mCnt:F

    const v1, 0x3f2147ae

    add-float/2addr v0, v1

    iput v0, p0, Lcom/sec/android/glview/TwGLAniVertex;->mCnt:F

    .line 102
    :goto_0
    iget v0, p0, Lcom/sec/android/glview/TwGLAniVertex;->mCnt:F

    cmpl-float v0, v0, v2

    if-lez v0, :cond_1

    .line 103
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/glview/TwGLAniVertex;->mCnt:F

    .line 104
    const/high16 v0, -0x4000

    .line 107
    :goto_1
    return v0

    .line 100
    :cond_0
    iget v0, p0, Lcom/sec/android/glview/TwGLAniVertex;->mCnt:F

    const v1, 0x3f35c28f

    add-float/2addr v0, v1

    iput v0, p0, Lcom/sec/android/glview/TwGLAniVertex;->mCnt:F

    goto :goto_0

    .line 107
    :cond_1
    iget v0, p0, Lcom/sec/android/glview/TwGLAniVertex;->mCnt:F

    div-float/2addr v0, v2

    goto :goto_1
.end method

.method protected setCustomAnimation(F)V
    .locals 21
    .parameter "ratio"

    .prologue
    .line 46
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/glanimation/TwGLAniShutterBVertex;->getLeft()F

    move-result v4

    .line 47
    .local v4, left:F
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/glanimation/TwGLAniShutterBVertex;->getRight()F

    move-result v5

    .line 48
    .local v5, right:F
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/glanimation/TwGLAniShutterBVertex;->getTop()F

    move-result v6

    .line 49
    .local v6, top:F
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/glanimation/TwGLAniShutterBVertex;->getBottom()F

    move-result v2

    .line 50
    .local v2, bottom:F
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/glanimation/TwGLAniShutterBVertex;->getRight()F

    move-result v18

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/glanimation/TwGLAniShutterBVertex;->getLeft()F

    move-result v19

    sub-float v10, v18, v19

    .line 51
    .local v10, width:F
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/glanimation/TwGLAniShutterBVertex;->getBottom()F

    move-result v18

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/glanimation/TwGLAniShutterBVertex;->getTop()F

    move-result v19

    sub-float v3, v18, v19

    .line 53
    .local v3, height:F
    const/4 v8, 0x0

    .line 54
    .local v8, vPos:I
    const/4 v14, 0x0

    .local v14, y:I
    :goto_0
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/glview/TwGLAniVertex;->GRID_SIZE:I

    move/from16 v18, v0

    move/from16 v0, v18

    if-gt v14, v0, :cond_4

    .line 55
    int-to-float v0, v14

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/glview/TwGLAniVertex;->GRID_SIZE:I

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    div-float v18, v18, v19

    mul-float v16, v18, v3

    .line 56
    .local v16, yStep:F
    const/4 v11, 0x0

    .local v11, x:I
    :goto_1
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/glview/TwGLAniVertex;->GRID_SIZE:I

    move/from16 v18, v0

    move/from16 v0, v18

    if-gt v11, v0, :cond_3

    .line 57
    int-to-float v0, v11

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/glview/TwGLAniVertex;->GRID_SIZE:I

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    div-float v18, v18, v19

    mul-float v13, v18, v10

    .line 59
    .local v13, xStep:F
    const/4 v12, 0x0

    .line 60
    .local v12, xPos:F
    const/4 v15, 0x0

    .line 61
    .local v15, yPos:F
    const/16 v17, 0x0

    .line 62
    .local v17, zPos:F
    const/4 v7, 0x0

    .line 64
    .local v7, vAngle:F
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/glanimation/TwGLAniShutterBVertex;->mPortrait:Z

    move/from16 v18, v0

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_1

    .line 66
    int-to-float v0, v11

    move/from16 v18, v0

    const/high16 v19, 0x42b4

    mul-float v18, v18, v19

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/glview/TwGLAniVertex;->GRID_SIZE:I

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    div-float v18, v18, v19

    const/high16 v19, 0x42b4

    add-float v7, v18, v19

    .line 68
    const/high16 v18, 0x3f00

    cmpg-float v18, p1, v18

    if-gtz v18, :cond_0

    .line 69
    sub-float v18, v10, v13

    mul-float v18, v18, p1

    const/high16 v19, 0x4000

    mul-float v18, v18, v19

    float-to-double v0, v7

    move-wide/from16 v19, v0

    invoke-static/range {v19 .. v20}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v19

    invoke-static/range {v19 .. v20}, Ljava/lang/Math;->sin(D)D

    move-result-wide v19

    move-wide/from16 v0, v19

    double-to-float v0, v0

    move/from16 v19, v0

    mul-float v18, v18, v19

    sub-float v12, v5, v18

    .line 73
    :goto_2
    add-float v15, v6, v16

    .line 86
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/glview/TwGLAniVertex;->mVertexBuffer:Ljava/nio/FloatBuffer;

    move-object/from16 v18, v0

    add-int/lit8 v9, v8, 0x1

    .end local v8           #vPos:I
    .local v9, vPos:I
    move-object/from16 v0, v18

    invoke-virtual {v0, v8, v12}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 87
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/glview/TwGLAniVertex;->mVertexBuffer:Ljava/nio/FloatBuffer;

    move-object/from16 v18, v0

    add-int/lit8 v8, v9, 0x1

    .end local v9           #vPos:I
    .restart local v8       #vPos:I
    move-object/from16 v0, v18

    invoke-virtual {v0, v9, v15}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 88
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/glview/TwGLAniVertex;->mVertexBuffer:Ljava/nio/FloatBuffer;

    move-object/from16 v18, v0

    add-int/lit8 v9, v8, 0x1

    .end local v8           #vPos:I
    .restart local v9       #vPos:I
    move-object/from16 v0, v18

    move/from16 v1, v17

    invoke-virtual {v0, v8, v1}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 56
    add-int/lit8 v11, v11, 0x1

    move v8, v9

    .end local v9           #vPos:I
    .restart local v8       #vPos:I
    goto/16 :goto_1

    .line 71
    :cond_0
    sub-float v18, v10, v13

    const/high16 v19, 0x3f80

    sub-float v19, v19, p1

    mul-float v18, v18, v19

    const/high16 v19, 0x4000

    mul-float v18, v18, v19

    float-to-double v0, v7

    move-wide/from16 v19, v0

    invoke-static/range {v19 .. v20}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v19

    invoke-static/range {v19 .. v20}, Ljava/lang/Math;->sin(D)D

    move-result-wide v19

    move-wide/from16 v0, v19

    double-to-float v0, v0

    move/from16 v19, v0

    mul-float v18, v18, v19

    sub-float v12, v5, v18

    goto :goto_2

    .line 76
    :cond_1
    int-to-float v0, v14

    move/from16 v18, v0

    const/high16 v19, 0x42b4

    mul-float v18, v18, v19

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/glview/TwGLAniVertex;->GRID_SIZE:I

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    div-float v18, v18, v19

    const/high16 v19, 0x42b4

    add-float v7, v18, v19

    .line 78
    add-float v12, v4, v13

    .line 80
    const/high16 v18, 0x3f00

    cmpg-float v18, p1, v18

    if-gtz v18, :cond_2

    .line 81
    sub-float v18, v3, v16

    mul-float v18, v18, p1

    const/high16 v19, 0x4000

    mul-float v18, v18, v19

    float-to-double v0, v7

    move-wide/from16 v19, v0

    invoke-static/range {v19 .. v20}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v19

    invoke-static/range {v19 .. v20}, Ljava/lang/Math;->sin(D)D

    move-result-wide v19

    move-wide/from16 v0, v19

    double-to-float v0, v0

    move/from16 v19, v0

    mul-float v18, v18, v19

    sub-float v15, v2, v18

    goto/16 :goto_3

    .line 83
    :cond_2
    sub-float v18, v3, v16

    const/high16 v19, 0x4000

    mul-float v18, v18, v19

    const/high16 v19, 0x3f80

    sub-float v19, v19, p1

    mul-float v18, v18, v19

    float-to-double v0, v7

    move-wide/from16 v19, v0

    invoke-static/range {v19 .. v20}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v19

    invoke-static/range {v19 .. v20}, Ljava/lang/Math;->sin(D)D

    move-result-wide v19

    move-wide/from16 v0, v19

    double-to-float v0, v0

    move/from16 v19, v0

    mul-float v18, v18, v19

    sub-float v15, v2, v18

    goto/16 :goto_3

    .line 54
    .end local v7           #vAngle:F
    .end local v12           #xPos:F
    .end local v13           #xStep:F
    .end local v15           #yPos:F
    .end local v17           #zPos:F
    :cond_3
    add-int/lit8 v14, v14, 0x1

    goto/16 :goto_0

    .line 93
    .end local v11           #x:I
    .end local v16           #yStep:F
    :cond_4
    return-void
.end method
