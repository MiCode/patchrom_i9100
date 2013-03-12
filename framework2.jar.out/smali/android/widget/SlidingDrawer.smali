.class public Landroid/widget/SlidingDrawer;
.super Landroid/view/ViewGroup;
.source "SlidingDrawer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/SlidingDrawer$1;,
        Landroid/widget/SlidingDrawer$SlidingHandler;,
        Landroid/widget/SlidingDrawer$DrawerToggler;,
        Landroid/widget/SlidingDrawer$OnDrawerScrollListener;,
        Landroid/widget/SlidingDrawer$OnDrawerCloseListener;,
        Landroid/widget/SlidingDrawer$OnDrawerOpenListener;
    }
.end annotation


# static fields
.field private static final ANIMATION_FRAME_DURATION:I = 0x10

.field private static final COLLAPSED_FULL_CLOSED:I = -0x2712

.field private static final EXPANDED_FULL_OPEN:I = -0x2711

.field private static final MAXIMUM_ACCELERATION:F = 2000.0f

.field private static final MAXIMUM_MAJOR_VELOCITY:F = 200.0f

.field private static final MAXIMUM_MINOR_VELOCITY:F = 150.0f

.field private static final MAXIMUM_TAP_VELOCITY:F = 100.0f

.field private static final MSG_ANIMATE:I = 0x3e8

.field public static final ORIENTATION_HORIZONTAL:I = 0x0

.field public static final ORIENTATION_VERTICAL:I = 0x1

.field private static final TAP_THRESHOLD:I = 0x6

.field private static final VELOCITY_UNITS:I = 0x3e8


# instance fields
.field private mAllowSingleTap:Z

.field private mAnimateOnClick:Z

.field private mAnimatedAcceleration:F

.field private mAnimatedVelocity:F

.field private mAnimating:Z

.field private mAnimationLastTime:J

.field private mAnimationPosition:F

.field private mBottomOffset:I

.field private mContent:Landroid/view/View;

.field private final mContentId:I

.field private mCurrentAnimationTime:J

.field private mExpanded:Z

.field private final mFrame:Landroid/graphics/Rect;

.field private mHandle:Landroid/view/View;

.field private mHandleHeight:I

.field private final mHandleId:I

.field private mHandleWidth:I

.field private final mHandler:Landroid/os/Handler;

.field private final mInvalidate:Landroid/graphics/Rect;

.field private mLocked:Z

.field private final mMaximumAcceleration:I

.field private final mMaximumMajorVelocity:I

.field private final mMaximumMinorVelocity:I

.field private final mMaximumTapVelocity:I

.field private mOnDrawerCloseListener:Landroid/widget/SlidingDrawer$OnDrawerCloseListener;

.field private mOnDrawerOpenListener:Landroid/widget/SlidingDrawer$OnDrawerOpenListener;

.field private mOnDrawerScrollListener:Landroid/widget/SlidingDrawer$OnDrawerScrollListener;

.field private final mTapThreshold:I

.field private mTopOffset:I

.field private mTouchDelta:I

.field private mTracking:Z

.field private mVelocityTracker:Landroid/view/VelocityTracker;

.field private final mVelocityUnits:I

.field private mVertical:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 182
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/widget/SlidingDrawer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 183
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 11
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v10, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/high16 v9, 0x3f00

    .line 193
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 104
    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    iput-object v5, p0, Landroid/widget/SlidingDrawer;->mFrame:Landroid/graphics/Rect;

    .line 105
    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    iput-object v5, p0, Landroid/widget/SlidingDrawer;->mInvalidate:Landroid/graphics/Rect;

    .line 122
    new-instance v5, Landroid/widget/SlidingDrawer$SlidingHandler;

    const/4 v8, 0x0

    invoke-direct {v5, p0, v8}, Landroid/widget/SlidingDrawer$SlidingHandler;-><init>(Landroid/widget/SlidingDrawer;Landroid/widget/SlidingDrawer$1;)V

    iput-object v5, p0, Landroid/widget/SlidingDrawer;->mHandler:Landroid/os/Handler;

    .line 194
    sget-object v5, Landroid/R$styleable;->SlidingDrawer:[I

    invoke-virtual {p1, p2, v5, p3, v7}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 196
    .local v0, a:Landroid/content/res/TypedArray;
    invoke-virtual {v0, v7, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    .line 197
    .local v4, orientation:I
    if-ne v4, v6, :cond_0

    move v5, v6

    :goto_0
    iput-boolean v5, p0, Landroid/widget/SlidingDrawer;->mVertical:Z

    .line 198
    invoke-virtual {v0, v6, v10}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v5

    float-to-int v5, v5

    iput v5, p0, Landroid/widget/SlidingDrawer;->mBottomOffset:I

    .line 199
    const/4 v5, 0x2

    invoke-virtual {v0, v5, v10}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v5

    float-to-int v5, v5

    iput v5, p0, Landroid/widget/SlidingDrawer;->mTopOffset:I

    .line 200
    const/4 v5, 0x3

    invoke-virtual {v0, v5, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v5

    iput-boolean v5, p0, Landroid/widget/SlidingDrawer;->mAllowSingleTap:Z

    .line 201
    const/4 v5, 0x6

    invoke-virtual {v0, v5, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v5

    iput-boolean v5, p0, Landroid/widget/SlidingDrawer;->mAnimateOnClick:Z

    .line 203
    const/4 v5, 0x4

    invoke-virtual {v0, v5, v7}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    .line 204
    .local v3, handleId:I
    if-nez v3, :cond_1

    .line 205
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "The handle attribute is required and must refer to a valid child."

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .end local v3           #handleId:I
    :cond_0
    move v5, v7

    .line 197
    goto :goto_0

    .line 209
    .restart local v3       #handleId:I
    :cond_1
    const/4 v5, 0x5

    invoke-virtual {v0, v5, v7}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    .line 210
    .local v1, contentId:I
    if-nez v1, :cond_2

    .line 211
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "The content attribute is required and must refer to a valid child."

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 215
    :cond_2
    if-ne v3, v1, :cond_3

    .line 216
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "The content and handle attributes must refer to different children."

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 220
    :cond_3
    iput v3, p0, Landroid/widget/SlidingDrawer;->mHandleId:I

    .line 221
    iput v1, p0, Landroid/widget/SlidingDrawer;->mContentId:I

    .line 223
    invoke-virtual {p0}, Landroid/widget/SlidingDrawer;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    iget v2, v5, Landroid/util/DisplayMetrics;->density:F

    .line 224
    .local v2, density:F
    const/high16 v5, 0x40c0

    mul-float/2addr v5, v2

    add-float/2addr v5, v9

    float-to-int v5, v5

    iput v5, p0, Landroid/widget/SlidingDrawer;->mTapThreshold:I

    .line 225
    const/high16 v5, 0x42c8

    mul-float/2addr v5, v2

    add-float/2addr v5, v9

    float-to-int v5, v5

    iput v5, p0, Landroid/widget/SlidingDrawer;->mMaximumTapVelocity:I

    .line 226
    const/high16 v5, 0x4316

    mul-float/2addr v5, v2

    add-float/2addr v5, v9

    float-to-int v5, v5

    iput v5, p0, Landroid/widget/SlidingDrawer;->mMaximumMinorVelocity:I

    .line 227
    const/high16 v5, 0x4348

    mul-float/2addr v5, v2

    add-float/2addr v5, v9

    float-to-int v5, v5

    iput v5, p0, Landroid/widget/SlidingDrawer;->mMaximumMajorVelocity:I

    .line 228
    const/high16 v5, 0x44fa

    mul-float/2addr v5, v2

    add-float/2addr v5, v9

    float-to-int v5, v5

    iput v5, p0, Landroid/widget/SlidingDrawer;->mMaximumAcceleration:I

    .line 229
    const/high16 v5, 0x447a

    mul-float/2addr v5, v2

    add-float/2addr v5, v9

    float-to-int v5, v5

    iput v5, p0, Landroid/widget/SlidingDrawer;->mVelocityUnits:I

    .line 231
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 233
    invoke-virtual {p0, v7}, Landroid/widget/SlidingDrawer;->setAlwaysDrawnWithCacheEnabled(Z)V

    .line 234
    return-void
.end method

.method static synthetic access$200(Landroid/widget/SlidingDrawer;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 82
    iget-boolean v0, p0, Landroid/widget/SlidingDrawer;->mLocked:Z

    return v0
.end method

.method static synthetic access$300(Landroid/widget/SlidingDrawer;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 82
    iget-boolean v0, p0, Landroid/widget/SlidingDrawer;->mAnimateOnClick:Z

    return v0
.end method

.method static synthetic access$400(Landroid/widget/SlidingDrawer;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 82
    invoke-direct {p0}, Landroid/widget/SlidingDrawer;->doAnimation()V

    return-void
.end method

.method private animateClose(I)V
    .locals 2
    .parameter "position"

    .prologue
    .line 478
    invoke-direct {p0, p1}, Landroid/widget/SlidingDrawer;->prepareTracking(I)V

    .line 479
    iget v0, p0, Landroid/widget/SlidingDrawer;->mMaximumAcceleration:I

    int-to-float v0, v0

    const/4 v1, 0x1

    invoke-direct {p0, p1, v0, v1}, Landroid/widget/SlidingDrawer;->performFling(IFZ)V

    .line 480
    return-void
.end method

.method private animateOpen(I)V
    .locals 2
    .parameter "position"

    .prologue
    .line 483
    invoke-direct {p0, p1}, Landroid/widget/SlidingDrawer;->prepareTracking(I)V

    .line 484
    iget v0, p0, Landroid/widget/SlidingDrawer;->mMaximumAcceleration:I

    neg-int v0, v0

    int-to-float v0, v0

    const/4 v1, 0x1

    invoke-direct {p0, p1, v0, v1}, Landroid/widget/SlidingDrawer;->performFling(IFZ)V

    .line 485
    return-void
.end method

.method private closeDrawer()V
    .locals 2

    .prologue
    .line 827
    const/16 v0, -0x2712

    invoke-direct {p0, v0}, Landroid/widget/SlidingDrawer;->moveHandle(I)V

    .line 828
    iget-object v0, p0, Landroid/widget/SlidingDrawer;->mContent:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 829
    iget-object v0, p0, Landroid/widget/SlidingDrawer;->mContent:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->destroyDrawingCache()V

    .line 831
    iget-boolean v0, p0, Landroid/widget/SlidingDrawer;->mExpanded:Z

    if-nez v0, :cond_1

    .line 839
    :cond_0
    :goto_0
    return-void

    .line 835
    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/SlidingDrawer;->mExpanded:Z

    .line 836
    iget-object v0, p0, Landroid/widget/SlidingDrawer;->mOnDrawerCloseListener:Landroid/widget/SlidingDrawer$OnDrawerCloseListener;

    if-eqz v0, :cond_0

    .line 837
    iget-object v0, p0, Landroid/widget/SlidingDrawer;->mOnDrawerCloseListener:Landroid/widget/SlidingDrawer$OnDrawerCloseListener;

    invoke-interface {v0}, Landroid/widget/SlidingDrawer$OnDrawerCloseListener;->onDrawerClosed()V

    goto :goto_0
.end method

.method private doAnimation()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 676
    iget-boolean v0, p0, Landroid/widget/SlidingDrawer;->mAnimating:Z

    if-eqz v0, :cond_0

    .line 677
    invoke-direct {p0}, Landroid/widget/SlidingDrawer;->incrementAnimation()V

    .line 678
    iget v1, p0, Landroid/widget/SlidingDrawer;->mAnimationPosition:F

    iget v2, p0, Landroid/widget/SlidingDrawer;->mBottomOffset:I

    iget-boolean v0, p0, Landroid/widget/SlidingDrawer;->mVertical:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/widget/SlidingDrawer;->getHeight()I

    move-result v0

    :goto_0
    add-int/2addr v0, v2

    add-int/lit8 v0, v0, -0x1

    int-to-float v0, v0

    cmpl-float v0, v1, v0

    if-ltz v0, :cond_2

    .line 679
    iput-boolean v3, p0, Landroid/widget/SlidingDrawer;->mAnimating:Z

    .line 680
    invoke-direct {p0}, Landroid/widget/SlidingDrawer;->closeDrawer()V

    .line 691
    :cond_0
    :goto_1
    return-void

    .line 678
    :cond_1
    invoke-virtual {p0}, Landroid/widget/SlidingDrawer;->getWidth()I

    move-result v0

    goto :goto_0

    .line 681
    :cond_2
    iget v0, p0, Landroid/widget/SlidingDrawer;->mAnimationPosition:F

    iget v1, p0, Landroid/widget/SlidingDrawer;->mTopOffset:I

    int-to-float v1, v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_3

    .line 682
    iput-boolean v3, p0, Landroid/widget/SlidingDrawer;->mAnimating:Z

    .line 683
    invoke-direct {p0}, Landroid/widget/SlidingDrawer;->openDrawer()V

    goto :goto_1

    .line 685
    :cond_3
    iget v0, p0, Landroid/widget/SlidingDrawer;->mAnimationPosition:F

    float-to-int v0, v0

    invoke-direct {p0, v0}, Landroid/widget/SlidingDrawer;->moveHandle(I)V

    .line 686
    iget-wide v0, p0, Landroid/widget/SlidingDrawer;->mCurrentAnimationTime:J

    const-wide/16 v2, 0x10

    add-long/2addr v0, v2

    iput-wide v0, p0, Landroid/widget/SlidingDrawer;->mCurrentAnimationTime:J

    .line 687
    iget-object v0, p0, Landroid/widget/SlidingDrawer;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Landroid/widget/SlidingDrawer;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x3e8

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    iget-wide v2, p0, Landroid/widget/SlidingDrawer;->mCurrentAnimationTime:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageAtTime(Landroid/os/Message;J)Z

    goto :goto_1
.end method

.method private incrementAnimation()V
    .locals 8

    .prologue
    .line 694
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    .line 695
    .local v1, now:J
    iget-wide v6, p0, Landroid/widget/SlidingDrawer;->mAnimationLastTime:J

    sub-long v6, v1, v6

    long-to-float v6, v6

    const/high16 v7, 0x447a

    div-float v4, v6, v7

    .line 696
    .local v4, t:F
    iget v3, p0, Landroid/widget/SlidingDrawer;->mAnimationPosition:F

    .line 697
    .local v3, position:F
    iget v5, p0, Landroid/widget/SlidingDrawer;->mAnimatedVelocity:F

    .line 698
    .local v5, v:F
    iget v0, p0, Landroid/widget/SlidingDrawer;->mAnimatedAcceleration:F

    .line 699
    .local v0, a:F
    mul-float v6, v5, v4

    add-float/2addr v6, v3

    const/high16 v7, 0x3f00

    mul-float/2addr v7, v0

    mul-float/2addr v7, v4

    mul-float/2addr v7, v4

    add-float/2addr v6, v7

    iput v6, p0, Landroid/widget/SlidingDrawer;->mAnimationPosition:F

    .line 700
    mul-float v6, v0, v4

    add-float/2addr v6, v5

    iput v6, p0, Landroid/widget/SlidingDrawer;->mAnimatedVelocity:F

    .line 701
    iput-wide v1, p0, Landroid/widget/SlidingDrawer;->mAnimationLastTime:J

    .line 702
    return-void
.end method

.method private moveHandle(I)V
    .locals 12
    .parameter "position"

    .prologue
    const/4 v11, 0x0

    const/16 v9, -0x2711

    const/16 v8, -0x2712

    .line 562
    iget-object v3, p0, Landroid/widget/SlidingDrawer;->mHandle:Landroid/view/View;

    .line 564
    .local v3, handle:Landroid/view/View;
    iget-boolean v7, p0, Landroid/widget/SlidingDrawer;->mVertical:Z

    if-eqz v7, :cond_4

    .line 565
    if-ne p1, v9, :cond_0

    .line 566
    iget v7, p0, Landroid/widget/SlidingDrawer;->mTopOffset:I

    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v8

    sub-int/2addr v7, v8

    invoke-virtual {v3, v7}, Landroid/view/View;->offsetTopAndBottom(I)V

    .line 567
    invoke-virtual {p0}, Landroid/widget/SlidingDrawer;->invalidate()V

    .line 625
    :goto_0
    return-void

    .line 568
    :cond_0
    if-ne p1, v8, :cond_1

    .line 569
    iget v7, p0, Landroid/widget/SlidingDrawer;->mBottomOffset:I

    iget v8, p0, Landroid/widget/SlidingDrawer;->mBottom:I

    add-int/2addr v7, v8

    iget v8, p0, Landroid/widget/SlidingDrawer;->mTop:I

    sub-int/2addr v7, v8

    iget v8, p0, Landroid/widget/SlidingDrawer;->mHandleHeight:I

    sub-int/2addr v7, v8

    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v8

    sub-int/2addr v7, v8

    invoke-virtual {v3, v7}, Landroid/view/View;->offsetTopAndBottom(I)V

    .line 571
    invoke-virtual {p0}, Landroid/widget/SlidingDrawer;->invalidate()V

    goto :goto_0

    .line 573
    :cond_1
    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v6

    .line 574
    .local v6, top:I
    sub-int v1, p1, v6

    .line 575
    .local v1, deltaY:I
    iget v7, p0, Landroid/widget/SlidingDrawer;->mTopOffset:I

    if-ge p1, v7, :cond_3

    .line 576
    iget v7, p0, Landroid/widget/SlidingDrawer;->mTopOffset:I

    sub-int v1, v7, v6

    .line 580
    :cond_2
    :goto_1
    invoke-virtual {v3, v1}, Landroid/view/View;->offsetTopAndBottom(I)V

    .line 582
    iget-object v2, p0, Landroid/widget/SlidingDrawer;->mFrame:Landroid/graphics/Rect;

    .line 583
    .local v2, frame:Landroid/graphics/Rect;
    iget-object v5, p0, Landroid/widget/SlidingDrawer;->mInvalidate:Landroid/graphics/Rect;

    .line 585
    .local v5, region:Landroid/graphics/Rect;
    invoke-virtual {v3, v2}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 586
    invoke-virtual {v5, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 588
    iget v7, v2, Landroid/graphics/Rect;->left:I

    iget v8, v2, Landroid/graphics/Rect;->top:I

    sub-int/2addr v8, v1

    iget v9, v2, Landroid/graphics/Rect;->right:I

    iget v10, v2, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v10, v1

    invoke-virtual {v5, v7, v8, v9, v10}, Landroid/graphics/Rect;->union(IIII)V

    .line 589
    iget v7, v2, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v7, v1

    invoke-virtual {p0}, Landroid/widget/SlidingDrawer;->getWidth()I

    move-result v8

    iget v9, v2, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v9, v1

    iget-object v10, p0, Landroid/widget/SlidingDrawer;->mContent:Landroid/view/View;

    invoke-virtual {v10}, Landroid/view/View;->getHeight()I

    move-result v10

    add-int/2addr v9, v10

    invoke-virtual {v5, v11, v7, v8, v9}, Landroid/graphics/Rect;->union(IIII)V

    .line 592
    invoke-virtual {p0, v5}, Landroid/widget/SlidingDrawer;->invalidate(Landroid/graphics/Rect;)V

    goto :goto_0

    .line 577
    .end local v2           #frame:Landroid/graphics/Rect;
    .end local v5           #region:Landroid/graphics/Rect;
    :cond_3
    iget v7, p0, Landroid/widget/SlidingDrawer;->mBottomOffset:I

    iget v8, p0, Landroid/widget/SlidingDrawer;->mBottom:I

    add-int/2addr v7, v8

    iget v8, p0, Landroid/widget/SlidingDrawer;->mTop:I

    sub-int/2addr v7, v8

    iget v8, p0, Landroid/widget/SlidingDrawer;->mHandleHeight:I

    sub-int/2addr v7, v8

    sub-int/2addr v7, v6

    if-le v1, v7, :cond_2

    .line 578
    iget v7, p0, Landroid/widget/SlidingDrawer;->mBottomOffset:I

    iget v8, p0, Landroid/widget/SlidingDrawer;->mBottom:I

    add-int/2addr v7, v8

    iget v8, p0, Landroid/widget/SlidingDrawer;->mTop:I

    sub-int/2addr v7, v8

    iget v8, p0, Landroid/widget/SlidingDrawer;->mHandleHeight:I

    sub-int/2addr v7, v8

    sub-int v1, v7, v6

    goto :goto_1

    .line 595
    .end local v1           #deltaY:I
    .end local v6           #top:I
    :cond_4
    if-ne p1, v9, :cond_5

    .line 596
    iget v7, p0, Landroid/widget/SlidingDrawer;->mTopOffset:I

    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    move-result v8

    sub-int/2addr v7, v8

    invoke-virtual {v3, v7}, Landroid/view/View;->offsetLeftAndRight(I)V

    .line 597
    invoke-virtual {p0}, Landroid/widget/SlidingDrawer;->invalidate()V

    goto/16 :goto_0

    .line 598
    :cond_5
    if-ne p1, v8, :cond_6

    .line 599
    iget v7, p0, Landroid/widget/SlidingDrawer;->mBottomOffset:I

    iget v8, p0, Landroid/widget/SlidingDrawer;->mRight:I

    add-int/2addr v7, v8

    iget v8, p0, Landroid/widget/SlidingDrawer;->mLeft:I

    sub-int/2addr v7, v8

    iget v8, p0, Landroid/widget/SlidingDrawer;->mHandleWidth:I

    sub-int/2addr v7, v8

    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    move-result v8

    sub-int/2addr v7, v8

    invoke-virtual {v3, v7}, Landroid/view/View;->offsetLeftAndRight(I)V

    .line 601
    invoke-virtual {p0}, Landroid/widget/SlidingDrawer;->invalidate()V

    goto/16 :goto_0

    .line 603
    :cond_6
    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    move-result v4

    .line 604
    .local v4, left:I
    sub-int v0, p1, v4

    .line 605
    .local v0, deltaX:I
    iget v7, p0, Landroid/widget/SlidingDrawer;->mTopOffset:I

    if-ge p1, v7, :cond_8

    .line 606
    iget v7, p0, Landroid/widget/SlidingDrawer;->mTopOffset:I

    sub-int v0, v7, v4

    .line 610
    :cond_7
    :goto_2
    invoke-virtual {v3, v0}, Landroid/view/View;->offsetLeftAndRight(I)V

    .line 612
    iget-object v2, p0, Landroid/widget/SlidingDrawer;->mFrame:Landroid/graphics/Rect;

    .line 613
    .restart local v2       #frame:Landroid/graphics/Rect;
    iget-object v5, p0, Landroid/widget/SlidingDrawer;->mInvalidate:Landroid/graphics/Rect;

    .line 615
    .restart local v5       #region:Landroid/graphics/Rect;
    invoke-virtual {v3, v2}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 616
    invoke-virtual {v5, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 618
    iget v7, v2, Landroid/graphics/Rect;->left:I

    sub-int/2addr v7, v0

    iget v8, v2, Landroid/graphics/Rect;->top:I

    iget v9, v2, Landroid/graphics/Rect;->right:I

    sub-int/2addr v9, v0

    iget v10, v2, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v5, v7, v8, v9, v10}, Landroid/graphics/Rect;->union(IIII)V

    .line 619
    iget v7, v2, Landroid/graphics/Rect;->right:I

    sub-int/2addr v7, v0

    iget v8, v2, Landroid/graphics/Rect;->right:I

    sub-int/2addr v8, v0

    iget-object v9, p0, Landroid/widget/SlidingDrawer;->mContent:Landroid/view/View;

    invoke-virtual {v9}, Landroid/view/View;->getWidth()I

    move-result v9

    add-int/2addr v8, v9

    invoke-virtual {p0}, Landroid/widget/SlidingDrawer;->getHeight()I

    move-result v9

    invoke-virtual {v5, v7, v11, v8, v9}, Landroid/graphics/Rect;->union(IIII)V

    .line 622
    invoke-virtual {p0, v5}, Landroid/widget/SlidingDrawer;->invalidate(Landroid/graphics/Rect;)V

    goto/16 :goto_0

    .line 607
    .end local v2           #frame:Landroid/graphics/Rect;
    .end local v5           #region:Landroid/graphics/Rect;
    :cond_8
    iget v7, p0, Landroid/widget/SlidingDrawer;->mBottomOffset:I

    iget v8, p0, Landroid/widget/SlidingDrawer;->mRight:I

    add-int/2addr v7, v8

    iget v8, p0, Landroid/widget/SlidingDrawer;->mLeft:I

    sub-int/2addr v7, v8

    iget v8, p0, Landroid/widget/SlidingDrawer;->mHandleWidth:I

    sub-int/2addr v7, v8

    sub-int/2addr v7, v4

    if-le v0, v7, :cond_7

    .line 608
    iget v7, p0, Landroid/widget/SlidingDrawer;->mBottomOffset:I

    iget v8, p0, Landroid/widget/SlidingDrawer;->mRight:I

    add-int/2addr v7, v8

    iget v8, p0, Landroid/widget/SlidingDrawer;->mLeft:I

    sub-int/2addr v7, v8

    iget v8, p0, Landroid/widget/SlidingDrawer;->mHandleWidth:I

    sub-int/2addr v7, v8

    sub-int v0, v7, v4

    goto :goto_2
.end method

.method private openDrawer()V
    .locals 2

    .prologue
    .line 842
    const/16 v0, -0x2711

    invoke-direct {p0, v0}, Landroid/widget/SlidingDrawer;->moveHandle(I)V

    .line 843
    iget-object v0, p0, Landroid/widget/SlidingDrawer;->mContent:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 845
    iget-boolean v0, p0, Landroid/widget/SlidingDrawer;->mExpanded:Z

    if-eqz v0, :cond_1

    .line 854
    :cond_0
    :goto_0
    return-void

    .line 849
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/SlidingDrawer;->mExpanded:Z

    .line 851
    iget-object v0, p0, Landroid/widget/SlidingDrawer;->mOnDrawerOpenListener:Landroid/widget/SlidingDrawer$OnDrawerOpenListener;

    if-eqz v0, :cond_0

    .line 852
    iget-object v0, p0, Landroid/widget/SlidingDrawer;->mOnDrawerOpenListener:Landroid/widget/SlidingDrawer$OnDrawerOpenListener;

    invoke-interface {v0}, Landroid/widget/SlidingDrawer$OnDrawerOpenListener;->onDrawerOpened()V

    goto :goto_0
.end method

.method private performFling(IFZ)V
    .locals 6
    .parameter "position"
    .parameter "velocity"
    .parameter "always"

    .prologue
    const/16 v5, 0x3e8

    const/4 v4, 0x0

    .line 488
    int-to-float v2, p1

    iput v2, p0, Landroid/widget/SlidingDrawer;->mAnimationPosition:F

    .line 489
    iput p2, p0, Landroid/widget/SlidingDrawer;->mAnimatedVelocity:F

    .line 491
    iget-boolean v2, p0, Landroid/widget/SlidingDrawer;->mExpanded:Z

    if-eqz v2, :cond_4

    .line 492
    if-nez p3, :cond_0

    iget v2, p0, Landroid/widget/SlidingDrawer;->mMaximumMajorVelocity:I

    int-to-float v2, v2

    cmpl-float v2, p2, v2

    if-gtz v2, :cond_0

    iget v3, p0, Landroid/widget/SlidingDrawer;->mTopOffset:I

    iget-boolean v2, p0, Landroid/widget/SlidingDrawer;->mVertical:Z

    if-eqz v2, :cond_2

    iget v2, p0, Landroid/widget/SlidingDrawer;->mHandleHeight:I

    :goto_0
    add-int/2addr v2, v3

    if-le p1, v2, :cond_3

    iget v2, p0, Landroid/widget/SlidingDrawer;->mMaximumMajorVelocity:I

    neg-int v2, v2

    int-to-float v2, v2

    cmpl-float v2, p2, v2

    if-lez v2, :cond_3

    .line 497
    :cond_0
    iget v2, p0, Landroid/widget/SlidingDrawer;->mMaximumAcceleration:I

    int-to-float v2, v2

    iput v2, p0, Landroid/widget/SlidingDrawer;->mAnimatedAcceleration:F

    .line 498
    cmpg-float v2, p2, v4

    if-gez v2, :cond_1

    .line 499
    iput v4, p0, Landroid/widget/SlidingDrawer;->mAnimatedVelocity:F

    .line 527
    :cond_1
    :goto_1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 528
    .local v0, now:J
    iput-wide v0, p0, Landroid/widget/SlidingDrawer;->mAnimationLastTime:J

    .line 529
    const-wide/16 v2, 0x10

    add-long/2addr v2, v0

    iput-wide v2, p0, Landroid/widget/SlidingDrawer;->mCurrentAnimationTime:J

    .line 530
    const/4 v2, 0x1

    iput-boolean v2, p0, Landroid/widget/SlidingDrawer;->mAnimating:Z

    .line 531
    iget-object v2, p0, Landroid/widget/SlidingDrawer;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v5}, Landroid/os/Handler;->removeMessages(I)V

    .line 532
    iget-object v2, p0, Landroid/widget/SlidingDrawer;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Landroid/widget/SlidingDrawer;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v5}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    iget-wide v4, p0, Landroid/widget/SlidingDrawer;->mCurrentAnimationTime:J

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->sendMessageAtTime(Landroid/os/Message;J)Z

    .line 533
    invoke-direct {p0}, Landroid/widget/SlidingDrawer;->stopTracking()V

    .line 534
    return-void

    .line 492
    .end local v0           #now:J
    :cond_2
    iget v2, p0, Landroid/widget/SlidingDrawer;->mHandleWidth:I

    goto :goto_0

    .line 503
    :cond_3
    iget v2, p0, Landroid/widget/SlidingDrawer;->mMaximumAcceleration:I

    neg-int v2, v2

    int-to-float v2, v2

    iput v2, p0, Landroid/widget/SlidingDrawer;->mAnimatedAcceleration:F

    .line 504
    cmpl-float v2, p2, v4

    if-lez v2, :cond_1

    .line 505
    iput v4, p0, Landroid/widget/SlidingDrawer;->mAnimatedVelocity:F

    goto :goto_1

    .line 509
    :cond_4
    if-nez p3, :cond_7

    iget v2, p0, Landroid/widget/SlidingDrawer;->mMaximumMajorVelocity:I

    int-to-float v2, v2

    cmpl-float v2, p2, v2

    if-gtz v2, :cond_5

    iget-boolean v2, p0, Landroid/widget/SlidingDrawer;->mVertical:Z

    if-eqz v2, :cond_6

    invoke-virtual {p0}, Landroid/widget/SlidingDrawer;->getHeight()I

    move-result v2

    :goto_2
    div-int/lit8 v2, v2, 0x2

    if-le p1, v2, :cond_7

    iget v2, p0, Landroid/widget/SlidingDrawer;->mMaximumMajorVelocity:I

    neg-int v2, v2

    int-to-float v2, v2

    cmpl-float v2, p2, v2

    if-lez v2, :cond_7

    .line 513
    :cond_5
    iget v2, p0, Landroid/widget/SlidingDrawer;->mMaximumAcceleration:I

    int-to-float v2, v2

    iput v2, p0, Landroid/widget/SlidingDrawer;->mAnimatedAcceleration:F

    .line 514
    cmpg-float v2, p2, v4

    if-gez v2, :cond_1

    .line 515
    iput v4, p0, Landroid/widget/SlidingDrawer;->mAnimatedVelocity:F

    goto :goto_1

    .line 509
    :cond_6
    invoke-virtual {p0}, Landroid/widget/SlidingDrawer;->getWidth()I

    move-result v2

    goto :goto_2

    .line 520
    :cond_7
    iget v2, p0, Landroid/widget/SlidingDrawer;->mMaximumAcceleration:I

    neg-int v2, v2

    int-to-float v2, v2

    iput v2, p0, Landroid/widget/SlidingDrawer;->mAnimatedAcceleration:F

    .line 521
    cmpl-float v2, p2, v4

    if-lez v2, :cond_1

    .line 522
    iput v4, p0, Landroid/widget/SlidingDrawer;->mAnimatedVelocity:F

    goto :goto_1
.end method

.method private prepareContent()V
    .locals 10

    .prologue
    const/4 v9, 0x0

    const/high16 v8, 0x4000

    .line 628
    iget-boolean v5, p0, Landroid/widget/SlidingDrawer;->mAnimating:Z

    if-eqz v5, :cond_0

    .line 659
    :goto_0
    return-void

    .line 634
    :cond_0
    iget-object v2, p0, Landroid/widget/SlidingDrawer;->mContent:Landroid/view/View;

    .line 635
    .local v2, content:Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->isLayoutRequested()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 636
    iget-boolean v5, p0, Landroid/widget/SlidingDrawer;->mVertical:Z

    if-eqz v5, :cond_3

    .line 637
    iget v0, p0, Landroid/widget/SlidingDrawer;->mHandleHeight:I

    .line 638
    .local v0, childHeight:I
    iget v5, p0, Landroid/widget/SlidingDrawer;->mBottom:I

    iget v6, p0, Landroid/widget/SlidingDrawer;->mTop:I

    sub-int/2addr v5, v6

    sub-int/2addr v5, v0

    iget v6, p0, Landroid/widget/SlidingDrawer;->mTopOffset:I

    sub-int v3, v5, v6

    .line 639
    .local v3, height:I
    iget v5, p0, Landroid/widget/SlidingDrawer;->mRight:I

    iget v6, p0, Landroid/widget/SlidingDrawer;->mLeft:I

    sub-int/2addr v5, v6

    invoke-static {v5, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    invoke-static {v3, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    invoke-virtual {v2, v5, v6}, Landroid/view/View;->measure(II)V

    .line 641
    iget v5, p0, Landroid/widget/SlidingDrawer;->mTopOffset:I

    add-int/2addr v5, v0

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v6

    iget v7, p0, Landroid/widget/SlidingDrawer;->mTopOffset:I

    add-int/2addr v7, v0

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v8

    add-int/2addr v7, v8

    invoke-virtual {v2, v9, v5, v6, v7}, Landroid/view/View;->layout(IIII)V

    .line 655
    .end local v0           #childHeight:I
    .end local v3           #height:I
    :cond_1
    :goto_1
    invoke-virtual {v2}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/ViewTreeObserver;->dispatchOnPreDraw()Z

    .line 656
    invoke-virtual {v2}, Landroid/view/View;->isHardwareAccelerated()Z

    move-result v5

    if-nez v5, :cond_2

    invoke-virtual {v2}, Landroid/view/View;->buildDrawingCache()V

    .line 658
    :cond_2
    const/16 v5, 0x8

    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 644
    :cond_3
    iget-object v5, p0, Landroid/widget/SlidingDrawer;->mHandle:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getWidth()I

    move-result v1

    .line 645
    .local v1, childWidth:I
    iget v5, p0, Landroid/widget/SlidingDrawer;->mRight:I

    iget v6, p0, Landroid/widget/SlidingDrawer;->mLeft:I

    sub-int/2addr v5, v6

    sub-int/2addr v5, v1

    iget v6, p0, Landroid/widget/SlidingDrawer;->mTopOffset:I

    sub-int v4, v5, v6

    .line 646
    .local v4, width:I
    invoke-static {v4, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    iget v6, p0, Landroid/widget/SlidingDrawer;->mBottom:I

    iget v7, p0, Landroid/widget/SlidingDrawer;->mTop:I

    sub-int/2addr v6, v7

    invoke-static {v6, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    invoke-virtual {v2, v5, v6}, Landroid/view/View;->measure(II)V

    .line 648
    iget v5, p0, Landroid/widget/SlidingDrawer;->mTopOffset:I

    add-int/2addr v5, v1

    iget v6, p0, Landroid/widget/SlidingDrawer;->mTopOffset:I

    add-int/2addr v6, v1

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    add-int/2addr v6, v7

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    invoke-virtual {v2, v5, v9, v6, v7}, Landroid/view/View;->layout(IIII)V

    goto :goto_1
.end method

.method private prepareTracking(I)V
    .locals 8
    .parameter "position"

    .prologue
    const/16 v7, 0x3e8

    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 537
    iput-boolean v4, p0, Landroid/widget/SlidingDrawer;->mTracking:Z

    .line 538
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v5

    iput-object v5, p0, Landroid/widget/SlidingDrawer;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 539
    iget-boolean v5, p0, Landroid/widget/SlidingDrawer;->mExpanded:Z

    if-nez v5, :cond_0

    move v2, v4

    .line 540
    .local v2, opening:Z
    :goto_0
    if-eqz v2, :cond_2

    .line 541
    iget v3, p0, Landroid/widget/SlidingDrawer;->mMaximumAcceleration:I

    int-to-float v3, v3

    iput v3, p0, Landroid/widget/SlidingDrawer;->mAnimatedAcceleration:F

    .line 542
    iget v3, p0, Landroid/widget/SlidingDrawer;->mMaximumMajorVelocity:I

    int-to-float v3, v3

    iput v3, p0, Landroid/widget/SlidingDrawer;->mAnimatedVelocity:F

    .line 543
    iget v5, p0, Landroid/widget/SlidingDrawer;->mBottomOffset:I

    iget-boolean v3, p0, Landroid/widget/SlidingDrawer;->mVertical:Z

    if-eqz v3, :cond_1

    invoke-virtual {p0}, Landroid/widget/SlidingDrawer;->getHeight()I

    move-result v3

    iget v6, p0, Landroid/widget/SlidingDrawer;->mHandleHeight:I

    sub-int/2addr v3, v6

    :goto_1
    add-int/2addr v3, v5

    int-to-float v3, v3

    iput v3, p0, Landroid/widget/SlidingDrawer;->mAnimationPosition:F

    .line 545
    iget v3, p0, Landroid/widget/SlidingDrawer;->mAnimationPosition:F

    float-to-int v3, v3

    invoke-direct {p0, v3}, Landroid/widget/SlidingDrawer;->moveHandle(I)V

    .line 546
    iput-boolean v4, p0, Landroid/widget/SlidingDrawer;->mAnimating:Z

    .line 547
    iget-object v3, p0, Landroid/widget/SlidingDrawer;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v7}, Landroid/os/Handler;->removeMessages(I)V

    .line 548
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 549
    .local v0, now:J
    iput-wide v0, p0, Landroid/widget/SlidingDrawer;->mAnimationLastTime:J

    .line 550
    const-wide/16 v5, 0x10

    add-long/2addr v5, v0

    iput-wide v5, p0, Landroid/widget/SlidingDrawer;->mCurrentAnimationTime:J

    .line 551
    iput-boolean v4, p0, Landroid/widget/SlidingDrawer;->mAnimating:Z

    .line 559
    .end local v0           #now:J
    :goto_2
    return-void

    .end local v2           #opening:Z
    :cond_0
    move v2, v3

    .line 539
    goto :goto_0

    .line 543
    .restart local v2       #opening:Z
    :cond_1
    invoke-virtual {p0}, Landroid/widget/SlidingDrawer;->getWidth()I

    move-result v3

    iget v6, p0, Landroid/widget/SlidingDrawer;->mHandleWidth:I

    sub-int/2addr v3, v6

    goto :goto_1

    .line 553
    :cond_2
    iget-boolean v4, p0, Landroid/widget/SlidingDrawer;->mAnimating:Z

    if-eqz v4, :cond_3

    .line 554
    iput-boolean v3, p0, Landroid/widget/SlidingDrawer;->mAnimating:Z

    .line 555
    iget-object v3, p0, Landroid/widget/SlidingDrawer;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v7}, Landroid/os/Handler;->removeMessages(I)V

    .line 557
    :cond_3
    invoke-direct {p0, p1}, Landroid/widget/SlidingDrawer;->moveHandle(I)V

    goto :goto_2
.end method

.method private stopTracking()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 662
    iget-object v0, p0, Landroid/widget/SlidingDrawer;->mHandle:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setPressed(Z)V

    .line 663
    iput-boolean v1, p0, Landroid/widget/SlidingDrawer;->mTracking:Z

    .line 665
    iget-object v0, p0, Landroid/widget/SlidingDrawer;->mOnDrawerScrollListener:Landroid/widget/SlidingDrawer$OnDrawerScrollListener;

    if-eqz v0, :cond_0

    .line 666
    iget-object v0, p0, Landroid/widget/SlidingDrawer;->mOnDrawerScrollListener:Landroid/widget/SlidingDrawer$OnDrawerScrollListener;

    invoke-interface {v0}, Landroid/widget/SlidingDrawer$OnDrawerScrollListener;->onScrollEnded()V

    .line 669
    :cond_0
    iget-object v0, p0, Landroid/widget/SlidingDrawer;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_1

    .line 670
    iget-object v0, p0, Landroid/widget/SlidingDrawer;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    .line 671
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/widget/SlidingDrawer;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 673
    :cond_1
    return-void
.end method


# virtual methods
.method public animateClose()V
    .locals 2

    .prologue
    .line 778
    invoke-direct {p0}, Landroid/widget/SlidingDrawer;->prepareContent()V

    .line 779
    iget-object v0, p0, Landroid/widget/SlidingDrawer;->mOnDrawerScrollListener:Landroid/widget/SlidingDrawer$OnDrawerScrollListener;

    .line 780
    .local v0, scrollListener:Landroid/widget/SlidingDrawer$OnDrawerScrollListener;
    if-eqz v0, :cond_0

    .line 781
    invoke-interface {v0}, Landroid/widget/SlidingDrawer$OnDrawerScrollListener;->onScrollStarted()V

    .line 783
    :cond_0
    iget-boolean v1, p0, Landroid/widget/SlidingDrawer;->mVertical:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroid/widget/SlidingDrawer;->mHandle:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v1

    :goto_0
    invoke-direct {p0, v1}, Landroid/widget/SlidingDrawer;->animateClose(I)V

    .line 785
    if-eqz v0, :cond_1

    .line 786
    invoke-interface {v0}, Landroid/widget/SlidingDrawer$OnDrawerScrollListener;->onScrollEnded()V

    .line 788
    :cond_1
    return-void

    .line 783
    :cond_2
    iget-object v1, p0, Landroid/widget/SlidingDrawer;->mHandle:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v1

    goto :goto_0
.end method

.method public animateOpen()V
    .locals 2

    .prologue
    .line 800
    invoke-direct {p0}, Landroid/widget/SlidingDrawer;->prepareContent()V

    .line 801
    iget-object v0, p0, Landroid/widget/SlidingDrawer;->mOnDrawerScrollListener:Landroid/widget/SlidingDrawer$OnDrawerScrollListener;

    .line 802
    .local v0, scrollListener:Landroid/widget/SlidingDrawer$OnDrawerScrollListener;
    if-eqz v0, :cond_0

    .line 803
    invoke-interface {v0}, Landroid/widget/SlidingDrawer$OnDrawerScrollListener;->onScrollStarted()V

    .line 805
    :cond_0
    iget-boolean v1, p0, Landroid/widget/SlidingDrawer;->mVertical:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroid/widget/SlidingDrawer;->mHandle:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v1

    :goto_0
    invoke-direct {p0, v1}, Landroid/widget/SlidingDrawer;->animateOpen(I)V

    .line 807
    const/16 v1, 0x20

    invoke-virtual {p0, v1}, Landroid/widget/SlidingDrawer;->sendAccessibilityEvent(I)V

    .line 809
    if-eqz v0, :cond_1

    .line 810
    invoke-interface {v0}, Landroid/widget/SlidingDrawer$OnDrawerScrollListener;->onScrollEnded()V

    .line 812
    :cond_1
    return-void

    .line 805
    :cond_2
    iget-object v1, p0, Landroid/widget/SlidingDrawer;->mHandle:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v1

    goto :goto_0
.end method

.method public animateToggle()V
    .locals 1

    .prologue
    .line 733
    iget-boolean v0, p0, Landroid/widget/SlidingDrawer;->mExpanded:Z

    if-nez v0, :cond_0

    .line 734
    invoke-virtual {p0}, Landroid/widget/SlidingDrawer;->animateOpen()V

    .line 738
    :goto_0
    return-void

    .line 736
    :cond_0
    invoke-virtual {p0}, Landroid/widget/SlidingDrawer;->animateClose()V

    goto :goto_0
.end method

.method public close()V
    .locals 0

    .prologue
    .line 763
    invoke-direct {p0}, Landroid/widget/SlidingDrawer;->closeDrawer()V

    .line 764
    invoke-virtual {p0}, Landroid/widget/SlidingDrawer;->invalidate()V

    .line 765
    invoke-virtual {p0}, Landroid/widget/SlidingDrawer;->requestLayout()V

    .line 766
    return-void
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 8
    .parameter "canvas"

    .prologue
    const/4 v7, 0x0

    const/4 v5, 0x0

    .line 283
    invoke-virtual {p0}, Landroid/widget/SlidingDrawer;->getDrawingTime()J

    move-result-wide v1

    .line 284
    .local v1, drawingTime:J
    iget-object v3, p0, Landroid/widget/SlidingDrawer;->mHandle:Landroid/view/View;

    .line 285
    .local v3, handle:Landroid/view/View;
    iget-boolean v4, p0, Landroid/widget/SlidingDrawer;->mVertical:Z

    .line 287
    .local v4, isVertical:Z
    invoke-virtual {p0, p1, v3, v1, v2}, Landroid/widget/SlidingDrawer;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    .line 289
    iget-boolean v6, p0, Landroid/widget/SlidingDrawer;->mTracking:Z

    if-nez v6, :cond_0

    iget-boolean v6, p0, Landroid/widget/SlidingDrawer;->mAnimating:Z

    if-eqz v6, :cond_6

    .line 290
    :cond_0
    iget-object v6, p0, Landroid/widget/SlidingDrawer;->mContent:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getDrawingCache()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 291
    .local v0, cache:Landroid/graphics/Bitmap;
    if-eqz v0, :cond_3

    .line 292
    if-eqz v4, :cond_2

    .line 293
    invoke-virtual {v3}, Landroid/view/View;->getBottom()I

    move-result v6

    int-to-float v6, v6

    invoke-virtual {p1, v0, v5, v6, v7}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 307
    .end local v0           #cache:Landroid/graphics/Bitmap;
    :cond_1
    :goto_0
    return-void

    .line 295
    .restart local v0       #cache:Landroid/graphics/Bitmap;
    :cond_2
    invoke-virtual {v3}, Landroid/view/View;->getRight()I

    move-result v6

    int-to-float v6, v6

    invoke-virtual {p1, v0, v6, v5, v7}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto :goto_0

    .line 298
    :cond_3
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 299
    if-eqz v4, :cond_5

    move v6, v5

    :goto_1
    if-eqz v4, :cond_4

    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v5

    iget v7, p0, Landroid/widget/SlidingDrawer;->mTopOffset:I

    sub-int/2addr v5, v7

    int-to-float v5, v5

    :cond_4
    invoke-virtual {p1, v6, v5}, Landroid/graphics/Canvas;->translate(FF)V

    .line 301
    iget-object v5, p0, Landroid/widget/SlidingDrawer;->mContent:Landroid/view/View;

    invoke-virtual {p0, p1, v5, v1, v2}, Landroid/widget/SlidingDrawer;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    .line 302
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_0

    .line 299
    :cond_5
    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    move-result v6

    iget v7, p0, Landroid/widget/SlidingDrawer;->mTopOffset:I

    sub-int/2addr v6, v7

    int-to-float v6, v6

    goto :goto_1

    .line 304
    .end local v0           #cache:Landroid/graphics/Bitmap;
    :cond_6
    iget-boolean v5, p0, Landroid/widget/SlidingDrawer;->mExpanded:Z

    if-eqz v5, :cond_1

    .line 305
    iget-object v5, p0, Landroid/widget/SlidingDrawer;->mContent:Landroid/view/View;

    invoke-virtual {p0, p1, v5, v1, v2}, Landroid/widget/SlidingDrawer;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    goto :goto_0
.end method

.method public getContent()Landroid/view/View;
    .locals 1

    .prologue
    .line 903
    iget-object v0, p0, Landroid/widget/SlidingDrawer;->mContent:Landroid/view/View;

    return-object v0
.end method

.method public getHandle()Landroid/view/View;
    .locals 1

    .prologue
    .line 893
    iget-object v0, p0, Landroid/widget/SlidingDrawer;->mHandle:Landroid/view/View;

    return-object v0
.end method

.method public isMoving()Z
    .locals 1

    .prologue
    .line 939
    iget-boolean v0, p0, Landroid/widget/SlidingDrawer;->mTracking:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Landroid/widget/SlidingDrawer;->mAnimating:Z

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isOpened()Z
    .locals 1

    .prologue
    .line 930
    iget-boolean v0, p0, Landroid/widget/SlidingDrawer;->mExpanded:Z

    return v0
.end method

.method public lock()V
    .locals 1

    .prologue
    .line 921
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/SlidingDrawer;->mLocked:Z

    .line 922
    return-void
.end method

.method protected onFinishInflate()V
    .locals 3

    .prologue
    .line 238
    iget v0, p0, Landroid/widget/SlidingDrawer;->mHandleId:I

    invoke-virtual {p0, v0}, Landroid/widget/SlidingDrawer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/SlidingDrawer;->mHandle:Landroid/view/View;

    .line 239
    iget-object v0, p0, Landroid/widget/SlidingDrawer;->mHandle:Landroid/view/View;

    if-nez v0, :cond_0

    .line 240
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The handle attribute is must refer to an existing child."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 243
    :cond_0
    iget-object v0, p0, Landroid/widget/SlidingDrawer;->mHandle:Landroid/view/View;

    new-instance v1, Landroid/widget/SlidingDrawer$DrawerToggler;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Landroid/widget/SlidingDrawer$DrawerToggler;-><init>(Landroid/widget/SlidingDrawer;Landroid/widget/SlidingDrawer$1;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 245
    iget v0, p0, Landroid/widget/SlidingDrawer;->mContentId:I

    invoke-virtual {p0, v0}, Landroid/widget/SlidingDrawer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/SlidingDrawer;->mContent:Landroid/view/View;

    .line 246
    iget-object v0, p0, Landroid/widget/SlidingDrawer;->mContent:Landroid/view/View;

    if-nez v0, :cond_1

    .line 247
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The content attribute is must refer to an existing child."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 250
    :cond_1
    iget-object v0, p0, Landroid/widget/SlidingDrawer;->mContent:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 251
    return-void
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1
    .parameter "event"

    .prologue
    .line 816
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 817
    const-class v0, Landroid/widget/SlidingDrawer;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    .line 818
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 1
    .parameter "info"

    .prologue
    .line 822
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 823
    const-class v0, Landroid/widget/SlidingDrawer;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    .line 824
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 11
    .parameter "event"

    .prologue
    const/4 v7, 0x0

    const/4 v8, 0x1

    .line 350
    iget-boolean v9, p0, Landroid/widget/SlidingDrawer;->mLocked:Z

    if-eqz v9, :cond_1

    .line 391
    :cond_0
    :goto_0
    return v7

    .line 354
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 356
    .local v0, action:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    .line 357
    .local v5, x:F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    .line 359
    .local v6, y:F
    iget-object v1, p0, Landroid/widget/SlidingDrawer;->mFrame:Landroid/graphics/Rect;

    .line 360
    .local v1, frame:Landroid/graphics/Rect;
    iget-object v2, p0, Landroid/widget/SlidingDrawer;->mHandle:Landroid/view/View;

    .line 362
    .local v2, handle:Landroid/view/View;
    invoke-virtual {v2, v1}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 363
    iget-boolean v9, p0, Landroid/widget/SlidingDrawer;->mTracking:Z

    if-nez v9, :cond_2

    float-to-int v9, v5

    float-to-int v10, v6

    invoke-virtual {v1, v9, v10}, Landroid/graphics/Rect;->contains(II)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 367
    :cond_2
    if-nez v0, :cond_4

    .line 368
    iput-boolean v8, p0, Landroid/widget/SlidingDrawer;->mTracking:Z

    .line 370
    invoke-virtual {v2, v8}, Landroid/view/View;->setPressed(Z)V

    .line 372
    invoke-direct {p0}, Landroid/widget/SlidingDrawer;->prepareContent()V

    .line 375
    iget-object v7, p0, Landroid/widget/SlidingDrawer;->mOnDrawerScrollListener:Landroid/widget/SlidingDrawer$OnDrawerScrollListener;

    if-eqz v7, :cond_3

    .line 376
    iget-object v7, p0, Landroid/widget/SlidingDrawer;->mOnDrawerScrollListener:Landroid/widget/SlidingDrawer$OnDrawerScrollListener;

    invoke-interface {v7}, Landroid/widget/SlidingDrawer$OnDrawerScrollListener;->onScrollStarted()V

    .line 379
    :cond_3
    iget-boolean v7, p0, Landroid/widget/SlidingDrawer;->mVertical:Z

    if-eqz v7, :cond_5

    .line 380
    iget-object v7, p0, Landroid/widget/SlidingDrawer;->mHandle:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getTop()I

    move-result v4

    .line 381
    .local v4, top:I
    float-to-int v7, v6

    sub-int/2addr v7, v4

    iput v7, p0, Landroid/widget/SlidingDrawer;->mTouchDelta:I

    .line 382
    invoke-direct {p0, v4}, Landroid/widget/SlidingDrawer;->prepareTracking(I)V

    .line 388
    .end local v4           #top:I
    :goto_1
    iget-object v7, p0, Landroid/widget/SlidingDrawer;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v7, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    :cond_4
    move v7, v8

    .line 391
    goto :goto_0

    .line 384
    :cond_5
    iget-object v7, p0, Landroid/widget/SlidingDrawer;->mHandle:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getLeft()I

    move-result v3

    .line 385
    .local v3, left:I
    float-to-int v7, v5

    sub-int/2addr v7, v3

    iput v7, p0, Landroid/widget/SlidingDrawer;->mTouchDelta:I

    .line 386
    invoke-direct {p0, v3}, Landroid/widget/SlidingDrawer;->prepareTracking(I)V

    goto :goto_1
.end method

.method protected onLayout(ZIIII)V
    .locals 13
    .parameter "changed"
    .parameter "l"
    .parameter "t"
    .parameter "r"
    .parameter "b"

    .prologue
    .line 311
    iget-boolean v8, p0, Landroid/widget/SlidingDrawer;->mTracking:Z

    if-eqz v8, :cond_0

    .line 346
    :goto_0
    return-void

    .line 315
    :cond_0
    sub-int v7, p4, p2

    .line 316
    .local v7, width:I
    sub-int v6, p5, p3

    .line 318
    .local v6, height:I
    iget-object v5, p0, Landroid/widget/SlidingDrawer;->mHandle:Landroid/view/View;

    .line 320
    .local v5, handle:Landroid/view/View;
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    .line 321
    .local v3, childWidth:I
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    .line 326
    .local v0, childHeight:I
    iget-object v4, p0, Landroid/widget/SlidingDrawer;->mContent:Landroid/view/View;

    .line 328
    .local v4, content:Landroid/view/View;
    iget-boolean v8, p0, Landroid/widget/SlidingDrawer;->mVertical:Z

    if-eqz v8, :cond_2

    .line 329
    sub-int v8, v7, v3

    div-int/lit8 v1, v8, 0x2

    .line 330
    .local v1, childLeft:I
    iget-boolean v8, p0, Landroid/widget/SlidingDrawer;->mExpanded:Z

    if-eqz v8, :cond_1

    iget v2, p0, Landroid/widget/SlidingDrawer;->mTopOffset:I

    .line 332
    .local v2, childTop:I
    :goto_1
    const/4 v8, 0x0

    iget v9, p0, Landroid/widget/SlidingDrawer;->mTopOffset:I

    add-int/2addr v9, v0

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v10

    iget v11, p0, Landroid/widget/SlidingDrawer;->mTopOffset:I

    add-int/2addr v11, v0

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v12

    add-int/2addr v11, v12

    invoke-virtual {v4, v8, v9, v10, v11}, Landroid/view/View;->layout(IIII)V

    .line 343
    :goto_2
    add-int v8, v1, v3

    add-int v9, v2, v0

    invoke-virtual {v5, v1, v2, v8, v9}, Landroid/view/View;->layout(IIII)V

    .line 344
    invoke-virtual {v5}, Landroid/view/View;->getHeight()I

    move-result v8

    iput v8, p0, Landroid/widget/SlidingDrawer;->mHandleHeight:I

    .line 345
    invoke-virtual {v5}, Landroid/view/View;->getWidth()I

    move-result v8

    iput v8, p0, Landroid/widget/SlidingDrawer;->mHandleWidth:I

    goto :goto_0

    .line 330
    .end local v2           #childTop:I
    :cond_1
    sub-int v8, v6, v0

    iget v9, p0, Landroid/widget/SlidingDrawer;->mBottomOffset:I

    add-int v2, v8, v9

    goto :goto_1

    .line 335
    .end local v1           #childLeft:I
    :cond_2
    iget-boolean v8, p0, Landroid/widget/SlidingDrawer;->mExpanded:Z

    if-eqz v8, :cond_3

    iget v1, p0, Landroid/widget/SlidingDrawer;->mTopOffset:I

    .line 336
    .restart local v1       #childLeft:I
    :goto_3
    sub-int v8, v6, v0

    div-int/lit8 v2, v8, 0x2

    .line 338
    .restart local v2       #childTop:I
    iget v8, p0, Landroid/widget/SlidingDrawer;->mTopOffset:I

    add-int/2addr v8, v3

    const/4 v9, 0x0

    iget v10, p0, Landroid/widget/SlidingDrawer;->mTopOffset:I

    add-int/2addr v10, v3

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v11

    add-int/2addr v10, v11

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v11

    invoke-virtual {v4, v8, v9, v10, v11}, Landroid/view/View;->layout(IIII)V

    goto :goto_2

    .line 335
    .end local v1           #childLeft:I
    .end local v2           #childTop:I
    :cond_3
    sub-int v8, v7, v3

    iget v9, p0, Landroid/widget/SlidingDrawer;->mBottomOffset:I

    add-int v1, v8, v9

    goto :goto_3
.end method

.method protected onMeasure(II)V
    .locals 10
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    const/high16 v9, 0x4000

    .line 255
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v5

    .line 256
    .local v5, widthSpecMode:I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v6

    .line 258
    .local v6, widthSpecSize:I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v2

    .line 259
    .local v2, heightSpecMode:I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v3

    .line 261
    .local v3, heightSpecSize:I
    if-eqz v5, :cond_0

    if-nez v2, :cond_1

    .line 262
    :cond_0
    new-instance v7, Ljava/lang/RuntimeException;

    const-string v8, "SlidingDrawer cannot have UNSPECIFIED dimensions"

    invoke-direct {v7, v8}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 265
    :cond_1
    iget-object v0, p0, Landroid/widget/SlidingDrawer;->mHandle:Landroid/view/View;

    .line 266
    .local v0, handle:Landroid/view/View;
    invoke-virtual {p0, v0, p1, p2}, Landroid/widget/SlidingDrawer;->measureChild(Landroid/view/View;II)V

    .line 268
    iget-boolean v7, p0, Landroid/widget/SlidingDrawer;->mVertical:Z

    if-eqz v7, :cond_2

    .line 269
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    sub-int v7, v3, v7

    iget v8, p0, Landroid/widget/SlidingDrawer;->mTopOffset:I

    sub-int v1, v7, v8

    .line 270
    .local v1, height:I
    iget-object v7, p0, Landroid/widget/SlidingDrawer;->mContent:Landroid/view/View;

    invoke-static {v6, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v8

    invoke-static {v1, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v9

    invoke-virtual {v7, v8, v9}, Landroid/view/View;->measure(II)V

    .line 278
    .end local v1           #height:I
    :goto_0
    invoke-virtual {p0, v6, v3}, Landroid/widget/SlidingDrawer;->setMeasuredDimension(II)V

    .line 279
    return-void

    .line 273
    :cond_2
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    sub-int v7, v6, v7

    iget v8, p0, Landroid/widget/SlidingDrawer;->mTopOffset:I

    sub-int v4, v7, v8

    .line 274
    .local v4, width:I
    iget-object v7, p0, Landroid/widget/SlidingDrawer;->mContent:Landroid/view/View;

    invoke-static {v4, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v8

    invoke-static {v3, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v9

    invoke-virtual {v7, v8, v9}, Landroid/view/View;->measure(II)V

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 13
    .parameter "event"

    .prologue
    .line 396
    iget-boolean v9, p0, Landroid/widget/SlidingDrawer;->mLocked:Z

    if-eqz v9, :cond_0

    .line 397
    const/4 v9, 0x1

    .line 474
    :goto_0
    return v9

    .line 400
    :cond_0
    iget-boolean v9, p0, Landroid/widget/SlidingDrawer;->mTracking:Z

    if-eqz v9, :cond_1

    .line 401
    iget-object v9, p0, Landroid/widget/SlidingDrawer;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v9, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 402
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 403
    .local v0, action:I
    packed-switch v0, :pswitch_data_0

    .line 474
    .end local v0           #action:I
    :cond_1
    :goto_1
    iget-boolean v9, p0, Landroid/widget/SlidingDrawer;->mTracking:Z

    if-nez v9, :cond_2

    iget-boolean v9, p0, Landroid/widget/SlidingDrawer;->mAnimating:Z

    if-nez v9, :cond_2

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v9

    if-eqz v9, :cond_18

    :cond_2
    const/4 v9, 0x1

    goto :goto_0

    .line 405
    .restart local v0       #action:I
    :pswitch_0
    iget-boolean v9, p0, Landroid/widget/SlidingDrawer;->mVertical:Z

    if-eqz v9, :cond_3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v9

    :goto_2
    float-to-int v9, v9

    iget v10, p0, Landroid/widget/SlidingDrawer;->mTouchDelta:I

    sub-int/2addr v9, v10

    invoke-direct {p0, v9}, Landroid/widget/SlidingDrawer;->moveHandle(I)V

    goto :goto_1

    :cond_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v9

    goto :goto_2

    .line 409
    :pswitch_1
    iget-object v5, p0, Landroid/widget/SlidingDrawer;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 410
    .local v5, velocityTracker:Landroid/view/VelocityTracker;
    iget v9, p0, Landroid/widget/SlidingDrawer;->mVelocityUnits:I

    invoke-virtual {v5, v9}, Landroid/view/VelocityTracker;->computeCurrentVelocity(I)V

    .line 412
    invoke-virtual {v5}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result v8

    .line 413
    .local v8, yVelocity:F
    invoke-virtual {v5}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result v7

    .line 416
    .local v7, xVelocity:F
    iget-boolean v6, p0, Landroid/widget/SlidingDrawer;->mVertical:Z

    .line 417
    .local v6, vertical:Z
    if-eqz v6, :cond_a

    .line 418
    const/4 v9, 0x0

    cmpg-float v9, v8, v9

    if-gez v9, :cond_9

    const/4 v2, 0x1

    .line 419
    .local v2, negative:Z
    :goto_3
    const/4 v9, 0x0

    cmpg-float v9, v7, v9

    if-gez v9, :cond_4

    .line 420
    neg-float v7, v7

    .line 422
    :cond_4
    iget v9, p0, Landroid/widget/SlidingDrawer;->mMaximumMinorVelocity:I

    int-to-float v9, v9

    cmpl-float v9, v7, v9

    if-lez v9, :cond_5

    .line 423
    iget v9, p0, Landroid/widget/SlidingDrawer;->mMaximumMinorVelocity:I

    int-to-float v7, v9

    .line 435
    :cond_5
    :goto_4
    float-to-double v9, v7

    float-to-double v11, v8

    invoke-static {v9, v10, v11, v12}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v9

    double-to-float v4, v9

    .line 436
    .local v4, velocity:F
    if-eqz v2, :cond_6

    .line 437
    neg-float v4, v4

    .line 440
    :cond_6
    iget-object v9, p0, Landroid/widget/SlidingDrawer;->mHandle:Landroid/view/View;

    invoke-virtual {v9}, Landroid/view/View;->getTop()I

    move-result v3

    .line 441
    .local v3, top:I
    iget-object v9, p0, Landroid/widget/SlidingDrawer;->mHandle:Landroid/view/View;

    invoke-virtual {v9}, Landroid/view/View;->getLeft()I

    move-result v1

    .line 443
    .local v1, left:I
    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v9

    iget v10, p0, Landroid/widget/SlidingDrawer;->mMaximumTapVelocity:I

    int-to-float v10, v10

    cmpg-float v9, v9, v10

    if-gez v9, :cond_16

    .line 444
    if-eqz v6, :cond_d

    iget-boolean v9, p0, Landroid/widget/SlidingDrawer;->mExpanded:Z

    if-eqz v9, :cond_7

    iget v9, p0, Landroid/widget/SlidingDrawer;->mTapThreshold:I

    iget v10, p0, Landroid/widget/SlidingDrawer;->mTopOffset:I

    add-int/2addr v9, v10

    if-lt v3, v9, :cond_8

    :cond_7
    iget-boolean v9, p0, Landroid/widget/SlidingDrawer;->mExpanded:Z

    if-nez v9, :cond_f

    iget v9, p0, Landroid/widget/SlidingDrawer;->mBottomOffset:I

    iget v10, p0, Landroid/widget/SlidingDrawer;->mBottom:I

    add-int/2addr v9, v10

    iget v10, p0, Landroid/widget/SlidingDrawer;->mTop:I

    sub-int/2addr v9, v10

    iget v10, p0, Landroid/widget/SlidingDrawer;->mHandleHeight:I

    sub-int/2addr v9, v10

    iget v10, p0, Landroid/widget/SlidingDrawer;->mTapThreshold:I

    sub-int/2addr v9, v10

    if-le v3, v9, :cond_f

    .line 451
    :cond_8
    iget-boolean v9, p0, Landroid/widget/SlidingDrawer;->mAllowSingleTap:Z

    if-eqz v9, :cond_13

    .line 452
    const/4 v9, 0x0

    invoke-virtual {p0, v9}, Landroid/widget/SlidingDrawer;->playSoundEffect(I)V

    .line 454
    iget-boolean v9, p0, Landroid/widget/SlidingDrawer;->mExpanded:Z

    if-eqz v9, :cond_11

    .line 455
    if-eqz v6, :cond_10

    .end local v3           #top:I
    :goto_5
    invoke-direct {p0, v3}, Landroid/widget/SlidingDrawer;->animateClose(I)V

    goto/16 :goto_1

    .line 418
    .end local v1           #left:I
    .end local v2           #negative:Z
    .end local v4           #velocity:F
    :cond_9
    const/4 v2, 0x0

    goto :goto_3

    .line 426
    :cond_a
    const/4 v9, 0x0

    cmpg-float v9, v7, v9

    if-gez v9, :cond_c

    const/4 v2, 0x1

    .line 427
    .restart local v2       #negative:Z
    :goto_6
    const/4 v9, 0x0

    cmpg-float v9, v8, v9

    if-gez v9, :cond_b

    .line 428
    neg-float v8, v8

    .line 430
    :cond_b
    iget v9, p0, Landroid/widget/SlidingDrawer;->mMaximumMinorVelocity:I

    int-to-float v9, v9

    cmpl-float v9, v8, v9

    if-lez v9, :cond_5

    .line 431
    iget v9, p0, Landroid/widget/SlidingDrawer;->mMaximumMinorVelocity:I

    int-to-float v8, v9

    goto :goto_4

    .line 426
    .end local v2           #negative:Z
    :cond_c
    const/4 v2, 0x0

    goto :goto_6

    .line 444
    .restart local v1       #left:I
    .restart local v2       #negative:Z
    .restart local v3       #top:I
    .restart local v4       #velocity:F
    :cond_d
    iget-boolean v9, p0, Landroid/widget/SlidingDrawer;->mExpanded:Z

    if-eqz v9, :cond_e

    iget v9, p0, Landroid/widget/SlidingDrawer;->mTapThreshold:I

    iget v10, p0, Landroid/widget/SlidingDrawer;->mTopOffset:I

    add-int/2addr v9, v10

    if-lt v1, v9, :cond_8

    :cond_e
    iget-boolean v9, p0, Landroid/widget/SlidingDrawer;->mExpanded:Z

    if-nez v9, :cond_f

    iget v9, p0, Landroid/widget/SlidingDrawer;->mBottomOffset:I

    iget v10, p0, Landroid/widget/SlidingDrawer;->mRight:I

    add-int/2addr v9, v10

    iget v10, p0, Landroid/widget/SlidingDrawer;->mLeft:I

    sub-int/2addr v9, v10

    iget v10, p0, Landroid/widget/SlidingDrawer;->mHandleWidth:I

    sub-int/2addr v9, v10

    iget v10, p0, Landroid/widget/SlidingDrawer;->mTapThreshold:I

    sub-int/2addr v9, v10

    if-gt v1, v9, :cond_8

    .line 464
    :cond_f
    if-eqz v6, :cond_15

    .end local v3           #top:I
    :goto_7
    const/4 v9, 0x0

    invoke-direct {p0, v3, v4, v9}, Landroid/widget/SlidingDrawer;->performFling(IFZ)V

    goto/16 :goto_1

    .restart local v3       #top:I
    :cond_10
    move v3, v1

    .line 455
    goto :goto_5

    .line 457
    :cond_11
    if-eqz v6, :cond_12

    .end local v3           #top:I
    :goto_8
    invoke-direct {p0, v3}, Landroid/widget/SlidingDrawer;->animateOpen(I)V

    goto/16 :goto_1

    .restart local v3       #top:I
    :cond_12
    move v3, v1

    goto :goto_8

    .line 460
    :cond_13
    if-eqz v6, :cond_14

    .end local v3           #top:I
    :goto_9
    const/4 v9, 0x0

    invoke-direct {p0, v3, v4, v9}, Landroid/widget/SlidingDrawer;->performFling(IFZ)V

    goto/16 :goto_1

    .restart local v3       #top:I
    :cond_14
    move v3, v1

    goto :goto_9

    :cond_15
    move v3, v1

    .line 464
    goto :goto_7

    .line 467
    :cond_16
    if-eqz v6, :cond_17

    .end local v3           #top:I
    :goto_a
    const/4 v9, 0x0

    invoke-direct {p0, v3, v4, v9}, Landroid/widget/SlidingDrawer;->performFling(IFZ)V

    goto/16 :goto_1

    .restart local v3       #top:I
    :cond_17
    move v3, v1

    goto :goto_a

    .line 474
    .end local v0           #action:I
    .end local v1           #left:I
    .end local v2           #negative:Z
    .end local v3           #top:I
    .end local v4           #velocity:F
    .end local v5           #velocityTracker:Landroid/view/VelocityTracker;
    .end local v6           #vertical:Z
    .end local v7           #xVelocity:F
    .end local v8           #yVelocity:F
    :cond_18
    const/4 v9, 0x0

    goto/16 :goto_0

    .line 403
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public open()V
    .locals 1

    .prologue
    .line 748
    invoke-direct {p0}, Landroid/widget/SlidingDrawer;->openDrawer()V

    .line 749
    invoke-virtual {p0}, Landroid/widget/SlidingDrawer;->invalidate()V

    .line 750
    invoke-virtual {p0}, Landroid/widget/SlidingDrawer;->requestLayout()V

    .line 752
    const/16 v0, 0x20

    invoke-virtual {p0, v0}, Landroid/widget/SlidingDrawer;->sendAccessibilityEvent(I)V

    .line 753
    return-void
.end method

.method public setOnDrawerCloseListener(Landroid/widget/SlidingDrawer$OnDrawerCloseListener;)V
    .locals 0
    .parameter "onDrawerCloseListener"

    .prologue
    .line 871
    iput-object p1, p0, Landroid/widget/SlidingDrawer;->mOnDrawerCloseListener:Landroid/widget/SlidingDrawer$OnDrawerCloseListener;

    .line 872
    return-void
.end method

.method public setOnDrawerOpenListener(Landroid/widget/SlidingDrawer$OnDrawerOpenListener;)V
    .locals 0
    .parameter "onDrawerOpenListener"

    .prologue
    .line 862
    iput-object p1, p0, Landroid/widget/SlidingDrawer;->mOnDrawerOpenListener:Landroid/widget/SlidingDrawer$OnDrawerOpenListener;

    .line 863
    return-void
.end method

.method public setOnDrawerScrollListener(Landroid/widget/SlidingDrawer$OnDrawerScrollListener;)V
    .locals 0
    .parameter "onDrawerScrollListener"

    .prologue
    .line 883
    iput-object p1, p0, Landroid/widget/SlidingDrawer;->mOnDrawerScrollListener:Landroid/widget/SlidingDrawer$OnDrawerScrollListener;

    .line 884
    return-void
.end method

.method public toggle()V
    .locals 1

    .prologue
    .line 714
    iget-boolean v0, p0, Landroid/widget/SlidingDrawer;->mExpanded:Z

    if-nez v0, :cond_0

    .line 715
    invoke-direct {p0}, Landroid/widget/SlidingDrawer;->openDrawer()V

    .line 719
    :goto_0
    invoke-virtual {p0}, Landroid/widget/SlidingDrawer;->invalidate()V

    .line 720
    invoke-virtual {p0}, Landroid/widget/SlidingDrawer;->requestLayout()V

    .line 721
    return-void

    .line 717
    :cond_0
    invoke-direct {p0}, Landroid/widget/SlidingDrawer;->closeDrawer()V

    goto :goto_0
.end method

.method public unlock()V
    .locals 1

    .prologue
    .line 912
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/SlidingDrawer;->mLocked:Z

    .line 913
    return-void
.end method
