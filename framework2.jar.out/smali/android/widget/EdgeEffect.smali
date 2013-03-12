.class public Landroid/widget/EdgeEffect;
.super Ljava/lang/Object;
.source "EdgeEffect.java"


# static fields
.field private static final EPSILON:F = 0.0010f

.field private static final HELD_EDGE_SCALE_Y:F = 1.0f

.field private static final MAX_ALPHA:F = 1.0f

.field private static final MAX_GLOW_HEIGHT:F = 6.0f

.field private static final MIN_VELOCITY:I = 0x64

.field private static final MIN_WIDTH:I = 0xdc

.field private static final PULL_DECAY_TIME:I = 0x3e8

.field private static final PULL_DISTANCE_ALPHA_GLOW_FACTOR:F = 1.1f

.field private static final PULL_DISTANCE_EDGE_FACTOR:I = 0x7

.field private static final PULL_DISTANCE_GLOW_FACTOR:I = 0x10

.field private static final PULL_EDGE_BEGIN:F = 0.6f

.field private static final PULL_GLOW_BEGIN:F = 1.0f

.field private static final PULL_TIME:I = 0xa7

.field private static final RECEDE_TIME:I = 0x3e8

.field private static final STATE_ABSORB:I = 0x2

.field private static final STATE_IDLE:I = 0x0

.field private static final STATE_PULL:I = 0x1

.field private static final STATE_PULL_DECAY:I = 0x4

.field private static final STATE_RECEDE:I = 0x3

.field private static final TAG:Ljava/lang/String; = "EdgeEffect"

.field private static final VELOCITY_EDGE_FACTOR:I = 0x8

.field private static final VELOCITY_GLOW_FACTOR:I = 0x10


# instance fields
.field private final mBounds:Landroid/graphics/Rect;

.field private mDuration:F

.field private final mEdge:Landroid/graphics/drawable/Drawable;

.field private mEdgeAlpha:F

.field private mEdgeAlphaFinish:F

.field private mEdgeAlphaStart:F

.field private final mEdgeHeight:I

.field private mEdgeScaleY:F

.field private mEdgeScaleYFinish:F

.field private mEdgeScaleYStart:F

.field private final mGlow:Landroid/graphics/drawable/Drawable;

.field private mGlowAlpha:F

.field private mGlowAlphaFinish:F

.field private mGlowAlphaStart:F

.field private final mGlowHeight:I

.field private mGlowScaleY:F

.field private mGlowScaleYFinish:F

.field private mGlowScaleYStart:F

.field private final mGlowWidth:I

.field private mHeight:I

.field private final mInterpolator:Landroid/view/animation/Interpolator;

.field private final mMaxEffectHeight:I

.field private final mMinWidth:I

.field private mPullDistance:F

.field private mStartTime:J

.field private mState:I

.field private mWidth:I

.field private mX:I

.field private mY:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 5
    .parameter "context"

    .prologue
    const/high16 v4, 0x40c0

    const/high16 v3, 0x3f00

    .line 144
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 129
    const/4 v1, 0x0

    iput v1, p0, Landroid/widget/EdgeEffect;->mState:I

    .line 133
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Landroid/widget/EdgeEffect;->mBounds:Landroid/graphics/Rect;

    .line 145
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 146
    .local v0, res:Landroid/content/res/Resources;
    const v1, 0x108058b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Landroid/widget/EdgeEffect;->mEdge:Landroid/graphics/drawable/Drawable;

    .line 147
    const v1, 0x108058c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Landroid/widget/EdgeEffect;->mGlow:Landroid/graphics/drawable/Drawable;

    .line 149
    iget-object v1, p0, Landroid/widget/EdgeEffect;->mEdge:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    iput v1, p0, Landroid/widget/EdgeEffect;->mEdgeHeight:I

    .line 150
    iget-object v1, p0, Landroid/widget/EdgeEffect;->mGlow:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    iput v1, p0, Landroid/widget/EdgeEffect;->mGlowHeight:I

    .line 151
    iget-object v1, p0, Landroid/widget/EdgeEffect;->mGlow:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    iput v1, p0, Landroid/widget/EdgeEffect;->mGlowWidth:I

    .line 153
    iget v1, p0, Landroid/widget/EdgeEffect;->mGlowHeight:I

    int-to-float v1, v1

    mul-float/2addr v1, v4

    iget v2, p0, Landroid/widget/EdgeEffect;->mGlowHeight:I

    int-to-float v2, v2

    mul-float/2addr v1, v2

    iget v2, p0, Landroid/widget/EdgeEffect;->mGlowWidth:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    const v2, 0x3f19999a

    mul-float/2addr v1, v2

    iget v2, p0, Landroid/widget/EdgeEffect;->mGlowHeight:I

    int-to-float v2, v2

    mul-float/2addr v2, v4

    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v1

    add-float/2addr v1, v3

    float-to-int v1, v1

    iput v1, p0, Landroid/widget/EdgeEffect;->mMaxEffectHeight:I

    .line 157
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    const/high16 v2, 0x435c

    mul-float/2addr v1, v2

    add-float/2addr v1, v3

    float-to-int v1, v1

    iput v1, p0, Landroid/widget/EdgeEffect;->mMinWidth:I

    .line 158
    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    iput-object v1, p0, Landroid/widget/EdgeEffect;->mInterpolator:Landroid/view/animation/Interpolator;

    .line 159
    return-void
.end method

.method private update()V
    .locals 12

    .prologue
    const/4 v11, 0x3

    const/high16 v10, 0x447a

    const/high16 v9, 0x3f80

    const/4 v8, 0x0

    .line 399
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v3

    .line 400
    .local v3, time:J
    iget-wide v5, p0, Landroid/widget/EdgeEffect;->mStartTime:J

    sub-long v5, v3, v5

    long-to-float v5, v5

    iget v6, p0, Landroid/widget/EdgeEffect;->mDuration:F

    div-float/2addr v5, v6

    invoke-static {v5, v9}, Ljava/lang/Math;->min(FF)F

    move-result v2

    .line 402
    .local v2, t:F
    iget-object v5, p0, Landroid/widget/EdgeEffect;->mInterpolator:Landroid/view/animation/Interpolator;

    invoke-interface {v5, v2}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v1

    .line 404
    .local v1, interp:F
    iget v5, p0, Landroid/widget/EdgeEffect;->mEdgeAlphaStart:F

    iget v6, p0, Landroid/widget/EdgeEffect;->mEdgeAlphaFinish:F

    iget v7, p0, Landroid/widget/EdgeEffect;->mEdgeAlphaStart:F

    sub-float/2addr v6, v7

    mul-float/2addr v6, v1

    add-float/2addr v5, v6

    iput v5, p0, Landroid/widget/EdgeEffect;->mEdgeAlpha:F

    .line 405
    iget v5, p0, Landroid/widget/EdgeEffect;->mEdgeScaleYStart:F

    iget v6, p0, Landroid/widget/EdgeEffect;->mEdgeScaleYFinish:F

    iget v7, p0, Landroid/widget/EdgeEffect;->mEdgeScaleYStart:F

    sub-float/2addr v6, v7

    mul-float/2addr v6, v1

    add-float/2addr v5, v6

    iput v5, p0, Landroid/widget/EdgeEffect;->mEdgeScaleY:F

    .line 406
    iget v5, p0, Landroid/widget/EdgeEffect;->mGlowAlphaStart:F

    iget v6, p0, Landroid/widget/EdgeEffect;->mGlowAlphaFinish:F

    iget v7, p0, Landroid/widget/EdgeEffect;->mGlowAlphaStart:F

    sub-float/2addr v6, v7

    mul-float/2addr v6, v1

    add-float/2addr v5, v6

    iput v5, p0, Landroid/widget/EdgeEffect;->mGlowAlpha:F

    .line 407
    iget v5, p0, Landroid/widget/EdgeEffect;->mGlowScaleYStart:F

    iget v6, p0, Landroid/widget/EdgeEffect;->mGlowScaleYFinish:F

    iget v7, p0, Landroid/widget/EdgeEffect;->mGlowScaleYStart:F

    sub-float/2addr v6, v7

    mul-float/2addr v6, v1

    add-float/2addr v5, v6

    iput v5, p0, Landroid/widget/EdgeEffect;->mGlowScaleY:F

    .line 409
    const v5, 0x3f7fbe77

    cmpl-float v5, v2, v5

    if-ltz v5, :cond_0

    .line 410
    iget v5, p0, Landroid/widget/EdgeEffect;->mState:I

    packed-switch v5, :pswitch_data_0

    .line 459
    :cond_0
    :goto_0
    return-void

    .line 412
    :pswitch_0
    iput v11, p0, Landroid/widget/EdgeEffect;->mState:I

    .line 413
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v5

    iput-wide v5, p0, Landroid/widget/EdgeEffect;->mStartTime:J

    .line 414
    iput v10, p0, Landroid/widget/EdgeEffect;->mDuration:F

    .line 416
    iget v5, p0, Landroid/widget/EdgeEffect;->mEdgeAlpha:F

    iput v5, p0, Landroid/widget/EdgeEffect;->mEdgeAlphaStart:F

    .line 417
    iget v5, p0, Landroid/widget/EdgeEffect;->mEdgeScaleY:F

    iput v5, p0, Landroid/widget/EdgeEffect;->mEdgeScaleYStart:F

    .line 418
    iget v5, p0, Landroid/widget/EdgeEffect;->mGlowAlpha:F

    iput v5, p0, Landroid/widget/EdgeEffect;->mGlowAlphaStart:F

    .line 419
    iget v5, p0, Landroid/widget/EdgeEffect;->mGlowScaleY:F

    iput v5, p0, Landroid/widget/EdgeEffect;->mGlowScaleYStart:F

    .line 422
    iput v8, p0, Landroid/widget/EdgeEffect;->mEdgeAlphaFinish:F

    .line 423
    iput v8, p0, Landroid/widget/EdgeEffect;->mEdgeScaleYFinish:F

    .line 424
    iput v8, p0, Landroid/widget/EdgeEffect;->mGlowAlphaFinish:F

    .line 425
    iput v8, p0, Landroid/widget/EdgeEffect;->mGlowScaleYFinish:F

    goto :goto_0

    .line 428
    :pswitch_1
    const/4 v5, 0x4

    iput v5, p0, Landroid/widget/EdgeEffect;->mState:I

    .line 429
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v5

    iput-wide v5, p0, Landroid/widget/EdgeEffect;->mStartTime:J

    .line 430
    iput v10, p0, Landroid/widget/EdgeEffect;->mDuration:F

    .line 432
    iget v5, p0, Landroid/widget/EdgeEffect;->mEdgeAlpha:F

    iput v5, p0, Landroid/widget/EdgeEffect;->mEdgeAlphaStart:F

    .line 433
    iget v5, p0, Landroid/widget/EdgeEffect;->mEdgeScaleY:F

    iput v5, p0, Landroid/widget/EdgeEffect;->mEdgeScaleYStart:F

    .line 434
    iget v5, p0, Landroid/widget/EdgeEffect;->mGlowAlpha:F

    iput v5, p0, Landroid/widget/EdgeEffect;->mGlowAlphaStart:F

    .line 435
    iget v5, p0, Landroid/widget/EdgeEffect;->mGlowScaleY:F

    iput v5, p0, Landroid/widget/EdgeEffect;->mGlowScaleYStart:F

    .line 438
    iput v8, p0, Landroid/widget/EdgeEffect;->mEdgeAlphaFinish:F

    .line 439
    iput v8, p0, Landroid/widget/EdgeEffect;->mEdgeScaleYFinish:F

    .line 440
    iput v8, p0, Landroid/widget/EdgeEffect;->mGlowAlphaFinish:F

    .line 441
    iput v8, p0, Landroid/widget/EdgeEffect;->mGlowScaleYFinish:F

    goto :goto_0

    .line 446
    :pswitch_2
    iget v5, p0, Landroid/widget/EdgeEffect;->mGlowScaleYFinish:F

    cmpl-float v5, v5, v8

    if-eqz v5, :cond_1

    iget v5, p0, Landroid/widget/EdgeEffect;->mGlowScaleYFinish:F

    iget v6, p0, Landroid/widget/EdgeEffect;->mGlowScaleYFinish:F

    mul-float/2addr v5, v6

    div-float v0, v9, v5

    .line 449
    .local v0, factor:F
    :goto_1
    iget v5, p0, Landroid/widget/EdgeEffect;->mEdgeScaleYStart:F

    iget v6, p0, Landroid/widget/EdgeEffect;->mEdgeScaleYFinish:F

    iget v7, p0, Landroid/widget/EdgeEffect;->mEdgeScaleYStart:F

    sub-float/2addr v6, v7

    mul-float/2addr v6, v1

    mul-float/2addr v6, v0

    add-float/2addr v5, v6

    iput v5, p0, Landroid/widget/EdgeEffect;->mEdgeScaleY:F

    .line 452
    iput v11, p0, Landroid/widget/EdgeEffect;->mState:I

    goto :goto_0

    .line 446
    .end local v0           #factor:F
    :cond_1
    const v0, 0x7f7fffff

    goto :goto_1

    .line 455
    :pswitch_3
    const/4 v5, 0x0

    iput v5, p0, Landroid/widget/EdgeEffect;->mState:I

    goto :goto_0

    .line 410
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)Z
    .locals 11
    .parameter "canvas"

    .prologue
    const/high16 v10, 0x437f

    const/high16 v9, 0x3f80

    const/4 v8, 0x0

    const/4 v4, 0x0

    .line 348
    invoke-direct {p0}, Landroid/widget/EdgeEffect;->update()V

    .line 350
    iget-object v5, p0, Landroid/widget/EdgeEffect;->mGlow:Landroid/graphics/drawable/Drawable;

    iget v6, p0, Landroid/widget/EdgeEffect;->mGlowAlpha:F

    invoke-static {v6, v9}, Ljava/lang/Math;->min(FF)F

    move-result v6

    invoke-static {v8, v6}, Ljava/lang/Math;->max(FF)F

    move-result v6

    mul-float/2addr v6, v10

    float-to-int v6, v6

    invoke-virtual {v5, v6}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 352
    iget v5, p0, Landroid/widget/EdgeEffect;->mGlowHeight:I

    int-to-float v5, v5

    iget v6, p0, Landroid/widget/EdgeEffect;->mGlowScaleY:F

    mul-float/2addr v5, v6

    iget v6, p0, Landroid/widget/EdgeEffect;->mGlowHeight:I

    int-to-float v6, v6

    mul-float/2addr v5, v6

    iget v6, p0, Landroid/widget/EdgeEffect;->mGlowWidth:I

    int-to-float v6, v6

    div-float/2addr v5, v6

    const v6, 0x3f19999a

    mul-float/2addr v5, v6

    iget v6, p0, Landroid/widget/EdgeEffect;->mGlowHeight:I

    int-to-float v6, v6

    const/high16 v7, 0x40c0

    mul-float/2addr v6, v7

    invoke-static {v5, v6}, Ljava/lang/Math;->min(FF)F

    move-result v5

    float-to-int v2, v5

    .line 355
    .local v2, glowBottom:I
    iget v5, p0, Landroid/widget/EdgeEffect;->mWidth:I

    iget v6, p0, Landroid/widget/EdgeEffect;->mMinWidth:I

    if-ge v5, v6, :cond_2

    .line 357
    iget v5, p0, Landroid/widget/EdgeEffect;->mWidth:I

    iget v6, p0, Landroid/widget/EdgeEffect;->mMinWidth:I

    sub-int/2addr v5, v6

    div-int/lit8 v3, v5, 0x2

    .line 358
    .local v3, glowLeft:I
    iget-object v5, p0, Landroid/widget/EdgeEffect;->mGlow:Landroid/graphics/drawable/Drawable;

    iget v6, p0, Landroid/widget/EdgeEffect;->mWidth:I

    sub-int/2addr v6, v3

    invoke-virtual {v5, v3, v4, v6, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 364
    .end local v3           #glowLeft:I
    :goto_0
    iget-object v5, p0, Landroid/widget/EdgeEffect;->mGlow:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 366
    iget-object v5, p0, Landroid/widget/EdgeEffect;->mEdge:Landroid/graphics/drawable/Drawable;

    iget v6, p0, Landroid/widget/EdgeEffect;->mEdgeAlpha:F

    invoke-static {v6, v9}, Ljava/lang/Math;->min(FF)F

    move-result v6

    invoke-static {v8, v6}, Ljava/lang/Math;->max(FF)F

    move-result v6

    mul-float/2addr v6, v10

    float-to-int v6, v6

    invoke-virtual {v5, v6}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 368
    iget v5, p0, Landroid/widget/EdgeEffect;->mEdgeHeight:I

    int-to-float v5, v5

    iget v6, p0, Landroid/widget/EdgeEffect;->mEdgeScaleY:F

    mul-float/2addr v5, v6

    float-to-int v0, v5

    .line 369
    .local v0, edgeBottom:I
    iget v5, p0, Landroid/widget/EdgeEffect;->mWidth:I

    iget v6, p0, Landroid/widget/EdgeEffect;->mMinWidth:I

    if-ge v5, v6, :cond_3

    .line 371
    iget v5, p0, Landroid/widget/EdgeEffect;->mWidth:I

    iget v6, p0, Landroid/widget/EdgeEffect;->mMinWidth:I

    sub-int/2addr v5, v6

    div-int/lit8 v1, v5, 0x2

    .line 372
    .local v1, edgeLeft:I
    iget-object v5, p0, Landroid/widget/EdgeEffect;->mEdge:Landroid/graphics/drawable/Drawable;

    iget v6, p0, Landroid/widget/EdgeEffect;->mWidth:I

    sub-int/2addr v6, v1

    invoke-virtual {v5, v1, v4, v6, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 377
    .end local v1           #edgeLeft:I
    :goto_1
    iget-object v5, p0, Landroid/widget/EdgeEffect;->mEdge:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 379
    iget v5, p0, Landroid/widget/EdgeEffect;->mState:I

    const/4 v6, 0x3

    if-ne v5, v6, :cond_0

    if-nez v2, :cond_0

    if-nez v0, :cond_0

    .line 380
    iput v4, p0, Landroid/widget/EdgeEffect;->mState:I

    .line 383
    :cond_0
    iget v5, p0, Landroid/widget/EdgeEffect;->mState:I

    if-eqz v5, :cond_1

    const/4 v4, 0x1

    :cond_1
    return v4

    .line 361
    .end local v0           #edgeBottom:I
    :cond_2
    iget-object v5, p0, Landroid/widget/EdgeEffect;->mGlow:Landroid/graphics/drawable/Drawable;

    iget v6, p0, Landroid/widget/EdgeEffect;->mWidth:I

    invoke-virtual {v5, v4, v4, v6, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    goto :goto_0

    .line 375
    .restart local v0       #edgeBottom:I
    :cond_3
    iget-object v5, p0, Landroid/widget/EdgeEffect;->mEdge:Landroid/graphics/drawable/Drawable;

    iget v6, p0, Landroid/widget/EdgeEffect;->mWidth:I

    invoke-virtual {v5, v4, v4, v6, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    goto :goto_1
.end method

.method public finish()V
    .locals 1

    .prologue
    .line 200
    const/4 v0, 0x0

    iput v0, p0, Landroid/widget/EdgeEffect;->mState:I

    .line 201
    return-void
.end method

.method public getBounds(Z)Landroid/graphics/Rect;
    .locals 4
    .parameter "reverse"

    .prologue
    const/4 v0, 0x0

    .line 392
    iget-object v1, p0, Landroid/widget/EdgeEffect;->mBounds:Landroid/graphics/Rect;

    iget v2, p0, Landroid/widget/EdgeEffect;->mWidth:I

    iget v3, p0, Landroid/widget/EdgeEffect;->mMaxEffectHeight:I

    invoke-virtual {v1, v0, v0, v2, v3}, Landroid/graphics/Rect;->set(IIII)V

    .line 393
    iget-object v1, p0, Landroid/widget/EdgeEffect;->mBounds:Landroid/graphics/Rect;

    iget v2, p0, Landroid/widget/EdgeEffect;->mX:I

    iget v3, p0, Landroid/widget/EdgeEffect;->mY:I

    if-eqz p1, :cond_0

    iget v0, p0, Landroid/widget/EdgeEffect;->mMaxEffectHeight:I

    :cond_0
    sub-int v0, v3, v0

    invoke-virtual {v1, v2, v0}, Landroid/graphics/Rect;->offset(II)V

    .line 395
    iget-object v0, p0, Landroid/widget/EdgeEffect;->mBounds:Landroid/graphics/Rect;

    return-object v0
.end method

.method public isFinished()Z
    .locals 1

    .prologue
    .line 192
    iget v0, p0, Landroid/widget/EdgeEffect;->mState:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onAbsorb(I)V
    .locals 5
    .parameter "velocity"

    .prologue
    const/high16 v4, 0x3f80

    const/4 v3, 0x0

    .line 299
    const/4 v0, 0x2

    iput v0, p0, Landroid/widget/EdgeEffect;->mState:I

    .line 300
    const/16 v0, 0x64

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 302
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/widget/EdgeEffect;->mStartTime:J

    .line 303
    const v0, 0x3dcccccd

    int-to-float v1, p1

    const v2, 0x3cf5c28f

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p0, Landroid/widget/EdgeEffect;->mDuration:F

    .line 307
    iput v3, p0, Landroid/widget/EdgeEffect;->mEdgeAlphaStart:F

    .line 308
    iput v3, p0, Landroid/widget/EdgeEffect;->mEdgeScaleYStart:F

    iput v3, p0, Landroid/widget/EdgeEffect;->mEdgeScaleY:F

    .line 311
    const/high16 v0, 0x3f00

    iput v0, p0, Landroid/widget/EdgeEffect;->mGlowAlphaStart:F

    .line 312
    iput v3, p0, Landroid/widget/EdgeEffect;->mGlowScaleYStart:F

    .line 316
    const/4 v0, 0x0

    mul-int/lit8 v1, p1, 0x8

    const/4 v2, 0x1

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Landroid/widget/EdgeEffect;->mEdgeAlphaFinish:F

    .line 318
    mul-int/lit8 v0, p1, 0x8

    int-to-float v0, v0

    invoke-static {v0, v4}, Ljava/lang/Math;->min(FF)F

    move-result v0

    invoke-static {v4, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iput v0, p0, Landroid/widget/EdgeEffect;->mEdgeScaleYFinish:F

    .line 328
    const v0, 0x3ccccccd

    div-int/lit8 v1, p1, 0x64

    mul-int/2addr v1, p1

    int-to-float v1, v1

    const v2, 0x391d4952

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    const/high16 v1, 0x4080

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iput v0, p0, Landroid/widget/EdgeEffect;->mGlowScaleYFinish:F

    .line 332
    iget v0, p0, Landroid/widget/EdgeEffect;->mGlowAlphaStart:F

    mul-int/lit8 v1, p1, 0x10

    int-to-float v1, v1

    const v2, 0x3727c5ac

    mul-float/2addr v1, v2

    invoke-static {v1, v4}, Ljava/lang/Math;->min(FF)F

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iput v0, p0, Landroid/widget/EdgeEffect;->mGlowAlphaFinish:F

    .line 334
    return-void
.end method

.method public onPull(F)V
    .locals 9
    .parameter "deltaDistance"

    .prologue
    const/4 v6, 0x1

    const/4 v8, 0x0

    const/high16 v7, 0x3f80

    .line 214
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v2

    .line 215
    .local v2, now:J
    iget v4, p0, Landroid/widget/EdgeEffect;->mState:I

    const/4 v5, 0x4

    if-ne v4, v5, :cond_0

    iget-wide v4, p0, Landroid/widget/EdgeEffect;->mStartTime:J

    sub-long v4, v2, v4

    long-to-float v4, v4

    iget v5, p0, Landroid/widget/EdgeEffect;->mDuration:F

    cmpg-float v4, v4, v5

    if-gez v4, :cond_0

    .line 258
    :goto_0
    return-void

    .line 218
    :cond_0
    iget v4, p0, Landroid/widget/EdgeEffect;->mState:I

    if-eq v4, v6, :cond_1

    .line 219
    iput v7, p0, Landroid/widget/EdgeEffect;->mGlowScaleY:F

    .line 221
    :cond_1
    iput v6, p0, Landroid/widget/EdgeEffect;->mState:I

    .line 223
    iput-wide v2, p0, Landroid/widget/EdgeEffect;->mStartTime:J

    .line 224
    const/high16 v4, 0x4327

    iput v4, p0, Landroid/widget/EdgeEffect;->mDuration:F

    .line 226
    iget v4, p0, Landroid/widget/EdgeEffect;->mPullDistance:F

    add-float/2addr v4, p1

    iput v4, p0, Landroid/widget/EdgeEffect;->mPullDistance:F

    .line 227
    iget v4, p0, Landroid/widget/EdgeEffect;->mPullDistance:F

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v0

    .line 229
    .local v0, distance:F
    const v4, 0x3f19999a

    invoke-static {v0, v7}, Ljava/lang/Math;->min(FF)F

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->max(FF)F

    move-result v4

    iput v4, p0, Landroid/widget/EdgeEffect;->mEdgeAlphaStart:F

    iput v4, p0, Landroid/widget/EdgeEffect;->mEdgeAlpha:F

    .line 230
    const/high16 v4, 0x40e0

    mul-float/2addr v4, v0

    invoke-static {v4, v7}, Ljava/lang/Math;->min(FF)F

    move-result v4

    invoke-static {v7, v4}, Ljava/lang/Math;->max(FF)F

    move-result v4

    iput v4, p0, Landroid/widget/EdgeEffect;->mEdgeScaleYStart:F

    iput v4, p0, Landroid/widget/EdgeEffect;->mEdgeScaleY:F

    .line 233
    iget v4, p0, Landroid/widget/EdgeEffect;->mGlowAlpha:F

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v5

    const v6, 0x3f8ccccd

    mul-float/2addr v5, v6

    add-float/2addr v4, v5

    invoke-static {v7, v4}, Ljava/lang/Math;->min(FF)F

    move-result v4

    iput v4, p0, Landroid/widget/EdgeEffect;->mGlowAlphaStart:F

    iput v4, p0, Landroid/widget/EdgeEffect;->mGlowAlpha:F

    .line 237
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    .line 238
    .local v1, glowChange:F
    cmpl-float v4, p1, v8

    if-lez v4, :cond_2

    iget v4, p0, Landroid/widget/EdgeEffect;->mPullDistance:F

    cmpg-float v4, v4, v8

    if-gez v4, :cond_2

    .line 239
    neg-float v1, v1

    .line 241
    :cond_2
    iget v4, p0, Landroid/widget/EdgeEffect;->mPullDistance:F

    cmpl-float v4, v4, v8

    if-nez v4, :cond_3

    .line 242
    iput v8, p0, Landroid/widget/EdgeEffect;->mGlowScaleY:F

    .line 246
    :cond_3
    const/high16 v4, 0x40c0

    iget v5, p0, Landroid/widget/EdgeEffect;->mGlowScaleY:F

    const/high16 v6, 0x4180

    mul-float/2addr v6, v1

    add-float/2addr v5, v6

    invoke-static {v8, v5}, Ljava/lang/Math;->max(FF)F

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->min(FF)F

    move-result v4

    iput v4, p0, Landroid/widget/EdgeEffect;->mGlowScaleYStart:F

    iput v4, p0, Landroid/widget/EdgeEffect;->mGlowScaleY:F

    .line 252
    iput v7, p0, Landroid/widget/EdgeEffect;->mEdgeAlpha:F

    iput v7, p0, Landroid/widget/EdgeEffect;->mGlowAlpha:F

    .line 254
    iget v4, p0, Landroid/widget/EdgeEffect;->mEdgeAlpha:F

    iput v4, p0, Landroid/widget/EdgeEffect;->mEdgeAlphaFinish:F

    .line 255
    iget v4, p0, Landroid/widget/EdgeEffect;->mEdgeScaleY:F

    iput v4, p0, Landroid/widget/EdgeEffect;->mEdgeScaleYFinish:F

    .line 256
    iget v4, p0, Landroid/widget/EdgeEffect;->mGlowAlpha:F

    iput v4, p0, Landroid/widget/EdgeEffect;->mGlowAlphaFinish:F

    .line 257
    iget v4, p0, Landroid/widget/EdgeEffect;->mGlowScaleY:F

    iput v4, p0, Landroid/widget/EdgeEffect;->mGlowScaleYFinish:F

    goto/16 :goto_0
.end method

.method public onRelease()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 267
    iput v2, p0, Landroid/widget/EdgeEffect;->mPullDistance:F

    .line 269
    iget v0, p0, Landroid/widget/EdgeEffect;->mState:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    iget v0, p0, Landroid/widget/EdgeEffect;->mState:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    .line 286
    :goto_0
    return-void

    .line 273
    :cond_0
    const/4 v0, 0x3

    iput v0, p0, Landroid/widget/EdgeEffect;->mState:I

    .line 274
    iget v0, p0, Landroid/widget/EdgeEffect;->mEdgeAlpha:F

    iput v0, p0, Landroid/widget/EdgeEffect;->mEdgeAlphaStart:F

    .line 275
    iget v0, p0, Landroid/widget/EdgeEffect;->mEdgeScaleY:F

    iput v0, p0, Landroid/widget/EdgeEffect;->mEdgeScaleYStart:F

    .line 276
    iget v0, p0, Landroid/widget/EdgeEffect;->mGlowAlpha:F

    iput v0, p0, Landroid/widget/EdgeEffect;->mGlowAlphaStart:F

    .line 277
    iget v0, p0, Landroid/widget/EdgeEffect;->mGlowScaleY:F

    iput v0, p0, Landroid/widget/EdgeEffect;->mGlowScaleYStart:F

    .line 279
    iput v2, p0, Landroid/widget/EdgeEffect;->mEdgeAlphaFinish:F

    .line 280
    iput v2, p0, Landroid/widget/EdgeEffect;->mEdgeScaleYFinish:F

    .line 281
    iput v2, p0, Landroid/widget/EdgeEffect;->mGlowAlphaFinish:F

    .line 282
    iput v2, p0, Landroid/widget/EdgeEffect;->mGlowScaleYFinish:F

    .line 284
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/widget/EdgeEffect;->mStartTime:J

    .line 285
    const/high16 v0, 0x447a

    iput v0, p0, Landroid/widget/EdgeEffect;->mDuration:F

    goto :goto_0
.end method

.method setPosition(II)V
    .locals 0
    .parameter "x"
    .parameter "y"

    .prologue
    .line 180
    iput p1, p0, Landroid/widget/EdgeEffect;->mX:I

    .line 181
    iput p2, p0, Landroid/widget/EdgeEffect;->mY:I

    .line 182
    return-void
.end method

.method public setSize(II)V
    .locals 0
    .parameter "width"
    .parameter "height"

    .prologue
    .line 168
    iput p1, p0, Landroid/widget/EdgeEffect;->mWidth:I

    .line 169
    iput p2, p0, Landroid/widget/EdgeEffect;->mHeight:I

    .line 170
    return-void
.end method
