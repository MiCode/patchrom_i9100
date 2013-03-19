.class public Lcom/sec/android/glanimation/TwGLAniShrinkVertex;
.super Lcom/sec/android/glview/TwGLAniVertex;
.source "TwGLAniShrinkVertex.java"


# static fields
#the value of this static final field might be set in the static constructor
.field private static final PREVIEW_HEIGHT:F = 0.0f

#the value of this static final field might be set in the static constructor
.field private static final PREVIEW_WIDTH:F = 0.0f

.field public static final RESOLUTION_POS_CAMCORDER_LEFT:I = 0x5

.field public static final RESOLUTION_POS_CAMCORDER_WIDE:I = 0x2

.field public static final RESOLUTION_POS_CENTER_FULL:I = 0x3

.field public static final RESOLUTION_POS_CENTER_MINI:I = 0x4

.field public static final RESOLUTION_POS_NONE:I = -0x1

.field public static final RESOLUTION_POS_WIDE_FULL:I = 0x1

.field private static final SHRINK_RATIO:F

.field private static final SHRINK_RATIO_WIDE:F


# instance fields
.field protected final BOTTOM_OFFSET:F

.field protected final BOTTOM_OFFSET_CAMCORDER_MINI:F

.field protected final BOTTOM_OFFSET_CAMCORDER_WIDE:F

.field protected final DISP_OVER_CNT:F

.field protected final DISP_OVER_RATIO:F

.field protected final INCR_CNT:F

.field protected final RIGHT_OFFSET:F

.field protected final RIGHT_OFFSET_WIDE:F

.field private mMiniOffsetHeight:F

.field private mMiniOffsetWidth:F

.field mNotiThumbnail:Z

.field private mResolutionType:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 51
    const v0, 0x7f07007d

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    sput v0, Lcom/sec/android/glanimation/TwGLAniShrinkVertex;->PREVIEW_WIDTH:F

    .line 52
    const v0, 0x7f07007e

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    sput v0, Lcom/sec/android/glanimation/TwGLAniShrinkVertex;->PREVIEW_HEIGHT:F

    .line 54
    const v0, 0x7f07024b

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    sput v0, Lcom/sec/android/glanimation/TwGLAniShrinkVertex;->SHRINK_RATIO:F

    .line 55
    const v0, 0x7f07024c

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    sput v0, Lcom/sec/android/glanimation/TwGLAniShrinkVertex;->SHRINK_RATIO_WIDE:F

    return-void
.end method

.method public constructor <init>(Lcom/sec/android/glview/TwGLContext;FFFFI)V
    .locals 8
    .parameter "glContext"
    .parameter "left"
    .parameter "top"
    .parameter "width"
    .parameter "height"
    .parameter "resolutionID"

    .prologue
    const/high16 v7, 0x4000

    const/4 v6, 0x0

    .line 65
    sget v0, Lcom/sec/android/glanimation/TwGLAniShrinkVertex;->PREVIEW_WIDTH:F

    cmpg-float v0, p4, v0

    if-gez v0, :cond_2

    sget v4, Lcom/sec/android/glanimation/TwGLAniShrinkVertex;->PREVIEW_WIDTH:F

    :goto_0
    sget v0, Lcom/sec/android/glanimation/TwGLAniShrinkVertex;->PREVIEW_HEIGHT:F

    cmpg-float v0, p5, v0

    if-gez v0, :cond_3

    sget v5, Lcom/sec/android/glanimation/TwGLAniShrinkVertex;->PREVIEW_HEIGHT:F

    :goto_1
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/glview/TwGLAniVertex;-><init>(Lcom/sec/android/glview/TwGLContext;FFFF)V

    .line 40
    const v0, 0x3e3851ec

    iput v0, p0, Lcom/sec/android/glanimation/TwGLAniShrinkVertex;->INCR_CNT:F

    .line 41
    const/high16 v0, 0x4130

    iput v0, p0, Lcom/sec/android/glanimation/TwGLAniShrinkVertex;->DISP_OVER_CNT:F

    .line 42
    const v0, 0x3f99999a

    iput v0, p0, Lcom/sec/android/glanimation/TwGLAniShrinkVertex;->DISP_OVER_RATIO:F

    .line 44
    const v0, 0x7f070246

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/sec/android/glanimation/TwGLAniShrinkVertex;->BOTTOM_OFFSET:F

    .line 45
    const v0, 0x7f070247

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/sec/android/glanimation/TwGLAniShrinkVertex;->BOTTOM_OFFSET_CAMCORDER_WIDE:F

    .line 46
    const v0, 0x7f070248

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/sec/android/glanimation/TwGLAniShrinkVertex;->BOTTOM_OFFSET_CAMCORDER_MINI:F

    .line 48
    const v0, 0x7f070249

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/sec/android/glanimation/TwGLAniShrinkVertex;->RIGHT_OFFSET:F

    .line 49
    const v0, 0x7f07024a

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/sec/android/glanimation/TwGLAniShrinkVertex;->RIGHT_OFFSET_WIDE:F

    .line 57
    iput v6, p0, Lcom/sec/android/glanimation/TwGLAniShrinkVertex;->mMiniOffsetWidth:F

    .line 58
    iput v6, p0, Lcom/sec/android/glanimation/TwGLAniShrinkVertex;->mMiniOffsetHeight:F

    .line 60
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/glanimation/TwGLAniShrinkVertex;->mNotiThumbnail:Z

    .line 62
    const/4 v0, 0x3

    iput v0, p0, Lcom/sec/android/glanimation/TwGLAniShrinkVertex;->mResolutionType:I

    .line 67
    invoke-direct {p0, p6}, Lcom/sec/android/glanimation/TwGLAniShrinkVertex;->getResolutionType(I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/glanimation/TwGLAniShrinkVertex;->mResolutionType:I

    .line 69
    sget v0, Lcom/sec/android/glanimation/TwGLAniShrinkVertex;->PREVIEW_WIDTH:F

    cmpg-float v0, p4, v0

    if-gez v0, :cond_0

    .line 70
    sget v0, Lcom/sec/android/glanimation/TwGLAniShrinkVertex;->PREVIEW_WIDTH:F

    sub-float/2addr v0, p4

    div-float/2addr v0, v7

    iput v0, p0, Lcom/sec/android/glanimation/TwGLAniShrinkVertex;->mMiniOffsetWidth:F

    .line 72
    :cond_0
    sget v0, Lcom/sec/android/glanimation/TwGLAniShrinkVertex;->PREVIEW_HEIGHT:F

    cmpg-float v0, p5, v0

    if-gez v0, :cond_1

    .line 73
    sget v0, Lcom/sec/android/glanimation/TwGLAniShrinkVertex;->PREVIEW_HEIGHT:F

    sub-float/2addr v0, p5

    div-float/2addr v0, v7

    iput v0, p0, Lcom/sec/android/glanimation/TwGLAniShrinkVertex;->mMiniOffsetHeight:F

    .line 75
    :cond_1
    return-void

    :cond_2
    move v4, p4

    .line 65
    goto :goto_0

    :cond_3
    move v5, p5

    goto :goto_1
.end method

.method private getResolutionType(I)I
    .locals 1
    .parameter "resid"

    .prologue
    const/4 v0, 0x3

    .line 184
    packed-switch p1, :pswitch_data_0

    .line 227
    :pswitch_0
    const/4 v0, -0x1

    :goto_0
    :pswitch_1
    return v0

    .line 204
    :pswitch_2
    const/4 v0, 0x1

    goto :goto_0

    .line 208
    :pswitch_3
    const/4 v0, 0x2

    goto :goto_0

    .line 217
    :pswitch_4
    const/4 v0, 0x4

    goto :goto_0

    .line 184
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_3
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_4
        :pswitch_2
        :pswitch_2
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method protected getDrawRatio()F
    .locals 4

    .prologue
    .line 158
    iget v0, p0, Lcom/sec/android/glview/TwGLAniVertex;->mCnt:F

    const/high16 v1, 0x4130

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    .line 160
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/glview/TwGLAniVertex;->mCnt:F

    .line 161
    const/high16 v0, -0x4080

    .line 179
    :goto_0
    return v0

    .line 163
    :cond_0
    iget v0, p0, Lcom/sec/android/glview/TwGLAniVertex;->mCnt:F

    const v1, 0x41175c29

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_2

    .line 165
    iget v0, p0, Lcom/sec/android/glview/TwGLAniVertex;->mCnt:F

    const v1, 0x3f2147ae

    add-float/2addr v0, v1

    iput v0, p0, Lcom/sec/android/glview/TwGLAniVertex;->mCnt:F

    .line 167
    iget-boolean v0, p0, Lcom/sec/android/glanimation/TwGLAniShrinkVertex;->mNotiThumbnail:Z

    if-nez v0, :cond_1

    .line 168
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/glanimation/TwGLAniShrinkVertex;->mNotiThumbnail:Z

    .line 169
    iget-object v0, p0, Lcom/sec/android/glview/TwGLAniVertex;->mOnAniProgressListener:Lcom/sec/android/glview/TwGLAniVertex$OnAniProgressListener;

    if-eqz v0, :cond_1

    .line 170
    iget-object v0, p0, Lcom/sec/android/glview/TwGLAniVertex;->mOnAniProgressListener:Lcom/sec/android/glview/TwGLAniVertex$OnAniProgressListener;

    iget v1, p0, Lcom/sec/android/glview/TwGLAniVertex;->mMode:I

    invoke-interface {v0, p0, v1}, Lcom/sec/android/glview/TwGLAniVertex$OnAniProgressListener;->onAniProgress(Lcom/sec/android/glview/TwGLView;I)V

    .line 179
    :cond_1
    :goto_1
    iget v0, p0, Lcom/sec/android/glview/TwGLAniVertex;->mCnt:F

    const/high16 v1, 0x4120

    div-float/2addr v0, v1

    goto :goto_0

    .line 175
    :cond_2
    iget v0, p0, Lcom/sec/android/glview/TwGLAniVertex;->mCnt:F

    const v1, 0x3e3851ec

    const v2, 0x412e6666

    iget v3, p0, Lcom/sec/android/glview/TwGLAniVertex;->mCnt:F

    sub-float/2addr v2, v3

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p0, Lcom/sec/android/glview/TwGLAniVertex;->mCnt:F

    goto :goto_1
.end method

.method protected setCustomAnimation(F)V
    .locals 17
    .parameter "ratio"

    .prologue
    .line 79
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/glanimation/TwGLAniShrinkVertex;->getLeft()F

    move-result v2

    .line 80
    .local v2, left:F
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/glanimation/TwGLAniShrinkVertex;->getTop()F

    move-result v3

    .line 81
    .local v3, top:F
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/glanimation/TwGLAniShrinkVertex;->getRight()F

    move-result v14

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/glanimation/TwGLAniShrinkVertex;->getLeft()F

    move-result v15

    sub-float/2addr v14, v15

    move-object/from16 v0, p0

    iget v15, v0, Lcom/sec/android/glanimation/TwGLAniShrinkVertex;->mMiniOffsetWidth:F

    const/high16 v16, 0x4000

    mul-float v15, v15, v16

    sub-float v6, v14, v15

    .line 82
    .local v6, width:F
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/glanimation/TwGLAniShrinkVertex;->getBottom()F

    move-result v14

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/glanimation/TwGLAniShrinkVertex;->getTop()F

    move-result v15

    sub-float/2addr v14, v15

    move-object/from16 v0, p0

    iget v15, v0, Lcom/sec/android/glanimation/TwGLAniShrinkVertex;->mMiniOffsetHeight:F

    const/high16 v16, 0x4000

    mul-float v15, v15, v16

    sub-float v1, v14, v15

    .line 84
    .local v1, height:F
    const/4 v4, 0x0

    .line 85
    .local v4, vPos:I
    const/4 v10, 0x0

    .local v10, y:I
    :goto_0
    move-object/from16 v0, p0

    iget v14, v0, Lcom/sec/android/glview/TwGLAniVertex;->GRID_SIZE:I

    if-gt v10, v14, :cond_2

    .line 86
    int-to-float v14, v10

    move-object/from16 v0, p0

    iget v15, v0, Lcom/sec/android/glview/TwGLAniVertex;->GRID_SIZE:I

    int-to-float v15, v15

    div-float/2addr v14, v15

    mul-float v12, v14, v1

    .line 87
    .local v12, yStep:F
    const/4 v7, 0x0

    .local v7, x:I
    :goto_1
    move-object/from16 v0, p0

    iget v14, v0, Lcom/sec/android/glview/TwGLAniVertex;->GRID_SIZE:I

    if-gt v7, v14, :cond_1

    .line 89
    const/4 v8, 0x0

    .line 90
    .local v8, xPos:F
    const/4 v11, 0x0

    .line 91
    .local v11, yPos:F
    const/4 v13, 0x0

    .line 93
    .local v13, zPos:F
    int-to-float v14, v7

    move-object/from16 v0, p0

    iget v15, v0, Lcom/sec/android/glview/TwGLAniVertex;->GRID_SIZE:I

    int-to-float v15, v15

    div-float/2addr v14, v15

    mul-float v9, v14, v6

    .line 95
    .local v9, xStep:F
    const v14, 0x3f7ae148

    cmpl-float v14, p1, v14

    if-lez v14, :cond_0

    .line 97
    move-object/from16 v0, p0

    iget v14, v0, Lcom/sec/android/glanimation/TwGLAniShrinkVertex;->mResolutionType:I

    packed-switch v14, :pswitch_data_0

    .line 106
    :pswitch_0
    add-float v14, v2, v9

    sub-float v15, v6, v9

    const v16, 0x3f7ae148

    mul-float v15, v15, v16

    sget v16, Lcom/sec/android/glanimation/TwGLAniShrinkVertex;->SHRINK_RATIO:F

    mul-float v15, v15, v16

    add-float/2addr v14, v15

    move-object/from16 v0, p0

    iget v15, v0, Lcom/sec/android/glanimation/TwGLAniShrinkVertex;->RIGHT_OFFSET:F

    add-float/2addr v14, v15

    const v15, 0x3f7ae148

    sub-float v15, p1, v15

    const/high16 v16, 0x437a

    mul-float v15, v15, v16

    add-float v8, v14, v15

    .line 109
    :goto_2
    move-object/from16 v0, p0

    iget v14, v0, Lcom/sec/android/glanimation/TwGLAniShrinkVertex;->mResolutionType:I

    packed-switch v14, :pswitch_data_1

    .line 117
    :pswitch_1
    add-float v14, v3, v12

    sub-float v15, v1, v12

    const v16, 0x3f7ae148

    mul-float v15, v15, v16

    sget v16, Lcom/sec/android/glanimation/TwGLAniShrinkVertex;->SHRINK_RATIO:F

    mul-float v15, v15, v16

    add-float/2addr v14, v15

    move-object/from16 v0, p0

    iget v15, v0, Lcom/sec/android/glanimation/TwGLAniShrinkVertex;->BOTTOM_OFFSET:F

    add-float v11, v14, v15

    .line 147
    :goto_3
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/glview/TwGLAniVertex;->mVertexBuffer:Ljava/nio/FloatBuffer;

    add-int/lit8 v5, v4, 0x1

    .end local v4           #vPos:I
    .local v5, vPos:I
    invoke-virtual {v14, v4, v8}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 148
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/glview/TwGLAniVertex;->mVertexBuffer:Ljava/nio/FloatBuffer;

    add-int/lit8 v4, v5, 0x1

    .end local v5           #vPos:I
    .restart local v4       #vPos:I
    invoke-virtual {v14, v5, v11}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 149
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/glview/TwGLAniVertex;->mVertexBuffer:Ljava/nio/FloatBuffer;

    add-int/lit8 v5, v4, 0x1

    .end local v4           #vPos:I
    .restart local v5       #vPos:I
    invoke-virtual {v14, v4, v13}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 87
    add-int/lit8 v7, v7, 0x1

    move v4, v5

    .end local v5           #vPos:I
    .restart local v4       #vPos:I
    goto :goto_1

    .line 100
    :pswitch_2
    add-float v14, v2, v9

    sub-float v15, v6, v9

    const v16, 0x3f7ae148

    mul-float v15, v15, v16

    sget v16, Lcom/sec/android/glanimation/TwGLAniShrinkVertex;->SHRINK_RATIO_WIDE:F

    mul-float v15, v15, v16

    add-float/2addr v14, v15

    move-object/from16 v0, p0

    iget v15, v0, Lcom/sec/android/glanimation/TwGLAniShrinkVertex;->RIGHT_OFFSET_WIDE:F

    add-float/2addr v14, v15

    const v15, 0x3f7ae148

    sub-float v15, p1, v15

    const/high16 v16, 0x435c

    mul-float v15, v15, v16

    add-float v8, v14, v15

    .line 101
    goto :goto_2

    .line 103
    :pswitch_3
    add-float v14, v2, v9

    sub-float v15, v6, v9

    const v16, 0x3f7ae148

    mul-float v15, v15, v16

    sget v16, Lcom/sec/android/glanimation/TwGLAniShrinkVertex;->SHRINK_RATIO:F

    mul-float v15, v15, v16

    add-float/2addr v14, v15

    move-object/from16 v0, p0

    iget v15, v0, Lcom/sec/android/glanimation/TwGLAniShrinkVertex;->RIGHT_OFFSET:F

    add-float/2addr v14, v15

    move-object/from16 v0, p0

    iget v15, v0, Lcom/sec/android/glanimation/TwGLAniShrinkVertex;->mMiniOffsetWidth:F

    add-float/2addr v14, v15

    const v15, 0x3f7ae148

    sub-float v15, p1, v15

    const/high16 v16, 0x437a

    mul-float v15, v15, v16

    add-float v8, v14, v15

    .line 104
    goto :goto_2

    .line 111
    :pswitch_4
    add-float v14, v3, v12

    sub-float v15, v1, v12

    const v16, 0x3f7ae148

    mul-float v15, v15, v16

    sget v16, Lcom/sec/android/glanimation/TwGLAniShrinkVertex;->SHRINK_RATIO:F

    mul-float v15, v15, v16

    add-float/2addr v14, v15

    move-object/from16 v0, p0

    iget v15, v0, Lcom/sec/android/glanimation/TwGLAniShrinkVertex;->BOTTOM_OFFSET_CAMCORDER_WIDE:F

    add-float v11, v14, v15

    .line 112
    goto :goto_3

    .line 114
    :pswitch_5
    add-float v14, v3, v12

    sub-float v15, v1, v12

    const v16, 0x3f7ae148

    mul-float v15, v15, v16

    sget v16, Lcom/sec/android/glanimation/TwGLAniShrinkVertex;->SHRINK_RATIO:F

    mul-float v15, v15, v16

    add-float/2addr v14, v15

    move-object/from16 v0, p0

    iget v15, v0, Lcom/sec/android/glanimation/TwGLAniShrinkVertex;->BOTTOM_OFFSET_CAMCORDER_MINI:F

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/glanimation/TwGLAniShrinkVertex;->mMiniOffsetHeight:F

    move/from16 v16, v0

    add-float v15, v15, v16

    add-float v11, v14, v15

    .line 115
    goto/16 :goto_3

    .line 122
    :cond_0
    move-object/from16 v0, p0

    iget v14, v0, Lcom/sec/android/glanimation/TwGLAniShrinkVertex;->mResolutionType:I

    packed-switch v14, :pswitch_data_2

    .line 131
    :pswitch_6
    add-float v14, v2, v9

    sub-float v15, v6, v9

    mul-float v15, v15, p1

    sget v16, Lcom/sec/android/glanimation/TwGLAniShrinkVertex;->SHRINK_RATIO:F

    mul-float v15, v15, v16

    add-float/2addr v14, v15

    move-object/from16 v0, p0

    iget v15, v0, Lcom/sec/android/glanimation/TwGLAniShrinkVertex;->RIGHT_OFFSET:F

    mul-float v15, v15, p1

    add-float v8, v14, v15

    .line 134
    :goto_4
    move-object/from16 v0, p0

    iget v14, v0, Lcom/sec/android/glanimation/TwGLAniShrinkVertex;->mResolutionType:I

    packed-switch v14, :pswitch_data_3

    .line 142
    :pswitch_7
    add-float v14, v3, v12

    sub-float v15, v1, v12

    mul-float v15, v15, p1

    sget v16, Lcom/sec/android/glanimation/TwGLAniShrinkVertex;->SHRINK_RATIO:F

    mul-float v15, v15, v16

    add-float/2addr v14, v15

    move-object/from16 v0, p0

    iget v15, v0, Lcom/sec/android/glanimation/TwGLAniShrinkVertex;->BOTTOM_OFFSET:F

    mul-float v15, v15, p1

    add-float v11, v14, v15

    goto/16 :goto_3

    .line 125
    :pswitch_8
    add-float v14, v2, v9

    sub-float v15, v6, v9

    mul-float v15, v15, p1

    sget v16, Lcom/sec/android/glanimation/TwGLAniShrinkVertex;->SHRINK_RATIO_WIDE:F

    mul-float v15, v15, v16

    add-float/2addr v14, v15

    move-object/from16 v0, p0

    iget v15, v0, Lcom/sec/android/glanimation/TwGLAniShrinkVertex;->RIGHT_OFFSET_WIDE:F

    mul-float v15, v15, p1

    add-float v8, v14, v15

    .line 126
    goto :goto_4

    .line 128
    :pswitch_9
    add-float v14, v2, v9

    sub-float v15, v6, v9

    mul-float v15, v15, p1

    sget v16, Lcom/sec/android/glanimation/TwGLAniShrinkVertex;->SHRINK_RATIO:F

    mul-float v15, v15, v16

    add-float/2addr v14, v15

    move-object/from16 v0, p0

    iget v15, v0, Lcom/sec/android/glanimation/TwGLAniShrinkVertex;->RIGHT_OFFSET:F

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/glanimation/TwGLAniShrinkVertex;->mMiniOffsetWidth:F

    move/from16 v16, v0

    add-float v15, v15, v16

    mul-float v15, v15, p1

    add-float v8, v14, v15

    .line 129
    goto :goto_4

    .line 136
    :pswitch_a
    add-float v14, v3, v12

    sub-float v15, v1, v12

    mul-float v15, v15, p1

    sget v16, Lcom/sec/android/glanimation/TwGLAniShrinkVertex;->SHRINK_RATIO:F

    mul-float v15, v15, v16

    add-float/2addr v14, v15

    move-object/from16 v0, p0

    iget v15, v0, Lcom/sec/android/glanimation/TwGLAniShrinkVertex;->BOTTOM_OFFSET_CAMCORDER_WIDE:F

    mul-float v15, v15, p1

    add-float v11, v14, v15

    .line 137
    goto/16 :goto_3

    .line 139
    :pswitch_b
    add-float v14, v3, v12

    sub-float v15, v1, v12

    mul-float v15, v15, p1

    sget v16, Lcom/sec/android/glanimation/TwGLAniShrinkVertex;->SHRINK_RATIO:F

    mul-float v15, v15, v16

    add-float/2addr v14, v15

    move-object/from16 v0, p0

    iget v15, v0, Lcom/sec/android/glanimation/TwGLAniShrinkVertex;->BOTTOM_OFFSET_CAMCORDER_MINI:F

    mul-float v15, v15, p1

    add-float/2addr v14, v15

    move-object/from16 v0, p0

    iget v15, v0, Lcom/sec/android/glanimation/TwGLAniShrinkVertex;->mMiniOffsetHeight:F

    add-float v11, v14, v15

    .line 140
    goto/16 :goto_3

    .line 85
    .end local v8           #xPos:F
    .end local v9           #xStep:F
    .end local v11           #yPos:F
    .end local v13           #zPos:F
    :cond_1
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_0

    .line 154
    .end local v7           #x:I
    .end local v12           #yStep:F
    :cond_2
    return-void

    .line 97
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch

    .line 109
    :pswitch_data_1
    .packed-switch 0x2
        :pswitch_4
        :pswitch_1
        :pswitch_1
        :pswitch_5
    .end packed-switch

    .line 122
    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_8
        :pswitch_8
        :pswitch_6
        :pswitch_9
    .end packed-switch

    .line 134
    :pswitch_data_3
    .packed-switch 0x2
        :pswitch_a
        :pswitch_7
        :pswitch_7
        :pswitch_b
    .end packed-switch
.end method
