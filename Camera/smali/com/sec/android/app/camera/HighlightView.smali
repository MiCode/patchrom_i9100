.class Lcom/sec/android/app/camera/HighlightView;
.super Ljava/lang/Object;
.source "HighlightView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/camera/HighlightView$ModifyMode;
    }
.end annotation


# static fields
.field public static final GROW_BOTTOM_EDGE:I = 0x10

.field public static final GROW_LEFT_EDGE:I = 0x2

.field public static final GROW_NONE:I = 0x1

.field public static final GROW_RIGHT_EDGE:I = 0x4

.field public static final GROW_TOP_EDGE:I = 0x8

.field public static final MOVE:I = 0x20

.field private static final TAG:Ljava/lang/String; = "HighlightView"


# instance fields
.field mActivityContext:Landroid/view/View;

.field private mCircle:Z

.field mCropRect:Landroid/graphics/RectF;

.field mDrawRect:Landroid/graphics/Rect;

.field private final mFocusPaint:Landroid/graphics/Paint;

.field mHidden:Z

.field private mImageRect:Landroid/graphics/RectF;

.field private mInitialAspectRatio:F

.field mIsFocused:Z

.field private mMaintainAspectRatio:Z

.field mMatrix:Landroid/graphics/Matrix;

.field private mMode:Lcom/sec/android/app/camera/HighlightView$ModifyMode;

.field private final mNoFocusPaint:Landroid/graphics/Paint;

.field private final mOutlinePaint:Landroid/graphics/Paint;

.field private mOutlineStrokeWidth:F

.field private mResizeDrawableDiagonal:Landroid/graphics/drawable/Drawable;

.field private mResizeDrawableHeight:Landroid/graphics/drawable/Drawable;

.field private mResizeDrawableWidth:Landroid/graphics/drawable/Drawable;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 3
    .parameter "ctx"

    .prologue
    const/4 v1, 0x0

    .line 48
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 405
    sget-object v0, Lcom/sec/android/app/camera/HighlightView$ModifyMode;->None:Lcom/sec/android/app/camera/HighlightView$ModifyMode;

    iput-object v0, p0, Lcom/sec/android/app/camera/HighlightView;->mMode:Lcom/sec/android/app/camera/HighlightView$ModifyMode;

    .line 412
    iput-boolean v1, p0, Lcom/sec/android/app/camera/HighlightView;->mMaintainAspectRatio:Z

    .line 415
    iput-boolean v1, p0, Lcom/sec/android/app/camera/HighlightView;->mCircle:Z

    .line 421
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/camera/HighlightView;->mFocusPaint:Landroid/graphics/Paint;

    .line 422
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/camera/HighlightView;->mNoFocusPaint:Landroid/graphics/Paint;

    .line 423
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/camera/HighlightView;->mOutlinePaint:Landroid/graphics/Paint;

    .line 49
    iput-object p1, p0, Lcom/sec/android/app/camera/HighlightView;->mActivityContext:Landroid/view/View;

    .line 50
    iget-object v0, p0, Lcom/sec/android/app/camera/HighlightView;->mActivityContext:Landroid/view/View;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 51
    return-void
.end method

.method private computeLayout()Landroid/graphics/Rect;
    .locals 6

    .prologue
    .line 364
    new-instance v0, Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/sec/android/app/camera/HighlightView;->mCropRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    iget-object v2, p0, Lcom/sec/android/app/camera/HighlightView;->mCropRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->top:F

    iget-object v3, p0, Lcom/sec/android/app/camera/HighlightView;->mCropRect:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->right:F

    iget-object v4, p0, Lcom/sec/android/app/camera/HighlightView;->mCropRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->bottom:F

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 366
    .local v0, r:Landroid/graphics/RectF;
    iget-object v1, p0, Lcom/sec/android/app/camera/HighlightView;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v1, v0}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 367
    new-instance v1, Landroid/graphics/Rect;

    iget v2, v0, Landroid/graphics/RectF;->left:F

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    iget v3, v0, Landroid/graphics/RectF;->top:F

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    iget v4, v0, Landroid/graphics/RectF;->right:F

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    iget v5, v0, Landroid/graphics/RectF;->bottom:F

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v5

    invoke-direct {v1, v2, v3, v4, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v1
.end method

.method private init()V
    .locals 2

    .prologue
    .line 54
    iget-object v1, p0, Lcom/sec/android/app/camera/HighlightView;->mActivityContext:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 55
    .local v0, resources:Landroid/content/res/Resources;
    const v1, 0x7f020013

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/camera/HighlightView;->mResizeDrawableWidth:Landroid/graphics/drawable/Drawable;

    .line 57
    const v1, 0x7f020012

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/camera/HighlightView;->mResizeDrawableHeight:Landroid/graphics/drawable/Drawable;

    .line 59
    const v1, 0x7f0201cd

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/camera/HighlightView;->mResizeDrawableDiagonal:Landroid/graphics/drawable/Drawable;

    .line 61
    const v1, 0x7f07006f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    iput v1, p0, Lcom/sec/android/app/camera/HighlightView;->mOutlineStrokeWidth:F

    .line 63
    return-void
.end method


# virtual methods
.method protected draw(Landroid/graphics/Canvas;)V
    .locals 29
    .parameter "canvas"

    .prologue
    .line 81
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/app/camera/HighlightView;->mHidden:Z

    move/from16 v23, v0

    if-eqz v23, :cond_1

    .line 177
    :cond_0
    :goto_0
    return-void

    .line 85
    :cond_1
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 86
    new-instance v12, Landroid/graphics/Path;

    invoke-direct {v12}, Landroid/graphics/Path;-><init>()V

    .line 87
    .local v12, path:Landroid/graphics/Path;
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/HighlightView;->hasFocus()Z

    move-result v23

    if-nez v23, :cond_2

    .line 88
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/HighlightView;->mOutlinePaint:Landroid/graphics/Paint;

    move-object/from16 v23, v0

    const v24, -0x10fb2a

    invoke-virtual/range {v23 .. v24}, Landroid/graphics/Paint;->setColor(I)V

    .line 89
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/HighlightView;->mDrawRect:Landroid/graphics/Rect;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/HighlightView;->mOutlinePaint:Landroid/graphics/Paint;

    move-object/from16 v24, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 174
    .end local v12           #path:Landroid/graphics/Path;
    :catch_0
    move-exception v7

    .line 175
    .local v7, ex:Ljava/lang/UnsupportedOperationException;
    invoke-virtual {v7}, Ljava/lang/UnsupportedOperationException;->printStackTrace()V

    goto :goto_0

    .line 91
    .end local v7           #ex:Ljava/lang/UnsupportedOperationException;
    .restart local v12       #path:Landroid/graphics/Path;
    :cond_2
    :try_start_1
    new-instance v15, Landroid/graphics/Rect;

    invoke-direct {v15}, Landroid/graphics/Rect;-><init>()V

    .line 92
    .local v15, viewDrawingRect:Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/HighlightView;->mActivityContext:Landroid/view/View;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-virtual {v0, v15}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 93
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/app/camera/HighlightView;->mCircle:Z

    move/from16 v23, v0

    if-eqz v23, :cond_3

    .line 94
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/HighlightView;->mDrawRect:Landroid/graphics/Rect;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/graphics/Rect;->width()I

    move-result v23

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v16, v0

    .line 95
    .local v16, width:F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/HighlightView;->mDrawRect:Landroid/graphics/Rect;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/graphics/Rect;->height()I

    move-result v23

    move/from16 v0, v23

    int-to-float v8, v0

    .line 96
    .local v8, height:F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/HighlightView;->mDrawRect:Landroid/graphics/Rect;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v23, v0

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    const/high16 v24, 0x4000

    div-float v24, v16, v24

    add-float v23, v23, v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/HighlightView;->mDrawRect:Landroid/graphics/Rect;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v24, v0

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v24, v0

    const/high16 v25, 0x4000

    div-float v25, v8, v25

    add-float v24, v24, v25

    const/high16 v25, 0x4000

    div-float v25, v16, v25

    sget-object v26, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    move/from16 v0, v23

    move/from16 v1, v24

    move/from16 v2, v25

    move-object/from16 v3, v26

    invoke-virtual {v12, v0, v1, v2, v3}, Landroid/graphics/Path;->addCircle(FFFLandroid/graphics/Path$Direction;)V

    .line 100
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/HighlightView;->mOutlinePaint:Landroid/graphics/Paint;

    move-object/from16 v23, v0

    const v24, -0x10fb2a

    invoke-virtual/range {v23 .. v24}, Landroid/graphics/Paint;->setColor(I)V

    .line 110
    .end local v8           #height:F
    .end local v16           #width:F
    :goto_1
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 111
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/HighlightView;->mOutlinePaint:Landroid/graphics/Paint;

    move-object/from16 v23, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v23

    invoke-virtual {v0, v12, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 113
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/HighlightView;->mMode:Lcom/sec/android/app/camera/HighlightView$ModifyMode;

    move-object/from16 v23, v0

    sget-object v24, Lcom/sec/android/app/camera/HighlightView$ModifyMode;->Grow:Lcom/sec/android/app/camera/HighlightView$ModifyMode;

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    if-ne v0, v1, :cond_0

    .line 114
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/app/camera/HighlightView;->mCircle:Z

    move/from16 v23, v0

    if-eqz v23, :cond_4

    .line 115
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/HighlightView;->mResizeDrawableDiagonal:Landroid/graphics/drawable/Drawable;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v16

    .line 116
    .local v16, width:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/HighlightView;->mResizeDrawableDiagonal:Landroid/graphics/drawable/Drawable;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v8

    .line 118
    .local v8, height:I
    const-wide v23, 0x3fe921fb54442d18L

    invoke-static/range {v23 .. v24}, Ljava/lang/Math;->cos(D)D

    move-result-wide v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/HighlightView;->mDrawRect:Landroid/graphics/Rect;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/graphics/Rect;->width()I

    move-result v25

    move/from16 v0, v25

    int-to-double v0, v0

    move-wide/from16 v25, v0

    const-wide/high16 v27, 0x4000

    div-double v25, v25, v27

    mul-double v23, v23, v25

    invoke-static/range {v23 .. v24}, Ljava/lang/Math;->round(D)J

    move-result-wide v23

    move-wide/from16 v0, v23

    long-to-int v6, v0

    .line 120
    .local v6, d:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/HighlightView;->mDrawRect:Landroid/graphics/Rect;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/HighlightView;->mDrawRect:Landroid/graphics/Rect;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/graphics/Rect;->width()I

    move-result v24

    div-int/lit8 v24, v24, 0x2

    add-int v23, v23, v24

    add-int v23, v23, v6

    div-int/lit8 v24, v16, 0x2

    sub-int v19, v23, v24

    .line 122
    .local v19, x:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/HighlightView;->mDrawRect:Landroid/graphics/Rect;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/HighlightView;->mDrawRect:Landroid/graphics/Rect;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/graphics/Rect;->height()I

    move-result v24

    div-int/lit8 v24, v24, 0x2

    add-int v23, v23, v24

    sub-int v23, v23, v6

    div-int/lit8 v24, v8, 0x2

    sub-int v21, v23, v24

    .line 124
    .local v21, y:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/HighlightView;->mResizeDrawableDiagonal:Landroid/graphics/drawable/Drawable;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/HighlightView;->mResizeDrawableDiagonal:Landroid/graphics/drawable/Drawable;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v24

    add-int v24, v24, v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/HighlightView;->mResizeDrawableDiagonal:Landroid/graphics/drawable/Drawable;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v25

    add-int v25, v25, v21

    move-object/from16 v0, v23

    move/from16 v1, v19

    move/from16 v2, v21

    move/from16 v3, v24

    move/from16 v4, v25

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 127
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/HighlightView;->mResizeDrawableDiagonal:Landroid/graphics/drawable/Drawable;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto/16 :goto_0

    .line 102
    .end local v6           #d:I
    .end local v8           #height:I
    .end local v16           #width:I
    .end local v19           #x:I
    .end local v21           #y:I
    :cond_3
    new-instance v23, Landroid/graphics/RectF;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/HighlightView;->mDrawRect:Landroid/graphics/Rect;

    move-object/from16 v24, v0

    invoke-direct/range {v23 .. v24}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    sget-object v24, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-virtual {v12, v0, v1}, Landroid/graphics/Path;->addRect(Landroid/graphics/RectF;Landroid/graphics/Path$Direction;)V

    .line 103
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/HighlightView;->mOutlinePaint:Landroid/graphics/Paint;

    move-object/from16 v23, v0

    const/16 v24, -0x7600

    invoke-virtual/range {v23 .. v24}, Landroid/graphics/Paint;->setColor(I)V

    goto/16 :goto_1

    .line 129
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/HighlightView;->mDrawRect:Landroid/graphics/Rect;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v23, v0

    add-int/lit8 v11, v23, 0x1

    .line 130
    .local v11, left:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/HighlightView;->mDrawRect:Landroid/graphics/Rect;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v23, v0

    add-int/lit8 v13, v23, 0x1

    .line 131
    .local v13, right:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/HighlightView;->mDrawRect:Landroid/graphics/Rect;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v23, v0

    add-int/lit8 v14, v23, 0x4

    .line 132
    .local v14, top:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/HighlightView;->mDrawRect:Landroid/graphics/Rect;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v23, v0

    add-int/lit8 v5, v23, 0x3

    .line 134
    .local v5, bottom:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/HighlightView;->mResizeDrawableWidth:Landroid/graphics/drawable/Drawable;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v23

    div-int/lit8 v18, v23, 0x2

    .line 136
    .local v18, widthWidth:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/HighlightView;->mResizeDrawableWidth:Landroid/graphics/drawable/Drawable;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v23

    div-int/lit8 v17, v23, 0x2

    .line 138
    .local v17, widthHeight:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/HighlightView;->mResizeDrawableHeight:Landroid/graphics/drawable/Drawable;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v23

    div-int/lit8 v9, v23, 0x2

    .line 140
    .local v9, heightHeight:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/HighlightView;->mResizeDrawableHeight:Landroid/graphics/drawable/Drawable;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v23

    div-int/lit8 v10, v23, 0x2

    .line 143
    .local v10, heightWidth:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/HighlightView;->mDrawRect:Landroid/graphics/Rect;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/HighlightView;->mDrawRect:Landroid/graphics/Rect;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/HighlightView;->mDrawRect:Landroid/graphics/Rect;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v25, v0

    sub-int v24, v24, v25

    div-int/lit8 v24, v24, 0x2

    add-int v20, v23, v24

    .line 145
    .local v20, xMiddle:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/HighlightView;->mDrawRect:Landroid/graphics/Rect;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/HighlightView;->mDrawRect:Landroid/graphics/Rect;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/HighlightView;->mDrawRect:Landroid/graphics/Rect;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v25, v0

    sub-int v24, v24, v25

    div-int/lit8 v24, v24, 0x2

    add-int v22, v23, v24

    .line 148
    .local v22, yMiddle:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/HighlightView;->mResizeDrawableWidth:Landroid/graphics/drawable/Drawable;

    move-object/from16 v23, v0

    sub-int v24, v11, v18

    sub-int v25, v22, v17

    add-int v26, v11, v18

    add-int v27, v22, v17

    invoke-virtual/range {v23 .. v27}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 152
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/HighlightView;->mResizeDrawableWidth:Landroid/graphics/drawable/Drawable;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 154
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/HighlightView;->mResizeDrawableWidth:Landroid/graphics/drawable/Drawable;

    move-object/from16 v23, v0

    sub-int v24, v13, v18

    sub-int v25, v22, v17

    add-int v26, v13, v18

    add-int v27, v22, v17

    invoke-virtual/range {v23 .. v27}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 158
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/HighlightView;->mResizeDrawableWidth:Landroid/graphics/drawable/Drawable;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 160
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/HighlightView;->mResizeDrawableHeight:Landroid/graphics/drawable/Drawable;

    move-object/from16 v23, v0

    sub-int v24, v20, v10

    sub-int v25, v14, v9

    add-int v26, v20, v10

    add-int v27, v14, v9

    invoke-virtual/range {v23 .. v27}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 164
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/HighlightView;->mResizeDrawableHeight:Landroid/graphics/drawable/Drawable;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 166
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/HighlightView;->mResizeDrawableHeight:Landroid/graphics/drawable/Drawable;

    move-object/from16 v23, v0

    sub-int v24, v20, v10

    sub-int v25, v5, v9

    add-int v26, v20, v10

    add-int v27, v5, v9

    invoke-virtual/range {v23 .. v27}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 170
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/HighlightView;->mResizeDrawableHeight:Landroid/graphics/drawable/Drawable;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V
    :try_end_1
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method

.method public getCropRect()Landroid/graphics/Rect;
    .locals 5

    .prologue
    .line 358
    new-instance v0, Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/sec/android/app/camera/HighlightView;->mCropRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    float-to-int v1, v1

    iget-object v2, p0, Lcom/sec/android/app/camera/HighlightView;->mCropRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->top:F

    float-to-int v2, v2

    iget-object v3, p0, Lcom/sec/android/app/camera/HighlightView;->mCropRect:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->right:F

    float-to-int v3, v3

    iget-object v4, p0, Lcom/sec/android/app/camera/HighlightView;->mCropRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->bottom:F

    float-to-int v4, v4

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v0
.end method

.method public getHit(FF)I
    .locals 12
    .parameter "x"
    .parameter "y"

    .prologue
    .line 188
    invoke-direct {p0}, Lcom/sec/android/app/camera/HighlightView;->computeLayout()Landroid/graphics/Rect;

    move-result-object v6

    .line 189
    .local v6, r:Landroid/graphics/Rect;
    const/high16 v5, 0x41a0

    .line 190
    .local v5, hysteresis:F
    const/4 v8, 0x1

    .line 192
    .local v8, retval:I
    iget-boolean v10, p0, Lcom/sec/android/app/camera/HighlightView;->mCircle:Z

    if-eqz v10, :cond_6

    .line 193
    invoke-virtual {v6}, Landroid/graphics/Rect;->centerX()I

    move-result v10

    int-to-float v10, v10

    sub-float v1, p1, v10

    .line 194
    .local v1, distX:F
    invoke-virtual {v6}, Landroid/graphics/Rect;->centerY()I

    move-result v10

    int-to-float v10, v10

    sub-float v2, p2, v10

    .line 195
    .local v2, distY:F
    mul-float v10, v1, v1

    mul-float v11, v2, v2

    add-float/2addr v10, v11

    float-to-double v10, v10

    invoke-static {v10, v11}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v10

    double-to-int v3, v10

    .line 197
    .local v3, distanceFromCenter:I
    iget-object v10, p0, Lcom/sec/android/app/camera/HighlightView;->mDrawRect:Landroid/graphics/Rect;

    invoke-virtual {v10}, Landroid/graphics/Rect;->width()I

    move-result v10

    div-int/lit8 v7, v10, 0x2

    .line 198
    .local v7, radius:I
    sub-int v0, v3, v7

    .line 199
    .local v0, delta:I
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v10

    int-to-float v10, v10

    const/high16 v11, 0x41a0

    cmpg-float v10, v10, v11

    if-gtz v10, :cond_4

    .line 200
    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v10

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v11

    cmpl-float v10, v10, v11

    if-lez v10, :cond_2

    .line 201
    const/4 v10, 0x0

    cmpg-float v10, v2, v10

    if-gez v10, :cond_1

    .line 202
    const/16 v8, 0x8

    .line 245
    .end local v0           #delta:I
    .end local v1           #distX:F
    .end local v2           #distY:F
    .end local v3           #distanceFromCenter:I
    .end local v7           #radius:I
    :cond_0
    :goto_0
    return v8

    .line 204
    .restart local v0       #delta:I
    .restart local v1       #distX:F
    .restart local v2       #distY:F
    .restart local v3       #distanceFromCenter:I
    .restart local v7       #radius:I
    :cond_1
    const/16 v8, 0x10

    goto :goto_0

    .line 207
    :cond_2
    const/4 v10, 0x0

    cmpg-float v10, v1, v10

    if-gez v10, :cond_3

    .line 208
    const/4 v8, 0x2

    goto :goto_0

    .line 210
    :cond_3
    const/4 v8, 0x4

    goto :goto_0

    .line 213
    :cond_4
    if-ge v3, v7, :cond_5

    .line 214
    const/16 v8, 0x20

    goto :goto_0

    .line 216
    :cond_5
    const/4 v8, 0x1

    goto :goto_0

    .line 221
    .end local v0           #delta:I
    .end local v1           #distX:F
    .end local v2           #distY:F
    .end local v3           #distanceFromCenter:I
    .end local v7           #radius:I
    :cond_6
    iget v10, v6, Landroid/graphics/Rect;->top:I

    int-to-float v10, v10

    const/high16 v11, 0x41a0

    sub-float/2addr v10, v11

    cmpl-float v10, p2, v10

    if-ltz v10, :cond_b

    iget v10, v6, Landroid/graphics/Rect;->bottom:I

    int-to-float v10, v10

    const/high16 v11, 0x41a0

    add-float/2addr v10, v11

    cmpg-float v10, p2, v10

    if-gez v10, :cond_b

    const/4 v9, 0x1

    .line 223
    .local v9, verticalCheck:Z
    :goto_1
    iget v10, v6, Landroid/graphics/Rect;->left:I

    int-to-float v10, v10

    const/high16 v11, 0x41a0

    sub-float/2addr v10, v11

    cmpl-float v10, p1, v10

    if-ltz v10, :cond_c

    iget v10, v6, Landroid/graphics/Rect;->right:I

    int-to-float v10, v10

    const/high16 v11, 0x41a0

    add-float/2addr v10, v11

    cmpg-float v10, p1, v10

    if-gez v10, :cond_c

    const/4 v4, 0x1

    .line 227
    .local v4, horizCheck:Z
    :goto_2
    iget v10, v6, Landroid/graphics/Rect;->left:I

    int-to-float v10, v10

    sub-float/2addr v10, p1

    invoke-static {v10}, Ljava/lang/Math;->abs(F)F

    move-result v10

    const/high16 v11, 0x41a0

    cmpg-float v10, v10, v11

    if-gez v10, :cond_7

    if-eqz v9, :cond_7

    .line 228
    or-int/lit8 v8, v8, 0x2

    .line 230
    :cond_7
    iget v10, v6, Landroid/graphics/Rect;->right:I

    int-to-float v10, v10

    sub-float/2addr v10, p1

    invoke-static {v10}, Ljava/lang/Math;->abs(F)F

    move-result v10

    const/high16 v11, 0x41a0

    cmpg-float v10, v10, v11

    if-gez v10, :cond_8

    if-eqz v9, :cond_8

    .line 231
    or-int/lit8 v8, v8, 0x4

    .line 233
    :cond_8
    iget v10, v6, Landroid/graphics/Rect;->top:I

    int-to-float v10, v10

    sub-float/2addr v10, p2

    invoke-static {v10}, Ljava/lang/Math;->abs(F)F

    move-result v10

    const/high16 v11, 0x41a0

    cmpg-float v10, v10, v11

    if-gez v10, :cond_9

    if-eqz v4, :cond_9

    .line 234
    or-int/lit8 v8, v8, 0x8

    .line 236
    :cond_9
    iget v10, v6, Landroid/graphics/Rect;->bottom:I

    int-to-float v10, v10

    sub-float/2addr v10, p2

    invoke-static {v10}, Ljava/lang/Math;->abs(F)F

    move-result v10

    const/high16 v11, 0x41a0

    cmpg-float v10, v10, v11

    if-gez v10, :cond_a

    if-eqz v4, :cond_a

    .line 237
    or-int/lit8 v8, v8, 0x10

    .line 241
    :cond_a
    const/4 v10, 0x1

    if-ne v8, v10, :cond_0

    float-to-int v10, p1

    float-to-int v11, p2

    invoke-virtual {v6, v10, v11}, Landroid/graphics/Rect;->contains(II)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 242
    const/16 v8, 0x20

    goto/16 :goto_0

    .line 221
    .end local v4           #horizCheck:Z
    .end local v9           #verticalCheck:Z
    :cond_b
    const/4 v9, 0x0

    goto :goto_1

    .line 223
    .restart local v9       #verticalCheck:Z
    :cond_c
    const/4 v4, 0x0

    goto :goto_2
.end method

.method growBy(FF)V
    .locals 8
    .parameter "dx"
    .parameter "dy"

    .prologue
    const/high16 v1, 0x41c8

    const/high16 v7, 0x4000

    const/4 v6, 0x0

    .line 298
    iget-boolean v4, p0, Lcom/sec/android/app/camera/HighlightView;->mMaintainAspectRatio:Z

    if-eqz v4, :cond_0

    .line 299
    cmpl-float v4, p1, v6

    if-eqz v4, :cond_8

    .line 300
    iget v4, p0, Lcom/sec/android/app/camera/HighlightView;->mInitialAspectRatio:F

    div-float p2, p1, v4

    .line 309
    :cond_0
    :goto_0
    new-instance v2, Landroid/graphics/RectF;

    iget-object v4, p0, Lcom/sec/android/app/camera/HighlightView;->mCropRect:Landroid/graphics/RectF;

    invoke-direct {v2, v4}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    .line 310
    .local v2, r:Landroid/graphics/RectF;
    cmpl-float v4, p1, v6

    if-lez v4, :cond_1

    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    move-result v4

    mul-float v5, v7, p1

    add-float/2addr v4, v5

    iget-object v5, p0, Lcom/sec/android/app/camera/HighlightView;->mImageRect:Landroid/graphics/RectF;

    invoke-virtual {v5}, Landroid/graphics/RectF;->width()F

    move-result v5

    cmpl-float v4, v4, v5

    if-lez v4, :cond_1

    .line 311
    iget-object v4, p0, Lcom/sec/android/app/camera/HighlightView;->mImageRect:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->width()F

    move-result v4

    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    move-result v5

    sub-float/2addr v4, v5

    div-float v0, v4, v7

    .line 312
    .local v0, adjustment:F
    move p1, v0

    .line 313
    iget-boolean v4, p0, Lcom/sec/android/app/camera/HighlightView;->mMaintainAspectRatio:Z

    if-eqz v4, :cond_1

    .line 314
    iget v4, p0, Lcom/sec/android/app/camera/HighlightView;->mInitialAspectRatio:F

    div-float p2, p1, v4

    .line 317
    .end local v0           #adjustment:F
    :cond_1
    cmpl-float v4, p2, v6

    if-lez v4, :cond_2

    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    move-result v4

    mul-float v5, v7, p2

    add-float/2addr v4, v5

    iget-object v5, p0, Lcom/sec/android/app/camera/HighlightView;->mImageRect:Landroid/graphics/RectF;

    invoke-virtual {v5}, Landroid/graphics/RectF;->height()F

    move-result v5

    cmpl-float v4, v4, v5

    if-lez v4, :cond_2

    .line 318
    iget-object v4, p0, Lcom/sec/android/app/camera/HighlightView;->mImageRect:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->height()F

    move-result v4

    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    move-result v5

    sub-float/2addr v4, v5

    div-float v0, v4, v7

    .line 319
    .restart local v0       #adjustment:F
    move p2, v0

    .line 320
    iget-boolean v4, p0, Lcom/sec/android/app/camera/HighlightView;->mMaintainAspectRatio:Z

    if-eqz v4, :cond_2

    .line 321
    iget v4, p0, Lcom/sec/android/app/camera/HighlightView;->mInitialAspectRatio:F

    mul-float p1, p2, v4

    .line 325
    .end local v0           #adjustment:F
    :cond_2
    neg-float v4, p1

    neg-float v5, p2

    invoke-virtual {v2, v4, v5}, Landroid/graphics/RectF;->inset(FF)V

    .line 328
    const/high16 v3, 0x41c8

    .line 329
    .local v3, widthCap:F
    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    move-result v4

    cmpg-float v4, v4, v1

    if-gez v4, :cond_3

    .line 330
    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    move-result v4

    sub-float v4, v1, v4

    neg-float v4, v4

    div-float/2addr v4, v7

    invoke-virtual {v2, v4, v6}, Landroid/graphics/RectF;->inset(FF)V

    .line 332
    :cond_3
    iget-boolean v4, p0, Lcom/sec/android/app/camera/HighlightView;->mMaintainAspectRatio:Z

    if-eqz v4, :cond_4

    iget v4, p0, Lcom/sec/android/app/camera/HighlightView;->mInitialAspectRatio:F

    div-float/2addr v1, v4

    .line 335
    .local v1, heightCap:F
    :cond_4
    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    move-result v4

    cmpg-float v4, v4, v1

    if-gez v4, :cond_5

    .line 336
    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    move-result v4

    sub-float v4, v1, v4

    neg-float v4, v4

    div-float/2addr v4, v7

    invoke-virtual {v2, v6, v4}, Landroid/graphics/RectF;->inset(FF)V

    .line 340
    :cond_5
    iget v4, v2, Landroid/graphics/RectF;->left:F

    iget-object v5, p0, Lcom/sec/android/app/camera/HighlightView;->mImageRect:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->left:F

    cmpg-float v4, v4, v5

    if-gez v4, :cond_9

    .line 341
    iget-object v4, p0, Lcom/sec/android/app/camera/HighlightView;->mImageRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->left:F

    iget v5, v2, Landroid/graphics/RectF;->left:F

    sub-float/2addr v4, v5

    invoke-virtual {v2, v4, v6}, Landroid/graphics/RectF;->offset(FF)V

    .line 345
    :cond_6
    :goto_1
    iget v4, v2, Landroid/graphics/RectF;->top:F

    iget-object v5, p0, Lcom/sec/android/app/camera/HighlightView;->mImageRect:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->top:F

    cmpg-float v4, v4, v5

    if-gez v4, :cond_a

    .line 346
    iget-object v4, p0, Lcom/sec/android/app/camera/HighlightView;->mImageRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->top:F

    iget v5, v2, Landroid/graphics/RectF;->top:F

    sub-float/2addr v4, v5

    invoke-virtual {v2, v6, v4}, Landroid/graphics/RectF;->offset(FF)V

    .line 351
    :cond_7
    :goto_2
    iget-object v4, p0, Lcom/sec/android/app/camera/HighlightView;->mCropRect:Landroid/graphics/RectF;

    invoke-virtual {v4, v2}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 352
    invoke-direct {p0}, Lcom/sec/android/app/camera/HighlightView;->computeLayout()Landroid/graphics/Rect;

    move-result-object v4

    iput-object v4, p0, Lcom/sec/android/app/camera/HighlightView;->mDrawRect:Landroid/graphics/Rect;

    .line 353
    iget-object v4, p0, Lcom/sec/android/app/camera/HighlightView;->mActivityContext:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->invalidate()V

    .line 354
    return-void

    .line 301
    .end local v1           #heightCap:F
    .end local v2           #r:Landroid/graphics/RectF;
    .end local v3           #widthCap:F
    :cond_8
    cmpl-float v4, p2, v6

    if-eqz v4, :cond_0

    .line 302
    iget v4, p0, Lcom/sec/android/app/camera/HighlightView;->mInitialAspectRatio:F

    mul-float p1, p2, v4

    goto/16 :goto_0

    .line 342
    .restart local v1       #heightCap:F
    .restart local v2       #r:Landroid/graphics/RectF;
    .restart local v3       #widthCap:F
    :cond_9
    iget v4, v2, Landroid/graphics/RectF;->right:F

    iget-object v5, p0, Lcom/sec/android/app/camera/HighlightView;->mImageRect:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->right:F

    cmpl-float v4, v4, v5

    if-lez v4, :cond_6

    .line 343
    iget v4, v2, Landroid/graphics/RectF;->right:F

    iget-object v5, p0, Lcom/sec/android/app/camera/HighlightView;->mImageRect:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->right:F

    sub-float/2addr v4, v5

    neg-float v4, v4

    invoke-virtual {v2, v4, v6}, Landroid/graphics/RectF;->offset(FF)V

    goto :goto_1

    .line 347
    :cond_a
    iget v4, v2, Landroid/graphics/RectF;->bottom:F

    iget-object v5, p0, Lcom/sec/android/app/camera/HighlightView;->mImageRect:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->bottom:F

    cmpl-float v4, v4, v5

    if-lez v4, :cond_7

    .line 348
    iget v4, v2, Landroid/graphics/RectF;->bottom:F

    iget-object v5, p0, Lcom/sec/android/app/camera/HighlightView;->mImageRect:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v4, v5

    neg-float v4, v4

    invoke-virtual {v2, v6, v4}, Landroid/graphics/RectF;->offset(FF)V

    goto :goto_2
.end method

.method handleMotion(IFF)V
    .locals 7
    .parameter "edge"
    .parameter "dx"
    .parameter "dy"

    .prologue
    const/4 v3, -0x1

    const/4 v4, 0x1

    .line 251
    invoke-direct {p0}, Lcom/sec/android/app/camera/HighlightView;->computeLayout()Landroid/graphics/Rect;

    move-result-object v0

    .line 252
    .local v0, r:Landroid/graphics/Rect;
    if-ne p1, v4, :cond_0

    .line 273
    :goto_0
    return-void

    .line 254
    :cond_0
    const/16 v5, 0x20

    if-ne p1, v5, :cond_1

    .line 256
    iget-object v3, p0, Lcom/sec/android/app/camera/HighlightView;->mCropRect:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->width()F

    move-result v3

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v3, v4

    mul-float/2addr v3, p2

    iget-object v4, p0, Lcom/sec/android/app/camera/HighlightView;->mCropRect:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->height()F

    move-result v4

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v4, v5

    mul-float/2addr v4, p3

    invoke-virtual {p0, v3, v4}, Lcom/sec/android/app/camera/HighlightView;->moveBy(FF)V

    goto :goto_0

    .line 259
    :cond_1
    and-int/lit8 v5, p1, 0x6

    if-nez v5, :cond_2

    .line 260
    const/4 p2, 0x0

    .line 263
    :cond_2
    and-int/lit8 v5, p1, 0x18

    if-nez v5, :cond_3

    .line 264
    const/4 p3, 0x0

    .line 268
    :cond_3
    iget-object v5, p0, Lcom/sec/android/app/camera/HighlightView;->mCropRect:Landroid/graphics/RectF;

    invoke-virtual {v5}, Landroid/graphics/RectF;->width()F

    move-result v5

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v5, v6

    mul-float v1, p2, v5

    .line 269
    .local v1, xDelta:F
    iget-object v5, p0, Lcom/sec/android/app/camera/HighlightView;->mCropRect:Landroid/graphics/RectF;

    invoke-virtual {v5}, Landroid/graphics/RectF;->height()F

    move-result v5

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v5, v6

    mul-float v2, p3, v5

    .line 270
    .local v2, yDelta:F
    and-int/lit8 v5, p1, 0x2

    if-eqz v5, :cond_4

    move v5, v3

    :goto_1
    int-to-float v5, v5

    mul-float/2addr v5, v1

    and-int/lit8 v6, p1, 0x8

    if-eqz v6, :cond_5

    :goto_2
    int-to-float v3, v3

    mul-float/2addr v3, v2

    invoke-virtual {p0, v5, v3}, Lcom/sec/android/app/camera/HighlightView;->growBy(FF)V

    goto :goto_0

    :cond_4
    move v5, v4

    goto :goto_1

    :cond_5
    move v3, v4

    goto :goto_2
.end method

.method public hasFocus()Z
    .locals 1

    .prologue
    .line 69
    iget-boolean v0, p0, Lcom/sec/android/app/camera/HighlightView;->mIsFocused:Z

    return v0
.end method

.method public invalidate()V
    .locals 1

    .prologue
    .line 372
    invoke-direct {p0}, Lcom/sec/android/app/camera/HighlightView;->computeLayout()Landroid/graphics/Rect;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/camera/HighlightView;->mDrawRect:Landroid/graphics/Rect;

    .line 373
    return-void
.end method

.method moveBy(FF)V
    .locals 7
    .parameter "dx"
    .parameter "dy"

    .prologue
    const/16 v6, -0xa

    const/4 v5, 0x0

    .line 277
    new-instance v0, Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/sec/android/app/camera/HighlightView;->mDrawRect:Landroid/graphics/Rect;

    invoke-direct {v0, v1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 279
    .local v0, invalRect:Landroid/graphics/Rect;
    iget-object v1, p0, Lcom/sec/android/app/camera/HighlightView;->mCropRect:Landroid/graphics/RectF;

    invoke-virtual {v1, p1, p2}, Landroid/graphics/RectF;->offset(FF)V

    .line 282
    iget-object v1, p0, Lcom/sec/android/app/camera/HighlightView;->mCropRect:Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/sec/android/app/camera/HighlightView;->mImageRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->left:F

    iget-object v3, p0, Lcom/sec/android/app/camera/HighlightView;->mCropRect:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->left:F

    sub-float/2addr v2, v3

    invoke-static {v5, v2}, Ljava/lang/Math;->max(FF)F

    move-result v2

    iget-object v3, p0, Lcom/sec/android/app/camera/HighlightView;->mImageRect:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->top:F

    iget-object v4, p0, Lcom/sec/android/app/camera/HighlightView;->mCropRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->top:F

    sub-float/2addr v3, v4

    invoke-static {v5, v3}, Ljava/lang/Math;->max(FF)F

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/graphics/RectF;->offset(FF)V

    .line 286
    iget-object v1, p0, Lcom/sec/android/app/camera/HighlightView;->mCropRect:Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/sec/android/app/camera/HighlightView;->mImageRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->right:F

    iget-object v3, p0, Lcom/sec/android/app/camera/HighlightView;->mCropRect:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->right:F

    sub-float/2addr v2, v3

    invoke-static {v5, v2}, Ljava/lang/Math;->min(FF)F

    move-result v2

    iget-object v3, p0, Lcom/sec/android/app/camera/HighlightView;->mImageRect:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->bottom:F

    iget-object v4, p0, Lcom/sec/android/app/camera/HighlightView;->mCropRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v3, v4

    invoke-static {v5, v3}, Ljava/lang/Math;->min(FF)F

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/graphics/RectF;->offset(FF)V

    .line 290
    invoke-direct {p0}, Lcom/sec/android/app/camera/HighlightView;->computeLayout()Landroid/graphics/Rect;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/camera/HighlightView;->mDrawRect:Landroid/graphics/Rect;

    .line 291
    iget-object v1, p0, Lcom/sec/android/app/camera/HighlightView;->mDrawRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->union(Landroid/graphics/Rect;)V

    .line 292
    invoke-virtual {v0, v6, v6}, Landroid/graphics/Rect;->inset(II)V

    .line 293
    iget-object v1, p0, Lcom/sec/android/app/camera/HighlightView;->mActivityContext:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->invalidate(Landroid/graphics/Rect;)V

    .line 294
    return-void
.end method

.method public setFocus(Z)V
    .locals 0
    .parameter "f"

    .prologue
    .line 73
    iput-boolean p1, p0, Lcom/sec/android/app/camera/HighlightView;->mIsFocused:Z

    .line 74
    return-void
.end method

.method public setHidden(Z)V
    .locals 0
    .parameter "hidden"

    .prologue
    .line 77
    iput-boolean p1, p0, Lcom/sec/android/app/camera/HighlightView;->mHidden:Z

    .line 78
    return-void
.end method

.method public setMode(Lcom/sec/android/app/camera/HighlightView$ModifyMode;)V
    .locals 1
    .parameter "mode"

    .prologue
    .line 180
    iget-object v0, p0, Lcom/sec/android/app/camera/HighlightView;->mMode:Lcom/sec/android/app/camera/HighlightView$ModifyMode;

    if-eq p1, v0, :cond_0

    .line 181
    iput-object p1, p0, Lcom/sec/android/app/camera/HighlightView;->mMode:Lcom/sec/android/app/camera/HighlightView$ModifyMode;

    .line 182
    iget-object v0, p0, Lcom/sec/android/app/camera/HighlightView;->mActivityContext:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 184
    :cond_0
    return-void
.end method

.method public setup(Landroid/graphics/Matrix;Landroid/graphics/Rect;Landroid/graphics/RectF;ZZ)V
    .locals 4
    .parameter "m"
    .parameter "imageRect"
    .parameter "cropRect"
    .parameter "circle"
    .parameter "maintainAspectRatio"

    .prologue
    const/16 v3, 0x7d

    const/16 v2, 0x32

    .line 377
    if-eqz p4, :cond_0

    .line 378
    const/4 p5, 0x1

    .line 380
    :cond_0
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0, p1}, Landroid/graphics/Matrix;-><init>(Landroid/graphics/Matrix;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/HighlightView;->mMatrix:Landroid/graphics/Matrix;

    .line 382
    iput-object p3, p0, Lcom/sec/android/app/camera/HighlightView;->mCropRect:Landroid/graphics/RectF;

    .line 383
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0, p2}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/HighlightView;->mImageRect:Landroid/graphics/RectF;

    .line 384
    iput-boolean p5, p0, Lcom/sec/android/app/camera/HighlightView;->mMaintainAspectRatio:Z

    .line 385
    iput-boolean p4, p0, Lcom/sec/android/app/camera/HighlightView;->mCircle:Z

    .line 387
    iget-object v0, p0, Lcom/sec/android/app/camera/HighlightView;->mCropRect:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v0

    iget-object v1, p0, Lcom/sec/android/app/camera/HighlightView;->mCropRect:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->height()F

    move-result v1

    div-float/2addr v0, v1

    iput v0, p0, Lcom/sec/android/app/camera/HighlightView;->mInitialAspectRatio:F

    .line 388
    invoke-direct {p0}, Lcom/sec/android/app/camera/HighlightView;->computeLayout()Landroid/graphics/Rect;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/camera/HighlightView;->mDrawRect:Landroid/graphics/Rect;

    .line 390
    invoke-direct {p0}, Lcom/sec/android/app/camera/HighlightView;->init()V

    .line 392
    iget-object v0, p0, Lcom/sec/android/app/camera/HighlightView;->mFocusPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v3, v2, v2, v2}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 393
    iget-object v0, p0, Lcom/sec/android/app/camera/HighlightView;->mNoFocusPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v3, v2, v2, v2}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 394
    iget-object v0, p0, Lcom/sec/android/app/camera/HighlightView;->mOutlinePaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/sec/android/app/camera/HighlightView;->mOutlineStrokeWidth:F

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 395
    iget-object v0, p0, Lcom/sec/android/app/camera/HighlightView;->mOutlinePaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 396
    iget-object v0, p0, Lcom/sec/android/app/camera/HighlightView;->mOutlinePaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 398
    sget-object v0, Lcom/sec/android/app/camera/HighlightView$ModifyMode;->None:Lcom/sec/android/app/camera/HighlightView$ModifyMode;

    iput-object v0, p0, Lcom/sec/android/app/camera/HighlightView;->mMode:Lcom/sec/android/app/camera/HighlightView$ModifyMode;

    .line 399
    return-void
.end method
