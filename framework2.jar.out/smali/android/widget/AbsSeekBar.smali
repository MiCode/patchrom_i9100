.class public abstract Landroid/widget/AbsSeekBar;
.super Landroid/widget/ProgressBar;
.source "AbsSeekBar.java"


# static fields
.field private static final NO_ALPHA:I = 0xff


# instance fields
.field private mDisabledAlpha:F

.field private mHoveringLevel:I

.field private mIsDragging:Z

.field mIsUserSeekable:Z

.field private mKeyProgressIncrement:I

.field private mScaledTouchSlop:I

.field protected mThumb:Landroid/graphics/drawable/Drawable;

.field private mThumbOffset:I

.field private mTouchDownX:F

.field mTouchProgressOffset:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    const/4 v0, 0x1

    .line 68
    invoke-direct {p0, p1}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;)V

    .line 50
    iput-boolean v0, p0, Landroid/widget/AbsSeekBar;->mIsUserSeekable:Z

    .line 56
    iput v0, p0, Landroid/widget/AbsSeekBar;->mKeyProgressIncrement:I

    .line 65
    const/4 v0, 0x0

    iput v0, p0, Landroid/widget/AbsSeekBar;->mHoveringLevel:I

    .line 69
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v0, 0x1

    .line 72
    invoke-direct {p0, p1, p2}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 50
    iput-boolean v0, p0, Landroid/widget/AbsSeekBar;->mIsUserSeekable:Z

    .line 56
    iput v0, p0, Landroid/widget/AbsSeekBar;->mKeyProgressIncrement:I

    .line 65
    const/4 v0, 0x0

    iput v0, p0, Landroid/widget/AbsSeekBar;->mHoveringLevel:I

    .line 73
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 6
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 76
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 50
    iput-boolean v5, p0, Landroid/widget/AbsSeekBar;->mIsUserSeekable:Z

    .line 56
    iput v5, p0, Landroid/widget/AbsSeekBar;->mKeyProgressIncrement:I

    .line 65
    iput v4, p0, Landroid/widget/AbsSeekBar;->mHoveringLevel:I

    .line 78
    sget-object v3, Lcom/android/internal/R$styleable;->SeekBar:[I

    invoke-virtual {p1, p2, v3, p3, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 80
    .local v0, a:Landroid/content/res/TypedArray;
    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 81
    .local v1, thumb:Landroid/graphics/drawable/Drawable;
    invoke-virtual {p0, v1}, Landroid/widget/AbsSeekBar;->setThumb(Landroid/graphics/drawable/Drawable;)V

    .line 83
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getThumbOffset()I

    move-result v3

    invoke-virtual {v0, v5, v3}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v2

    .line 85
    .local v2, thumbOffset:I
    invoke-virtual {p0, v2}, Landroid/widget/AbsSeekBar;->setThumbOffset(I)V

    .line 86
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 88
    sget-object v3, Lcom/android/internal/R$styleable;->Theme:[I

    invoke-virtual {p1, p2, v3, v4, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 90
    const/4 v3, 0x3

    const/high16 v4, 0x3f00

    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v3

    iput v3, p0, Landroid/widget/AbsSeekBar;->mDisabledAlpha:F

    .line 91
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 93
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v3

    iput v3, p0, Landroid/widget/AbsSeekBar;->mScaledTouchSlop:I

    .line 94
    return-void
.end method

.method private attemptClaimDrag()V
    .locals 2

    .prologue
    .line 439
    iget-object v0, p0, Landroid/widget/AbsSeekBar;->mParent:Landroid/view/ViewParent;

    if-eqz v0, :cond_0

    .line 440
    iget-object v0, p0, Landroid/widget/AbsSeekBar;->mParent:Landroid/view/ViewParent;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 442
    :cond_0
    return-void
.end method

.method private setThumbPos(ILandroid/graphics/drawable/Drawable;FI)V
    .locals 9
    .parameter "w"
    .parameter "thumb"
    .parameter "scale"
    .parameter "gap"

    .prologue
    .line 290
    iget v7, p0, Landroid/widget/ProgressBar;->mPaddingLeft:I

    sub-int v7, p1, v7

    iget v8, p0, Landroid/widget/ProgressBar;->mPaddingRight:I

    sub-int v0, v7, v8

    .line 291
    .local v0, available:I
    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v5

    .line 292
    .local v5, thumbWidth:I
    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    .line 293
    .local v3, thumbHeight:I
    sub-int/2addr v0, v5

    .line 296
    iget v7, p0, Landroid/widget/AbsSeekBar;->mThumbOffset:I

    mul-int/lit8 v7, v7, 0x2

    add-int/2addr v0, v7

    .line 298
    int-to-float v7, v0

    mul-float/2addr v7, p3

    float-to-int v4, v7

    .line 301
    .local v4, thumbPos:I
    const/high16 v7, -0x8000

    if-ne p4, v7, :cond_0

    .line 302
    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    .line 303
    .local v2, oldBounds:Landroid/graphics/Rect;
    iget v6, v2, Landroid/graphics/Rect;->top:I

    .line 304
    .local v6, topBound:I
    iget v1, v2, Landroid/graphics/Rect;->bottom:I

    .line 311
    .end local v2           #oldBounds:Landroid/graphics/Rect;
    .local v1, bottomBound:I
    :goto_0
    add-int v7, v4, v5

    invoke-virtual {p2, v4, v6, v7, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 312
    return-void

    .line 306
    .end local v1           #bottomBound:I
    .end local v6           #topBound:I
    :cond_0
    move v6, p4

    .line 307
    .restart local v6       #topBound:I
    add-int v1, p4, v3

    .restart local v1       #bottomBound:I
    goto :goto_0
.end method

.method private trackHoverEvent(II)V
    .locals 7
    .parameter "posX"
    .parameter "posY"

    .prologue
    .line 578
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getWidth()I

    move-result v4

    .line 579
    .local v4, width:I
    iget v5, p0, Landroid/widget/ProgressBar;->mPaddingLeft:I

    sub-int v5, v4, v5

    iget v6, p0, Landroid/widget/ProgressBar;->mPaddingRight:I

    sub-int v0, v5, v6

    .line 581
    .local v0, available:I
    const/4 v1, 0x0

    .line 583
    .local v1, hoverLevel:F
    iget v5, p0, Landroid/widget/ProgressBar;->mPaddingLeft:I

    if-ge p1, v5, :cond_0

    .line 584
    const/4 v3, 0x0

    .line 592
    .local v3, scale:F
    :goto_0
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getMax()I

    move-result v2

    .line 593
    .local v2, max:I
    int-to-float v5, v2

    mul-float/2addr v5, v3

    add-float/2addr v1, v5

    .line 594
    float-to-int v5, v1

    iput v5, p0, Landroid/widget/AbsSeekBar;->mHoveringLevel:I

    .line 595
    return-void

    .line 585
    .end local v2           #max:I
    .end local v3           #scale:F
    :cond_0
    iget v5, p0, Landroid/widget/ProgressBar;->mPaddingRight:I

    sub-int v5, v4, v5

    if-le p1, v5, :cond_1

    .line 586
    const/high16 v3, 0x3f80

    .restart local v3       #scale:F
    goto :goto_0

    .line 588
    .end local v3           #scale:F
    :cond_1
    iget v5, p0, Landroid/widget/ProgressBar;->mPaddingLeft:I

    sub-int v5, p1, v5

    int-to-float v5, v5

    int-to-float v6, v0

    div-float v3, v5, v6

    .line 589
    .restart local v3       #scale:F
    iget v1, p0, Landroid/widget/AbsSeekBar;->mTouchProgressOffset:F

    goto :goto_0
.end method

.method private trackTouchEvent(Landroid/view/MotionEvent;)V
    .locals 8
    .parameter "event"

    .prologue
    .line 414
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getWidth()I

    move-result v4

    .line 415
    .local v4, width:I
    iget v6, p0, Landroid/widget/ProgressBar;->mPaddingLeft:I

    sub-int v6, v4, v6

    iget v7, p0, Landroid/widget/ProgressBar;->mPaddingRight:I

    sub-int v0, v6, v7

    .line 416
    .local v0, available:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    float-to-int v5, v6

    .line 418
    .local v5, x:I
    const/4 v2, 0x0

    .line 419
    .local v2, progress:F
    iget v6, p0, Landroid/widget/ProgressBar;->mPaddingLeft:I

    if-ge v5, v6, :cond_0

    .line 420
    const/4 v3, 0x0

    .line 428
    .local v3, scale:F
    :goto_0
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getMax()I

    move-result v1

    .line 429
    .local v1, max:I
    int-to-float v6, v1

    mul-float/2addr v6, v3

    add-float/2addr v2, v6

    .line 431
    float-to-int v6, v2

    const/4 v7, 0x1

    invoke-virtual {p0, v6, v7}, Landroid/widget/AbsSeekBar;->setProgress(IZ)V

    .line 432
    return-void

    .line 421
    .end local v1           #max:I
    .end local v3           #scale:F
    :cond_0
    iget v6, p0, Landroid/widget/ProgressBar;->mPaddingRight:I

    sub-int v6, v4, v6

    if-le v5, v6, :cond_1

    .line 422
    const/high16 v3, 0x3f80

    .restart local v3       #scale:F
    goto :goto_0

    .line 424
    .end local v3           #scale:F
    :cond_1
    iget v6, p0, Landroid/widget/ProgressBar;->mPaddingLeft:I

    sub-int v6, v5, v6

    int-to-float v6, v6

    int-to-float v7, v0

    div-float v3, v6, v7

    .line 425
    .restart local v3       #scale:F
    iget v2, p0, Landroid/widget/AbsSeekBar;->mTouchProgressOffset:F

    goto :goto_0
.end method

.method private updateThumbPos(II)V
    .locals 12
    .parameter "w"
    .parameter "h"

    .prologue
    const/4 v8, 0x0

    .line 252
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getCurrentDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 253
    .local v0, d:Landroid/graphics/drawable/Drawable;
    iget-object v5, p0, Landroid/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    .line 254
    .local v5, thumb:Landroid/graphics/drawable/Drawable;
    if-nez v5, :cond_2

    move v6, v8

    .line 257
    .local v6, thumbHeight:I
    :goto_0
    iget v9, p0, Landroid/widget/ProgressBar;->mMaxHeight:I

    iget v10, p0, Landroid/widget/ProgressBar;->mPaddingTop:I

    sub-int v10, p2, v10

    iget v11, p0, Landroid/widget/ProgressBar;->mPaddingBottom:I

    sub-int/2addr v10, v11

    invoke-static {v9, v10}, Ljava/lang/Math;->min(II)I

    move-result v7

    .line 259
    .local v7, trackHeight:I
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getMax()I

    move-result v3

    .line 260
    .local v3, max:I
    if-lez v3, :cond_3

    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getProgress()I

    move-result v9

    int-to-float v9, v9

    int-to-float v10, v3

    div-float v4, v9, v10

    .line 262
    .local v4, scale:F
    :goto_1
    if-le v6, v7, :cond_4

    .line 263
    if-eqz v5, :cond_0

    .line 264
    invoke-direct {p0, p1, v5, v4, v8}, Landroid/widget/AbsSeekBar;->setThumbPos(ILandroid/graphics/drawable/Drawable;FI)V

    .line 266
    :cond_0
    sub-int v9, v6, v7

    div-int/lit8 v2, v9, 0x2

    .line 267
    .local v2, gapForCenteringTrack:I
    if-eqz v0, :cond_1

    .line 269
    iget v9, p0, Landroid/widget/ProgressBar;->mPaddingRight:I

    sub-int v9, p1, v9

    iget v10, p0, Landroid/widget/ProgressBar;->mPaddingLeft:I

    sub-int/2addr v9, v10

    iget v10, p0, Landroid/widget/ProgressBar;->mPaddingBottom:I

    sub-int v10, p2, v10

    sub-int/2addr v10, v2

    iget v11, p0, Landroid/widget/ProgressBar;->mPaddingTop:I

    sub-int/2addr v10, v11

    invoke-virtual {v0, v8, v2, v9, v10}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 284
    .end local v2           #gapForCenteringTrack:I
    :cond_1
    :goto_2
    return-void

    .line 254
    .end local v3           #max:I
    .end local v4           #scale:F
    .end local v6           #thumbHeight:I
    .end local v7           #trackHeight:I
    :cond_2
    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v6

    goto :goto_0

    .line 260
    .restart local v3       #max:I
    .restart local v6       #thumbHeight:I
    .restart local v7       #trackHeight:I
    :cond_3
    const/4 v4, 0x0

    goto :goto_1

    .line 274
    .restart local v4       #scale:F
    :cond_4
    if-eqz v0, :cond_5

    .line 276
    iget v9, p0, Landroid/widget/ProgressBar;->mPaddingRight:I

    sub-int v9, p1, v9

    iget v10, p0, Landroid/widget/ProgressBar;->mPaddingLeft:I

    sub-int/2addr v9, v10

    iget v10, p0, Landroid/widget/ProgressBar;->mPaddingBottom:I

    sub-int v10, p2, v10

    iget v11, p0, Landroid/widget/ProgressBar;->mPaddingTop:I

    sub-int/2addr v10, v11

    invoke-virtual {v0, v8, v8, v9, v10}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 279
    :cond_5
    sub-int v8, v7, v6

    div-int/lit8 v1, v8, 0x2

    .line 280
    .local v1, gap:I
    if-eqz v5, :cond_1

    .line 281
    invoke-direct {p0, p1, v5, v4, v1}, Landroid/widget/AbsSeekBar;->setThumbPos(ILandroid/graphics/drawable/Drawable;FI)V

    goto :goto_2
.end method


# virtual methods
.method protected drawableStateChanged()V
    .locals 4

    .prologue
    .line 217
    invoke-super {p0}, Landroid/widget/ProgressBar;->drawableStateChanged()V

    .line 219
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getProgressDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 220
    .local v0, progressDrawable:Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_0

    .line 221
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_2

    const/16 v2, 0xff

    :goto_0
    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 224
    :cond_0
    iget-object v2, p0, Landroid/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_1

    iget-object v2, p0, Landroid/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 225
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getDrawableState()[I

    move-result-object v1

    .line 226
    .local v1, state:[I
    iget-object v2, p0, Landroid/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 228
    .end local v1           #state:[I
    :cond_1
    return-void

    .line 221
    :cond_2
    const/high16 v2, 0x437f

    iget v3, p0, Landroid/widget/AbsSeekBar;->mDisabledAlpha:F

    mul-float/2addr v2, v3

    float-to-int v2, v2

    goto :goto_0
.end method

.method public getKeyProgressIncrement()I
    .locals 1

    .prologue
    .line 190
    iget v0, p0, Landroid/widget/AbsSeekBar;->mKeyProgressIncrement:I

    return v0
.end method

.method public getThumb()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 150
    iget-object v0, p0, Landroid/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getThumbOffset()I
    .locals 1

    .prologue
    .line 157
    iget v0, p0, Landroid/widget/AbsSeekBar;->mThumbOffset:I

    return v0
.end method

.method public jumpDrawablesToCurrentState()V
    .locals 1

    .prologue
    .line 211
    invoke-super {p0}, Landroid/widget/ProgressBar;->jumpDrawablesToCurrentState()V

    .line 212
    iget-object v0, p0, Landroid/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->jumpToCurrentState()V

    .line 213
    :cond_0
    return-void
.end method

.method protected declared-synchronized onDraw(Landroid/graphics/Canvas;)V
    .locals 2
    .parameter "canvas"

    .prologue
    .line 316
    monitor-enter p0

    :try_start_0
    invoke-super {p0, p1}, Landroid/widget/ProgressBar;->onDraw(Landroid/graphics/Canvas;)V

    .line 317
    iget-object v0, p0, Landroid/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 318
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 321
    iget v0, p0, Landroid/widget/ProgressBar;->mPaddingLeft:I

    iget v1, p0, Landroid/widget/AbsSeekBar;->mThumbOffset:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    iget v1, p0, Landroid/widget/ProgressBar;->mPaddingTop:I

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 322
    iget-object v0, p0, Landroid/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 323
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 325
    :cond_0
    monitor-exit p0

    return-void

    .line 316
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method onHoverChanged(III)V
    .locals 0
    .parameter "hoverLevel"
    .parameter "posX"
    .parameter "posY"

    .prologue
    .line 575
    return-void
.end method

.method public onHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 6
    .parameter "event"

    .prologue
    .line 543
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->isHoveringUIEnabled()Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x0

    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_0

    .line 544
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 545
    .local v0, action:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    float-to-int v1, v3

    .line 546
    .local v1, x:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-int v2, v3

    .line 547
    .local v2, y:I
    const/16 v3, 0x9

    if-ne v0, v3, :cond_1

    .line 549
    invoke-direct {p0, v1, v2}, Landroid/widget/AbsSeekBar;->trackHoverEvent(II)V

    .line 550
    iget v3, p0, Landroid/widget/AbsSeekBar;->mHoveringLevel:I

    invoke-virtual {p0, v3, v1, v2}, Landroid/widget/AbsSeekBar;->onStartTrackingHover(III)V

    .line 565
    .end local v0           #action:I
    .end local v1           #x:I
    .end local v2           #y:I
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/ProgressBar;->onHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v3

    return v3

    .line 552
    .restart local v0       #action:I
    .restart local v1       #x:I
    .restart local v2       #y:I
    :cond_1
    const/4 v3, 0x7

    if-ne v0, v3, :cond_2

    .line 553
    invoke-direct {p0, v1, v2}, Landroid/widget/AbsSeekBar;->trackHoverEvent(II)V

    .line 554
    iget v3, p0, Landroid/widget/AbsSeekBar;->mHoveringLevel:I

    invoke-virtual {p0, v3, v1, v2}, Landroid/widget/AbsSeekBar;->onHoverChanged(III)V

    .line 557
    iget v3, p0, Landroid/widget/AbsSeekBar;->mHoverPopupType:I

    const/4 v4, 0x3

    if-ne v3, v4, :cond_0

    .line 558
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getHoverPopupWindow()Landroid/widget/HoverPopupWindow;

    move-result-object v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v4

    float-to-int v4, v4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v5

    float-to-int v5, v5

    invoke-virtual {v3, v4, v5}, Landroid/widget/HoverPopupWindow;->setHoveringPoint(II)V

    .line 559
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getHoverPopupWindow()Landroid/widget/HoverPopupWindow;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/HoverPopupWindow;->updateHoverPopup()V

    goto :goto_0

    .line 561
    :cond_2
    const/16 v3, 0xa

    if-ne v0, v3, :cond_0

    .line 562
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->onStopTrackingHover()V

    goto :goto_0
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1
    .parameter "event"

    .prologue
    .line 489
    invoke-super {p0, p1}, Landroid/widget/ProgressBar;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 490
    const-class v0, Landroid/widget/AbsSeekBar;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    .line 491
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 2
    .parameter "info"

    .prologue
    .line 495
    invoke-super {p0, p1}, Landroid/widget/ProgressBar;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 496
    const-class v1, Landroid/widget/AbsSeekBar;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    .line 498
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 499
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getProgress()I

    move-result v0

    .line 500
    .local v0, progress:I
    if-lez v0, :cond_0

    .line 501
    const/16 v1, 0x2000

    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    .line 503
    :cond_0
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getMax()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 504
    const/16 v1, 0x1000

    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    .line 507
    .end local v0           #progress:I
    :cond_1
    return-void
.end method

.method onKeyChange()V
    .locals 0

    .prologue
    .line 463
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 3
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v1, 0x1

    .line 467
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 468
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getProgress()I

    move-result v0

    .line 469
    .local v0, progress:I
    packed-switch p1, :pswitch_data_0

    .line 484
    .end local v0           #progress:I
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/ProgressBar;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v1

    :goto_0
    return v1

    .line 471
    .restart local v0       #progress:I
    :pswitch_0
    if-lez v0, :cond_0

    .line 472
    iget v2, p0, Landroid/widget/AbsSeekBar;->mKeyProgressIncrement:I

    sub-int v2, v0, v2

    invoke-virtual {p0, v2, v1}, Landroid/widget/AbsSeekBar;->setProgress(IZ)V

    .line 473
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->onKeyChange()V

    goto :goto_0

    .line 477
    :pswitch_1
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getMax()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 478
    iget v2, p0, Landroid/widget/AbsSeekBar;->mKeyProgressIncrement:I

    add-int/2addr v2, v0

    invoke-virtual {p0, v2, v1}, Landroid/widget/AbsSeekBar;->setProgress(IZ)V

    .line 479
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->onKeyChange()V

    goto :goto_0

    .line 469
    :pswitch_data_0
    .packed-switch 0x15
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected declared-synchronized onMeasure(II)V
    .locals 7
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    const/4 v3, 0x0

    .line 329
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getCurrentDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 331
    .local v0, d:Landroid/graphics/drawable/Drawable;
    iget-object v4, p0, Landroid/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    if-nez v4, :cond_1

    .line 332
    .local v3, thumbHeight:I
    :goto_0
    const/4 v2, 0x0

    .line 333
    .local v2, dw:I
    const/4 v1, 0x0

    .line 334
    .local v1, dh:I
    if-eqz v0, :cond_0

    .line 335
    iget v4, p0, Landroid/widget/ProgressBar;->mMinWidth:I

    iget v5, p0, Landroid/widget/ProgressBar;->mMaxWidth:I

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v6

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 336
    iget v4, p0, Landroid/widget/ProgressBar;->mMinHeight:I

    iget v5, p0, Landroid/widget/ProgressBar;->mMaxHeight:I

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v6

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 337
    invoke-static {v3, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 339
    :cond_0
    iget v4, p0, Landroid/widget/ProgressBar;->mPaddingLeft:I

    iget v5, p0, Landroid/widget/ProgressBar;->mPaddingRight:I

    add-int/2addr v4, v5

    add-int/2addr v2, v4

    .line 340
    iget v4, p0, Landroid/widget/ProgressBar;->mPaddingTop:I

    iget v5, p0, Landroid/widget/ProgressBar;->mPaddingBottom:I

    add-int/2addr v4, v5

    add-int/2addr v1, v4

    .line 342
    const/4 v4, 0x0

    invoke-static {v2, p1, v4}, Landroid/widget/AbsSeekBar;->resolveSizeAndState(III)I

    move-result v4

    const/4 v5, 0x0

    invoke-static {v1, p2, v5}, Landroid/widget/AbsSeekBar;->resolveSizeAndState(III)I

    move-result v5

    invoke-virtual {p0, v4, v5}, Landroid/widget/AbsSeekBar;->setMeasuredDimension(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 344
    monitor-exit p0

    return-void

    .line 331
    .end local v1           #dh:I
    .end local v2           #dw:I
    .end local v3           #thumbHeight:I
    :cond_1
    :try_start_1
    iget-object v4, p0, Landroid/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v3

    goto :goto_0

    .line 329
    .end local v0           #d:Landroid/graphics/drawable/Drawable;
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4
.end method

.method onProgressRefresh(FZ)V
    .locals 3
    .parameter "scale"
    .parameter "fromUser"

    .prologue
    .line 232
    invoke-super {p0, p1, p2}, Landroid/widget/ProgressBar;->onProgressRefresh(FZ)V

    .line 233
    iget-object v0, p0, Landroid/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    .line 234
    .local v0, thumb:Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_0

    .line 235
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getWidth()I

    move-result v1

    const/high16 v2, -0x8000

    invoke-direct {p0, v1, v0, p1, v2}, Landroid/widget/AbsSeekBar;->setThumbPos(ILandroid/graphics/drawable/Drawable;FI)V

    .line 241
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->invalidate()V

    .line 243
    :cond_0
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 0
    .parameter "w"
    .parameter "h"
    .parameter "oldw"
    .parameter "oldh"

    .prologue
    .line 248
    invoke-direct {p0, p1, p2}, Landroid/widget/AbsSeekBar;->updateThumbPos(II)V

    .line 249
    return-void
.end method

.method onStartTrackingHover(III)V
    .locals 0
    .parameter "hoverLevel"
    .parameter "posX"
    .parameter "posY"

    .prologue
    .line 569
    return-void
.end method

.method onStartTrackingTouch()V
    .locals 1

    .prologue
    .line 448
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/AbsSeekBar;->mIsDragging:Z

    .line 449
    return-void
.end method

.method onStopTrackingHover()V
    .locals 0

    .prologue
    .line 572
    return-void
.end method

.method onStopTrackingTouch()V
    .locals 1

    .prologue
    .line 456
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/AbsSeekBar;->mIsDragging:Z

    .line 457
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4
    .parameter "event"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 348
    iget-boolean v3, p0, Landroid/widget/AbsSeekBar;->mIsUserSeekable:Z

    if-eqz v3, :cond_0

    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->isEnabled()Z

    move-result v3

    if-nez v3, :cond_2

    :cond_0
    move v1, v2

    .line 410
    :cond_1
    :goto_0
    return v1

    .line 352
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    goto :goto_0

    .line 354
    :pswitch_0
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->isInScrollingContainer()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 355
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    iput v2, p0, Landroid/widget/AbsSeekBar;->mTouchDownX:F

    goto :goto_0

    .line 357
    :cond_3
    invoke-virtual {p0, v1}, Landroid/widget/AbsSeekBar;->setPressed(Z)V

    .line 358
    iget-object v2, p0, Landroid/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_4

    .line 359
    iget-object v2, p0, Landroid/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/widget/AbsSeekBar;->invalidate(Landroid/graphics/Rect;)V

    .line 361
    :cond_4
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->onStartTrackingTouch()V

    .line 362
    invoke-direct {p0, p1}, Landroid/widget/AbsSeekBar;->trackTouchEvent(Landroid/view/MotionEvent;)V

    .line 363
    invoke-direct {p0}, Landroid/widget/AbsSeekBar;->attemptClaimDrag()V

    goto :goto_0

    .line 368
    :pswitch_1
    iget-boolean v2, p0, Landroid/widget/AbsSeekBar;->mIsDragging:Z

    if-eqz v2, :cond_5

    .line 369
    invoke-direct {p0, p1}, Landroid/widget/AbsSeekBar;->trackTouchEvent(Landroid/view/MotionEvent;)V

    goto :goto_0

    .line 371
    :cond_5
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    .line 372
    .local v0, x:F
    iget v2, p0, Landroid/widget/AbsSeekBar;->mTouchDownX:F

    sub-float v2, v0, v2

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    iget v3, p0, Landroid/widget/AbsSeekBar;->mScaledTouchSlop:I

    int-to-float v3, v3

    cmpl-float v2, v2, v3

    if-lez v2, :cond_1

    .line 373
    invoke-virtual {p0, v1}, Landroid/widget/AbsSeekBar;->setPressed(Z)V

    .line 374
    iget-object v2, p0, Landroid/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_6

    .line 375
    iget-object v2, p0, Landroid/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/widget/AbsSeekBar;->invalidate(Landroid/graphics/Rect;)V

    .line 377
    :cond_6
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->onStartTrackingTouch()V

    .line 378
    invoke-direct {p0, p1}, Landroid/widget/AbsSeekBar;->trackTouchEvent(Landroid/view/MotionEvent;)V

    .line 379
    invoke-direct {p0}, Landroid/widget/AbsSeekBar;->attemptClaimDrag()V

    goto :goto_0

    .line 385
    .end local v0           #x:F
    :pswitch_2
    iget-boolean v3, p0, Landroid/widget/AbsSeekBar;->mIsDragging:Z

    if-eqz v3, :cond_7

    .line 386
    invoke-direct {p0, p1}, Landroid/widget/AbsSeekBar;->trackTouchEvent(Landroid/view/MotionEvent;)V

    .line 387
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->onStopTrackingTouch()V

    .line 388
    invoke-virtual {p0, v2}, Landroid/widget/AbsSeekBar;->setPressed(Z)V

    .line 399
    :goto_1
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->invalidate()V

    goto :goto_0

    .line 392
    :cond_7
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->onStartTrackingTouch()V

    .line 393
    invoke-direct {p0, p1}, Landroid/widget/AbsSeekBar;->trackTouchEvent(Landroid/view/MotionEvent;)V

    .line 394
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->onStopTrackingTouch()V

    goto :goto_1

    .line 403
    :pswitch_3
    iget-boolean v3, p0, Landroid/widget/AbsSeekBar;->mIsDragging:Z

    if-eqz v3, :cond_8

    .line 404
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->onStopTrackingTouch()V

    .line 405
    invoke-virtual {p0, v2}, Landroid/widget/AbsSeekBar;->setPressed(Z)V

    .line 407
    :cond_8
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->invalidate()V

    goto/16 :goto_0

    .line 352
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method public performAccessibilityAction(ILandroid/os/Bundle;)Z
    .locals 6
    .parameter "action"
    .parameter "arguments"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 511
    invoke-super {p0, p1, p2}, Landroid/widget/ProgressBar;->performAccessibilityAction(ILandroid/os/Bundle;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 537
    :goto_0
    return v2

    .line 514
    :cond_0
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->isEnabled()Z

    move-result v4

    if-nez v4, :cond_1

    move v2, v3

    .line 515
    goto :goto_0

    .line 517
    :cond_1
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getProgress()I

    move-result v1

    .line 518
    .local v1, progress:I
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getMax()I

    move-result v4

    int-to-float v4, v4

    const/high16 v5, 0x40a0

    div-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    invoke-static {v2, v4}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 519
    .local v0, increment:I
    sparse-switch p1, :sswitch_data_0

    move v2, v3

    .line 537
    goto :goto_0

    .line 521
    :sswitch_0
    if-gtz v1, :cond_2

    move v2, v3

    .line 522
    goto :goto_0

    .line 524
    :cond_2
    sub-int v3, v1, v0

    invoke-virtual {p0, v3, v2}, Landroid/widget/AbsSeekBar;->setProgress(IZ)V

    .line 525
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->onKeyChange()V

    goto :goto_0

    .line 529
    :sswitch_1
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getMax()I

    move-result v4

    if-lt v1, v4, :cond_3

    move v2, v3

    .line 530
    goto :goto_0

    .line 532
    :cond_3
    add-int v3, v1, v0

    invoke-virtual {p0, v3, v2}, Landroid/widget/AbsSeekBar;->setProgress(IZ)V

    .line 533
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->onKeyChange()V

    goto :goto_0

    .line 519
    :sswitch_data_0
    .sparse-switch
        0x1000 -> :sswitch_1
        0x2000 -> :sswitch_0
    .end sparse-switch
.end method

.method public setHoverPopupType(I)V
    .locals 4
    .parameter "type"

    .prologue
    .line 599
    const/4 v1, 0x3

    if-ne p1, v1, :cond_0

    .line 600
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getHoverPopupWindow()Landroid/widget/HoverPopupWindow;

    move-result-object v1

    const/16 v2, 0x3231

    invoke-virtual {v1, v2}, Landroid/widget/HoverPopupWindow;->setPopupGravity(I)V

    .line 602
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getMeasuredHeight()I

    move-result v0

    .line 603
    .local v0, contentHeight:I
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getHoverPopupWindow()Landroid/widget/HoverPopupWindow;

    move-result-object v1

    const/4 v2, 0x0

    div-int/lit8 v3, v0, 0x2

    invoke-virtual {v1, v2, v3}, Landroid/widget/HoverPopupWindow;->setPopupPosOffset(II)V

    .line 604
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getHoverPopupWindow()Landroid/widget/HoverPopupWindow;

    move-result-object v1

    const/16 v2, 0xc8

    invoke-virtual {v1, v2}, Landroid/widget/HoverPopupWindow;->setHoverDetectTime(I)V

    .line 607
    .end local v0           #contentHeight:I
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/ProgressBar;->setHoverPopupType(I)V

    .line 608
    return-void
.end method

.method public setKeyProgressIncrement(I)V
    .locals 0
    .parameter "increment"

    .prologue
    .line 178
    if-gez p1, :cond_0

    neg-int p1, p1

    .end local p1
    :cond_0
    iput p1, p0, Landroid/widget/AbsSeekBar;->mKeyProgressIncrement:I

    .line 179
    return-void
.end method

.method public declared-synchronized setMax(I)V
    .locals 3
    .parameter "max"

    .prologue
    .line 195
    monitor-enter p0

    :try_start_0
    invoke-super {p0, p1}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 197
    iget v0, p0, Landroid/widget/AbsSeekBar;->mKeyProgressIncrement:I

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getMax()I

    move-result v0

    iget v1, p0, Landroid/widget/AbsSeekBar;->mKeyProgressIncrement:I

    div-int/2addr v0, v1

    const/16 v1, 0x14

    if-le v0, v1, :cond_1

    .line 200
    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getMax()I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x41a0

    div-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/widget/AbsSeekBar;->setKeyProgressIncrement(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 202
    :cond_1
    monitor-exit p0

    return-void

    .line 195
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setThumb(Landroid/graphics/drawable/Drawable;)V
    .locals 4
    .parameter "thumb"

    .prologue
    .line 109
    iget-object v2, p0, Landroid/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_3

    iget-object v2, p0, Landroid/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    if-eq p1, v2, :cond_3

    .line 110
    iget-object v2, p0, Landroid/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 111
    const/4 v0, 0x1

    .line 115
    .local v0, needUpdate:Z
    :goto_0
    if-eqz p1, :cond_1

    .line 116
    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 121
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    iput v2, p0, Landroid/widget/AbsSeekBar;->mThumbOffset:I

    .line 124
    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    iget-object v3, p0, Landroid/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    if-ne v2, v3, :cond_0

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    iget-object v3, p0, Landroid/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    if-eq v2, v3, :cond_1

    .line 127
    :cond_0
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->requestLayout()V

    .line 130
    :cond_1
    iput-object p1, p0, Landroid/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    .line 131
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->invalidate()V

    .line 132
    if-eqz v0, :cond_2

    .line 133
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getHeight()I

    move-result v3

    invoke-direct {p0, v2, v3}, Landroid/widget/AbsSeekBar;->updateThumbPos(II)V

    .line 134
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 137
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getDrawableState()[I

    move-result-object v1

    .line 138
    .local v1, state:[I
    invoke-virtual {p1, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 141
    .end local v1           #state:[I
    :cond_2
    return-void

    .line 113
    .end local v0           #needUpdate:Z
    :cond_3
    const/4 v0, 0x0

    .restart local v0       #needUpdate:Z
    goto :goto_0
.end method

.method public setThumbOffset(I)V
    .locals 0
    .parameter "thumbOffset"

    .prologue
    .line 167
    iput p1, p0, Landroid/widget/AbsSeekBar;->mThumbOffset:I

    .line 168
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->invalidate()V

    .line 169
    return-void
.end method

.method protected verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 1
    .parameter "who"

    .prologue
    .line 206
    iget-object v0, p0, Landroid/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    if-eq p1, v0, :cond_0

    invoke-super {p0, p1}, Landroid/widget/ProgressBar;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
