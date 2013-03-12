.class public Landroid/graphics/drawable/GradientDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "GradientDrawable.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/graphics/drawable/GradientDrawable$1;,
        Landroid/graphics/drawable/GradientDrawable$GradientState;,
        Landroid/graphics/drawable/GradientDrawable$Orientation;
    }
.end annotation


# static fields
.field public static final LINE:I = 0x2

.field public static final LINEAR_GRADIENT:I = 0x0

.field public static final OVAL:I = 0x1

.field public static final RADIAL_GRADIENT:I = 0x1

.field public static final RECTANGLE:I = 0x0

.field public static final RING:I = 0x3

.field public static final SWEEP_GRADIENT:I = 0x2


# instance fields
.field private mAlpha:I

.field private mColorFilter:Landroid/graphics/ColorFilter;

.field private mDither:Z

.field private final mFillPaint:Landroid/graphics/Paint;

.field private mGradientState:Landroid/graphics/drawable/GradientDrawable$GradientState;

.field private mLayerPaint:Landroid/graphics/Paint;

.field private mMutated:Z

.field private mPadding:Landroid/graphics/Rect;

.field private final mPath:Landroid/graphics/Path;

.field private mPathIsDirty:Z

.field private final mRect:Landroid/graphics/RectF;

.field private mRectIsDirty:Z

.field private mRingPath:Landroid/graphics/Path;

.field private mStrokePaint:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 154
    new-instance v0, Landroid/graphics/drawable/GradientDrawable$GradientState;

    sget-object v1, Landroid/graphics/drawable/GradientDrawable$Orientation;->TOP_BOTTOM:Landroid/graphics/drawable/GradientDrawable$Orientation;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/graphics/drawable/GradientDrawable$GradientState;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    invoke-direct {p0, v0}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$GradientState;)V

    .line 155
    return-void
.end method

.method private constructor <init>(Landroid/graphics/drawable/GradientDrawable$GradientState;)V
    .locals 2
    .parameter "state"

    .prologue
    const/4 v1, 0x1

    .line 1201
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 115
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Landroid/graphics/drawable/GradientDrawable;->mFillPaint:Landroid/graphics/Paint;

    .line 119
    const/16 v0, 0xff

    iput v0, p0, Landroid/graphics/drawable/GradientDrawable;->mAlpha:I

    .line 122
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Landroid/graphics/drawable/GradientDrawable;->mPath:Landroid/graphics/Path;

    .line 123
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Landroid/graphics/drawable/GradientDrawable;->mRect:Landroid/graphics/RectF;

    .line 129
    iput-boolean v1, p0, Landroid/graphics/drawable/GradientDrawable;->mPathIsDirty:Z

    .line 1202
    iput-object p1, p0, Landroid/graphics/drawable/GradientDrawable;->mGradientState:Landroid/graphics/drawable/GradientDrawable$GradientState;

    .line 1203
    invoke-direct {p0, p1}, Landroid/graphics/drawable/GradientDrawable;->initializeWithState(Landroid/graphics/drawable/GradientDrawable$GradientState;)V

    .line 1204
    iput-boolean v1, p0, Landroid/graphics/drawable/GradientDrawable;->mRectIsDirty:Z

    .line 1205
    return-void
.end method

.method synthetic constructor <init>(Landroid/graphics/drawable/GradientDrawable$GradientState;Landroid/graphics/drawable/GradientDrawable$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 77
    invoke-direct {p0, p1}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$GradientState;)V

    return-void
.end method

.method public constructor <init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V
    .locals 1
    .parameter "orientation"
    .parameter "colors"

    .prologue
    .line 162
    new-instance v0, Landroid/graphics/drawable/GradientDrawable$GradientState;

    invoke-direct {v0, p1, p2}, Landroid/graphics/drawable/GradientDrawable$GradientState;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    invoke-direct {p0, v0}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$GradientState;)V

    .line 163
    return-void
.end method

.method private buildRing(Landroid/graphics/drawable/GradientDrawable$GradientState;)Landroid/graphics/Path;
    .locals 14
    .parameter "st"

    .prologue
    const/4 v13, -0x1

    const/high16 v12, 0x4000

    const/4 v11, 0x0

    const/high16 v8, 0x43b4

    .line 553
    iget-object v9, p0, Landroid/graphics/drawable/GradientDrawable;->mRingPath:Landroid/graphics/Path;

    if-eqz v9, :cond_1

    #getter for: Landroid/graphics/drawable/GradientDrawable$GradientState;->mUseLevelForShape:Z
    invoke-static {p1}, Landroid/graphics/drawable/GradientDrawable$GradientState;->access$100(Landroid/graphics/drawable/GradientDrawable$GradientState;)Z

    move-result v9

    if-eqz v9, :cond_0

    iget-boolean v9, p0, Landroid/graphics/drawable/GradientDrawable;->mPathIsDirty:Z

    if-nez v9, :cond_1

    :cond_0
    iget-object v3, p0, Landroid/graphics/drawable/GradientDrawable;->mRingPath:Landroid/graphics/Path;

    .line 601
    :goto_0
    return-object v3

    .line 554
    :cond_1
    iput-boolean v11, p0, Landroid/graphics/drawable/GradientDrawable;->mPathIsDirty:Z

    .line 556
    #getter for: Landroid/graphics/drawable/GradientDrawable$GradientState;->mUseLevelForShape:Z
    invoke-static {p1}, Landroid/graphics/drawable/GradientDrawable$GradientState;->access$100(Landroid/graphics/drawable/GradientDrawable$GradientState;)Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-virtual {p0}, Landroid/graphics/drawable/GradientDrawable;->getLevel()I

    move-result v9

    int-to-float v9, v9

    mul-float/2addr v9, v8

    const v10, 0x461c4000

    div-float v4, v9, v10

    .line 558
    .local v4, sweep:F
    :goto_1
    new-instance v0, Landroid/graphics/RectF;

    iget-object v9, p0, Landroid/graphics/drawable/GradientDrawable;->mRect:Landroid/graphics/RectF;

    invoke-direct {v0, v9}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    .line 560
    .local v0, bounds:Landroid/graphics/RectF;
    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v9

    div-float v6, v9, v12

    .line 561
    .local v6, x:F
    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v9

    div-float v7, v9, v12

    .line 563
    .local v7, y:F
    iget v9, p1, Landroid/graphics/drawable/GradientDrawable$GradientState;->mThickness:I

    if-eq v9, v13, :cond_3

    iget v9, p1, Landroid/graphics/drawable/GradientDrawable$GradientState;->mThickness:I

    int-to-float v5, v9

    .line 566
    .local v5, thickness:F
    :goto_2
    iget v9, p1, Landroid/graphics/drawable/GradientDrawable$GradientState;->mInnerRadius:I

    if-eq v9, v13, :cond_4

    iget v9, p1, Landroid/graphics/drawable/GradientDrawable$GradientState;->mInnerRadius:I

    int-to-float v2, v9

    .line 569
    .local v2, radius:F
    :goto_3
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1, v0}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    .line 570
    .local v1, innerBounds:Landroid/graphics/RectF;
    sub-float v9, v6, v2

    sub-float v10, v7, v2

    invoke-virtual {v1, v9, v10}, Landroid/graphics/RectF;->inset(FF)V

    .line 572
    new-instance v0, Landroid/graphics/RectF;

    .end local v0           #bounds:Landroid/graphics/RectF;
    invoke-direct {v0, v1}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    .line 573
    .restart local v0       #bounds:Landroid/graphics/RectF;
    neg-float v9, v5

    neg-float v10, v5

    invoke-virtual {v0, v9, v10}, Landroid/graphics/RectF;->inset(FF)V

    .line 575
    iget-object v9, p0, Landroid/graphics/drawable/GradientDrawable;->mRingPath:Landroid/graphics/Path;

    if-nez v9, :cond_5

    .line 576
    new-instance v9, Landroid/graphics/Path;

    invoke-direct {v9}, Landroid/graphics/Path;-><init>()V

    iput-object v9, p0, Landroid/graphics/drawable/GradientDrawable;->mRingPath:Landroid/graphics/Path;

    .line 581
    :goto_4
    iget-object v3, p0, Landroid/graphics/drawable/GradientDrawable;->mRingPath:Landroid/graphics/Path;

    .line 584
    .local v3, ringPath:Landroid/graphics/Path;
    cmpg-float v8, v4, v8

    if-gez v8, :cond_6

    const/high16 v8, -0x3c4c

    cmpl-float v8, v4, v8

    if-lez v8, :cond_6

    .line 585
    sget-object v8, Landroid/graphics/Path$FillType;->EVEN_ODD:Landroid/graphics/Path$FillType;

    invoke-virtual {v3, v8}, Landroid/graphics/Path;->setFillType(Landroid/graphics/Path$FillType;)V

    .line 587
    add-float v8, v6, v2

    invoke-virtual {v3, v8, v7}, Landroid/graphics/Path;->moveTo(FF)V

    .line 589
    add-float v8, v6, v2

    add-float/2addr v8, v5

    invoke-virtual {v3, v8, v7}, Landroid/graphics/Path;->lineTo(FF)V

    .line 591
    const/4 v8, 0x0

    invoke-virtual {v3, v0, v8, v4, v11}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FFZ)V

    .line 593
    neg-float v8, v4

    invoke-virtual {v3, v1, v4, v8, v11}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FFZ)V

    .line 594
    invoke-virtual {v3}, Landroid/graphics/Path;->close()V

    goto :goto_0

    .end local v0           #bounds:Landroid/graphics/RectF;
    .end local v1           #innerBounds:Landroid/graphics/RectF;
    .end local v2           #radius:F
    .end local v3           #ringPath:Landroid/graphics/Path;
    .end local v4           #sweep:F
    .end local v5           #thickness:F
    .end local v6           #x:F
    .end local v7           #y:F
    :cond_2
    move v4, v8

    .line 556
    goto :goto_1

    .line 563
    .restart local v0       #bounds:Landroid/graphics/RectF;
    .restart local v4       #sweep:F
    .restart local v6       #x:F
    .restart local v7       #y:F
    :cond_3
    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v9

    iget v10, p1, Landroid/graphics/drawable/GradientDrawable$GradientState;->mThicknessRatio:F

    div-float v5, v9, v10

    goto :goto_2

    .line 566
    .restart local v5       #thickness:F
    :cond_4
    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v9

    iget v10, p1, Landroid/graphics/drawable/GradientDrawable$GradientState;->mInnerRadiusRatio:F

    div-float v2, v9, v10

    goto :goto_3

    .line 578
    .restart local v1       #innerBounds:Landroid/graphics/RectF;
    .restart local v2       #radius:F
    :cond_5
    iget-object v9, p0, Landroid/graphics/drawable/GradientDrawable;->mRingPath:Landroid/graphics/Path;

    invoke-virtual {v9}, Landroid/graphics/Path;->reset()V

    goto :goto_4

    .line 597
    .restart local v3       #ringPath:Landroid/graphics/Path;
    :cond_6
    sget-object v8, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v3, v0, v8}, Landroid/graphics/Path;->addOval(Landroid/graphics/RectF;Landroid/graphics/Path$Direction;)V

    .line 598
    sget-object v8, Landroid/graphics/Path$Direction;->CCW:Landroid/graphics/Path$Direction;

    invoke-virtual {v3, v1, v8}, Landroid/graphics/Path;->addOval(Landroid/graphics/RectF;Landroid/graphics/Path$Direction;)V

    goto/16 :goto_0
.end method

.method private ensureValidRect()Z
    .locals 25

    .prologue
    .line 679
    move-object/from16 v0, p0

    iget-boolean v2, v0, Landroid/graphics/drawable/GradientDrawable;->mRectIsDirty:Z

    if-eqz v2, :cond_1

    .line 680
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Landroid/graphics/drawable/GradientDrawable;->mRectIsDirty:Z

    .line 682
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/drawable/GradientDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v15

    .line 683
    .local v15, bounds:Landroid/graphics/Rect;
    const/16 v18, 0x0

    .line 685
    .local v18, inset:F
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/graphics/drawable/GradientDrawable;->mStrokePaint:Landroid/graphics/Paint;

    if-eqz v2, :cond_0

    .line 686
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/graphics/drawable/GradientDrawable;->mStrokePaint:Landroid/graphics/Paint;

    invoke-virtual {v2}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v2

    const/high16 v8, 0x3f00

    mul-float v18, v2, v8

    .line 689
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/graphics/drawable/GradientDrawable;->mGradientState:Landroid/graphics/drawable/GradientDrawable$GradientState;

    move-object/from16 v22, v0

    .line 691
    .local v22, st:Landroid/graphics/drawable/GradientDrawable$GradientState;
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/graphics/drawable/GradientDrawable;->mRect:Landroid/graphics/RectF;

    iget v8, v15, Landroid/graphics/Rect;->left:I

    int-to-float v8, v8

    add-float v8, v8, v18

    iget v9, v15, Landroid/graphics/Rect;->top:I

    int-to-float v9, v9

    add-float v9, v9, v18

    iget v10, v15, Landroid/graphics/Rect;->right:I

    int-to-float v10, v10

    sub-float v10, v10, v18

    iget v11, v15, Landroid/graphics/Rect;->bottom:I

    int-to-float v11, v11

    sub-float v11, v11, v18

    invoke-virtual {v2, v8, v9, v10, v11}, Landroid/graphics/RectF;->set(FFFF)V

    .line 694
    move-object/from16 v0, v22

    iget-object v7, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mColors:[I

    .line 695
    .local v7, colors:[I
    if-eqz v7, :cond_1

    .line 696
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/graphics/drawable/GradientDrawable;->mRect:Landroid/graphics/RectF;

    move-object/from16 v21, v0

    .line 699
    .local v21, r:Landroid/graphics/RectF;
    move-object/from16 v0, v22

    iget v2, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mGradient:I

    if-nez v2, :cond_3

    .line 700
    #getter for: Landroid/graphics/drawable/GradientDrawable$GradientState;->mUseLevel:Z
    invoke-static/range {v22 .. v22}, Landroid/graphics/drawable/GradientDrawable$GradientState;->access$000(Landroid/graphics/drawable/GradientDrawable$GradientState;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual/range {p0 .. p0}, Landroid/graphics/drawable/GradientDrawable;->getLevel()I

    move-result v2

    int-to-float v2, v2

    const v8, 0x461c4000

    div-float v20, v2, v8

    .line 701
    .local v20, level:F
    :goto_0
    sget-object v2, Landroid/graphics/drawable/GradientDrawable$1;->$SwitchMap$android$graphics$drawable$GradientDrawable$Orientation:[I

    move-object/from16 v0, v22

    iget-object v8, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mOrientation:Landroid/graphics/drawable/GradientDrawable$Orientation;

    invoke-virtual {v8}, Landroid/graphics/drawable/GradientDrawable$Orientation;->ordinal()I

    move-result v8

    aget v2, v2, v8

    packed-switch v2, :pswitch_data_0

    .line 731
    move-object/from16 v0, v21

    iget v3, v0, Landroid/graphics/RectF;->left:F

    .local v3, x0:F
    move-object/from16 v0, v21

    iget v4, v0, Landroid/graphics/RectF;->top:F

    .line 732
    .local v4, y0:F
    move-object/from16 v0, v21

    iget v2, v0, Landroid/graphics/RectF;->right:F

    mul-float v5, v20, v2

    .local v5, x1:F
    move-object/from16 v0, v21

    iget v2, v0, Landroid/graphics/RectF;->bottom:F

    mul-float v6, v20, v2

    .line 736
    .local v6, y1:F
    :goto_1
    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/graphics/drawable/GradientDrawable;->mFillPaint:Landroid/graphics/Paint;

    new-instance v2, Landroid/graphics/LinearGradient;

    move-object/from16 v0, v22

    iget-object v8, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mPositions:[F

    sget-object v9, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct/range {v2 .. v9}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    invoke-virtual {v10, v2}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 780
    .end local v3           #x0:F
    .end local v4           #y0:F
    .end local v5           #x1:F
    .end local v6           #y1:F
    .end local v7           #colors:[I
    .end local v15           #bounds:Landroid/graphics/Rect;
    .end local v18           #inset:F
    .end local v20           #level:F
    .end local v21           #r:Landroid/graphics/RectF;
    .end local v22           #st:Landroid/graphics/drawable/GradientDrawable$GradientState;
    :cond_1
    :goto_2
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/graphics/drawable/GradientDrawable;->mRect:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_c

    const/4 v2, 0x1

    :goto_3
    return v2

    .line 700
    .restart local v7       #colors:[I
    .restart local v15       #bounds:Landroid/graphics/Rect;
    .restart local v18       #inset:F
    .restart local v21       #r:Landroid/graphics/RectF;
    .restart local v22       #st:Landroid/graphics/drawable/GradientDrawable$GradientState;
    :cond_2
    const/high16 v20, 0x3f80

    goto :goto_0

    .line 703
    .restart local v20       #level:F
    :pswitch_0
    move-object/from16 v0, v21

    iget v3, v0, Landroid/graphics/RectF;->left:F

    .restart local v3       #x0:F
    move-object/from16 v0, v21

    iget v4, v0, Landroid/graphics/RectF;->top:F

    .line 704
    .restart local v4       #y0:F
    move v5, v3

    .restart local v5       #x1:F
    move-object/from16 v0, v21

    iget v2, v0, Landroid/graphics/RectF;->bottom:F

    mul-float v6, v20, v2

    .line 705
    .restart local v6       #y1:F
    goto :goto_1

    .line 707
    .end local v3           #x0:F
    .end local v4           #y0:F
    .end local v5           #x1:F
    .end local v6           #y1:F
    :pswitch_1
    move-object/from16 v0, v21

    iget v3, v0, Landroid/graphics/RectF;->right:F

    .restart local v3       #x0:F
    move-object/from16 v0, v21

    iget v4, v0, Landroid/graphics/RectF;->top:F

    .line 708
    .restart local v4       #y0:F
    move-object/from16 v0, v21

    iget v2, v0, Landroid/graphics/RectF;->left:F

    mul-float v5, v20, v2

    .restart local v5       #x1:F
    move-object/from16 v0, v21

    iget v2, v0, Landroid/graphics/RectF;->bottom:F

    mul-float v6, v20, v2

    .line 709
    .restart local v6       #y1:F
    goto :goto_1

    .line 711
    .end local v3           #x0:F
    .end local v4           #y0:F
    .end local v5           #x1:F
    .end local v6           #y1:F
    :pswitch_2
    move-object/from16 v0, v21

    iget v3, v0, Landroid/graphics/RectF;->right:F

    .restart local v3       #x0:F
    move-object/from16 v0, v21

    iget v4, v0, Landroid/graphics/RectF;->top:F

    .line 712
    .restart local v4       #y0:F
    move-object/from16 v0, v21

    iget v2, v0, Landroid/graphics/RectF;->left:F

    mul-float v5, v20, v2

    .restart local v5       #x1:F
    move v6, v4

    .line 713
    .restart local v6       #y1:F
    goto :goto_1

    .line 715
    .end local v3           #x0:F
    .end local v4           #y0:F
    .end local v5           #x1:F
    .end local v6           #y1:F
    :pswitch_3
    move-object/from16 v0, v21

    iget v3, v0, Landroid/graphics/RectF;->right:F

    .restart local v3       #x0:F
    move-object/from16 v0, v21

    iget v4, v0, Landroid/graphics/RectF;->bottom:F

    .line 716
    .restart local v4       #y0:F
    move-object/from16 v0, v21

    iget v2, v0, Landroid/graphics/RectF;->left:F

    mul-float v5, v20, v2

    .restart local v5       #x1:F
    move-object/from16 v0, v21

    iget v2, v0, Landroid/graphics/RectF;->top:F

    mul-float v6, v20, v2

    .line 717
    .restart local v6       #y1:F
    goto :goto_1

    .line 719
    .end local v3           #x0:F
    .end local v4           #y0:F
    .end local v5           #x1:F
    .end local v6           #y1:F
    :pswitch_4
    move-object/from16 v0, v21

    iget v3, v0, Landroid/graphics/RectF;->left:F

    .restart local v3       #x0:F
    move-object/from16 v0, v21

    iget v4, v0, Landroid/graphics/RectF;->bottom:F

    .line 720
    .restart local v4       #y0:F
    move v5, v3

    .restart local v5       #x1:F
    move-object/from16 v0, v21

    iget v2, v0, Landroid/graphics/RectF;->top:F

    mul-float v6, v20, v2

    .line 721
    .restart local v6       #y1:F
    goto :goto_1

    .line 723
    .end local v3           #x0:F
    .end local v4           #y0:F
    .end local v5           #x1:F
    .end local v6           #y1:F
    :pswitch_5
    move-object/from16 v0, v21

    iget v3, v0, Landroid/graphics/RectF;->left:F

    .restart local v3       #x0:F
    move-object/from16 v0, v21

    iget v4, v0, Landroid/graphics/RectF;->bottom:F

    .line 724
    .restart local v4       #y0:F
    move-object/from16 v0, v21

    iget v2, v0, Landroid/graphics/RectF;->right:F

    mul-float v5, v20, v2

    .restart local v5       #x1:F
    move-object/from16 v0, v21

    iget v2, v0, Landroid/graphics/RectF;->top:F

    mul-float v6, v20, v2

    .line 725
    .restart local v6       #y1:F
    goto/16 :goto_1

    .line 727
    .end local v3           #x0:F
    .end local v4           #y0:F
    .end local v5           #x1:F
    .end local v6           #y1:F
    :pswitch_6
    move-object/from16 v0, v21

    iget v3, v0, Landroid/graphics/RectF;->left:F

    .restart local v3       #x0:F
    move-object/from16 v0, v21

    iget v4, v0, Landroid/graphics/RectF;->top:F

    .line 728
    .restart local v4       #y0:F
    move-object/from16 v0, v21

    iget v2, v0, Landroid/graphics/RectF;->right:F

    mul-float v5, v20, v2

    .restart local v5       #x1:F
    move v6, v4

    .line 729
    .restart local v6       #y1:F
    goto/16 :goto_1

    .line 738
    .end local v3           #x0:F
    .end local v4           #y0:F
    .end local v5           #x1:F
    .end local v6           #y1:F
    .end local v20           #level:F
    :cond_3
    move-object/from16 v0, v22

    iget v2, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mGradient:I

    const/4 v8, 0x1

    if-ne v2, v8, :cond_5

    .line 739
    move-object/from16 v0, v21

    iget v2, v0, Landroid/graphics/RectF;->left:F

    move-object/from16 v0, v21

    iget v8, v0, Landroid/graphics/RectF;->right:F

    move-object/from16 v0, v21

    iget v9, v0, Landroid/graphics/RectF;->left:F

    sub-float/2addr v8, v9

    #getter for: Landroid/graphics/drawable/GradientDrawable$GradientState;->mCenterX:F
    invoke-static/range {v22 .. v22}, Landroid/graphics/drawable/GradientDrawable$GradientState;->access$200(Landroid/graphics/drawable/GradientDrawable$GradientState;)F

    move-result v9

    mul-float/2addr v8, v9

    add-float v3, v2, v8

    .line 740
    .restart local v3       #x0:F
    move-object/from16 v0, v21

    iget v2, v0, Landroid/graphics/RectF;->top:F

    move-object/from16 v0, v21

    iget v8, v0, Landroid/graphics/RectF;->bottom:F

    move-object/from16 v0, v21

    iget v9, v0, Landroid/graphics/RectF;->top:F

    sub-float/2addr v8, v9

    #getter for: Landroid/graphics/drawable/GradientDrawable$GradientState;->mCenterY:F
    invoke-static/range {v22 .. v22}, Landroid/graphics/drawable/GradientDrawable$GradientState;->access$300(Landroid/graphics/drawable/GradientDrawable$GradientState;)F

    move-result v9

    mul-float/2addr v8, v9

    add-float v4, v2, v8

    .line 742
    .restart local v4       #y0:F
    #getter for: Landroid/graphics/drawable/GradientDrawable$GradientState;->mUseLevel:Z
    invoke-static/range {v22 .. v22}, Landroid/graphics/drawable/GradientDrawable$GradientState;->access$000(Landroid/graphics/drawable/GradientDrawable$GradientState;)Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-virtual/range {p0 .. p0}, Landroid/graphics/drawable/GradientDrawable;->getLevel()I

    move-result v2

    int-to-float v2, v2

    const v8, 0x461c4000

    div-float v20, v2, v8

    .line 744
    .restart local v20       #level:F
    :goto_4
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/graphics/drawable/GradientDrawable;->mFillPaint:Landroid/graphics/Paint;

    new-instance v8, Landroid/graphics/RadialGradient;

    #getter for: Landroid/graphics/drawable/GradientDrawable$GradientState;->mGradientRadius:F
    invoke-static/range {v22 .. v22}, Landroid/graphics/drawable/GradientDrawable$GradientState;->access$400(Landroid/graphics/drawable/GradientDrawable$GradientState;)F

    move-result v9

    mul-float v11, v20, v9

    const/4 v13, 0x0

    sget-object v14, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    move v9, v3

    move v10, v4

    move-object v12, v7

    invoke-direct/range {v8 .. v14}, Landroid/graphics/RadialGradient;-><init>(FFF[I[FLandroid/graphics/Shader$TileMode;)V

    invoke-virtual {v2, v8}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    goto/16 :goto_2

    .line 742
    .end local v20           #level:F
    :cond_4
    const/high16 v20, 0x3f80

    goto :goto_4

    .line 747
    .end local v3           #x0:F
    .end local v4           #y0:F
    :cond_5
    move-object/from16 v0, v22

    iget v2, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mGradient:I

    const/4 v8, 0x2

    if-ne v2, v8, :cond_1

    .line 748
    move-object/from16 v0, v21

    iget v2, v0, Landroid/graphics/RectF;->left:F

    move-object/from16 v0, v21

    iget v8, v0, Landroid/graphics/RectF;->right:F

    move-object/from16 v0, v21

    iget v9, v0, Landroid/graphics/RectF;->left:F

    sub-float/2addr v8, v9

    #getter for: Landroid/graphics/drawable/GradientDrawable$GradientState;->mCenterX:F
    invoke-static/range {v22 .. v22}, Landroid/graphics/drawable/GradientDrawable$GradientState;->access$200(Landroid/graphics/drawable/GradientDrawable$GradientState;)F

    move-result v9

    mul-float/2addr v8, v9

    add-float v3, v2, v8

    .line 749
    .restart local v3       #x0:F
    move-object/from16 v0, v21

    iget v2, v0, Landroid/graphics/RectF;->top:F

    move-object/from16 v0, v21

    iget v8, v0, Landroid/graphics/RectF;->bottom:F

    move-object/from16 v0, v21

    iget v9, v0, Landroid/graphics/RectF;->top:F

    sub-float/2addr v8, v9

    #getter for: Landroid/graphics/drawable/GradientDrawable$GradientState;->mCenterY:F
    invoke-static/range {v22 .. v22}, Landroid/graphics/drawable/GradientDrawable$GradientState;->access$300(Landroid/graphics/drawable/GradientDrawable$GradientState;)F

    move-result v9

    mul-float/2addr v8, v9

    add-float v4, v2, v8

    .line 751
    .restart local v4       #y0:F
    move-object/from16 v23, v7

    .line 752
    .local v23, tempColors:[I
    const/16 v24, 0x0

    .line 754
    .local v24, tempPositions:[F
    #getter for: Landroid/graphics/drawable/GradientDrawable$GradientState;->mUseLevel:Z
    invoke-static/range {v22 .. v22}, Landroid/graphics/drawable/GradientDrawable$GradientState;->access$000(Landroid/graphics/drawable/GradientDrawable$GradientState;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 755
    move-object/from16 v0, v22

    iget-object v0, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mTempColors:[I

    move-object/from16 v23, v0

    .line 756
    array-length v0, v7

    move/from16 v19, v0

    .line 757
    .local v19, length:I
    if-eqz v23, :cond_6

    move-object/from16 v0, v23

    array-length v2, v0

    add-int/lit8 v8, v19, 0x1

    if-eq v2, v8, :cond_7

    .line 758
    :cond_6
    add-int/lit8 v2, v19, 0x1

    new-array v0, v2, [I

    move-object/from16 v23, v0

    .end local v23           #tempColors:[I
    move-object/from16 v0, v23

    move-object/from16 v1, v22

    iput-object v0, v1, Landroid/graphics/drawable/GradientDrawable$GradientState;->mTempColors:[I

    .line 760
    .restart local v23       #tempColors:[I
    :cond_7
    const/4 v2, 0x0

    const/4 v8, 0x0

    move-object/from16 v0, v23

    move/from16 v1, v19

    invoke-static {v7, v2, v0, v8, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 761
    add-int/lit8 v2, v19, -0x1

    aget v2, v7, v2

    aput v2, v23, v19

    .line 763
    move-object/from16 v0, v22

    iget-object v0, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mTempPositions:[F

    move-object/from16 v24, v0

    .line 764
    const/high16 v2, 0x3f80

    add-int/lit8 v8, v19, -0x1

    int-to-float v8, v8

    div-float v16, v2, v8

    .line 765
    .local v16, fraction:F
    if-eqz v24, :cond_8

    move-object/from16 v0, v24

    array-length v2, v0

    add-int/lit8 v8, v19, 0x1

    if-eq v2, v8, :cond_9

    .line 766
    :cond_8
    add-int/lit8 v2, v19, 0x1

    new-array v0, v2, [F

    move-object/from16 v24, v0

    .end local v24           #tempPositions:[F
    move-object/from16 v0, v24

    move-object/from16 v1, v22

    iput-object v0, v1, Landroid/graphics/drawable/GradientDrawable$GradientState;->mTempPositions:[F

    .line 769
    .restart local v24       #tempPositions:[F
    :cond_9
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/drawable/GradientDrawable;->getLevel()I

    move-result v2

    int-to-float v2, v2

    const v8, 0x461c4000

    div-float v20, v2, v8

    .line 770
    .restart local v20       #level:F
    const/16 v17, 0x0

    .local v17, i:I
    :goto_5
    move/from16 v0, v17

    move/from16 v1, v19

    if-ge v0, v1, :cond_a

    .line 771
    move/from16 v0, v17

    int-to-float v2, v0

    mul-float v2, v2, v16

    mul-float v2, v2, v20

    aput v2, v24, v17

    .line 770
    add-int/lit8 v17, v17, 0x1

    goto :goto_5

    .line 773
    :cond_a
    const/high16 v2, 0x3f80

    aput v2, v24, v19

    .line 776
    .end local v16           #fraction:F
    .end local v17           #i:I
    .end local v19           #length:I
    .end local v20           #level:F
    :cond_b
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/graphics/drawable/GradientDrawable;->mFillPaint:Landroid/graphics/Paint;

    new-instance v8, Landroid/graphics/SweepGradient;

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-direct {v8, v3, v4, v0, v1}, Landroid/graphics/SweepGradient;-><init>(FF[I[F)V

    invoke-virtual {v2, v8}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    goto/16 :goto_2

    .line 780
    .end local v3           #x0:F
    .end local v4           #y0:F
    .end local v7           #colors:[I
    .end local v15           #bounds:Landroid/graphics/Rect;
    .end local v18           #inset:F
    .end local v21           #r:Landroid/graphics/RectF;
    .end local v22           #st:Landroid/graphics/drawable/GradientDrawable$GradientState;
    .end local v23           #tempColors:[I
    .end local v24           #tempPositions:[F
    :cond_c
    const/4 v2, 0x0

    goto/16 :goto_3

    .line 701
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method private static getFloatOrFraction(Landroid/content/res/TypedArray;IF)F
    .locals 6
    .parameter "a"
    .parameter "index"
    .parameter "defaultValue"

    .prologue
    const/high16 v5, 0x3f80

    .line 1018
    invoke-virtual {p0, p1}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v0

    .line 1019
    .local v0, tv:Landroid/util/TypedValue;
    move v1, p2

    .line 1020
    .local v1, v:F
    if-eqz v0, :cond_0

    .line 1021
    iget v3, v0, Landroid/util/TypedValue;->type:I

    const/4 v4, 0x6

    if-ne v3, v4, :cond_1

    const/4 v2, 0x1

    .line 1022
    .local v2, vIsFraction:Z
    :goto_0
    if-eqz v2, :cond_2

    invoke-virtual {v0, v5, v5}, Landroid/util/TypedValue;->getFraction(FF)F

    move-result v1

    .line 1024
    .end local v2           #vIsFraction:Z
    :cond_0
    :goto_1
    return v1

    .line 1021
    :cond_1
    const/4 v2, 0x0

    goto :goto_0

    .line 1022
    .restart local v2       #vIsFraction:Z
    :cond_2
    invoke-virtual {v0}, Landroid/util/TypedValue;->getFloat()F

    move-result v1

    goto :goto_1
.end method

.method private initializeWithState(Landroid/graphics/drawable/GradientDrawable$GradientState;)V
    .locals 6
    .parameter "state"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1208
    iget-boolean v1, p1, Landroid/graphics/drawable/GradientDrawable$GradientState;->mHasSolidColor:Z

    if-eqz v1, :cond_0

    .line 1209
    iget-object v1, p0, Landroid/graphics/drawable/GradientDrawable;->mFillPaint:Landroid/graphics/Paint;

    iget v2, p1, Landroid/graphics/drawable/GradientDrawable$GradientState;->mSolidColor:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 1211
    :cond_0
    iget-object v1, p1, Landroid/graphics/drawable/GradientDrawable$GradientState;->mPadding:Landroid/graphics/Rect;

    iput-object v1, p0, Landroid/graphics/drawable/GradientDrawable;->mPadding:Landroid/graphics/Rect;

    .line 1212
    iget v1, p1, Landroid/graphics/drawable/GradientDrawable$GradientState;->mStrokeWidth:I

    if-ltz v1, :cond_1

    .line 1213
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1, v5}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v1, p0, Landroid/graphics/drawable/GradientDrawable;->mStrokePaint:Landroid/graphics/Paint;

    .line 1214
    iget-object v1, p0, Landroid/graphics/drawable/GradientDrawable;->mStrokePaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 1215
    iget-object v1, p0, Landroid/graphics/drawable/GradientDrawable;->mStrokePaint:Landroid/graphics/Paint;

    iget v2, p1, Landroid/graphics/drawable/GradientDrawable$GradientState;->mStrokeWidth:I

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 1216
    iget-object v1, p0, Landroid/graphics/drawable/GradientDrawable;->mStrokePaint:Landroid/graphics/Paint;

    iget v2, p1, Landroid/graphics/drawable/GradientDrawable$GradientState;->mStrokeColor:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 1218
    iget v1, p1, Landroid/graphics/drawable/GradientDrawable$GradientState;->mStrokeDashWidth:F

    cmpl-float v1, v1, v4

    if-eqz v1, :cond_1

    .line 1219
    new-instance v0, Landroid/graphics/DashPathEffect;

    const/4 v1, 0x2

    new-array v1, v1, [F

    const/4 v2, 0x0

    iget v3, p1, Landroid/graphics/drawable/GradientDrawable$GradientState;->mStrokeDashWidth:F

    aput v3, v1, v2

    iget v2, p1, Landroid/graphics/drawable/GradientDrawable$GradientState;->mStrokeDashGap:F

    aput v2, v1, v5

    invoke-direct {v0, v1, v4}, Landroid/graphics/DashPathEffect;-><init>([FF)V

    .line 1221
    .local v0, e:Landroid/graphics/DashPathEffect;
    iget-object v1, p0, Landroid/graphics/drawable/GradientDrawable;->mStrokePaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    .line 1224
    .end local v0           #e:Landroid/graphics/DashPathEffect;
    :cond_1
    return-void
.end method

.method private modulateAlpha(I)I
    .locals 3
    .parameter "alpha"

    .prologue
    .line 378
    iget v1, p0, Landroid/graphics/drawable/GradientDrawable;->mAlpha:I

    iget v2, p0, Landroid/graphics/drawable/GradientDrawable;->mAlpha:I

    shr-int/lit8 v2, v2, 0x7

    add-int v0, v1, v2

    .line 379
    .local v0, scale:I
    mul-int v1, p1, v0

    shr-int/lit8 v1, v1, 0x8

    return v1
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 21
    .parameter "canvas"

    .prologue
    .line 425
    invoke-direct/range {p0 .. p0}, Landroid/graphics/drawable/GradientDrawable;->ensureValidRect()Z

    move-result v3

    if-nez v3, :cond_1

    .line 550
    :cond_0
    :goto_0
    return-void

    .line 432
    :cond_1
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/graphics/drawable/GradientDrawable;->mFillPaint:Landroid/graphics/Paint;

    invoke-virtual {v3}, Landroid/graphics/Paint;->getAlpha()I

    move-result v15

    .line 433
    .local v15, prevFillAlpha:I
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/graphics/drawable/GradientDrawable;->mStrokePaint:Landroid/graphics/Paint;

    if-eqz v3, :cond_6

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/graphics/drawable/GradientDrawable;->mStrokePaint:Landroid/graphics/Paint;

    invoke-virtual {v3}, Landroid/graphics/Paint;->getAlpha()I

    move-result v16

    .line 435
    .local v16, prevStrokeAlpha:I
    :goto_1
    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Landroid/graphics/drawable/GradientDrawable;->modulateAlpha(I)I

    move-result v10

    .line 436
    .local v10, currFillAlpha:I
    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-direct {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->modulateAlpha(I)I

    move-result v11

    .line 438
    .local v11, currStrokeAlpha:I
    if-lez v11, :cond_7

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/graphics/drawable/GradientDrawable;->mStrokePaint:Landroid/graphics/Paint;

    invoke-virtual {v3}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v3

    const/4 v4, 0x0

    cmpl-float v3, v3, v4

    if-lez v3, :cond_7

    const/4 v13, 0x1

    .line 439
    .local v13, haveStroke:Z
    :goto_2
    if-lez v10, :cond_8

    const/4 v12, 0x1

    .line 440
    .local v12, haveFill:Z
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/graphics/drawable/GradientDrawable;->mGradientState:Landroid/graphics/drawable/GradientDrawable$GradientState;

    move-object/from16 v19, v0

    .line 446
    .local v19, st:Landroid/graphics/drawable/GradientDrawable$GradientState;
    if-eqz v13, :cond_9

    if-eqz v12, :cond_9

    move-object/from16 v0, v19

    iget v3, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mShape:I

    const/4 v4, 0x2

    if-eq v3, v4, :cond_9

    const/16 v3, 0xff

    if-ge v11, v3, :cond_9

    move-object/from16 v0, p0

    iget v3, v0, Landroid/graphics/drawable/GradientDrawable;->mAlpha:I

    const/16 v4, 0xff

    if-lt v3, v4, :cond_2

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/graphics/drawable/GradientDrawable;->mColorFilter:Landroid/graphics/ColorFilter;

    if-eqz v3, :cond_9

    :cond_2
    const/16 v20, 0x1

    .line 456
    .local v20, useLayer:Z
    :goto_4
    if-eqz v20, :cond_a

    .line 457
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/graphics/drawable/GradientDrawable;->mLayerPaint:Landroid/graphics/Paint;

    if-nez v3, :cond_3

    .line 458
    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    move-object/from16 v0, p0

    iput-object v3, v0, Landroid/graphics/drawable/GradientDrawable;->mLayerPaint:Landroid/graphics/Paint;

    .line 460
    :cond_3
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/graphics/drawable/GradientDrawable;->mLayerPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget-boolean v4, v0, Landroid/graphics/drawable/GradientDrawable;->mDither:Z

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setDither(Z)V

    .line 461
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/graphics/drawable/GradientDrawable;->mLayerPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget v4, v0, Landroid/graphics/drawable/GradientDrawable;->mAlpha:I

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 462
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/graphics/drawable/GradientDrawable;->mLayerPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/graphics/drawable/GradientDrawable;->mColorFilter:Landroid/graphics/ColorFilter;

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 464
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/graphics/drawable/GradientDrawable;->mStrokePaint:Landroid/graphics/Paint;

    invoke-virtual {v3}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v18

    .line 465
    .local v18, rad:F
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/graphics/drawable/GradientDrawable;->mRect:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->left:F

    sub-float v4, v3, v18

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/graphics/drawable/GradientDrawable;->mRect:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->top:F

    sub-float v5, v3, v18

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/graphics/drawable/GradientDrawable;->mRect:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->right:F

    add-float v6, v3, v18

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/graphics/drawable/GradientDrawable;->mRect:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->bottom:F

    add-float v7, v3, v18

    move-object/from16 v0, p0

    iget-object v8, v0, Landroid/graphics/drawable/GradientDrawable;->mLayerPaint:Landroid/graphics/Paint;

    const/4 v9, 0x4

    move-object/from16 v3, p1

    invoke-virtual/range {v3 .. v9}, Landroid/graphics/Canvas;->saveLayer(FFFFLandroid/graphics/Paint;I)I

    .line 471
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/graphics/drawable/GradientDrawable;->mFillPaint:Landroid/graphics/Paint;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 472
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/graphics/drawable/GradientDrawable;->mStrokePaint:Landroid/graphics/Paint;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 487
    .end local v18           #rad:F
    :cond_4
    :goto_5
    move-object/from16 v0, v19

    iget v3, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mShape:I

    packed-switch v3, :pswitch_data_0

    .line 542
    :cond_5
    :goto_6
    if-eqz v20, :cond_10

    .line 543
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    goto/16 :goto_0

    .line 433
    .end local v10           #currFillAlpha:I
    .end local v11           #currStrokeAlpha:I
    .end local v12           #haveFill:Z
    .end local v13           #haveStroke:Z
    .end local v16           #prevStrokeAlpha:I
    .end local v19           #st:Landroid/graphics/drawable/GradientDrawable$GradientState;
    .end local v20           #useLayer:Z
    :cond_6
    const/16 v16, 0x0

    goto/16 :goto_1

    .line 438
    .restart local v10       #currFillAlpha:I
    .restart local v11       #currStrokeAlpha:I
    .restart local v16       #prevStrokeAlpha:I
    :cond_7
    const/4 v13, 0x0

    goto/16 :goto_2

    .line 439
    .restart local v13       #haveStroke:Z
    :cond_8
    const/4 v12, 0x0

    goto/16 :goto_3

    .line 446
    .restart local v12       #haveFill:Z
    .restart local v19       #st:Landroid/graphics/drawable/GradientDrawable$GradientState;
    :cond_9
    const/16 v20, 0x0

    goto/16 :goto_4

    .line 477
    .restart local v20       #useLayer:Z
    :cond_a
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/graphics/drawable/GradientDrawable;->mFillPaint:Landroid/graphics/Paint;

    invoke-virtual {v3, v10}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 478
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/graphics/drawable/GradientDrawable;->mFillPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget-boolean v4, v0, Landroid/graphics/drawable/GradientDrawable;->mDither:Z

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setDither(Z)V

    .line 479
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/graphics/drawable/GradientDrawable;->mFillPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/graphics/drawable/GradientDrawable;->mColorFilter:Landroid/graphics/ColorFilter;

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 480
    if-eqz v13, :cond_4

    .line 481
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/graphics/drawable/GradientDrawable;->mStrokePaint:Landroid/graphics/Paint;

    invoke-virtual {v3, v11}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 482
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/graphics/drawable/GradientDrawable;->mStrokePaint:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget-boolean v4, v0, Landroid/graphics/drawable/GradientDrawable;->mDither:Z

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setDither(Z)V

    .line 483
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/graphics/drawable/GradientDrawable;->mStrokePaint:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/graphics/drawable/GradientDrawable;->mColorFilter:Landroid/graphics/ColorFilter;

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    goto :goto_5

    .line 489
    :pswitch_0
    move-object/from16 v0, v19

    iget-object v3, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mRadiusArray:[F

    if-eqz v3, :cond_d

    .line 490
    move-object/from16 v0, p0

    iget-boolean v3, v0, Landroid/graphics/drawable/GradientDrawable;->mPathIsDirty:Z

    if-nez v3, :cond_b

    move-object/from16 v0, p0

    iget-boolean v3, v0, Landroid/graphics/drawable/GradientDrawable;->mRectIsDirty:Z

    if-eqz v3, :cond_c

    .line 491
    :cond_b
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/graphics/drawable/GradientDrawable;->mPath:Landroid/graphics/Path;

    invoke-virtual {v3}, Landroid/graphics/Path;->reset()V

    .line 492
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/graphics/drawable/GradientDrawable;->mPath:Landroid/graphics/Path;

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/graphics/drawable/GradientDrawable;->mRect:Landroid/graphics/RectF;

    move-object/from16 v0, v19

    iget-object v6, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mRadiusArray:[F

    sget-object v7, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v3, v4, v6, v7}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;[FLandroid/graphics/Path$Direction;)V

    .line 493
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Landroid/graphics/drawable/GradientDrawable;->mRectIsDirty:Z

    move-object/from16 v0, p0

    iput-boolean v3, v0, Landroid/graphics/drawable/GradientDrawable;->mPathIsDirty:Z

    .line 495
    :cond_c
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/graphics/drawable/GradientDrawable;->mPath:Landroid/graphics/Path;

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/graphics/drawable/GradientDrawable;->mFillPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v4}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 496
    if-eqz v13, :cond_5

    .line 497
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/graphics/drawable/GradientDrawable;->mPath:Landroid/graphics/Path;

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/graphics/drawable/GradientDrawable;->mStrokePaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v4}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    goto/16 :goto_6

    .line 499
    :cond_d
    move-object/from16 v0, v19

    iget v3, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mRadius:F

    const/4 v4, 0x0

    cmpl-float v3, v3, v4

    if-lez v3, :cond_f

    .line 505
    move-object/from16 v0, v19

    iget v0, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mRadius:F

    move/from16 v18, v0

    .line 506
    .restart local v18       #rad:F
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/graphics/drawable/GradientDrawable;->mRect:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->width()F

    move-result v3

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/graphics/drawable/GradientDrawable;->mRect:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->height()F

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->min(FF)F

    move-result v3

    const/high16 v4, 0x3f00

    mul-float v17, v3, v4

    .line 507
    .local v17, r:F
    cmpl-float v3, v18, v17

    if-lez v3, :cond_e

    .line 508
    move/from16 v18, v17

    .line 510
    :cond_e
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/graphics/drawable/GradientDrawable;->mRect:Landroid/graphics/RectF;

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/graphics/drawable/GradientDrawable;->mFillPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    move/from16 v1, v18

    move/from16 v2, v18

    invoke-virtual {v0, v3, v1, v2, v4}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 511
    if-eqz v13, :cond_5

    .line 512
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/graphics/drawable/GradientDrawable;->mRect:Landroid/graphics/RectF;

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/graphics/drawable/GradientDrawable;->mStrokePaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    move/from16 v1, v18

    move/from16 v2, v18

    invoke-virtual {v0, v3, v1, v2, v4}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    goto/16 :goto_6

    .line 515
    .end local v17           #r:F
    .end local v18           #rad:F
    :cond_f
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/graphics/drawable/GradientDrawable;->mRect:Landroid/graphics/RectF;

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/graphics/drawable/GradientDrawable;->mFillPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v4}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 516
    if-eqz v13, :cond_5

    .line 517
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/graphics/drawable/GradientDrawable;->mRect:Landroid/graphics/RectF;

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/graphics/drawable/GradientDrawable;->mStrokePaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v4}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    goto/16 :goto_6

    .line 522
    :pswitch_1
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/graphics/drawable/GradientDrawable;->mRect:Landroid/graphics/RectF;

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/graphics/drawable/GradientDrawable;->mFillPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v4}, Landroid/graphics/Canvas;->drawOval(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 523
    if-eqz v13, :cond_5

    .line 524
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/graphics/drawable/GradientDrawable;->mRect:Landroid/graphics/RectF;

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/graphics/drawable/GradientDrawable;->mStrokePaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v4}, Landroid/graphics/Canvas;->drawOval(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    goto/16 :goto_6

    .line 528
    :pswitch_2
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/graphics/drawable/GradientDrawable;->mRect:Landroid/graphics/RectF;

    move-object/from16 v17, v0

    .line 529
    .local v17, r:Landroid/graphics/RectF;
    invoke-virtual/range {v17 .. v17}, Landroid/graphics/RectF;->centerY()F

    move-result v5

    .line 530
    .local v5, y:F
    move-object/from16 v0, v17

    iget v4, v0, Landroid/graphics/RectF;->left:F

    move-object/from16 v0, v17

    iget v6, v0, Landroid/graphics/RectF;->right:F

    move-object/from16 v0, p0

    iget-object v8, v0, Landroid/graphics/drawable/GradientDrawable;->mStrokePaint:Landroid/graphics/Paint;

    move-object/from16 v3, p1

    move v7, v5

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    goto/16 :goto_6

    .line 534
    .end local v5           #y:F
    .end local v17           #r:Landroid/graphics/RectF;
    :pswitch_3
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->buildRing(Landroid/graphics/drawable/GradientDrawable$GradientState;)Landroid/graphics/Path;

    move-result-object v14

    .line 535
    .local v14, path:Landroid/graphics/Path;
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/graphics/drawable/GradientDrawable;->mFillPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v14, v3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 536
    if-eqz v13, :cond_5

    .line 537
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/graphics/drawable/GradientDrawable;->mStrokePaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v14, v3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    goto/16 :goto_6

    .line 545
    .end local v14           #path:Landroid/graphics/Path;
    :cond_10
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/graphics/drawable/GradientDrawable;->mFillPaint:Landroid/graphics/Paint;

    invoke-virtual {v3, v15}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 546
    if-eqz v13, :cond_0

    .line 547
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/graphics/drawable/GradientDrawable;->mStrokePaint:Landroid/graphics/Paint;

    move/from16 v0, v16

    invoke-virtual {v3, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    goto/16 :goto_0

    .line 487
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public getChangingConfigurations()I
    .locals 2

    .prologue
    .line 623
    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->getChangingConfigurations()I

    move-result v0

    iget-object v1, p0, Landroid/graphics/drawable/GradientDrawable;->mGradientState:Landroid/graphics/drawable/GradientDrawable$GradientState;

    iget v1, v1, Landroid/graphics/drawable/GradientDrawable$GradientState;->mChangingConfigurations:I

    or-int/2addr v0, v1

    return v0
.end method

.method public getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;
    .locals 2

    .prologue
    .line 1039
    iget-object v0, p0, Landroid/graphics/drawable/GradientDrawable;->mGradientState:Landroid/graphics/drawable/GradientDrawable$GradientState;

    invoke-virtual {p0}, Landroid/graphics/drawable/GradientDrawable;->getChangingConfigurations()I

    move-result v1

    iput v1, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mChangingConfigurations:I

    .line 1040
    iget-object v0, p0, Landroid/graphics/drawable/GradientDrawable;->mGradientState:Landroid/graphics/drawable/GradientDrawable$GradientState;

    return-object v0
.end method

.method public getIntrinsicHeight()I
    .locals 1

    .prologue
    .line 1034
    iget-object v0, p0, Landroid/graphics/drawable/GradientDrawable;->mGradientState:Landroid/graphics/drawable/GradientDrawable$GradientState;

    iget v0, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mHeight:I

    return v0
.end method

.method public getIntrinsicWidth()I
    .locals 1

    .prologue
    .line 1029
    iget-object v0, p0, Landroid/graphics/drawable/GradientDrawable;->mGradientState:Landroid/graphics/drawable/GradientDrawable$GradientState;

    iget v0, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mWidth:I

    return v0
.end method

.method public getOpacity()I
    .locals 1

    .prologue
    .line 652
    const/4 v0, -0x3

    return v0
.end method

.method public getOrientation()Landroid/graphics/drawable/GradientDrawable$Orientation;
    .locals 1

    .prologue
    .line 386
    iget-object v0, p0, Landroid/graphics/drawable/GradientDrawable;->mGradientState:Landroid/graphics/drawable/GradientDrawable$GradientState;

    iget-object v0, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mOrientation:Landroid/graphics/drawable/GradientDrawable$Orientation;

    return-object v0
.end method

.method public getPadding(Landroid/graphics/Rect;)Z
    .locals 1
    .parameter "padding"

    .prologue
    .line 167
    iget-object v0, p0, Landroid/graphics/drawable/GradientDrawable;->mPadding:Landroid/graphics/Rect;

    if-eqz v0, :cond_0

    .line 168
    iget-object v0, p0, Landroid/graphics/drawable/GradientDrawable;->mPadding:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 169
    const/4 v0, 0x1

    .line 171
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    move-result v0

    goto :goto_0
.end method

.method public inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;)V
    .locals 37
    .parameter "r"
    .parameter "parser"
    .parameter "attrs"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 788
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/graphics/drawable/GradientDrawable;->mGradientState:Landroid/graphics/drawable/GradientDrawable$GradientState;

    move-object/from16 v24, v0

    .line 790
    .local v24, st:Landroid/graphics/drawable/GradientDrawable$GradientState;
    sget-object v31, Lcom/android/internal/R$styleable;->GradientDrawable:[I

    move-object/from16 v0, p1

    move-object/from16 v1, p3

    move-object/from16 v2, v31

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v4

    .line 793
    .local v4, a:Landroid/content/res/TypedArray;
    const/16 v31, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, v31

    invoke-super {v0, v1, v2, v4, v3}, Landroid/graphics/drawable/Drawable;->inflateWithAttributes(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/content/res/TypedArray;I)V

    .line 796
    const/16 v31, 0x2

    const/16 v32, 0x0

    move/from16 v0, v31

    move/from16 v1, v32

    invoke-virtual {v4, v0, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v23

    .line 798
    .local v23, shapeType:I
    const/16 v31, 0x0

    const/16 v32, 0x0

    move/from16 v0, v31

    move/from16 v1, v32

    invoke-virtual {v4, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v14

    .line 801
    .local v14, dither:Z
    const/16 v31, 0x3

    move/from16 v0, v23

    move/from16 v1, v31

    if-ne v0, v1, :cond_2

    .line 802
    const/16 v31, 0x6

    const/16 v32, -0x1

    move/from16 v0, v31

    move/from16 v1, v32

    invoke-virtual {v4, v0, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v31

    move/from16 v0, v31

    move-object/from16 v1, v24

    iput v0, v1, Landroid/graphics/drawable/GradientDrawable$GradientState;->mInnerRadius:I

    .line 804
    move-object/from16 v0, v24

    iget v0, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mInnerRadius:I

    move/from16 v31, v0

    const/16 v32, -0x1

    move/from16 v0, v31

    move/from16 v1, v32

    if-ne v0, v1, :cond_0

    .line 805
    const/16 v31, 0x3

    const/high16 v32, 0x4040

    move/from16 v0, v31

    move/from16 v1, v32

    invoke-virtual {v4, v0, v1}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v31

    move/from16 v0, v31

    move-object/from16 v1, v24

    iput v0, v1, Landroid/graphics/drawable/GradientDrawable$GradientState;->mInnerRadiusRatio:F

    .line 808
    :cond_0
    const/16 v31, 0x7

    const/16 v32, -0x1

    move/from16 v0, v31

    move/from16 v1, v32

    invoke-virtual {v4, v0, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v31

    move/from16 v0, v31

    move-object/from16 v1, v24

    iput v0, v1, Landroid/graphics/drawable/GradientDrawable$GradientState;->mThickness:I

    .line 810
    move-object/from16 v0, v24

    iget v0, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mThickness:I

    move/from16 v31, v0

    const/16 v32, -0x1

    move/from16 v0, v31

    move/from16 v1, v32

    if-ne v0, v1, :cond_1

    .line 811
    const/16 v31, 0x4

    const/high16 v32, 0x4110

    move/from16 v0, v31

    move/from16 v1, v32

    invoke-virtual {v4, v0, v1}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v31

    move/from16 v0, v31

    move-object/from16 v1, v24

    iput v0, v1, Landroid/graphics/drawable/GradientDrawable$GradientState;->mThicknessRatio:F

    .line 814
    :cond_1
    const/16 v31, 0x5

    const/16 v32, 0x1

    move/from16 v0, v31

    move/from16 v1, v32

    invoke-virtual {v4, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v31

    move-object/from16 v0, v24

    move/from16 v1, v31

    #setter for: Landroid/graphics/drawable/GradientDrawable$GradientState;->mUseLevelForShape:Z
    invoke-static {v0, v1}, Landroid/graphics/drawable/GradientDrawable$GradientState;->access$102(Landroid/graphics/drawable/GradientDrawable$GradientState;Z)Z

    .line 818
    :cond_2
    invoke-virtual {v4}, Landroid/content/res/TypedArray;->recycle()V

    .line 820
    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setShape(I)V

    .line 821
    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Landroid/graphics/drawable/GradientDrawable;->setDither(Z)V

    .line 825
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v31

    add-int/lit8 v19, v31, 0x1

    .line 828
    .local v19, innerDepth:I
    :cond_3
    :goto_0
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v29

    .local v29, type:I
    const/16 v31, 0x1

    move/from16 v0, v29

    move/from16 v1, v31

    if-eq v0, v1, :cond_16

    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v13

    .local v13, depth:I
    move/from16 v0, v19

    if-ge v13, v0, :cond_4

    const/16 v31, 0x3

    move/from16 v0, v29

    move/from16 v1, v31

    if-eq v0, v1, :cond_16

    .line 830
    :cond_4
    const/16 v31, 0x2

    move/from16 v0, v29

    move/from16 v1, v31

    if-ne v0, v1, :cond_3

    .line 834
    move/from16 v0, v19

    if-gt v13, v0, :cond_3

    .line 838
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v20

    .line 840
    .local v20, name:Ljava/lang/String;
    const-string/jumbo v31, "size"

    move-object/from16 v0, v20

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v31

    if-eqz v31, :cond_5

    .line 841
    sget-object v31, Lcom/android/internal/R$styleable;->GradientDrawableSize:[I

    move-object/from16 v0, p1

    move-object/from16 v1, p3

    move-object/from16 v2, v31

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v4

    .line 843
    const/16 v31, 0x1

    const/16 v32, -0x1

    move/from16 v0, v31

    move/from16 v1, v32

    invoke-virtual {v4, v0, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v30

    .line 845
    .local v30, width:I
    const/16 v31, 0x0

    const/16 v32, -0x1

    move/from16 v0, v31

    move/from16 v1, v32

    invoke-virtual {v4, v0, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v18

    .line 847
    .local v18, height:I
    invoke-virtual {v4}, Landroid/content/res/TypedArray;->recycle()V

    .line 848
    move-object/from16 v0, p0

    move/from16 v1, v30

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/GradientDrawable;->setSize(II)V

    goto :goto_0

    .line 849
    .end local v18           #height:I
    .end local v30           #width:I
    :cond_5
    const-string v31, "gradient"

    move-object/from16 v0, v20

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v31

    if-eqz v31, :cond_e

    .line 850
    sget-object v31, Lcom/android/internal/R$styleable;->GradientDrawableGradient:[I

    move-object/from16 v0, p1

    move-object/from16 v1, p3

    move-object/from16 v2, v31

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v4

    .line 852
    const/16 v31, 0x0

    const/16 v32, 0x0

    move/from16 v0, v31

    move/from16 v1, v32

    invoke-virtual {v4, v0, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v25

    .line 854
    .local v25, startColor:I
    const/16 v31, 0x8

    move/from16 v0, v31

    invoke-virtual {v4, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v17

    .line 856
    .local v17, hasCenterColor:Z
    const/16 v31, 0x8

    const/16 v32, 0x0

    move/from16 v0, v31

    move/from16 v1, v32

    invoke-virtual {v4, v0, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v9

    .line 858
    .local v9, centerColor:I
    const/16 v31, 0x1

    const/16 v32, 0x0

    move/from16 v0, v31

    move/from16 v1, v32

    invoke-virtual {v4, v0, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v15

    .line 860
    .local v15, endColor:I
    const/16 v31, 0x4

    const/16 v32, 0x0

    move/from16 v0, v31

    move/from16 v1, v32

    invoke-virtual {v4, v0, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v16

    .line 864
    .local v16, gradientType:I
    const/16 v31, 0x5

    const/high16 v32, 0x3f00

    move/from16 v0, v31

    move/from16 v1, v32

    invoke-static {v4, v0, v1}, Landroid/graphics/drawable/GradientDrawable;->getFloatOrFraction(Landroid/content/res/TypedArray;IF)F

    move-result v31

    move-object/from16 v0, v24

    move/from16 v1, v31

    #setter for: Landroid/graphics/drawable/GradientDrawable$GradientState;->mCenterX:F
    invoke-static {v0, v1}, Landroid/graphics/drawable/GradientDrawable$GradientState;->access$202(Landroid/graphics/drawable/GradientDrawable$GradientState;F)F

    .line 869
    const/16 v31, 0x6

    const/high16 v32, 0x3f00

    move/from16 v0, v31

    move/from16 v1, v32

    invoke-static {v4, v0, v1}, Landroid/graphics/drawable/GradientDrawable;->getFloatOrFraction(Landroid/content/res/TypedArray;IF)F

    move-result v31

    move-object/from16 v0, v24

    move/from16 v1, v31

    #setter for: Landroid/graphics/drawable/GradientDrawable$GradientState;->mCenterY:F
    invoke-static {v0, v1}, Landroid/graphics/drawable/GradientDrawable$GradientState;->access$302(Landroid/graphics/drawable/GradientDrawable$GradientState;F)F

    .line 874
    const/16 v31, 0x2

    const/16 v32, 0x0

    move/from16 v0, v31

    move/from16 v1, v32

    invoke-virtual {v4, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v31

    move-object/from16 v0, v24

    move/from16 v1, v31

    #setter for: Landroid/graphics/drawable/GradientDrawable$GradientState;->mUseLevel:Z
    invoke-static {v0, v1}, Landroid/graphics/drawable/GradientDrawable$GradientState;->access$002(Landroid/graphics/drawable/GradientDrawable$GradientState;Z)Z

    .line 876
    move/from16 v0, v16

    move-object/from16 v1, v24

    iput v0, v1, Landroid/graphics/drawable/GradientDrawable$GradientState;->mGradient:I

    .line 878
    if-nez v16, :cond_8

    .line 879
    const/16 v31, 0x3

    const/16 v32, 0x0

    move/from16 v0, v31

    move/from16 v1, v32

    invoke-virtual {v4, v0, v1}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v31

    move/from16 v0, v31

    float-to-int v5, v0

    .line 881
    .local v5, angle:I
    rem-int/lit16 v5, v5, 0x168

    .line 882
    rem-int/lit8 v31, v5, 0x2d

    if-eqz v31, :cond_6

    .line 883
    new-instance v31, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4}, Landroid/content/res/TypedArray;->getPositionDescription()Ljava/lang/String;

    move-result-object v33

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    const-string v33, "<gradient> tag requires \'angle\' attribute to "

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    const-string v33, "be a multiple of 45"

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    invoke-direct/range {v31 .. v32}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v31

    .line 888
    :cond_6
    sparse-switch v5, :sswitch_data_0

    .line 929
    .end local v5           #angle:I
    :cond_7
    :goto_1
    invoke-virtual {v4}, Landroid/content/res/TypedArray;->recycle()V

    .line 931
    if-eqz v17, :cond_d

    .line 932
    const/16 v31, 0x3

    move/from16 v0, v31

    new-array v0, v0, [I

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    move-object/from16 v1, v24

    iput-object v0, v1, Landroid/graphics/drawable/GradientDrawable$GradientState;->mColors:[I

    .line 933
    move-object/from16 v0, v24

    iget-object v0, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mColors:[I

    move-object/from16 v31, v0

    const/16 v32, 0x0

    aput v25, v31, v32

    .line 934
    move-object/from16 v0, v24

    iget-object v0, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mColors:[I

    move-object/from16 v31, v0

    const/16 v32, 0x1

    aput v9, v31, v32

    .line 935
    move-object/from16 v0, v24

    iget-object v0, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mColors:[I

    move-object/from16 v31, v0

    const/16 v32, 0x2

    aput v15, v31, v32

    .line 937
    const/16 v31, 0x3

    move/from16 v0, v31

    new-array v0, v0, [F

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    move-object/from16 v1, v24

    iput-object v0, v1, Landroid/graphics/drawable/GradientDrawable$GradientState;->mPositions:[F

    .line 938
    move-object/from16 v0, v24

    iget-object v0, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mPositions:[F

    move-object/from16 v31, v0

    const/16 v32, 0x0

    const/16 v33, 0x0

    aput v33, v31, v32

    .line 940
    move-object/from16 v0, v24

    iget-object v0, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mPositions:[F

    move-object/from16 v32, v0

    const/16 v33, 0x1

    #getter for: Landroid/graphics/drawable/GradientDrawable$GradientState;->mCenterX:F
    invoke-static/range {v24 .. v24}, Landroid/graphics/drawable/GradientDrawable$GradientState;->access$200(Landroid/graphics/drawable/GradientDrawable$GradientState;)F

    move-result v31

    const/high16 v34, 0x3f00

    cmpl-float v31, v31, v34

    if-eqz v31, :cond_c

    #getter for: Landroid/graphics/drawable/GradientDrawable$GradientState;->mCenterX:F
    invoke-static/range {v24 .. v24}, Landroid/graphics/drawable/GradientDrawable$GradientState;->access$200(Landroid/graphics/drawable/GradientDrawable$GradientState;)F

    move-result v31

    :goto_2
    aput v31, v32, v33

    .line 941
    move-object/from16 v0, v24

    iget-object v0, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mPositions:[F

    move-object/from16 v31, v0

    const/16 v32, 0x2

    const/high16 v33, 0x3f80

    aput v33, v31, v32

    goto/16 :goto_0

    .line 890
    .restart local v5       #angle:I
    :sswitch_0
    sget-object v31, Landroid/graphics/drawable/GradientDrawable$Orientation;->LEFT_RIGHT:Landroid/graphics/drawable/GradientDrawable$Orientation;

    move-object/from16 v0, v31

    move-object/from16 v1, v24

    iput-object v0, v1, Landroid/graphics/drawable/GradientDrawable$GradientState;->mOrientation:Landroid/graphics/drawable/GradientDrawable$Orientation;

    goto :goto_1

    .line 893
    :sswitch_1
    sget-object v31, Landroid/graphics/drawable/GradientDrawable$Orientation;->BL_TR:Landroid/graphics/drawable/GradientDrawable$Orientation;

    move-object/from16 v0, v31

    move-object/from16 v1, v24

    iput-object v0, v1, Landroid/graphics/drawable/GradientDrawable$GradientState;->mOrientation:Landroid/graphics/drawable/GradientDrawable$Orientation;

    goto/16 :goto_1

    .line 896
    :sswitch_2
    sget-object v31, Landroid/graphics/drawable/GradientDrawable$Orientation;->BOTTOM_TOP:Landroid/graphics/drawable/GradientDrawable$Orientation;

    move-object/from16 v0, v31

    move-object/from16 v1, v24

    iput-object v0, v1, Landroid/graphics/drawable/GradientDrawable$GradientState;->mOrientation:Landroid/graphics/drawable/GradientDrawable$Orientation;

    goto/16 :goto_1

    .line 899
    :sswitch_3
    sget-object v31, Landroid/graphics/drawable/GradientDrawable$Orientation;->BR_TL:Landroid/graphics/drawable/GradientDrawable$Orientation;

    move-object/from16 v0, v31

    move-object/from16 v1, v24

    iput-object v0, v1, Landroid/graphics/drawable/GradientDrawable$GradientState;->mOrientation:Landroid/graphics/drawable/GradientDrawable$Orientation;

    goto/16 :goto_1

    .line 902
    :sswitch_4
    sget-object v31, Landroid/graphics/drawable/GradientDrawable$Orientation;->RIGHT_LEFT:Landroid/graphics/drawable/GradientDrawable$Orientation;

    move-object/from16 v0, v31

    move-object/from16 v1, v24

    iput-object v0, v1, Landroid/graphics/drawable/GradientDrawable$GradientState;->mOrientation:Landroid/graphics/drawable/GradientDrawable$Orientation;

    goto/16 :goto_1

    .line 905
    :sswitch_5
    sget-object v31, Landroid/graphics/drawable/GradientDrawable$Orientation;->TR_BL:Landroid/graphics/drawable/GradientDrawable$Orientation;

    move-object/from16 v0, v31

    move-object/from16 v1, v24

    iput-object v0, v1, Landroid/graphics/drawable/GradientDrawable$GradientState;->mOrientation:Landroid/graphics/drawable/GradientDrawable$Orientation;

    goto/16 :goto_1

    .line 908
    :sswitch_6
    sget-object v31, Landroid/graphics/drawable/GradientDrawable$Orientation;->TOP_BOTTOM:Landroid/graphics/drawable/GradientDrawable$Orientation;

    move-object/from16 v0, v31

    move-object/from16 v1, v24

    iput-object v0, v1, Landroid/graphics/drawable/GradientDrawable$GradientState;->mOrientation:Landroid/graphics/drawable/GradientDrawable$Orientation;

    goto/16 :goto_1

    .line 911
    :sswitch_7
    sget-object v31, Landroid/graphics/drawable/GradientDrawable$Orientation;->TL_BR:Landroid/graphics/drawable/GradientDrawable$Orientation;

    move-object/from16 v0, v31

    move-object/from16 v1, v24

    iput-object v0, v1, Landroid/graphics/drawable/GradientDrawable$GradientState;->mOrientation:Landroid/graphics/drawable/GradientDrawable$Orientation;

    goto/16 :goto_1

    .line 915
    .end local v5           #angle:I
    :cond_8
    const/16 v31, 0x7

    move/from16 v0, v31

    invoke-virtual {v4, v0}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v28

    .line 917
    .local v28, tv:Landroid/util/TypedValue;
    if-eqz v28, :cond_b

    .line 918
    move-object/from16 v0, v28

    iget v0, v0, Landroid/util/TypedValue;->type:I

    move/from16 v31, v0

    const/16 v32, 0x6

    move/from16 v0, v31

    move/from16 v1, v32

    if-ne v0, v1, :cond_9

    const/16 v22, 0x1

    .line 919
    .local v22, radiusRel:Z
    :goto_3
    if-eqz v22, :cond_a

    const/high16 v31, 0x3f80

    const/high16 v32, 0x3f80

    move-object/from16 v0, v28

    move/from16 v1, v31

    move/from16 v2, v32

    invoke-virtual {v0, v1, v2}, Landroid/util/TypedValue;->getFraction(FF)F

    move-result v31

    :goto_4
    move-object/from16 v0, v24

    move/from16 v1, v31

    #setter for: Landroid/graphics/drawable/GradientDrawable$GradientState;->mGradientRadius:F
    invoke-static {v0, v1}, Landroid/graphics/drawable/GradientDrawable$GradientState;->access$402(Landroid/graphics/drawable/GradientDrawable$GradientState;F)F

    goto/16 :goto_1

    .line 918
    .end local v22           #radiusRel:Z
    :cond_9
    const/16 v22, 0x0

    goto :goto_3

    .line 919
    .restart local v22       #radiusRel:Z
    :cond_a
    invoke-virtual/range {v28 .. v28}, Landroid/util/TypedValue;->getFloat()F

    move-result v31

    goto :goto_4

    .line 921
    .end local v22           #radiusRel:Z
    :cond_b
    const/16 v31, 0x1

    move/from16 v0, v16

    move/from16 v1, v31

    if-ne v0, v1, :cond_7

    .line 922
    new-instance v31, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4}, Landroid/content/res/TypedArray;->getPositionDescription()Ljava/lang/String;

    move-result-object v33

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    const-string v33, "<gradient> tag requires \'gradientRadius\' "

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    const-string v33, "attribute with radial type"

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    invoke-direct/range {v31 .. v32}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v31

    .line 940
    .end local v28           #tv:Landroid/util/TypedValue;
    :cond_c
    #getter for: Landroid/graphics/drawable/GradientDrawable$GradientState;->mCenterY:F
    invoke-static/range {v24 .. v24}, Landroid/graphics/drawable/GradientDrawable$GradientState;->access$300(Landroid/graphics/drawable/GradientDrawable$GradientState;)F

    move-result v31

    goto/16 :goto_2

    .line 943
    :cond_d
    const/16 v31, 0x2

    move/from16 v0, v31

    new-array v0, v0, [I

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    move-object/from16 v1, v24

    iput-object v0, v1, Landroid/graphics/drawable/GradientDrawable$GradientState;->mColors:[I

    .line 944
    move-object/from16 v0, v24

    iget-object v0, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mColors:[I

    move-object/from16 v31, v0

    const/16 v32, 0x0

    aput v25, v31, v32

    .line 945
    move-object/from16 v0, v24

    iget-object v0, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mColors:[I

    move-object/from16 v31, v0

    const/16 v32, 0x1

    aput v15, v31, v32

    goto/16 :goto_0

    .line 948
    .end local v9           #centerColor:I
    .end local v15           #endColor:I
    .end local v16           #gradientType:I
    .end local v17           #hasCenterColor:Z
    .end local v25           #startColor:I
    :cond_e
    const-string/jumbo v31, "solid"

    move-object/from16 v0, v20

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v31

    if-eqz v31, :cond_f

    .line 949
    sget-object v31, Lcom/android/internal/R$styleable;->GradientDrawableSolid:[I

    move-object/from16 v0, p1

    move-object/from16 v1, p3

    move-object/from16 v2, v31

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v4

    .line 951
    const/16 v31, 0x0

    const/16 v32, 0x0

    move/from16 v0, v31

    move/from16 v1, v32

    invoke-virtual {v4, v0, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v6

    .line 953
    .local v6, argb:I
    invoke-virtual {v4}, Landroid/content/res/TypedArray;->recycle()V

    .line 954
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    goto/16 :goto_0

    .line 955
    .end local v6           #argb:I
    :cond_f
    const-string/jumbo v31, "stroke"

    move-object/from16 v0, v20

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v31

    if-eqz v31, :cond_11

    .line 956
    sget-object v31, Lcom/android/internal/R$styleable;->GradientDrawableStroke:[I

    move-object/from16 v0, p1

    move-object/from16 v1, p3

    move-object/from16 v2, v31

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v4

    .line 958
    const/16 v31, 0x0

    const/16 v32, 0x0

    move/from16 v0, v31

    move/from16 v1, v32

    invoke-virtual {v4, v0, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v30

    .line 960
    .restart local v30       #width:I
    const/16 v31, 0x1

    const/16 v32, 0x0

    move/from16 v0, v31

    move/from16 v1, v32

    invoke-virtual {v4, v0, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v10

    .line 962
    .local v10, color:I
    const/16 v31, 0x2

    const/16 v32, 0x0

    move/from16 v0, v31

    move/from16 v1, v32

    invoke-virtual {v4, v0, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v12

    .line 964
    .local v12, dashWidth:F
    const/16 v31, 0x0

    cmpl-float v31, v12, v31

    if-eqz v31, :cond_10

    .line 965
    const/16 v31, 0x3

    const/16 v32, 0x0

    move/from16 v0, v31

    move/from16 v1, v32

    invoke-virtual {v4, v0, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v11

    .line 967
    .local v11, dashGap:F
    move-object/from16 v0, p0

    move/from16 v1, v30

    invoke-virtual {v0, v1, v10, v12, v11}, Landroid/graphics/drawable/GradientDrawable;->setStroke(IIFF)V

    .line 971
    .end local v11           #dashGap:F
    :goto_5
    invoke-virtual {v4}, Landroid/content/res/TypedArray;->recycle()V

    goto/16 :goto_0

    .line 969
    :cond_10
    move-object/from16 v0, p0

    move/from16 v1, v30

    invoke-virtual {v0, v1, v10}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    goto :goto_5

    .line 972
    .end local v10           #color:I
    .end local v12           #dashWidth:F
    .end local v30           #width:I
    :cond_11
    const-string v31, "corners"

    move-object/from16 v0, v20

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v31

    if-eqz v31, :cond_14

    .line 973
    sget-object v31, Lcom/android/internal/R$styleable;->DrawableCorners:[I

    move-object/from16 v0, p1

    move-object/from16 v1, p3

    move-object/from16 v2, v31

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v4

    .line 975
    const/16 v31, 0x0

    const/16 v32, 0x0

    move/from16 v0, v31

    move/from16 v1, v32

    invoke-virtual {v4, v0, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v21

    .line 977
    .local v21, radius:I
    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v31, v0

    move-object/from16 v0, p0

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 978
    const/16 v31, 0x1

    move/from16 v0, v31

    move/from16 v1, v21

    invoke-virtual {v4, v0, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v26

    .line 980
    .local v26, topLeftRadius:I
    const/16 v31, 0x2

    move/from16 v0, v31

    move/from16 v1, v21

    invoke-virtual {v4, v0, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v27

    .line 982
    .local v27, topRightRadius:I
    const/16 v31, 0x3

    move/from16 v0, v31

    move/from16 v1, v21

    invoke-virtual {v4, v0, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v7

    .line 984
    .local v7, bottomLeftRadius:I
    const/16 v31, 0x4

    move/from16 v0, v31

    move/from16 v1, v21

    invoke-virtual {v4, v0, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v8

    .line 986
    .local v8, bottomRightRadius:I
    move/from16 v0, v26

    move/from16 v1, v21

    if-ne v0, v1, :cond_12

    move/from16 v0, v27

    move/from16 v1, v21

    if-ne v0, v1, :cond_12

    move/from16 v0, v21

    if-ne v7, v0, :cond_12

    move/from16 v0, v21

    if-eq v8, v0, :cond_13

    .line 989
    :cond_12
    const/16 v31, 0x8

    move/from16 v0, v31

    new-array v0, v0, [F

    move-object/from16 v31, v0

    const/16 v32, 0x0

    move/from16 v0, v26

    int-to-float v0, v0

    move/from16 v33, v0

    aput v33, v31, v32

    const/16 v32, 0x1

    move/from16 v0, v26

    int-to-float v0, v0

    move/from16 v33, v0

    aput v33, v31, v32

    const/16 v32, 0x2

    move/from16 v0, v27

    int-to-float v0, v0

    move/from16 v33, v0

    aput v33, v31, v32

    const/16 v32, 0x3

    move/from16 v0, v27

    int-to-float v0, v0

    move/from16 v33, v0

    aput v33, v31, v32

    const/16 v32, 0x4

    int-to-float v0, v8

    move/from16 v33, v0

    aput v33, v31, v32

    const/16 v32, 0x5

    int-to-float v0, v8

    move/from16 v33, v0

    aput v33, v31, v32

    const/16 v32, 0x6

    int-to-float v0, v7

    move/from16 v33, v0

    aput v33, v31, v32

    const/16 v32, 0x7

    int-to-float v0, v7

    move/from16 v33, v0

    aput v33, v31, v32

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadii([F)V

    .line 996
    :cond_13
    invoke-virtual {v4}, Landroid/content/res/TypedArray;->recycle()V

    goto/16 :goto_0

    .line 997
    .end local v7           #bottomLeftRadius:I
    .end local v8           #bottomRightRadius:I
    .end local v21           #radius:I
    .end local v26           #topLeftRadius:I
    .end local v27           #topRightRadius:I
    :cond_14
    const-string/jumbo v31, "padding"

    move-object/from16 v0, v20

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v31

    if-eqz v31, :cond_15

    .line 998
    sget-object v31, Lcom/android/internal/R$styleable;->GradientDrawablePadding:[I

    move-object/from16 v0, p1

    move-object/from16 v1, p3

    move-object/from16 v2, v31

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v4

    .line 1000
    new-instance v31, Landroid/graphics/Rect;

    const/16 v32, 0x0

    const/16 v33, 0x0

    move/from16 v0, v32

    move/from16 v1, v33

    invoke-virtual {v4, v0, v1}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v32

    const/16 v33, 0x1

    const/16 v34, 0x0

    move/from16 v0, v33

    move/from16 v1, v34

    invoke-virtual {v4, v0, v1}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v33

    const/16 v34, 0x2

    const/16 v35, 0x0

    move/from16 v0, v34

    move/from16 v1, v35

    invoke-virtual {v4, v0, v1}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v34

    const/16 v35, 0x3

    const/16 v36, 0x0

    move/from16 v0, v35

    move/from16 v1, v36

    invoke-virtual {v4, v0, v1}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v35

    invoke-direct/range {v31 .. v35}, Landroid/graphics/Rect;-><init>(IIII)V

    move-object/from16 v0, v31

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/graphics/drawable/GradientDrawable;->mPadding:Landroid/graphics/Rect;

    .line 1009
    invoke-virtual {v4}, Landroid/content/res/TypedArray;->recycle()V

    .line 1010
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/graphics/drawable/GradientDrawable;->mGradientState:Landroid/graphics/drawable/GradientDrawable$GradientState;

    move-object/from16 v31, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/graphics/drawable/GradientDrawable;->mPadding:Landroid/graphics/Rect;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    move-object/from16 v1, v31

    iput-object v0, v1, Landroid/graphics/drawable/GradientDrawable$GradientState;->mPadding:Landroid/graphics/Rect;

    goto/16 :goto_0

    .line 1012
    :cond_15
    const-string v31, "drawable"

    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string v33, "Bad element under <shape>: "

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, v32

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    invoke-static/range {v31 .. v32}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1015
    .end local v13           #depth:I
    .end local v20           #name:Ljava/lang/String;
    :cond_16
    return-void

    .line 888
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x2d -> :sswitch_1
        0x5a -> :sswitch_2
        0x87 -> :sswitch_3
        0xb4 -> :sswitch_4
        0xe1 -> :sswitch_5
        0x10e -> :sswitch_6
        0x13b -> :sswitch_7
    .end sparse-switch
.end method

.method public mutate()Landroid/graphics/drawable/Drawable;
    .locals 2

    .prologue
    .line 1045
    iget-boolean v0, p0, Landroid/graphics/drawable/GradientDrawable;->mMutated:Z

    if-nez v0, :cond_0

    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-ne v0, p0, :cond_0

    .line 1046
    new-instance v0, Landroid/graphics/drawable/GradientDrawable$GradientState;

    iget-object v1, p0, Landroid/graphics/drawable/GradientDrawable;->mGradientState:Landroid/graphics/drawable/GradientDrawable$GradientState;

    invoke-direct {v0, v1}, Landroid/graphics/drawable/GradientDrawable$GradientState;-><init>(Landroid/graphics/drawable/GradientDrawable$GradientState;)V

    iput-object v0, p0, Landroid/graphics/drawable/GradientDrawable;->mGradientState:Landroid/graphics/drawable/GradientDrawable$GradientState;

    .line 1047
    iget-object v0, p0, Landroid/graphics/drawable/GradientDrawable;->mGradientState:Landroid/graphics/drawable/GradientDrawable$GradientState;

    invoke-direct {p0, v0}, Landroid/graphics/drawable/GradientDrawable;->initializeWithState(Landroid/graphics/drawable/GradientDrawable$GradientState;)V

    .line 1048
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/graphics/drawable/GradientDrawable;->mMutated:Z

    .line 1050
    :cond_0
    return-object p0
.end method

.method protected onBoundsChange(Landroid/graphics/Rect;)V
    .locals 2
    .parameter "r"

    .prologue
    const/4 v1, 0x1

    .line 657
    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->onBoundsChange(Landroid/graphics/Rect;)V

    .line 658
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/graphics/drawable/GradientDrawable;->mRingPath:Landroid/graphics/Path;

    .line 659
    iput-boolean v1, p0, Landroid/graphics/drawable/GradientDrawable;->mPathIsDirty:Z

    .line 660
    iput-boolean v1, p0, Landroid/graphics/drawable/GradientDrawable;->mRectIsDirty:Z

    .line 661
    return-void
.end method

.method protected onLevelChange(I)Z
    .locals 1
    .parameter "level"

    .prologue
    const/4 v0, 0x1

    .line 665
    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->onLevelChange(I)Z

    .line 666
    iput-boolean v0, p0, Landroid/graphics/drawable/GradientDrawable;->mRectIsDirty:Z

    .line 667
    iput-boolean v0, p0, Landroid/graphics/drawable/GradientDrawable;->mPathIsDirty:Z

    .line 668
    invoke-virtual {p0}, Landroid/graphics/drawable/GradientDrawable;->invalidateSelf()V

    .line 669
    return v0
.end method

.method public setAlpha(I)V
    .locals 1
    .parameter "alpha"

    .prologue
    .line 628
    iget v0, p0, Landroid/graphics/drawable/GradientDrawable;->mAlpha:I

    if-eq p1, v0, :cond_0

    .line 629
    iput p1, p0, Landroid/graphics/drawable/GradientDrawable;->mAlpha:I

    .line 630
    invoke-virtual {p0}, Landroid/graphics/drawable/GradientDrawable;->invalidateSelf()V

    .line 632
    :cond_0
    return-void
.end method

.method public setColor(I)V
    .locals 1
    .parameter "argb"

    .prologue
    .line 616
    iget-object v0, p0, Landroid/graphics/drawable/GradientDrawable;->mGradientState:Landroid/graphics/drawable/GradientDrawable$GradientState;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/GradientDrawable$GradientState;->setSolidColor(I)V

    .line 617
    iget-object v0, p0, Landroid/graphics/drawable/GradientDrawable;->mFillPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 618
    invoke-virtual {p0}, Landroid/graphics/drawable/GradientDrawable;->invalidateSelf()V

    .line 619
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1
    .parameter "cf"

    .prologue
    .line 644
    iget-object v0, p0, Landroid/graphics/drawable/GradientDrawable;->mColorFilter:Landroid/graphics/ColorFilter;

    if-eq p1, v0, :cond_0

    .line 645
    iput-object p1, p0, Landroid/graphics/drawable/GradientDrawable;->mColorFilter:Landroid/graphics/ColorFilter;

    .line 646
    invoke-virtual {p0}, Landroid/graphics/drawable/GradientDrawable;->invalidateSelf()V

    .line 648
    :cond_0
    return-void
.end method

.method public setColors([I)V
    .locals 1
    .parameter "colors"

    .prologue
    .line 418
    iget-object v0, p0, Landroid/graphics/drawable/GradientDrawable;->mGradientState:Landroid/graphics/drawable/GradientDrawable$GradientState;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/GradientDrawable$GradientState;->setColors([I)V

    .line 419
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/graphics/drawable/GradientDrawable;->mRectIsDirty:Z

    .line 420
    invoke-virtual {p0}, Landroid/graphics/drawable/GradientDrawable;->invalidateSelf()V

    .line 421
    return-void
.end method

.method public setCornerRadii([F)V
    .locals 1
    .parameter "radii"

    .prologue
    .line 192
    iget-object v0, p0, Landroid/graphics/drawable/GradientDrawable;->mGradientState:Landroid/graphics/drawable/GradientDrawable$GradientState;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/GradientDrawable$GradientState;->setCornerRadii([F)V

    .line 193
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/graphics/drawable/GradientDrawable;->mPathIsDirty:Z

    .line 194
    invoke-virtual {p0}, Landroid/graphics/drawable/GradientDrawable;->invalidateSelf()V

    .line 195
    return-void
.end method

.method public setCornerRadius(F)V
    .locals 1
    .parameter "radius"

    .prologue
    .line 212
    iget-object v0, p0, Landroid/graphics/drawable/GradientDrawable;->mGradientState:Landroid/graphics/drawable/GradientDrawable$GradientState;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/GradientDrawable$GradientState;->setCornerRadius(F)V

    .line 213
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/graphics/drawable/GradientDrawable;->mPathIsDirty:Z

    .line 214
    invoke-virtual {p0}, Landroid/graphics/drawable/GradientDrawable;->invalidateSelf()V

    .line 215
    return-void
.end method

.method public setDither(Z)V
    .locals 1
    .parameter "dither"

    .prologue
    .line 636
    iget-boolean v0, p0, Landroid/graphics/drawable/GradientDrawable;->mDither:Z

    if-eq p1, v0, :cond_0

    .line 637
    iput-boolean p1, p0, Landroid/graphics/drawable/GradientDrawable;->mDither:Z

    .line 638
    invoke-virtual {p0}, Landroid/graphics/drawable/GradientDrawable;->invalidateSelf()V

    .line 640
    :cond_0
    return-void
.end method

.method public setGradientCenter(FF)V
    .locals 1
    .parameter "x"
    .parameter "y"

    .prologue
    .line 335
    iget-object v0, p0, Landroid/graphics/drawable/GradientDrawable;->mGradientState:Landroid/graphics/drawable/GradientDrawable$GradientState;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/drawable/GradientDrawable$GradientState;->setGradientCenter(FF)V

    .line 336
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/graphics/drawable/GradientDrawable;->mRectIsDirty:Z

    .line 337
    invoke-virtual {p0}, Landroid/graphics/drawable/GradientDrawable;->invalidateSelf()V

    .line 338
    return-void
.end method

.method public setGradientRadius(F)V
    .locals 1
    .parameter "gradientRadius"

    .prologue
    .line 353
    iget-object v0, p0, Landroid/graphics/drawable/GradientDrawable;->mGradientState:Landroid/graphics/drawable/GradientDrawable$GradientState;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/GradientDrawable$GradientState;->setGradientRadius(F)V

    .line 354
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/graphics/drawable/GradientDrawable;->mRectIsDirty:Z

    .line 355
    invoke-virtual {p0}, Landroid/graphics/drawable/GradientDrawable;->invalidateSelf()V

    .line 356
    return-void
.end method

.method public setGradientType(I)V
    .locals 1
    .parameter "gradient"

    .prologue
    .line 316
    iget-object v0, p0, Landroid/graphics/drawable/GradientDrawable;->mGradientState:Landroid/graphics/drawable/GradientDrawable$GradientState;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/GradientDrawable$GradientState;->setGradientType(I)V

    .line 317
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/graphics/drawable/GradientDrawable;->mRectIsDirty:Z

    .line 318
    invoke-virtual {p0}, Landroid/graphics/drawable/GradientDrawable;->invalidateSelf()V

    .line 319
    return-void
.end method

.method public setOrientation(Landroid/graphics/drawable/GradientDrawable$Orientation;)V
    .locals 1
    .parameter "orientation"

    .prologue
    .line 400
    iget-object v0, p0, Landroid/graphics/drawable/GradientDrawable;->mGradientState:Landroid/graphics/drawable/GradientDrawable$GradientState;

    iput-object p1, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mOrientation:Landroid/graphics/drawable/GradientDrawable$Orientation;

    .line 401
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/graphics/drawable/GradientDrawable;->mRectIsDirty:Z

    .line 402
    invoke-virtual {p0}, Landroid/graphics/drawable/GradientDrawable;->invalidateSelf()V

    .line 403
    return-void
.end method

.method public setShape(I)V
    .locals 1
    .parameter "shape"

    .prologue
    .line 298
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/graphics/drawable/GradientDrawable;->mRingPath:Landroid/graphics/Path;

    .line 299
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/graphics/drawable/GradientDrawable;->mPathIsDirty:Z

    .line 300
    iget-object v0, p0, Landroid/graphics/drawable/GradientDrawable;->mGradientState:Landroid/graphics/drawable/GradientDrawable$GradientState;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/GradientDrawable$GradientState;->setShape(I)V

    .line 301
    invoke-virtual {p0}, Landroid/graphics/drawable/GradientDrawable;->invalidateSelf()V

    .line 302
    return-void
.end method

.method public setSize(II)V
    .locals 1
    .parameter "width"
    .parameter "height"

    .prologue
    .line 281
    iget-object v0, p0, Landroid/graphics/drawable/GradientDrawable;->mGradientState:Landroid/graphics/drawable/GradientDrawable$GradientState;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/drawable/GradientDrawable$GradientState;->setSize(II)V

    .line 282
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/graphics/drawable/GradientDrawable;->mPathIsDirty:Z

    .line 283
    invoke-virtual {p0}, Landroid/graphics/drawable/GradientDrawable;->invalidateSelf()V

    .line 284
    return-void
.end method

.method public setStroke(II)V
    .locals 1
    .parameter "width"
    .parameter "color"

    .prologue
    const/4 v0, 0x0

    .line 231
    invoke-virtual {p0, p1, p2, v0, v0}, Landroid/graphics/drawable/GradientDrawable;->setStroke(IIFF)V

    .line 232
    return-void
.end method

.method public setStroke(IIFF)V
    .locals 5
    .parameter "width"
    .parameter "color"
    .parameter "dashWidth"
    .parameter "dashGap"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 250
    iget-object v1, p0, Landroid/graphics/drawable/GradientDrawable;->mGradientState:Landroid/graphics/drawable/GradientDrawable$GradientState;

    invoke-virtual {v1, p1, p2, p3, p4}, Landroid/graphics/drawable/GradientDrawable$GradientState;->setStroke(IIFF)V

    .line 252
    iget-object v1, p0, Landroid/graphics/drawable/GradientDrawable;->mStrokePaint:Landroid/graphics/Paint;

    if-nez v1, :cond_0

    .line 253
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1, v4}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v1, p0, Landroid/graphics/drawable/GradientDrawable;->mStrokePaint:Landroid/graphics/Paint;

    .line 254
    iget-object v1, p0, Landroid/graphics/drawable/GradientDrawable;->mStrokePaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 256
    :cond_0
    iget-object v1, p0, Landroid/graphics/drawable/GradientDrawable;->mStrokePaint:Landroid/graphics/Paint;

    int-to-float v2, p1

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 257
    iget-object v1, p0, Landroid/graphics/drawable/GradientDrawable;->mStrokePaint:Landroid/graphics/Paint;

    invoke-virtual {v1, p2}, Landroid/graphics/Paint;->setColor(I)V

    .line 259
    const/4 v0, 0x0

    .line 260
    .local v0, e:Landroid/graphics/DashPathEffect;
    cmpl-float v1, p3, v3

    if-lez v1, :cond_1

    .line 261
    new-instance v0, Landroid/graphics/DashPathEffect;

    .end local v0           #e:Landroid/graphics/DashPathEffect;
    const/4 v1, 0x2

    new-array v1, v1, [F

    const/4 v2, 0x0

    aput p3, v1, v2

    aput p4, v1, v4

    invoke-direct {v0, v1, v3}, Landroid/graphics/DashPathEffect;-><init>([FF)V

    .line 263
    .restart local v0       #e:Landroid/graphics/DashPathEffect;
    :cond_1
    iget-object v1, p0, Landroid/graphics/drawable/GradientDrawable;->mStrokePaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    .line 264
    invoke-virtual {p0}, Landroid/graphics/drawable/GradientDrawable;->invalidateSelf()V

    .line 265
    return-void
.end method

.method public setUseLevel(Z)V
    .locals 1
    .parameter "useLevel"

    .prologue
    .line 372
    iget-object v0, p0, Landroid/graphics/drawable/GradientDrawable;->mGradientState:Landroid/graphics/drawable/GradientDrawable$GradientState;

    #setter for: Landroid/graphics/drawable/GradientDrawable$GradientState;->mUseLevel:Z
    invoke-static {v0, p1}, Landroid/graphics/drawable/GradientDrawable$GradientState;->access$002(Landroid/graphics/drawable/GradientDrawable$GradientState;Z)Z

    .line 373
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/graphics/drawable/GradientDrawable;->mRectIsDirty:Z

    .line 374
    invoke-virtual {p0}, Landroid/graphics/drawable/GradientDrawable;->invalidateSelf()V

    .line 375
    return-void
.end method
