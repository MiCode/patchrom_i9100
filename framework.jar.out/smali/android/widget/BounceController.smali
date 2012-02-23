.class public Landroid/widget/BounceController;
.super Ljava/lang/Object;
.source "BounceController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/BounceController$BounceScrollRunnableDefault;,
        Landroid/widget/BounceController$AwakenScrollBarInterface;,
        Landroid/widget/BounceController$BOUNCETWEENER;,
        Landroid/widget/BounceController$Tweener;,
        Landroid/widget/BounceController$BounceRunnable;
    }
.end annotation


# static fields
.field private static final BOUNCE_EXTENT_ADJUSTMENT:F = 0.5f

.field public static final BOUNCE_FROM_DRAG_DURATION_MAX_DEF:I = 0x190

.field public static final BOUNCE_FROM_DRAG_DURATION_MIN_DEF:I = 0x190

.field public static final BOUNCE_FROM_FLING_DURATION_MAX_DEF:I = 0x258

.field public static final BOUNCE_FROM_FLING_DURATION_MIN_DEF:I = 0x258

.field public static final BOUNCE_RUNNABLE_DEFAULT:I = 0x0

.field public static final BOUNCE_RUNNABLE_NUM:I = 0x1

.field public static final DEBUG_BOUNCE:Z = true

.field public static final DEBUG_SCROLL:Z = false

.field private static final EFFECT_3D_ROTATE:I = 0x1

.field private static final EFFECT_BOUNCE:I = 0x0

.field public static final EXP_COEFFICIENT_1:F = -10.0f

.field public static final EXP_COEFFICIENT_2:F = 26.0f

.field public static final HORIZONTAL:I = 0x0

.field public static final ID_DRAG_MAX:I = 0x1

.field public static final ID_DRAG_MIN:I = 0x0

.field public static final ID_FLING_MAX:I = 0x3

.field public static final ID_FLING_MIN:I = 0x2

.field private static final MAX_BOUNCE_RATIO:F = 0.8f

.field private static final MAX_FLING_SPEED:F = 6000.0f

.field public static final MIN_BOUNCE_EXTENT:F = 1.0f

.field public static final SIN_COEFFICIENT:F = 0.01f

.field public static final TAG:Ljava/lang/String; = "BounceController"

.field public static final TRANSLATE_EDGEGLOW:Z = false

.field public static final VERTICAL:I = 0x1

.field public static mTweener:Landroid/widget/BounceController$Tweener;


# instance fields
.field final MAX_DEGREE:I

.field MAX_SHIFT:F

.field public mBounceDrawInterpolator:Landroid/view/animation/Interpolator;

.field public mBounceEnabled:Z

.field public mBounceExtent:F

.field private mBounceRunnableClasses:[Ljava/lang/Class;

.field private mBounceRunnables:[Landroid/widget/BounceController$BounceRunnable;

.field private mCamera:Landroid/graphics/Camera;

.field private mDurations:[I

.field public mEdgeGlowBottom:Landroid/widget/EdgeEffect;

.field public mEdgeGlowTop:Landroid/widget/EdgeEffect;

.field private mEffectType:I

.field private mMaxBounceExtent:F

.field private mMaxBounceRatio:F

.field private mMaxFlingSpeed:F

.field private mOrientation:I

.field private mScroller:Landroid/widget/OverScroller;

.field private mTempRect:Landroid/graphics/Rect;

.field private mView:Landroid/view/ViewGroup;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 643
    sget-object v0, Landroid/widget/BounceController$BOUNCETWEENER;->QUINT_EASE_IN_OUT:Landroid/widget/BounceController$BOUNCETWEENER;

    invoke-virtual {v0}, Landroid/widget/BounceController$BOUNCETWEENER;->getTweener()Landroid/widget/BounceController$Tweener;

    move-result-object v0

    sput-object v0, Landroid/widget/BounceController;->mTweener:Landroid/widget/BounceController$Tweener;

    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup;)V
    .locals 4
    .parameter "bounceView"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 117
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-boolean v1, p0, Landroid/widget/BounceController;->mBounceEnabled:Z

    .line 28
    iput v3, p0, Landroid/widget/BounceController;->mBounceExtent:F

    .line 37
    iput v1, p0, Landroid/widget/BounceController;->mOrientation:I

    .line 53
    new-instance v0, Landroid/widget/BounceController$1;

    invoke-direct {v0, p0}, Landroid/widget/BounceController$1;-><init>(Landroid/widget/BounceController;)V

    iput-object v0, p0, Landroid/widget/BounceController;->mBounceDrawInterpolator:Landroid/view/animation/Interpolator;

    .line 62
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/widget/BounceController;->mScroller:Landroid/widget/OverScroller;

    .line 72
    new-array v0, v1, [Landroid/widget/BounceController$BounceRunnable;

    iput-object v0, p0, Landroid/widget/BounceController;->mBounceRunnables:[Landroid/widget/BounceController$BounceRunnable;

    .line 78
    new-array v0, v1, [Ljava/lang/Class;

    const-class v1, Landroid/widget/BounceController$BounceScrollRunnableDefault;

    aput-object v1, v0, v2

    iput-object v0, p0, Landroid/widget/BounceController;->mBounceRunnableClasses:[Ljava/lang/Class;

    .line 111
    const/high16 v0, -0x4080

    iput v0, p0, Landroid/widget/BounceController;->MAX_SHIFT:F

    .line 113
    const/16 v0, 0x2d

    iput v0, p0, Landroid/widget/BounceController;->MAX_DEGREE:I

    .line 211
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/widget/BounceController;->mTempRect:Landroid/graphics/Rect;

    .line 217
    iput v2, p0, Landroid/widget/BounceController;->mEffectType:I

    .line 323
    const/4 v0, 0x4

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Landroid/widget/BounceController;->mDurations:[I

    .line 361
    const v0, 0x45bb8000

    iput v0, p0, Landroid/widget/BounceController;->mMaxFlingSpeed:F

    .line 376
    const v0, 0x3f4ccccd

    iput v0, p0, Landroid/widget/BounceController;->mMaxBounceRatio:F

    .line 391
    iput v3, p0, Landroid/widget/BounceController;->mMaxBounceExtent:F

    .line 118
    iput-object p1, p0, Landroid/widget/BounceController;->mView:Landroid/view/ViewGroup;

    .line 120
    iput-boolean v2, p0, Landroid/widget/BounceController;->mBounceEnabled:Z

    .line 121
    new-instance v0, Landroid/graphics/Camera;

    invoke-direct {v0}, Landroid/graphics/Camera;-><init>()V

    iput-object v0, p0, Landroid/widget/BounceController;->mCamera:Landroid/graphics/Camera;

    .line 123
    iget-object v0, p0, Landroid/widget/BounceController;->mView:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getHeight()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Landroid/widget/BounceController;->mMaxBounceRatio:F

    mul-float/2addr v0, v1

    iput v0, p0, Landroid/widget/BounceController;->mMaxBounceExtent:F

    .line 124
    return-void

    .line 323
    nop

    :array_0
    .array-data 0x4
        0x90t 0x1t 0x0t 0x0t
        0x90t 0x1t 0x0t 0x0t
        0x58t 0x2t 0x0t 0x0t
        0x58t 0x2t 0x0t 0x0t
    .end array-data
.end method

.method static synthetic access$000(Landroid/widget/BounceController;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 13
    iget v0, p0, Landroid/widget/BounceController;->mOrientation:I

    return v0
.end method

.method static synthetic access$100(Landroid/widget/BounceController;)Landroid/view/ViewGroup;
    .locals 1
    .parameter "x0"

    .prologue
    .line 13
    iget-object v0, p0, Landroid/widget/BounceController;->mView:Landroid/view/ViewGroup;

    return-object v0
.end method

.method static synthetic access$200(Landroid/widget/BounceController;)[I
    .locals 1
    .parameter "x0"

    .prologue
    .line 13
    iget-object v0, p0, Landroid/widget/BounceController;->mDurations:[I

    return-object v0
.end method

.method static synthetic access$300(Landroid/widget/BounceController;)F
    .locals 1
    .parameter "x0"

    .prologue
    .line 13
    iget v0, p0, Landroid/widget/BounceController;->mMaxFlingSpeed:F

    return v0
.end method

.method static synthetic access$400(Landroid/widget/BounceController;)F
    .locals 1
    .parameter "x0"

    .prologue
    .line 13
    iget v0, p0, Landroid/widget/BounceController;->mMaxBounceRatio:F

    return v0
.end method


# virtual methods
.method public adjustBounceExtent()F
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 394
    iget v1, p0, Landroid/widget/BounceController;->mMaxBounceExtent:F

    cmpg-float v1, v1, v3

    if-gtz v1, :cond_0

    .line 395
    iget v1, p0, Landroid/widget/BounceController;->mOrientation:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    iget-object v1, p0, Landroid/widget/BounceController;->mView:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getHeight()I

    move-result v1

    :goto_0
    int-to-float v1, v1

    iget v2, p0, Landroid/widget/BounceController;->mMaxBounceRatio:F

    mul-float/2addr v1, v2

    iput v1, p0, Landroid/widget/BounceController;->mMaxBounceExtent:F

    .line 400
    :cond_0
    iget v1, p0, Landroid/widget/BounceController;->mBounceExtent:F

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    iget v2, p0, Landroid/widget/BounceController;->mMaxBounceExtent:F

    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 401
    .local v0, extent:F
    iget v1, p0, Landroid/widget/BounceController;->mBounceExtent:F

    cmpg-float v1, v1, v3

    if-gez v1, :cond_1

    .line 402
    const/high16 v1, -0x4080

    mul-float/2addr v0, v1

    .line 404
    :cond_1
    return v0

    .line 395
    .end local v0           #extent:F
    :cond_2
    iget-object v1, p0, Landroid/widget/BounceController;->mView:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getWidth()I

    move-result v1

    goto :goto_0
.end method

.method public bounce(Landroid/graphics/Canvas;Z)I
    .locals 12
    .parameter "canvas"
    .parameter "clipToPadding"

    .prologue
    const/high16 v11, 0x4000

    const/4 v10, 0x0

    .line 222
    iget-boolean v7, p0, Landroid/widget/BounceController;->mBounceEnabled:Z

    if-eqz v7, :cond_4

    iget v7, p0, Landroid/widget/BounceController;->mBounceExtent:F

    cmpl-float v7, v7, v10

    if-eqz v7, :cond_4

    .line 223
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v5

    .line 225
    .local v5, saveCount:I
    invoke-virtual {p0}, Landroid/widget/BounceController;->getCanvasShift()F

    move-result v6

    .line 227
    .local v6, shift:F
    if-eqz p2, :cond_0

    .line 228
    iget-object v7, p0, Landroid/widget/BounceController;->mTempRect:Landroid/graphics/Rect;

    iget-object v8, p0, Landroid/widget/BounceController;->mView:Landroid/view/ViewGroup;

    invoke-virtual {v8}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v8

    iput v8, v7, Landroid/graphics/Rect;->left:I

    .line 229
    iget-object v7, p0, Landroid/widget/BounceController;->mTempRect:Landroid/graphics/Rect;

    iget-object v8, p0, Landroid/widget/BounceController;->mView:Landroid/view/ViewGroup;

    invoke-virtual {v8}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v8

    iput v8, v7, Landroid/graphics/Rect;->top:I

    .line 230
    iget-object v7, p0, Landroid/widget/BounceController;->mTempRect:Landroid/graphics/Rect;

    iget-object v8, p0, Landroid/widget/BounceController;->mView:Landroid/view/ViewGroup;

    invoke-virtual {v8}, Landroid/view/ViewGroup;->getWidth()I

    move-result v8

    iget-object v9, p0, Landroid/widget/BounceController;->mView:Landroid/view/ViewGroup;

    invoke-virtual {v9}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result v9

    sub-int/2addr v8, v9

    iput v8, v7, Landroid/graphics/Rect;->right:I

    .line 231
    iget-object v7, p0, Landroid/widget/BounceController;->mTempRect:Landroid/graphics/Rect;

    iget-object v8, p0, Landroid/widget/BounceController;->mView:Landroid/view/ViewGroup;

    invoke-virtual {v8}, Landroid/view/ViewGroup;->getHeight()I

    move-result v8

    iget-object v9, p0, Landroid/widget/BounceController;->mView:Landroid/view/ViewGroup;

    invoke-virtual {v9}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result v9

    sub-int/2addr v8, v9

    iput v8, v7, Landroid/graphics/Rect;->bottom:I

    .line 232
    iget-object v7, p0, Landroid/widget/BounceController;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v7}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;)Z

    .line 234
    iget-object v7, p0, Landroid/widget/BounceController;->mView:Landroid/view/ViewGroup;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/view/ViewGroup;->setClipToPadding(Z)V

    .line 238
    :cond_0
    iget v7, p0, Landroid/widget/BounceController;->mEffectType:I

    packed-switch v7, :pswitch_data_0

    .line 273
    .end local v5           #saveCount:I
    .end local v6           #shift:F
    :goto_0
    return v5

    .line 240
    .restart local v5       #saveCount:I
    .restart local v6       #shift:F
    :pswitch_0
    iget v7, p0, Landroid/widget/BounceController;->mOrientation:I

    if-nez v7, :cond_1

    .line 241
    invoke-virtual {p1, v6, v10}, Landroid/graphics/Canvas;->translate(FF)V

    goto :goto_0

    .line 243
    :cond_1
    invoke-virtual {p1, v10, v6}, Landroid/graphics/Canvas;->translate(FF)V

    goto :goto_0

    .line 247
    :pswitch_1
    iget v7, p0, Landroid/widget/BounceController;->MAX_SHIFT:F

    cmpg-float v7, v7, v10

    if-gtz v7, :cond_2

    .line 248
    iget-object v7, p0, Landroid/widget/BounceController;->mView:Landroid/view/ViewGroup;

    invoke-virtual {v7}, Landroid/view/ViewGroup;->getWidth()I

    move-result v7

    int-to-float v7, v7

    div-float/2addr v7, v11

    iput v7, p0, Landroid/widget/BounceController;->MAX_SHIFT:F

    .line 249
    :cond_2
    const/high16 v7, 0x4234

    mul-float/2addr v7, v6

    iget v8, p0, Landroid/widget/BounceController;->MAX_SHIFT:F

    div-float v1, v7, v8

    .line 250
    .local v1, degrees:F
    iget-object v7, p0, Landroid/widget/BounceController;->mView:Landroid/view/ViewGroup;

    invoke-virtual {v7}, Landroid/view/ViewGroup;->getWidth()I

    move-result v7

    int-to-float v7, v7

    div-float v3, v7, v11

    .line 251
    .local v3, px:F
    iget-object v7, p0, Landroid/widget/BounceController;->mView:Landroid/view/ViewGroup;

    invoke-virtual {v7}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v7

    int-to-float v4, v7

    .line 252
    .local v4, py:F
    iget-object v7, p0, Landroid/widget/BounceController;->mView:Landroid/view/ViewGroup;

    invoke-virtual {v7}, Landroid/view/ViewGroup;->getHeight()I

    move-result v7

    int-to-float v7, v7

    div-float/2addr v7, v11

    add-float/2addr v4, v7

    .line 254
    iget-object v0, p0, Landroid/widget/BounceController;->mCamera:Landroid/graphics/Camera;

    .line 255
    .local v0, camera:Landroid/graphics/Camera;
    invoke-virtual {v0}, Landroid/graphics/Camera;->save()V

    .line 256
    new-instance v2, Landroid/graphics/Matrix;

    invoke-direct {v2}, Landroid/graphics/Matrix;-><init>()V

    .line 257
    .local v2, matrix:Landroid/graphics/Matrix;
    invoke-virtual {v2}, Landroid/graphics/Matrix;->reset()V

    .line 258
    iget v7, p0, Landroid/widget/BounceController;->mOrientation:I

    if-nez v7, :cond_3

    .line 259
    invoke-virtual {v0, v1}, Landroid/graphics/Camera;->rotateY(F)V

    .line 263
    :goto_1
    invoke-virtual {v0, v2}, Landroid/graphics/Camera;->getMatrix(Landroid/graphics/Matrix;)V

    .line 264
    neg-float v7, v3

    neg-float v8, v4

    invoke-virtual {v2, v7, v8}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    .line 265
    invoke-virtual {v2, v3, v4}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 266
    invoke-virtual {v0}, Landroid/graphics/Camera;->restore()V

    .line 267
    invoke-virtual {p1, v2}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    goto :goto_0

    .line 261
    :cond_3
    invoke-virtual {v0, v1}, Landroid/graphics/Camera;->rotateX(F)V

    goto :goto_1

    .line 273
    .end local v0           #camera:Landroid/graphics/Camera;
    .end local v1           #degrees:F
    .end local v2           #matrix:Landroid/graphics/Matrix;
    .end local v3           #px:F
    .end local v4           #py:F
    .end local v5           #saveCount:I
    .end local v6           #shift:F
    :cond_4
    const/4 v5, -0x1

    goto :goto_0

    .line 238
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public getBounceExtentRatio()F
    .locals 2

    .prologue
    .line 408
    iget v0, p0, Landroid/widget/BounceController;->mBounceExtent:F

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget v1, p0, Landroid/widget/BounceController;->mMaxBounceExtent:F

    div-float/2addr v0, v1

    return v0
.end method

.method public getBounceRunnable(I)Landroid/widget/BounceController$BounceRunnable;
    .locals 1
    .parameter "id"

    .prologue
    .line 84
    if-nez p1, :cond_0

    .line 85
    new-instance v0, Landroid/widget/BounceController$BounceScrollRunnableDefault;

    invoke-direct {v0, p0}, Landroid/widget/BounceController$BounceScrollRunnableDefault;-><init>(Landroid/widget/BounceController;)V

    .line 88
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getBounceRunnable(III)Landroid/widget/BounceController$BounceRunnable;
    .locals 1
    .parameter "id"
    .parameter "dragInterpolator"
    .parameter "flingInterpolator"

    .prologue
    .line 92
    if-nez p1, :cond_0

    .line 93
    new-instance v0, Landroid/widget/BounceController$BounceScrollRunnableDefault;

    invoke-direct {v0, p0}, Landroid/widget/BounceController$BounceScrollRunnableDefault;-><init>(Landroid/widget/BounceController;)V

    .line 96
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getCanvasShift()F
    .locals 4

    .prologue
    const/high16 v3, 0x3f00

    .line 200
    invoke-virtual {p0}, Landroid/widget/BounceController;->adjustBounceExtent()F

    move-result v1

    mul-float v0, v3, v1

    .line 202
    .local v0, shift:F
    iget v1, p0, Landroid/widget/BounceController;->mBounceExtent:F

    const/4 v2, 0x0

    cmpg-float v1, v1, v2

    if-gez v1, :cond_0

    .line 203
    const/high16 v1, -0x4080

    mul-float/2addr v0, v1

    .line 208
    :cond_0
    mul-float v1, v0, v3

    return v1
.end method

.method public getDuration(I)I
    .locals 1
    .parameter "durationId"

    .prologue
    .line 329
    iget-object v0, p0, Landroid/widget/BounceController;->mDurations:[I

    aget v0, v0, p1

    return v0
.end method

.method public getEdgeGlowMaxScale()F
    .locals 1

    .prologue
    .line 144
    iget-object v0, p0, Landroid/widget/BounceController;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    if-eqz v0, :cond_0

    .line 145
    iget-object v0, p0, Landroid/widget/BounceController;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    sget v0, Landroid/widget/EdgeEffect;->MAX_GLOW_SCALE_Y:F

    .line 147
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getMaxBounceRatio()F
    .locals 1

    .prologue
    .line 379
    iget v0, p0, Landroid/widget/BounceController;->mMaxBounceRatio:F

    return v0
.end method

.method public getMaxFlingSpeed()F
    .locals 1

    .prologue
    .line 364
    iget v0, p0, Landroid/widget/BounceController;->mMaxFlingSpeed:F

    return v0
.end method

.method public getOrientation()I
    .locals 1

    .prologue
    .line 50
    iget v0, p0, Landroid/widget/BounceController;->mOrientation:I

    return v0
.end method

.method public isBounceEnabled()Z
    .locals 1

    .prologue
    .line 165
    iget-boolean v0, p0, Landroid/widget/BounceController;->mBounceEnabled:Z

    return v0
.end method

.method public makeScroller()Landroid/widget/OverScroller;
    .locals 2

    .prologue
    .line 177
    new-instance v0, Landroid/widget/OverScroller;

    iget-object v1, p0, Landroid/widget/BounceController;->mView:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/OverScroller;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroid/widget/BounceController;->mScroller:Landroid/widget/OverScroller;

    .line 180
    iget-object v0, p0, Landroid/widget/BounceController;->mScroller:Landroid/widget/OverScroller;

    return-object v0
.end method

.method public setDuration(II)V
    .locals 3
    .parameter "durationId"
    .parameter "duration"

    .prologue
    .line 333
    if-gez p2, :cond_0

    .line 334
    const-string v0, "BounceController"

    const-string v1, "Duration must be longer than 0."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 359
    :goto_0
    return-void

    .line 338
    :cond_0
    iget-object v0, p0, Landroid/widget/BounceController;->mDurations:[I

    array-length v0, v0

    if-ge p1, v0, :cond_1

    if-gez p1, :cond_2

    .line 339
    :cond_1
    const-string v0, "BounceController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Duration with id("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") doens\'t exist."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 343
    :cond_2
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 352
    :cond_3
    :pswitch_0
    iget-object v0, p0, Landroid/widget/BounceController;->mDurations:[I

    aput p2, v0, p1

    goto :goto_0

    .line 346
    :pswitch_1
    iget-object v0, p0, Landroid/widget/BounceController;->mDurations:[I

    aget v0, v0, p1

    iget-object v1, p0, Landroid/widget/BounceController;->mDurations:[I

    add-int/lit8 v2, p1, -0x1

    aget v1, v1, v2

    if-ge v0, v1, :cond_3

    .line 347
    const-string v0, "BounceController"

    const-string v1, "Max value cannot be smaller than Min value."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 343
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public setEdgeEffects(Landroid/widget/EdgeEffect;Landroid/widget/EdgeEffect;)V
    .locals 1
    .parameter "top"
    .parameter "bottom"

    .prologue
    .line 127
    iput-object p1, p0, Landroid/widget/BounceController;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    .line 128
    iput-object p2, p0, Landroid/widget/BounceController;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    .line 130
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 131
    iget-boolean v0, p0, Landroid/widget/BounceController;->mBounceEnabled:Z

    invoke-virtual {p1, v0}, Landroid/widget/EdgeEffect;->setTouchWiz(Z)V

    .line 132
    iget-boolean v0, p0, Landroid/widget/BounceController;->mBounceEnabled:Z

    invoke-virtual {p2, v0}, Landroid/widget/EdgeEffect;->setTouchWiz(Z)V

    .line 134
    :cond_0
    return-void
.end method

.method public setEdgeGlowMaxScale(F)V
    .locals 1
    .parameter "maxScale"

    .prologue
    .line 137
    iget-object v0, p0, Landroid/widget/BounceController;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    if-eqz v0, :cond_0

    .line 138
    iget-object v0, p0, Landroid/widget/BounceController;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    sput p1, Landroid/widget/EdgeEffect;->MAX_GLOW_SCALE_Y:F

    .line 139
    iget-object v0, p0, Landroid/widget/BounceController;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    sput p1, Landroid/widget/EdgeEffect;->MAX_GLOW_SCALE_Y:F

    .line 141
    :cond_0
    return-void
.end method

.method public setEnableBounce(Z)V
    .locals 0
    .parameter "enable"

    .prologue
    .line 156
    iput-boolean p1, p0, Landroid/widget/BounceController;->mBounceEnabled:Z

    .line 157
    return-void
.end method

.method public setMaxBounceRatio(F)V
    .locals 2
    .parameter "ratio"

    .prologue
    .line 383
    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-ltz v0, :cond_0

    const/high16 v0, 0x3f80

    cmpl-float v0, p1, v0

    if-lez v0, :cond_1

    .line 384
    :cond_0
    const-string v0, "BounceController"

    const-string v1, "Bounce ratio must be within (0, 1)."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 389
    :goto_0
    return-void

    .line 388
    :cond_1
    iput p1, p0, Landroid/widget/BounceController;->mMaxBounceRatio:F

    goto :goto_0
.end method

.method public setMaxFlingSpeed(F)V
    .locals 2
    .parameter "maxSpeed"

    .prologue
    .line 368
    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-gez v0, :cond_0

    .line 369
    const-string v0, "BounceController"

    const-string v1, "Maximum Fling Speed must be larger than 0."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 374
    :goto_0
    return-void

    .line 373
    :cond_0
    iput p1, p0, Landroid/widget/BounceController;->mMaxFlingSpeed:F

    goto :goto_0
.end method

.method public setOrientation(I)V
    .locals 2
    .parameter "orientation"

    .prologue
    .line 40
    iget v0, p0, Landroid/widget/BounceController;->mOrientation:I

    if-eq v0, p1, :cond_0

    .line 41
    iput p1, p0, Landroid/widget/BounceController;->mOrientation:I

    .line 43
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    iget-object v0, p0, Landroid/widget/BounceController;->mView:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getHeight()I

    move-result v0

    :goto_0
    int-to-float v0, v0

    iget v1, p0, Landroid/widget/BounceController;->mMaxBounceRatio:F

    mul-float/2addr v0, v1

    iput v0, p0, Landroid/widget/BounceController;->mMaxBounceExtent:F

    .line 47
    :cond_0
    return-void

    .line 43
    :cond_1
    iget-object v0, p0, Landroid/widget/BounceController;->mView:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v0

    goto :goto_0
.end method
