.class public Lcom/sec/android/glview/TwGLList;
.super Lcom/sec/android/glview/TwGLViewGroup;
.source "TwGLList.java"

# interfaces
.implements Lcom/sec/android/glview/TwGLView$OnTouchListener;
.implements Lcom/sec/android/glview/TwGLView$OnKeyListener;
.implements Lcom/sec/android/glview/TwGLView$OnDragListener;
.implements Lcom/sec/android/glview/TwGLView$OnFocusListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/glview/TwGLList$TwGLListGestureDetectorListener;,
        Lcom/sec/android/glview/TwGLList$OnScrollListener;,
        Lcom/sec/android/glview/TwGLList$OnItemSelectedListener;,
        Lcom/sec/android/glview/TwGLList$Adapter;
    }
.end annotation


# static fields
.field private static final BOUNCE_DECELERATION_POSITION_DIVIDE_FACTOR:F = 2.0f

.field private static final BOUNCE_EFFECT_IMAGE_DEFAULT_ALPHA:F = 0.0f

.field private static final BOUNCE_IMAGE_FULLY_VISIBLE_THRESHOLD_DIP:F = 100.0f

.field private static final BOUNCE_SMOOTH_LANDING_FACTOR:F = 0.3f

.field private static final BOUNCING_VELOCITY_DIP:F = 3.0f

.field private static final DEFAULT_SCROLLBAR_PADDING:I = 0x1

.field private static final DEFAULT_SCROLL_THRESHOLD_DIP:F = 10.0f

.field private static final DRAG_ATTENUATION_RATE_FACTOR:F = 0.2f

.field private static final FLING_VELOCITY_DIP:F = 0.6f

.field private static final HIDE_SCROLLBAR:I = 0x1

.field private static final SCROLLBAR_ID:I = 0xfffff

.field private static final SCROLLBAR_TIMEOUT:I = 0x3e8

.field public static final SCROLL_LANDSCAPE:I = 0x2

.field public static final SCROLL_PORTRAIT:I = 0x1

.field public static final STACK_DOWN:I = 0x0

.field public static final STACK_RIGHT:I = 0x1

.field private static final TAG:Ljava/lang/String; = "TwGLList"

.field private static final VELOCITY_MODERATION_RATIO:F = 0.3f

.field private static final VELOCITY_REVISE_LIMIT_DIP:F = 30.0f


# instance fields
.field private BOUNCE_EDGE_SIZE:F

.field private BOUNCE_IMAGE_SIZE:F

.field private mAdapter:Lcom/sec/android/glview/TwGLList$Adapter;

.field private mBounceEdgeBottom:Lcom/sec/android/glview/TwGLImage;

.field private mBounceEdgeTop:Lcom/sec/android/glview/TwGLImage;

.field private mBounceImageBottom:Lcom/sec/android/glview/TwGLImage;

.field private final mBounceImageMaxAlphaThreshold:F

.field private mBounceImageTop:Lcom/sec/android/glview/TwGLImage;

.field private mBouncing:Z

.field private final mBouncingVelocity:F

.field private mContentHeight:F

.field private mContentWidth:F

.field private mFirstFullyVisibleViewIndex:I

.field private final mFlingVelocity:F

.field private mFlingVelocityX:F

.field private mFlingVelocityY:F

.field private mGestureDetector:Landroid/view/GestureDetector;

.field private mLandscapeBounceMaxOffset:F

.field private mLandscapeBounceOffset:F

.field private mListVisibleHeight:F

.field private mListVisibleWidth:F

.field protected mMainHandler:Landroid/os/Handler;

.field private mOnScrollListener:Lcom/sec/android/glview/TwGLList$OnScrollListener;

.field private mPortraitBounceMaxOffset:F

.field private mPortraitBounceOffset:F

.field private mScroll:I

.field private mScrollBar:Lcom/sec/android/glview/TwGLNinePatch;

.field private mScrollBarOffset:F

.field private mScrollBarSize:F

.field private mScrollBarVisible:Z

.field private mScrollRequested:Z

.field private mScrollSumX:F

.field private mScrollSumY:F

.field private mScrollThreshold:F

.field private mScrollToVisibleView:Lcom/sec/android/glview/TwGLView;

.field private mScrollX:F

.field private mScrollY:F

.field private mScrolling:Z

.field private mStackOrientation:I

.field private final mVelocityLimit:F


# direct methods
.method public constructor <init>(Lcom/sec/android/glview/TwGLContext;FFFF)V
    .locals 4
    .parameter "glContext"
    .parameter "left"
    .parameter "top"
    .parameter "width"
    .parameter "height"

    .prologue
    const/high16 v3, 0x4120

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 317
    invoke-direct/range {p0 .. p5}, Lcom/sec/android/glview/TwGLViewGroup;-><init>(Lcom/sec/android/glview/TwGLContext;FFFF)V

    .line 52
    iput v2, p0, Lcom/sec/android/glview/TwGLList;->mStackOrientation:I

    .line 61
    const/4 v0, 0x1

    iput v0, p0, Lcom/sec/android/glview/TwGLList;->mScroll:I

    .line 67
    iput-boolean v2, p0, Lcom/sec/android/glview/TwGLList;->mScrolling:Z

    .line 70
    iput v3, p0, Lcom/sec/android/glview/TwGLList;->mScrollThreshold:F

    .line 75
    iput v1, p0, Lcom/sec/android/glview/TwGLList;->mScrollX:F

    .line 78
    iput v1, p0, Lcom/sec/android/glview/TwGLList;->mScrollY:F

    .line 81
    iput v1, p0, Lcom/sec/android/glview/TwGLList;->mScrollSumX:F

    .line 84
    iput v1, p0, Lcom/sec/android/glview/TwGLList;->mScrollSumY:F

    .line 87
    iput v1, p0, Lcom/sec/android/glview/TwGLList;->mContentWidth:F

    .line 90
    iput v1, p0, Lcom/sec/android/glview/TwGLList;->mContentHeight:F

    .line 93
    iput v1, p0, Lcom/sec/android/glview/TwGLList;->mPortraitBounceOffset:F

    .line 96
    iput v1, p0, Lcom/sec/android/glview/TwGLList;->mLandscapeBounceOffset:F

    .line 99
    iput v1, p0, Lcom/sec/android/glview/TwGLList;->mPortraitBounceMaxOffset:F

    .line 102
    iput v1, p0, Lcom/sec/android/glview/TwGLList;->mLandscapeBounceMaxOffset:F

    .line 122
    iput-boolean v2, p0, Lcom/sec/android/glview/TwGLList;->mScrollBarVisible:Z

    .line 125
    iput v1, p0, Lcom/sec/android/glview/TwGLList;->mScrollBarSize:F

    .line 128
    iput v1, p0, Lcom/sec/android/glview/TwGLList;->mScrollBarOffset:F

    .line 130
    const/high16 v0, 0x4339

    iput v0, p0, Lcom/sec/android/glview/TwGLList;->BOUNCE_IMAGE_SIZE:F

    .line 132
    const/high16 v0, 0x3f80

    iput v0, p0, Lcom/sec/android/glview/TwGLList;->BOUNCE_EDGE_SIZE:F

    .line 145
    iput v1, p0, Lcom/sec/android/glview/TwGLList;->mListVisibleWidth:F

    .line 148
    iput v1, p0, Lcom/sec/android/glview/TwGLList;->mListVisibleHeight:F

    .line 154
    iput v1, p0, Lcom/sec/android/glview/TwGLList;->mFlingVelocityX:F

    .line 157
    iput v1, p0, Lcom/sec/android/glview/TwGLList;->mFlingVelocityY:F

    .line 166
    iput-boolean v2, p0, Lcom/sec/android/glview/TwGLList;->mBouncing:Z

    .line 191
    iput-boolean v2, p0, Lcom/sec/android/glview/TwGLList;->mScrollRequested:Z

    .line 195
    iput v2, p0, Lcom/sec/android/glview/TwGLList;->mFirstFullyVisibleViewIndex:I

    .line 200
    new-instance v0, Lcom/sec/android/glview/TwGLList$1;

    invoke-direct {v0, p0}, Lcom/sec/android/glview/TwGLList$1;-><init>(Lcom/sec/android/glview/TwGLList;)V

    iput-object v0, p0, Lcom/sec/android/glview/TwGLList;->mMainHandler:Landroid/os/Handler;

    .line 319
    invoke-virtual {p1}, Lcom/sec/android/glview/TwGLContext;->getDensity()F

    move-result v0

    mul-float/2addr v0, v3

    iput v0, p0, Lcom/sec/android/glview/TwGLList;->mScrollThreshold:F

    .line 320
    invoke-virtual {p1}, Lcom/sec/android/glview/TwGLContext;->getDensity()F

    move-result v0

    const v1, 0x3f19999a

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/sec/android/glview/TwGLList;->mFlingVelocity:F

    .line 321
    invoke-virtual {p1}, Lcom/sec/android/glview/TwGLContext;->getDensity()F

    move-result v0

    const/high16 v1, 0x4040

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/sec/android/glview/TwGLList;->mBouncingVelocity:F

    .line 322
    invoke-virtual {p1}, Lcom/sec/android/glview/TwGLContext;->getDensity()F

    move-result v0

    const/high16 v1, 0x42c8

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/sec/android/glview/TwGLList;->mBounceImageMaxAlphaThreshold:F

    .line 323
    invoke-virtual {p1}, Lcom/sec/android/glview/TwGLContext;->getDensity()F

    move-result v0

    const/high16 v1, 0x41f0

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/sec/android/glview/TwGLList;->mVelocityLimit:F

    .line 328
    return-void
.end method

.method static synthetic access$002(Lcom/sec/android/glview/TwGLList;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 37
    iput-boolean p1, p0, Lcom/sec/android/glview/TwGLList;->mScrollBarVisible:Z

    return p1
.end method

.method static synthetic access$100(Lcom/sec/android/glview/TwGLList;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 37
    iget v0, p0, Lcom/sec/android/glview/TwGLList;->mScroll:I

    return v0
.end method

.method static synthetic access$202(Lcom/sec/android/glview/TwGLList;F)F
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 37
    iput p1, p0, Lcom/sec/android/glview/TwGLList;->mFlingVelocityY:F

    return p1
.end method

.method static synthetic access$302(Lcom/sec/android/glview/TwGLList;F)F
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 37
    iput p1, p0, Lcom/sec/android/glview/TwGLList;->mFlingVelocityX:F

    return p1
.end method

.method static synthetic access$400(Lcom/sec/android/glview/TwGLList;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/sec/android/glview/TwGLList;->checkBoundary()Z

    move-result v0

    return v0
.end method

.method private checkBoundary()Z
    .locals 7

    .prologue
    const v6, 0x3e99999a

    const/4 v5, 0x0

    .line 1378
    const/4 v1, 0x0

    .line 1379
    .local v1, ret:Z
    iget v2, p0, Lcom/sec/android/glview/TwGLList;->mScroll:I

    and-int/lit8 v2, v2, 0x1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_7

    .line 1380
    iget v2, p0, Lcom/sec/android/glview/TwGLList;->mScrollSumY:F

    cmpl-float v2, v2, v5

    if-lez v2, :cond_3

    .line 1382
    iget v2, p0, Lcom/sec/android/glview/TwGLList;->mScrollSumY:F

    iput v2, p0, Lcom/sec/android/glview/TwGLList;->mPortraitBounceOffset:F

    .line 1383
    iget v2, p0, Lcom/sec/android/glview/TwGLList;->mPortraitBounceMaxOffset:F

    iget v3, p0, Lcom/sec/android/glview/TwGLList;->mPortraitBounceOffset:F

    cmpg-float v2, v2, v3

    if-gez v2, :cond_1

    .line 1384
    iget v2, p0, Lcom/sec/android/glview/TwGLList;->mPortraitBounceMaxOffset:F

    cmpl-float v2, v2, v5

    if-nez v2, :cond_0

    .line 1386
    iget v2, p0, Lcom/sec/android/glview/TwGLList;->mFlingVelocityY:F

    iget v3, p0, Lcom/sec/android/glview/TwGLList;->mVelocityLimit:F

    cmpl-float v2, v2, v3

    if-lez v2, :cond_0

    .line 1387
    iget v0, p0, Lcom/sec/android/glview/TwGLList;->mFlingVelocityY:F

    .line 1388
    .local v0, originalVelocity:F
    iget v2, p0, Lcom/sec/android/glview/TwGLList;->mVelocityLimit:F

    iget v3, p0, Lcom/sec/android/glview/TwGLList;->mFlingVelocityY:F

    iget v4, p0, Lcom/sec/android/glview/TwGLList;->mVelocityLimit:F

    sub-float/2addr v3, v4

    mul-float/2addr v3, v6

    add-float/2addr v2, v3

    iput v2, p0, Lcom/sec/android/glview/TwGLList;->mFlingVelocityY:F

    .line 1389
    iget v2, p0, Lcom/sec/android/glview/TwGLList;->mScrollSumY:F

    iget v3, p0, Lcom/sec/android/glview/TwGLList;->mFlingVelocityY:F

    sub-float v3, v0, v3

    sub-float/2addr v2, v3

    iput v2, p0, Lcom/sec/android/glview/TwGLList;->mScrollSumY:F

    .line 1390
    iget v2, p0, Lcom/sec/android/glview/TwGLList;->mPortraitBounceOffset:F

    iget v3, p0, Lcom/sec/android/glview/TwGLList;->mFlingVelocityY:F

    sub-float v3, v0, v3

    sub-float/2addr v2, v3

    iput v2, p0, Lcom/sec/android/glview/TwGLList;->mPortraitBounceOffset:F

    .line 1393
    .end local v0           #originalVelocity:F
    :cond_0
    iget v2, p0, Lcom/sec/android/glview/TwGLList;->mPortraitBounceOffset:F

    iput v2, p0, Lcom/sec/android/glview/TwGLList;->mPortraitBounceMaxOffset:F

    .line 1395
    :cond_1
    const/4 v1, 0x1

    .line 1454
    :cond_2
    :goto_0
    return v1

    .line 1396
    :cond_3
    iget v2, p0, Lcom/sec/android/glview/TwGLList;->mContentHeight:F

    iget v3, p0, Lcom/sec/android/glview/TwGLList;->mScrollSumY:F

    add-float/2addr v2, v3

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLList;->getContentAreaHeight()F

    move-result v3

    cmpg-float v2, v2, v3

    if-gez v2, :cond_6

    .line 1398
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLList;->getContentAreaHeight()F

    move-result v2

    iget v3, p0, Lcom/sec/android/glview/TwGLList;->mContentHeight:F

    iget v4, p0, Lcom/sec/android/glview/TwGLList;->mScrollSumY:F

    add-float/2addr v3, v4

    sub-float/2addr v2, v3

    iput v2, p0, Lcom/sec/android/glview/TwGLList;->mPortraitBounceOffset:F

    .line 1399
    iget v2, p0, Lcom/sec/android/glview/TwGLList;->mPortraitBounceMaxOffset:F

    iget v3, p0, Lcom/sec/android/glview/TwGLList;->mPortraitBounceOffset:F

    cmpg-float v2, v2, v3

    if-gez v2, :cond_5

    .line 1400
    iget v2, p0, Lcom/sec/android/glview/TwGLList;->mPortraitBounceMaxOffset:F

    cmpl-float v2, v2, v5

    if-nez v2, :cond_4

    .line 1402
    iget v2, p0, Lcom/sec/android/glview/TwGLList;->mFlingVelocityY:F

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    iget v3, p0, Lcom/sec/android/glview/TwGLList;->mVelocityLimit:F

    cmpl-float v2, v2, v3

    if-lez v2, :cond_4

    .line 1403
    iget v0, p0, Lcom/sec/android/glview/TwGLList;->mFlingVelocityY:F

    .line 1404
    .restart local v0       #originalVelocity:F
    iget v2, p0, Lcom/sec/android/glview/TwGLList;->mVelocityLimit:F

    iget v3, p0, Lcom/sec/android/glview/TwGLList;->mFlingVelocityY:F

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    iget v4, p0, Lcom/sec/android/glview/TwGLList;->mVelocityLimit:F

    sub-float/2addr v3, v4

    mul-float/2addr v3, v6

    add-float/2addr v2, v3

    neg-float v2, v2

    iput v2, p0, Lcom/sec/android/glview/TwGLList;->mFlingVelocityY:F

    .line 1405
    iget v2, p0, Lcom/sec/android/glview/TwGLList;->mScrollSumY:F

    iget v3, p0, Lcom/sec/android/glview/TwGLList;->mFlingVelocityY:F

    sub-float v3, v0, v3

    sub-float/2addr v2, v3

    iput v2, p0, Lcom/sec/android/glview/TwGLList;->mScrollSumY:F

    .line 1406
    iget v2, p0, Lcom/sec/android/glview/TwGLList;->mPortraitBounceOffset:F

    iget v3, p0, Lcom/sec/android/glview/TwGLList;->mFlingVelocityY:F

    sub-float v3, v0, v3

    sub-float/2addr v2, v3

    iput v2, p0, Lcom/sec/android/glview/TwGLList;->mPortraitBounceOffset:F

    .line 1409
    .end local v0           #originalVelocity:F
    :cond_4
    iget v2, p0, Lcom/sec/android/glview/TwGLList;->mPortraitBounceOffset:F

    iput v2, p0, Lcom/sec/android/glview/TwGLList;->mPortraitBounceMaxOffset:F

    .line 1411
    :cond_5
    const/4 v1, 0x1

    goto :goto_0

    .line 1413
    :cond_6
    iput v5, p0, Lcom/sec/android/glview/TwGLList;->mPortraitBounceOffset:F

    .line 1414
    iput v5, p0, Lcom/sec/android/glview/TwGLList;->mPortraitBounceMaxOffset:F

    goto :goto_0

    .line 1416
    :cond_7
    iget v2, p0, Lcom/sec/android/glview/TwGLList;->mScroll:I

    and-int/lit8 v2, v2, 0x2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_2

    .line 1417
    iget v2, p0, Lcom/sec/android/glview/TwGLList;->mScrollSumX:F

    cmpl-float v2, v2, v5

    if-lez v2, :cond_a

    .line 1419
    iget v2, p0, Lcom/sec/android/glview/TwGLList;->mScrollSumX:F

    iput v2, p0, Lcom/sec/android/glview/TwGLList;->mLandscapeBounceOffset:F

    .line 1420
    iget v2, p0, Lcom/sec/android/glview/TwGLList;->mLandscapeBounceMaxOffset:F

    iget v3, p0, Lcom/sec/android/glview/TwGLList;->mLandscapeBounceOffset:F

    cmpg-float v2, v2, v3

    if-gez v2, :cond_9

    .line 1421
    iget v2, p0, Lcom/sec/android/glview/TwGLList;->mLandscapeBounceMaxOffset:F

    cmpl-float v2, v2, v5

    if-nez v2, :cond_8

    .line 1423
    iget v2, p0, Lcom/sec/android/glview/TwGLList;->mFlingVelocityX:F

    iget v3, p0, Lcom/sec/android/glview/TwGLList;->mVelocityLimit:F

    cmpl-float v2, v2, v3

    if-lez v2, :cond_8

    .line 1424
    iget v0, p0, Lcom/sec/android/glview/TwGLList;->mFlingVelocityX:F

    .line 1425
    .restart local v0       #originalVelocity:F
    iget v2, p0, Lcom/sec/android/glview/TwGLList;->mVelocityLimit:F

    iget v3, p0, Lcom/sec/android/glview/TwGLList;->mFlingVelocityX:F

    iget v4, p0, Lcom/sec/android/glview/TwGLList;->mVelocityLimit:F

    sub-float/2addr v3, v4

    mul-float/2addr v3, v6

    add-float/2addr v2, v3

    iput v2, p0, Lcom/sec/android/glview/TwGLList;->mFlingVelocityX:F

    .line 1426
    iget v2, p0, Lcom/sec/android/glview/TwGLList;->mScrollSumX:F

    iget v3, p0, Lcom/sec/android/glview/TwGLList;->mFlingVelocityX:F

    sub-float v3, v0, v3

    sub-float/2addr v2, v3

    iput v2, p0, Lcom/sec/android/glview/TwGLList;->mScrollSumX:F

    .line 1427
    iget v2, p0, Lcom/sec/android/glview/TwGLList;->mLandscapeBounceOffset:F

    iget v3, p0, Lcom/sec/android/glview/TwGLList;->mFlingVelocityX:F

    sub-float v3, v0, v3

    sub-float/2addr v2, v3

    iput v2, p0, Lcom/sec/android/glview/TwGLList;->mLandscapeBounceOffset:F

    .line 1430
    .end local v0           #originalVelocity:F
    :cond_8
    iget v2, p0, Lcom/sec/android/glview/TwGLList;->mLandscapeBounceOffset:F

    iput v2, p0, Lcom/sec/android/glview/TwGLList;->mLandscapeBounceMaxOffset:F

    .line 1432
    :cond_9
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 1433
    :cond_a
    iget v2, p0, Lcom/sec/android/glview/TwGLList;->mContentWidth:F

    iget v3, p0, Lcom/sec/android/glview/TwGLList;->mScrollSumX:F

    add-float/2addr v2, v3

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLList;->getContentAreaWidth()F

    move-result v3

    cmpg-float v2, v2, v3

    if-gez v2, :cond_d

    .line 1435
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLList;->getContentAreaWidth()F

    move-result v2

    iget v3, p0, Lcom/sec/android/glview/TwGLList;->mContentWidth:F

    iget v4, p0, Lcom/sec/android/glview/TwGLList;->mScrollSumX:F

    add-float/2addr v3, v4

    sub-float/2addr v2, v3

    iput v2, p0, Lcom/sec/android/glview/TwGLList;->mLandscapeBounceOffset:F

    .line 1436
    iget v2, p0, Lcom/sec/android/glview/TwGLList;->mLandscapeBounceMaxOffset:F

    iget v3, p0, Lcom/sec/android/glview/TwGLList;->mLandscapeBounceOffset:F

    cmpl-float v2, v2, v3

    if-lez v2, :cond_c

    .line 1437
    iget v2, p0, Lcom/sec/android/glview/TwGLList;->mLandscapeBounceMaxOffset:F

    cmpl-float v2, v2, v5

    if-nez v2, :cond_b

    .line 1439
    iget v2, p0, Lcom/sec/android/glview/TwGLList;->mFlingVelocityX:F

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    iget v3, p0, Lcom/sec/android/glview/TwGLList;->mVelocityLimit:F

    cmpl-float v2, v2, v3

    if-lez v2, :cond_b

    .line 1440
    iget v0, p0, Lcom/sec/android/glview/TwGLList;->mFlingVelocityX:F

    .line 1441
    .restart local v0       #originalVelocity:F
    iget v2, p0, Lcom/sec/android/glview/TwGLList;->mVelocityLimit:F

    iget v3, p0, Lcom/sec/android/glview/TwGLList;->mFlingVelocityX:F

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    iget v4, p0, Lcom/sec/android/glview/TwGLList;->mVelocityLimit:F

    sub-float/2addr v3, v4

    mul-float/2addr v3, v6

    add-float/2addr v2, v3

    neg-float v2, v2

    iput v2, p0, Lcom/sec/android/glview/TwGLList;->mFlingVelocityX:F

    .line 1442
    iget v2, p0, Lcom/sec/android/glview/TwGLList;->mScrollSumX:F

    iget v3, p0, Lcom/sec/android/glview/TwGLList;->mFlingVelocityX:F

    sub-float v3, v0, v3

    sub-float/2addr v2, v3

    iput v2, p0, Lcom/sec/android/glview/TwGLList;->mScrollSumX:F

    .line 1443
    iget v2, p0, Lcom/sec/android/glview/TwGLList;->mLandscapeBounceOffset:F

    iget v3, p0, Lcom/sec/android/glview/TwGLList;->mFlingVelocityX:F

    sub-float v3, v0, v3

    sub-float/2addr v2, v3

    iput v2, p0, Lcom/sec/android/glview/TwGLList;->mLandscapeBounceOffset:F

    .line 1446
    .end local v0           #originalVelocity:F
    :cond_b
    iget v2, p0, Lcom/sec/android/glview/TwGLList;->mLandscapeBounceOffset:F

    iput v2, p0, Lcom/sec/android/glview/TwGLList;->mLandscapeBounceMaxOffset:F

    .line 1448
    :cond_c
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 1450
    :cond_d
    iput v5, p0, Lcom/sec/android/glview/TwGLList;->mLandscapeBounceOffset:F

    .line 1451
    iput v5, p0, Lcom/sec/android/glview/TwGLList;->mLandscapeBounceMaxOffset:F

    goto/16 :goto_0
.end method

.method private setScrollBarLayout()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/high16 v4, 0x3f80

    .line 474
    iget-object v0, p0, Lcom/sec/android/glview/TwGLList;->mScrollBar:Lcom/sec/android/glview/TwGLNinePatch;

    if-nez v0, :cond_1

    .line 506
    :cond_0
    :goto_0
    return-void

    .line 477
    :cond_1
    iget v0, p0, Lcom/sec/android/glview/TwGLList;->mStackOrientation:I

    if-nez v0, :cond_4

    .line 478
    iget v0, p0, Lcom/sec/android/glview/TwGLList;->mListVisibleHeight:F

    iget-object v1, p0, Lcom/sec/android/glview/TwGLView;->mPaddings:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    int-to-float v1, v1

    add-float/2addr v0, v1

    iget-object v1, p0, Lcom/sec/android/glview/TwGLView;->mPaddings:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    int-to-float v1, v1

    add-float/2addr v0, v1

    iget v1, p0, Lcom/sec/android/glview/TwGLList;->mContentHeight:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    .line 481
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mPaddings:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    if-nez v0, :cond_3

    .line 482
    iget-object v0, p0, Lcom/sec/android/glview/TwGLList;->mScrollBar:Lcom/sec/android/glview/TwGLNinePatch;

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLList;->getRight()F

    move-result v1

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLList;->getLeft()F

    move-result v2

    sub-float/2addr v1, v2

    sub-float/2addr v1, v4

    iget-object v2, p0, Lcom/sec/android/glview/TwGLList;->mScrollBar:Lcom/sec/android/glview/TwGLNinePatch;

    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLNinePatch;->getIntrinsicWidth()I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v1, v2

    iget-object v2, p0, Lcom/sec/android/glview/TwGLView;->mPaddings:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLNinePatch;->moveLayoutAbsolute(FF)V

    .line 486
    :goto_1
    iget v0, p0, Lcom/sec/android/glview/TwGLList;->mListVisibleHeight:F

    iget v1, p0, Lcom/sec/android/glview/TwGLList;->mContentHeight:F

    div-float/2addr v0, v1

    iget v1, p0, Lcom/sec/android/glview/TwGLList;->mListVisibleHeight:F

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/sec/android/glview/TwGLList;->mScrollBarSize:F

    .line 487
    iget-object v0, p0, Lcom/sec/android/glview/TwGLList;->mScrollBar:Lcom/sec/android/glview/TwGLNinePatch;

    iget-object v1, p0, Lcom/sec/android/glview/TwGLList;->mScrollBar:Lcom/sec/android/glview/TwGLNinePatch;

    invoke-virtual {v1}, Lcom/sec/android/glview/TwGLNinePatch;->getIntrinsicWidth()I

    move-result v1

    int-to-float v1, v1

    iget v2, p0, Lcom/sec/android/glview/TwGLList;->mScrollBarSize:F

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLNinePatch;->setSize(FF)V

    .line 504
    :cond_2
    :goto_2
    iget-object v0, p0, Lcom/sec/android/glview/TwGLList;->mScrollBar:Lcom/sec/android/glview/TwGLNinePatch;

    iget v1, p0, Lcom/sec/android/glview/TwGLList;->mListVisibleWidth:F

    iget v2, p0, Lcom/sec/android/glview/TwGLList;->mContentWidth:F

    div-float/2addr v1, v2

    iget v2, p0, Lcom/sec/android/glview/TwGLList;->mScrollSumX:F

    mul-float/2addr v1, v2

    neg-float v1, v1

    iget v2, p0, Lcom/sec/android/glview/TwGLList;->mListVisibleHeight:F

    iget v3, p0, Lcom/sec/android/glview/TwGLList;->mContentHeight:F

    div-float/2addr v2, v3

    iget v3, p0, Lcom/sec/android/glview/TwGLList;->mScrollSumY:F

    mul-float/2addr v2, v3

    neg-float v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLNinePatch;->translateAbsolute(FF)V

    .line 505
    iput-boolean v5, p0, Lcom/sec/android/glview/TwGLList;->mScrollBarVisible:Z

    goto :goto_0

    .line 484
    :cond_3
    iget-object v0, p0, Lcom/sec/android/glview/TwGLList;->mScrollBar:Lcom/sec/android/glview/TwGLNinePatch;

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLList;->getRight()F

    move-result v1

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLList;->getLeft()F

    move-result v2

    sub-float/2addr v1, v2

    iget-object v2, p0, Lcom/sec/android/glview/TwGLView;->mPaddings:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    int-to-float v2, v2

    sub-float/2addr v1, v2

    iget-object v2, p0, Lcom/sec/android/glview/TwGLList;->mScrollBar:Lcom/sec/android/glview/TwGLNinePatch;

    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLNinePatch;->getIntrinsicWidth()I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v1, v2

    iget-object v2, p0, Lcom/sec/android/glview/TwGLView;->mPaddings:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLNinePatch;->moveLayoutAbsolute(FF)V

    goto :goto_1

    .line 488
    :cond_4
    iget v0, p0, Lcom/sec/android/glview/TwGLList;->mStackOrientation:I

    if-ne v0, v5, :cond_2

    .line 489
    iget v0, p0, Lcom/sec/android/glview/TwGLList;->mListVisibleWidth:F

    iget-object v1, p0, Lcom/sec/android/glview/TwGLView;->mPaddings:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    add-float/2addr v0, v1

    iget-object v1, p0, Lcom/sec/android/glview/TwGLView;->mPaddings:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    int-to-float v1, v1

    add-float/2addr v0, v1

    iget v1, p0, Lcom/sec/android/glview/TwGLList;->mContentWidth:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    .line 492
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mPaddings:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    if-nez v0, :cond_5

    .line 493
    iget-object v0, p0, Lcom/sec/android/glview/TwGLList;->mScrollBar:Lcom/sec/android/glview/TwGLNinePatch;

    iget-object v1, p0, Lcom/sec/android/glview/TwGLView;->mPaddings:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLList;->getBottom()F

    move-result v2

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLList;->getTop()F

    move-result v3

    sub-float/2addr v2, v3

    sub-float/2addr v2, v4

    iget-object v3, p0, Lcom/sec/android/glview/TwGLList;->mScrollBar:Lcom/sec/android/glview/TwGLNinePatch;

    invoke-virtual {v3}, Lcom/sec/android/glview/TwGLNinePatch;->getIntrinsicHeight()I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLNinePatch;->moveLayoutAbsolute(FF)V

    .line 497
    :goto_3
    iget v0, p0, Lcom/sec/android/glview/TwGLList;->mListVisibleWidth:F

    iget v1, p0, Lcom/sec/android/glview/TwGLList;->mContentWidth:F

    div-float/2addr v0, v1

    iget v1, p0, Lcom/sec/android/glview/TwGLList;->mListVisibleWidth:F

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/sec/android/glview/TwGLList;->mScrollBarSize:F

    .line 498
    iget-object v0, p0, Lcom/sec/android/glview/TwGLList;->mScrollBar:Lcom/sec/android/glview/TwGLNinePatch;

    iget v1, p0, Lcom/sec/android/glview/TwGLList;->mScrollBarSize:F

    iget-object v2, p0, Lcom/sec/android/glview/TwGLList;->mScrollBar:Lcom/sec/android/glview/TwGLNinePatch;

    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLNinePatch;->getIntrinsicHeight()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLNinePatch;->setSize(FF)V

    goto/16 :goto_2

    .line 495
    :cond_5
    iget-object v0, p0, Lcom/sec/android/glview/TwGLList;->mScrollBar:Lcom/sec/android/glview/TwGLNinePatch;

    iget-object v1, p0, Lcom/sec/android/glview/TwGLView;->mPaddings:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLList;->getBottom()F

    move-result v2

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLList;->getTop()F

    move-result v3

    sub-float/2addr v2, v3

    iget-object v3, p0, Lcom/sec/android/glview/TwGLView;->mPaddings:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    int-to-float v3, v3

    sub-float/2addr v2, v3

    sub-float/2addr v2, v4

    iget-object v3, p0, Lcom/sec/android/glview/TwGLList;->mScrollBar:Lcom/sec/android/glview/TwGLNinePatch;

    invoke-virtual {v3}, Lcom/sec/android/glview/TwGLNinePatch;->getIntrinsicHeight()I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLNinePatch;->moveLayoutAbsolute(FF)V

    goto :goto_3
.end method

.method private setVisibleArea()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 442
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLList;->getWidth()F

    move-result v0

    iget-object v1, p0, Lcom/sec/android/glview/TwGLView;->mPaddings:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    sub-float/2addr v0, v1

    iget-object v1, p0, Lcom/sec/android/glview/TwGLView;->mPaddings:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    int-to-float v1, v1

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/sec/android/glview/TwGLList;->mListVisibleWidth:F

    .line 443
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLList;->getHeight()F

    move-result v0

    iget-object v1, p0, Lcom/sec/android/glview/TwGLView;->mPaddings:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    int-to-float v1, v1

    sub-float/2addr v0, v1

    iget-object v1, p0, Lcom/sec/android/glview/TwGLView;->mPaddings:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    int-to-float v1, v1

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/sec/android/glview/TwGLList;->mListVisibleHeight:F

    .line 445
    iget v0, p0, Lcom/sec/android/glview/TwGLList;->mStackOrientation:I

    if-nez v0, :cond_1

    .line 446
    iget-object v0, p0, Lcom/sec/android/glview/TwGLList;->mBounceImageTop:Lcom/sec/android/glview/TwGLImage;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/glview/TwGLList;->mBounceImageBottom:Lcom/sec/android/glview/TwGLImage;

    if-eqz v0, :cond_0

    .line 447
    iget-object v0, p0, Lcom/sec/android/glview/TwGLList;->mBounceImageTop:Lcom/sec/android/glview/TwGLImage;

    iget v1, p0, Lcom/sec/android/glview/TwGLList;->mListVisibleWidth:F

    iget v2, p0, Lcom/sec/android/glview/TwGLList;->BOUNCE_IMAGE_SIZE:F

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLImage;->setSize(FF)V

    .line 448
    iget-object v0, p0, Lcom/sec/android/glview/TwGLList;->mBounceImageBottom:Lcom/sec/android/glview/TwGLImage;

    iget v1, p0, Lcom/sec/android/glview/TwGLList;->mListVisibleWidth:F

    iget v2, p0, Lcom/sec/android/glview/TwGLList;->BOUNCE_IMAGE_SIZE:F

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLImage;->setSize(FF)V

    .line 449
    iget-object v0, p0, Lcom/sec/android/glview/TwGLList;->mBounceImageBottom:Lcom/sec/android/glview/TwGLImage;

    iget v1, p0, Lcom/sec/android/glview/TwGLList;->mListVisibleHeight:F

    iget v2, p0, Lcom/sec/android/glview/TwGLList;->BOUNCE_IMAGE_SIZE:F

    sub-float/2addr v1, v2

    iget v2, p0, Lcom/sec/android/glview/TwGLList;->BOUNCE_EDGE_SIZE:F

    sub-float/2addr v1, v2

    invoke-virtual {v0, v3, v1}, Lcom/sec/android/glview/TwGLImage;->moveLayoutAbsolute(FF)V

    .line 450
    iget-object v0, p0, Lcom/sec/android/glview/TwGLList;->mBounceEdgeTop:Lcom/sec/android/glview/TwGLImage;

    iget v1, p0, Lcom/sec/android/glview/TwGLList;->mListVisibleWidth:F

    iget-object v2, p0, Lcom/sec/android/glview/TwGLList;->mBounceEdgeTop:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLImage;->getHeight()F

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLImage;->setSize(FF)V

    .line 451
    iget-object v0, p0, Lcom/sec/android/glview/TwGLList;->mBounceEdgeBottom:Lcom/sec/android/glview/TwGLImage;

    iget v1, p0, Lcom/sec/android/glview/TwGLList;->mListVisibleWidth:F

    iget-object v2, p0, Lcom/sec/android/glview/TwGLList;->mBounceEdgeTop:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLImage;->getHeight()F

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLImage;->setSize(FF)V

    .line 452
    iget-object v0, p0, Lcom/sec/android/glview/TwGLList;->mBounceEdgeBottom:Lcom/sec/android/glview/TwGLImage;

    iget v1, p0, Lcom/sec/android/glview/TwGLList;->mListVisibleHeight:F

    iget v2, p0, Lcom/sec/android/glview/TwGLList;->BOUNCE_EDGE_SIZE:F

    sub-float/2addr v1, v2

    invoke-virtual {v0, v3, v1}, Lcom/sec/android/glview/TwGLImage;->moveLayoutAbsolute(FF)V

    .line 464
    :cond_0
    :goto_0
    return-void

    .line 454
    :cond_1
    iget v0, p0, Lcom/sec/android/glview/TwGLList;->mStackOrientation:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 455
    iget-object v0, p0, Lcom/sec/android/glview/TwGLList;->mBounceImageTop:Lcom/sec/android/glview/TwGLImage;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/glview/TwGLList;->mBounceImageBottom:Lcom/sec/android/glview/TwGLImage;

    if-eqz v0, :cond_0

    .line 456
    iget-object v0, p0, Lcom/sec/android/glview/TwGLList;->mBounceImageTop:Lcom/sec/android/glview/TwGLImage;

    iget v1, p0, Lcom/sec/android/glview/TwGLList;->BOUNCE_IMAGE_SIZE:F

    iget v2, p0, Lcom/sec/android/glview/TwGLList;->mListVisibleHeight:F

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLImage;->setSize(FF)V

    .line 457
    iget-object v0, p0, Lcom/sec/android/glview/TwGLList;->mBounceImageBottom:Lcom/sec/android/glview/TwGLImage;

    iget v1, p0, Lcom/sec/android/glview/TwGLList;->BOUNCE_IMAGE_SIZE:F

    iget v2, p0, Lcom/sec/android/glview/TwGLList;->mListVisibleHeight:F

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLImage;->setSize(FF)V

    .line 458
    iget-object v0, p0, Lcom/sec/android/glview/TwGLList;->mBounceImageBottom:Lcom/sec/android/glview/TwGLImage;

    iget v1, p0, Lcom/sec/android/glview/TwGLList;->mListVisibleWidth:F

    iget v2, p0, Lcom/sec/android/glview/TwGLList;->BOUNCE_IMAGE_SIZE:F

    sub-float/2addr v1, v2

    iget v2, p0, Lcom/sec/android/glview/TwGLList;->BOUNCE_EDGE_SIZE:F

    sub-float/2addr v1, v2

    invoke-virtual {v0, v1, v3}, Lcom/sec/android/glview/TwGLImage;->moveLayoutAbsolute(FF)V

    .line 459
    iget-object v0, p0, Lcom/sec/android/glview/TwGLList;->mBounceEdgeTop:Lcom/sec/android/glview/TwGLImage;

    iget-object v1, p0, Lcom/sec/android/glview/TwGLList;->mBounceEdgeTop:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v1}, Lcom/sec/android/glview/TwGLImage;->getWidth()F

    move-result v1

    iget v2, p0, Lcom/sec/android/glview/TwGLList;->mListVisibleHeight:F

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLImage;->setSize(FF)V

    .line 460
    iget-object v0, p0, Lcom/sec/android/glview/TwGLList;->mBounceEdgeBottom:Lcom/sec/android/glview/TwGLImage;

    iget-object v1, p0, Lcom/sec/android/glview/TwGLList;->mBounceEdgeTop:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v1}, Lcom/sec/android/glview/TwGLImage;->getWidth()F

    move-result v1

    iget v2, p0, Lcom/sec/android/glview/TwGLList;->mListVisibleHeight:F

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLImage;->setSize(FF)V

    .line 461
    iget-object v0, p0, Lcom/sec/android/glview/TwGLList;->mBounceEdgeBottom:Lcom/sec/android/glview/TwGLImage;

    iget v1, p0, Lcom/sec/android/glview/TwGLList;->mListVisibleWidth:F

    iget v2, p0, Lcom/sec/android/glview/TwGLList;->BOUNCE_EDGE_SIZE:F

    sub-float/2addr v1, v2

    invoke-virtual {v0, v1, v3}, Lcom/sec/android/glview/TwGLImage;->moveLayoutAbsolute(FF)V

    goto :goto_0
.end method


# virtual methods
.method public addView(Lcom/sec/android/glview/TwGLView;)V
    .locals 5
    .parameter "view"

    .prologue
    const/4 v4, 0x0

    .line 746
    instance-of v2, p1, Lcom/sec/android/glview/TwGLList;

    if-eqz v2, :cond_0

    .line 747
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-direct {v2}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v2

    .line 749
    :cond_0
    iget v2, p0, Lcom/sec/android/glview/TwGLList;->mStackOrientation:I

    if-nez v2, :cond_4

    .line 750
    iget v2, p0, Lcom/sec/android/glview/TwGLList;->mContentHeight:F

    invoke-virtual {p1}, Lcom/sec/android/glview/TwGLView;->getHeight()F

    move-result v3

    add-float/2addr v2, v3

    iput v2, p0, Lcom/sec/android/glview/TwGLList;->mContentHeight:F

    .line 751
    invoke-virtual {p1}, Lcom/sec/android/glview/TwGLView;->getWidth()F

    move-result v2

    iget v3, p0, Lcom/sec/android/glview/TwGLList;->mContentWidth:F

    cmpl-float v2, v2, v3

    if-lez v2, :cond_1

    .line 752
    invoke-virtual {p1}, Lcom/sec/android/glview/TwGLView;->getWidth()F

    move-result v2

    iput v2, p0, Lcom/sec/android/glview/TwGLList;->mContentWidth:F

    .line 761
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLList;->getPaddings()Landroid/graphics/Rect;

    move-result-object v1

    .line 762
    .local v1, paddings:Landroid/graphics/Rect;
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, v4, v4, v4, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 764
    .local v0, childPaddings:Landroid/graphics/Rect;
    iget v2, p0, Lcom/sec/android/glview/TwGLList;->mStackOrientation:I

    const/4 v3, 0x1

    if-eq v2, v3, :cond_2

    .line 765
    invoke-virtual {p1}, Lcom/sec/android/glview/TwGLView;->getLeft()F

    move-result v2

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLList;->getLeft()F

    move-result v3

    sub-float/2addr v2, v3

    iget v3, v1, Landroid/graphics/Rect;->left:I

    int-to-float v3, v3

    cmpg-float v2, v2, v3

    if-gez v2, :cond_5

    invoke-virtual {p1}, Lcom/sec/android/glview/TwGLView;->getLeft()F

    move-result v2

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLList;->getLeft()F

    move-result v3

    cmpl-float v2, v2, v3

    if-ltz v2, :cond_5

    .line 766
    iget v2, v1, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    invoke-virtual {p1}, Lcom/sec/android/glview/TwGLView;->getLeft()F

    move-result v3

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLList;->getLeft()F

    move-result v4

    sub-float/2addr v3, v4

    sub-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, v0, Landroid/graphics/Rect;->left:I

    .line 770
    :goto_1
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLList;->getRight()F

    move-result v2

    invoke-virtual {p1}, Lcom/sec/android/glview/TwGLView;->getRight()F

    move-result v3

    sub-float/2addr v2, v3

    iget v3, v1, Landroid/graphics/Rect;->right:I

    int-to-float v3, v3

    cmpg-float v2, v2, v3

    if-gez v2, :cond_6

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLList;->getRight()F

    move-result v2

    invoke-virtual {p1}, Lcom/sec/android/glview/TwGLView;->getRight()F

    move-result v3

    cmpl-float v2, v2, v3

    if-ltz v2, :cond_6

    .line 771
    iget v2, v1, Landroid/graphics/Rect;->right:I

    int-to-float v2, v2

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLList;->getRight()F

    move-result v3

    invoke-virtual {p1}, Lcom/sec/android/glview/TwGLView;->getRight()F

    move-result v4

    sub-float/2addr v3, v4

    sub-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, v0, Landroid/graphics/Rect;->right:I

    .line 775
    :goto_2
    invoke-virtual {p1}, Lcom/sec/android/glview/TwGLView;->getPaddings()Landroid/graphics/Rect;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Rect;->top:I

    iput v2, v0, Landroid/graphics/Rect;->top:I

    .line 776
    invoke-virtual {p1}, Lcom/sec/android/glview/TwGLView;->getPaddings()Landroid/graphics/Rect;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    iput v2, v0, Landroid/graphics/Rect;->bottom:I

    .line 778
    :cond_2
    iget v2, p0, Lcom/sec/android/glview/TwGLList;->mStackOrientation:I

    if-eqz v2, :cond_3

    .line 779
    invoke-virtual {p1}, Lcom/sec/android/glview/TwGLView;->getTop()F

    move-result v2

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLList;->getTop()F

    move-result v3

    sub-float/2addr v2, v3

    iget v3, v1, Landroid/graphics/Rect;->top:I

    int-to-float v3, v3

    cmpg-float v2, v2, v3

    if-gez v2, :cond_7

    invoke-virtual {p1}, Lcom/sec/android/glview/TwGLView;->getTop()F

    move-result v2

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLList;->getTop()F

    move-result v3

    cmpl-float v2, v2, v3

    if-ltz v2, :cond_7

    .line 780
    iget v2, v1, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    invoke-virtual {p1}, Lcom/sec/android/glview/TwGLView;->getTop()F

    move-result v3

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLList;->getTop()F

    move-result v4

    sub-float/2addr v3, v4

    sub-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, v0, Landroid/graphics/Rect;->top:I

    .line 784
    :goto_3
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLList;->getBottom()F

    move-result v2

    invoke-virtual {p1}, Lcom/sec/android/glview/TwGLView;->getBottom()F

    move-result v3

    sub-float/2addr v2, v3

    iget v3, v1, Landroid/graphics/Rect;->bottom:I

    int-to-float v3, v3

    cmpg-float v2, v2, v3

    if-gez v2, :cond_8

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLList;->getBottom()F

    move-result v2

    invoke-virtual {p1}, Lcom/sec/android/glview/TwGLView;->getBottom()F

    move-result v3

    cmpl-float v2, v2, v3

    if-ltz v2, :cond_8

    .line 785
    iget v2, v1, Landroid/graphics/Rect;->bottom:I

    int-to-float v2, v2

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLList;->getBottom()F

    move-result v3

    invoke-virtual {p1}, Lcom/sec/android/glview/TwGLView;->getBottom()F

    move-result v4

    sub-float/2addr v3, v4

    sub-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, v0, Landroid/graphics/Rect;->bottom:I

    .line 789
    :goto_4
    invoke-virtual {p1}, Lcom/sec/android/glview/TwGLView;->getPaddings()Landroid/graphics/Rect;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Rect;->left:I

    iput v2, v0, Landroid/graphics/Rect;->left:I

    .line 790
    invoke-virtual {p1}, Lcom/sec/android/glview/TwGLView;->getPaddings()Landroid/graphics/Rect;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Rect;->right:I

    iput v2, v0, Landroid/graphics/Rect;->right:I

    .line 793
    :cond_3
    invoke-virtual {p1, v0}, Lcom/sec/android/glview/TwGLView;->setPaddings(Landroid/graphics/Rect;)V

    .line 794
    invoke-super {p0, p1}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 795
    return-void

    .line 755
    .end local v0           #childPaddings:Landroid/graphics/Rect;
    .end local v1           #paddings:Landroid/graphics/Rect;
    :cond_4
    iget v2, p0, Lcom/sec/android/glview/TwGLList;->mContentWidth:F

    invoke-virtual {p1}, Lcom/sec/android/glview/TwGLView;->getWidth()F

    move-result v3

    add-float/2addr v2, v3

    iput v2, p0, Lcom/sec/android/glview/TwGLList;->mContentWidth:F

    .line 756
    invoke-virtual {p1}, Lcom/sec/android/glview/TwGLView;->getHeight()F

    move-result v2

    iget v3, p0, Lcom/sec/android/glview/TwGLList;->mContentHeight:F

    cmpl-float v2, v2, v3

    if-lez v2, :cond_1

    .line 757
    invoke-virtual {p1}, Lcom/sec/android/glview/TwGLView;->getHeight()F

    move-result v2

    iput v2, p0, Lcom/sec/android/glview/TwGLList;->mContentHeight:F

    goto/16 :goto_0

    .line 768
    .restart local v0       #childPaddings:Landroid/graphics/Rect;
    .restart local v1       #paddings:Landroid/graphics/Rect;
    :cond_5
    invoke-virtual {p1}, Lcom/sec/android/glview/TwGLView;->getPaddings()Landroid/graphics/Rect;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Rect;->left:I

    iput v2, v0, Landroid/graphics/Rect;->left:I

    goto/16 :goto_1

    .line 773
    :cond_6
    invoke-virtual {p1}, Lcom/sec/android/glview/TwGLView;->getPaddings()Landroid/graphics/Rect;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Rect;->right:I

    iput v2, v0, Landroid/graphics/Rect;->right:I

    goto/16 :goto_2

    .line 782
    :cond_7
    invoke-virtual {p1}, Lcom/sec/android/glview/TwGLView;->getPaddings()Landroid/graphics/Rect;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Rect;->top:I

    iput v2, v0, Landroid/graphics/Rect;->top:I

    goto :goto_3

    .line 787
    :cond_8
    invoke-virtual {p1}, Lcom/sec/android/glview/TwGLView;->getPaddings()Landroid/graphics/Rect;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    iput v2, v0, Landroid/graphics/Rect;->bottom:I

    goto :goto_4
.end method

.method public clear()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1607
    iget-object v0, p0, Lcom/sec/android/glview/TwGLList;->mScrollBar:Lcom/sec/android/glview/TwGLNinePatch;

    if-eqz v0, :cond_0

    .line 1608
    iget-object v0, p0, Lcom/sec/android/glview/TwGLList;->mScrollBar:Lcom/sec/android/glview/TwGLNinePatch;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLNinePatch;->clear()V

    .line 1609
    iput-object v1, p0, Lcom/sec/android/glview/TwGLList;->mScrollBar:Lcom/sec/android/glview/TwGLNinePatch;

    .line 1611
    :cond_0
    iget-object v0, p0, Lcom/sec/android/glview/TwGLList;->mBounceImageTop:Lcom/sec/android/glview/TwGLImage;

    if-eqz v0, :cond_1

    .line 1612
    iget-object v0, p0, Lcom/sec/android/glview/TwGLList;->mBounceImageTop:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLImage;->clear()V

    .line 1613
    iput-object v1, p0, Lcom/sec/android/glview/TwGLList;->mBounceImageTop:Lcom/sec/android/glview/TwGLImage;

    .line 1615
    :cond_1
    iget-object v0, p0, Lcom/sec/android/glview/TwGLList;->mBounceEdgeTop:Lcom/sec/android/glview/TwGLImage;

    if-eqz v0, :cond_2

    .line 1616
    iget-object v0, p0, Lcom/sec/android/glview/TwGLList;->mBounceEdgeTop:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLImage;->clear()V

    .line 1617
    iput-object v1, p0, Lcom/sec/android/glview/TwGLList;->mBounceEdgeTop:Lcom/sec/android/glview/TwGLImage;

    .line 1619
    :cond_2
    iget-object v0, p0, Lcom/sec/android/glview/TwGLList;->mBounceImageBottom:Lcom/sec/android/glview/TwGLImage;

    if-eqz v0, :cond_3

    .line 1620
    iget-object v0, p0, Lcom/sec/android/glview/TwGLList;->mBounceImageBottom:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLImage;->clear()V

    .line 1621
    iput-object v1, p0, Lcom/sec/android/glview/TwGLList;->mBounceImageBottom:Lcom/sec/android/glview/TwGLImage;

    .line 1623
    :cond_3
    iget-object v0, p0, Lcom/sec/android/glview/TwGLList;->mBounceEdgeBottom:Lcom/sec/android/glview/TwGLImage;

    if-eqz v0, :cond_4

    .line 1624
    iget-object v0, p0, Lcom/sec/android/glview/TwGLList;->mBounceEdgeBottom:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLImage;->clear()V

    .line 1625
    iput-object v1, p0, Lcom/sec/android/glview/TwGLList;->mBounceEdgeBottom:Lcom/sec/android/glview/TwGLImage;

    .line 1628
    :cond_4
    invoke-super {p0}, Lcom/sec/android/glview/TwGLViewGroup;->clear()V

    .line 1629
    return-void
.end method

.method public contains(FF)Z
    .locals 3
    .parameter "x"
    .parameter "y"

    .prologue
    .line 421
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLList;->getClipRect()Landroid/graphics/Rect;

    move-result-object v0

    if-nez v0, :cond_0

    .line 422
    const/4 v0, 0x0

    .line 424
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLList;->getClipRect()Landroid/graphics/Rect;

    move-result-object v0

    float-to-int v1, p1

    float-to-int v2, p2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v0

    goto :goto_0
.end method

.method public findNextFocusFromView(Lcom/sec/android/glview/TwGLView;I)Lcom/sec/android/glview/TwGLView;
    .locals 2
    .parameter "focusedView"
    .parameter "direction"

    .prologue
    .line 1519
    const/4 v0, 0x0

    .line 1523
    .local v0, newDirection:I
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLList;->getCenterPivot()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1524
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLList;->getOrientation()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 1575
    move v0, p2

    .line 1579
    :cond_0
    :goto_0
    invoke-super {p0, p1, v0}, Lcom/sec/android/glview/TwGLViewGroup;->findNextFocusFromView(Lcom/sec/android/glview/TwGLView;I)Lcom/sec/android/glview/TwGLView;

    move-result-object v1

    return-object v1

    .line 1526
    :pswitch_0
    sparse-switch p2, :sswitch_data_0

    goto :goto_0

    .line 1528
    :sswitch_0
    const/16 v0, 0x82

    .line 1529
    goto :goto_0

    .line 1531
    :sswitch_1
    const/16 v0, 0x21

    .line 1532
    goto :goto_0

    .line 1534
    :sswitch_2
    const/16 v0, 0x11

    .line 1535
    goto :goto_0

    .line 1537
    :sswitch_3
    const/16 v0, 0x42

    goto :goto_0

    .line 1542
    :pswitch_1
    sparse-switch p2, :sswitch_data_1

    goto :goto_0

    .line 1544
    :sswitch_4
    const/16 v0, 0x42

    .line 1545
    goto :goto_0

    .line 1547
    :sswitch_5
    const/16 v0, 0x11

    .line 1548
    goto :goto_0

    .line 1550
    :sswitch_6
    const/16 v0, 0x82

    .line 1551
    goto :goto_0

    .line 1553
    :sswitch_7
    const/16 v0, 0x21

    goto :goto_0

    .line 1558
    :pswitch_2
    sparse-switch p2, :sswitch_data_2

    goto :goto_0

    .line 1560
    :sswitch_8
    const/16 v0, 0x21

    .line 1561
    goto :goto_0

    .line 1563
    :sswitch_9
    const/16 v0, 0x82

    .line 1564
    goto :goto_0

    .line 1566
    :sswitch_a
    const/16 v0, 0x42

    .line 1567
    goto :goto_0

    .line 1569
    :sswitch_b
    const/16 v0, 0x11

    goto :goto_0

    .line 1524
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch

    .line 1526
    :sswitch_data_0
    .sparse-switch
        0x11 -> :sswitch_0
        0x21 -> :sswitch_2
        0x42 -> :sswitch_1
        0x82 -> :sswitch_3
    .end sparse-switch

    .line 1542
    :sswitch_data_1
    .sparse-switch
        0x11 -> :sswitch_4
        0x21 -> :sswitch_6
        0x42 -> :sswitch_5
        0x82 -> :sswitch_7
    .end sparse-switch

    .line 1558
    :sswitch_data_2
    .sparse-switch
        0x11 -> :sswitch_8
        0x21 -> :sswitch_a
        0x42 -> :sswitch_9
        0x82 -> :sswitch_b
    .end sparse-switch
.end method

.method public getFirstFullyVisibleViewIndex()I
    .locals 1

    .prologue
    .line 467
    iget v0, p0, Lcom/sec/android/glview/TwGLList;->mFirstFullyVisibleViewIndex:I

    return v0
.end method

.method public getScrollThreshold()F
    .locals 1

    .prologue
    .line 532
    iget v0, p0, Lcom/sec/android/glview/TwGLList;->mScrollThreshold:F

    return v0
.end method

.method protected hideScrollBar()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 566
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLList;->getContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLContext;->getScrollBarAutoHide()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/glview/TwGLList;->mScrollBar:Lcom/sec/android/glview/TwGLNinePatch;

    if-nez v0, :cond_1

    .line 590
    :cond_0
    :goto_0
    return-void

    .line 569
    :cond_1
    iget-boolean v0, p0, Lcom/sec/android/glview/TwGLList;->mBouncing:Z

    if-nez v0, :cond_3

    iget v0, p0, Lcom/sec/android/glview/TwGLList;->mFlingVelocityX:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_2

    iget v0, p0, Lcom/sec/android/glview/TwGLList;->mFlingVelocityY:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_3

    .line 570
    :cond_2
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLList;->restartScrollBarTimer()V

    goto :goto_0

    .line 573
    :cond_3
    iget-object v0, p0, Lcom/sec/android/glview/TwGLList;->mScrollBar:Lcom/sec/android/glview/TwGLNinePatch;

    if-nez v0, :cond_4

    .line 574
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/glview/TwGLList;->mScrollBarVisible:Z

    goto :goto_0

    .line 578
    :cond_4
    iget-object v0, p0, Lcom/sec/android/glview/TwGLList;->mScrollBar:Lcom/sec/android/glview/TwGLNinePatch;

    invoke-static {}, Lcom/sec/android/glview/TwGLUtil;->getAlphaOffAnimation()Landroid/view/animation/Animation;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLNinePatch;->setAnimation(Landroid/view/animation/Animation;Z)V

    .line 579
    iget-object v0, p0, Lcom/sec/android/glview/TwGLList;->mScrollBar:Lcom/sec/android/glview/TwGLNinePatch;

    new-instance v1, Lcom/sec/android/glview/TwGLList$2;

    invoke-direct {v1, p0}, Lcom/sec/android/glview/TwGLList$2;-><init>(Lcom/sec/android/glview/TwGLList;)V

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLNinePatch;->setOnAnimationEventListener(Lcom/sec/android/glview/TwGLView$OnAnimationEventListener;)V

    .line 589
    iget-object v0, p0, Lcom/sec/android/glview/TwGLList;->mScrollBar:Lcom/sec/android/glview/TwGLNinePatch;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLNinePatch;->startAnimation()V

    goto :goto_0
.end method

.method public invalidate()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 726
    iget-object v3, p0, Lcom/sec/android/glview/TwGLViewGroup;->mGLViews:Ljava/util/List;

    monitor-enter v3

    .line 727
    :try_start_0
    iget-object v2, p0, Lcom/sec/android/glview/TwGLViewGroup;->mGLViews:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/glview/TwGLView;

    .line 728
    .local v1, view:Lcom/sec/android/glview/TwGLView;
    invoke-virtual {v1}, Lcom/sec/android/glview/TwGLView;->clear()V

    goto :goto_0

    .line 731
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #view:Lcom/sec/android/glview/TwGLView;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 730
    .restart local v0       #i$:Ljava/util/Iterator;
    :cond_0
    :try_start_1
    iget-object v2, p0, Lcom/sec/android/glview/TwGLViewGroup;->mGLViews:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 731
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 733
    iput v4, p0, Lcom/sec/android/glview/TwGLList;->mContentHeight:F

    .line 734
    iput v4, p0, Lcom/sec/android/glview/TwGLList;->mContentWidth:F

    .line 736
    iget-object v2, p0, Lcom/sec/android/glview/TwGLList;->mAdapter:Lcom/sec/android/glview/TwGLList$Adapter;

    invoke-interface {v2}, Lcom/sec/android/glview/TwGLList$Adapter;->reset()V

    .line 737
    iget-object v2, p0, Lcom/sec/android/glview/TwGLList;->mAdapter:Lcom/sec/android/glview/TwGLList$Adapter;

    iget v3, p0, Lcom/sec/android/glview/TwGLList;->mStackOrientation:I

    invoke-virtual {p0, v2, v3}, Lcom/sec/android/glview/TwGLList;->setAdapter(Lcom/sec/android/glview/TwGLList$Adapter;I)V

    .line 738
    return-void
.end method

.method public onAlphaUpdated()V
    .locals 1

    .prologue
    .line 1147
    invoke-super {p0}, Lcom/sec/android/glview/TwGLViewGroup;->onAlphaUpdated()V

    .line 1148
    iget-object v0, p0, Lcom/sec/android/glview/TwGLList;->mBounceImageTop:Lcom/sec/android/glview/TwGLImage;

    if-eqz v0, :cond_0

    .line 1149
    iget-object v0, p0, Lcom/sec/android/glview/TwGLList;->mBounceImageTop:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLImage;->onAlphaUpdated()V

    .line 1151
    :cond_0
    iget-object v0, p0, Lcom/sec/android/glview/TwGLList;->mBounceImageBottom:Lcom/sec/android/glview/TwGLImage;

    if-eqz v0, :cond_1

    .line 1152
    iget-object v0, p0, Lcom/sec/android/glview/TwGLList;->mBounceImageBottom:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLImage;->onAlphaUpdated()V

    .line 1154
    :cond_1
    iget-object v0, p0, Lcom/sec/android/glview/TwGLList;->mScrollBar:Lcom/sec/android/glview/TwGLNinePatch;

    if-eqz v0, :cond_2

    .line 1155
    iget-object v0, p0, Lcom/sec/android/glview/TwGLList;->mScrollBar:Lcom/sec/android/glview/TwGLNinePatch;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLNinePatch;->onAlphaUpdated()V

    .line 1157
    :cond_2
    return-void
.end method

.method public onDrag(Lcom/sec/android/glview/TwGLView;FFFF)V
    .locals 0
    .parameter "view"
    .parameter "x"
    .parameter "y"
    .parameter "dx"
    .parameter "dy"

    .prologue
    .line 1171
    invoke-virtual {p0, p4, p5}, Lcom/sec/android/glview/TwGLList;->translate(FF)V

    .line 1172
    return-void
.end method

.method public onDragEnd(Lcom/sec/android/glview/TwGLView;FF)V
    .locals 0
    .parameter "view"
    .parameter "x"
    .parameter "y"

    .prologue
    .line 1179
    return-void
.end method

.method public onDragStart(Lcom/sec/android/glview/TwGLView;FF)V
    .locals 0
    .parameter "view"
    .parameter "x"
    .parameter "y"

    .prologue
    .line 1164
    return-void
.end method

.method protected onDraw(Ljavax/microedition/khronos/opengles/GL11;)V
    .locals 17
    .parameter "gl"

    .prologue
    .line 873
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/glview/TwGLViewGroup;->mGLViews:Ljava/util/List;

    monitor-enter v12

    .line 874
    :try_start_0
    move-object/from16 v0, p0

    iget-boolean v11, v0, Lcom/sec/android/glview/TwGLList;->mScrollRequested:Z

    if-eqz v11, :cond_0

    .line 875
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/glview/TwGLList;->scrollToVisible()Z

    .line 877
    :cond_0
    move-object/from16 v0, p0

    iget v11, v0, Lcom/sec/android/glview/TwGLList;->mScrollSumX:F

    move-object/from16 v0, p0

    iget v13, v0, Lcom/sec/android/glview/TwGLList;->mFlingVelocityX:F

    add-float/2addr v11, v13

    move-object/from16 v0, p0

    iput v11, v0, Lcom/sec/android/glview/TwGLList;->mScrollSumX:F

    .line 878
    move-object/from16 v0, p0

    iget v11, v0, Lcom/sec/android/glview/TwGLList;->mScrollSumY:F

    move-object/from16 v0, p0

    iget v13, v0, Lcom/sec/android/glview/TwGLList;->mFlingVelocityY:F

    add-float/2addr v11, v13

    move-object/from16 v0, p0

    iput v11, v0, Lcom/sec/android/glview/TwGLList;->mScrollSumY:F

    .line 879
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/sec/android/glview/TwGLViewGroup;->mGLViews:Ljava/util/List;

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v8

    .line 880
    .local v8, size:I
    invoke-direct/range {p0 .. p0}, Lcom/sec/android/glview/TwGLList;->checkBoundary()Z

    move-result v11

    if-nez v11, :cond_b

    .line 882
    const/4 v5, 0x0

    .local v5, i:I
    :goto_0
    if-ge v5, v8, :cond_2

    .line 883
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/sec/android/glview/TwGLViewGroup;->mGLViews:Ljava/util/List;

    invoke-interface {v11, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/sec/android/glview/TwGLView;

    .line 884
    .local v9, view:Lcom/sec/android/glview/TwGLView;
    if-nez v9, :cond_1

    .line 882
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 889
    :cond_1
    move-object/from16 v0, p0

    iget v11, v0, Lcom/sec/android/glview/TwGLList;->mFlingVelocityX:F

    move-object/from16 v0, p0

    iget v13, v0, Lcom/sec/android/glview/TwGLList;->mFlingVelocityY:F

    const/4 v14, 0x0

    invoke-virtual {v9, v11, v13, v14}, Lcom/sec/android/glview/TwGLView;->translate(FFZ)V

    goto :goto_1

    .line 1141
    .end local v5           #i:I
    .end local v8           #size:I
    .end local v9           #view:Lcom/sec/android/glview/TwGLView;
    :catchall_0
    move-exception v11

    monitor-exit v12
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v11

    .line 891
    .restart local v5       #i:I
    .restart local v8       #size:I
    :cond_2
    :try_start_1
    move-object/from16 v0, p0

    iget-boolean v11, v0, Lcom/sec/android/glview/TwGLList;->mScrollBarVisible:Z

    if-eqz v11, :cond_3

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/sec/android/glview/TwGLList;->mScrollBar:Lcom/sec/android/glview/TwGLNinePatch;

    if-eqz v11, :cond_3

    .line 892
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/sec/android/glview/TwGLList;->mScrollBar:Lcom/sec/android/glview/TwGLNinePatch;

    move-object/from16 v0, p0

    iget v13, v0, Lcom/sec/android/glview/TwGLList;->mListVisibleWidth:F

    move-object/from16 v0, p0

    iget v14, v0, Lcom/sec/android/glview/TwGLList;->mContentWidth:F

    div-float/2addr v13, v14

    move-object/from16 v0, p0

    iget v14, v0, Lcom/sec/android/glview/TwGLList;->mFlingVelocityX:F

    mul-float/2addr v13, v14

    neg-float v13, v13

    move-object/from16 v0, p0

    iget v14, v0, Lcom/sec/android/glview/TwGLList;->mListVisibleHeight:F

    move-object/from16 v0, p0

    iget v15, v0, Lcom/sec/android/glview/TwGLList;->mContentHeight:F

    div-float/2addr v14, v15

    move-object/from16 v0, p0

    iget v15, v0, Lcom/sec/android/glview/TwGLList;->mFlingVelocityY:F

    mul-float/2addr v14, v15

    neg-float v14, v14

    const/4 v15, 0x0

    invoke-virtual {v11, v13, v14, v15}, Lcom/sec/android/glview/TwGLNinePatch;->translate(FFZ)V

    .line 895
    :cond_3
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/sec/android/glview/TwGLList;->mBounceImageTop:Lcom/sec/android/glview/TwGLImage;

    const/4 v13, 0x0

    invoke-virtual {v11, v13}, Lcom/sec/android/glview/TwGLImage;->setAlpha(F)V

    .line 896
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/sec/android/glview/TwGLList;->mBounceImageBottom:Lcom/sec/android/glview/TwGLImage;

    const/4 v13, 0x0

    invoke-virtual {v11, v13}, Lcom/sec/android/glview/TwGLImage;->setAlpha(F)V

    .line 897
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/sec/android/glview/TwGLList;->mBounceEdgeTop:Lcom/sec/android/glview/TwGLImage;

    const/4 v13, 0x0

    invoke-virtual {v11, v13}, Lcom/sec/android/glview/TwGLImage;->setAlpha(F)V

    .line 898
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/sec/android/glview/TwGLList;->mBounceEdgeBottom:Lcom/sec/android/glview/TwGLImage;

    const/4 v13, 0x0

    invoke-virtual {v11, v13}, Lcom/sec/android/glview/TwGLImage;->setAlpha(F)V

    .line 901
    move-object/from16 v0, p0

    iget v11, v0, Lcom/sec/android/glview/TwGLList;->mFlingVelocityX:F

    const/4 v13, 0x0

    cmpl-float v11, v11, v13

    if-lez v11, :cond_9

    .line 902
    move-object/from16 v0, p0

    iget v11, v0, Lcom/sec/android/glview/TwGLList;->mFlingVelocityX:F

    move-object/from16 v0, p0

    iget v13, v0, Lcom/sec/android/glview/TwGLList;->mFlingVelocity:F

    sub-float/2addr v11, v13

    move-object/from16 v0, p0

    iput v11, v0, Lcom/sec/android/glview/TwGLList;->mFlingVelocityX:F

    .line 903
    move-object/from16 v0, p0

    iget v11, v0, Lcom/sec/android/glview/TwGLList;->mFlingVelocityX:F

    const/4 v13, 0x0

    cmpg-float v11, v11, v13

    if-gez v11, :cond_4

    .line 904
    const/4 v11, 0x0

    move-object/from16 v0, p0

    iput v11, v0, Lcom/sec/android/glview/TwGLList;->mFlingVelocityX:F

    .line 910
    :cond_4
    :goto_2
    move-object/from16 v0, p0

    iget v11, v0, Lcom/sec/android/glview/TwGLList;->mFlingVelocityY:F

    const/4 v13, 0x0

    cmpl-float v11, v11, v13

    if-lez v11, :cond_a

    .line 911
    move-object/from16 v0, p0

    iget v11, v0, Lcom/sec/android/glview/TwGLList;->mFlingVelocityY:F

    move-object/from16 v0, p0

    iget v13, v0, Lcom/sec/android/glview/TwGLList;->mFlingVelocity:F

    sub-float/2addr v11, v13

    move-object/from16 v0, p0

    iput v11, v0, Lcom/sec/android/glview/TwGLList;->mFlingVelocityY:F

    .line 912
    move-object/from16 v0, p0

    iget v11, v0, Lcom/sec/android/glview/TwGLList;->mFlingVelocityY:F

    const/4 v13, 0x0

    cmpg-float v11, v11, v13

    if-gez v11, :cond_5

    .line 913
    const/4 v11, 0x0

    move-object/from16 v0, p0

    iput v11, v0, Lcom/sec/android/glview/TwGLList;->mFlingVelocityY:F

    .line 1089
    .end local v5           #i:I
    :cond_5
    :goto_3
    move-object/from16 v0, p0

    iget v11, v0, Lcom/sec/android/glview/TwGLList;->mFlingVelocityX:F

    const/4 v13, 0x0

    cmpl-float v11, v11, v13

    if-nez v11, :cond_6

    move-object/from16 v0, p0

    iget v11, v0, Lcom/sec/android/glview/TwGLList;->mFlingVelocityY:F

    const/4 v13, 0x0

    cmpl-float v11, v11, v13

    if-eqz v11, :cond_26

    .line 1090
    :cond_6
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/glview/TwGLList;->getContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v11

    const/4 v13, 0x1

    invoke-virtual {v11, v13}, Lcom/sec/android/glview/TwGLContext;->setDirty(Z)V

    .line 1096
    :cond_7
    :goto_4
    const/4 v2, 0x0

    .line 1097
    .local v2, checked:Z
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/glview/TwGLList;->getMatrix()[F

    move-result-object v7

    .line 1098
    .local v7, matrix:[F
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/glview/TwGLList;->getClipRect()Landroid/graphics/Rect;

    move-result-object v3

    .line 1099
    .local v3, clipRect:Landroid/graphics/Rect;
    const/4 v5, 0x0

    .restart local v5       #i:I
    :goto_5
    if-ge v5, v8, :cond_28

    .line 1100
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/sec/android/glview/TwGLViewGroup;->mGLViews:Ljava/util/List;

    invoke-interface {v11, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/sec/android/glview/TwGLView;

    .line 1102
    .restart local v9       #view:Lcom/sec/android/glview/TwGLView;
    if-nez v2, :cond_8

    invoke-virtual {v9}, Lcom/sec/android/glview/TwGLView;->isClipped()Z

    move-result v11

    if-nez v11, :cond_8

    .line 1103
    if-nez v5, :cond_27

    .line 1104
    const/4 v11, 0x0

    move-object/from16 v0, p0

    iput v11, v0, Lcom/sec/android/glview/TwGLList;->mFirstFullyVisibleViewIndex:I

    .line 1105
    const/4 v2, 0x1

    .line 1111
    :cond_8
    :goto_6
    invoke-virtual/range {p0 .. p1}, Lcom/sec/android/glview/TwGLList;->clip(Ljavax/microedition/khronos/opengles/GL11;)V

    .line 1112
    invoke-interface/range {p1 .. p1}, Ljavax/microedition/khronos/opengles/GL11;->glPushMatrix()V

    .line 1113
    move-object/from16 v0, p1

    invoke-virtual {v9, v0, v7, v3}, Lcom/sec/android/glview/TwGLView;->draw(Ljavax/microedition/khronos/opengles/GL10;[FLandroid/graphics/Rect;)V

    .line 1114
    invoke-interface/range {p1 .. p1}, Ljavax/microedition/khronos/opengles/GL11;->glPopMatrix()V

    .line 1115
    invoke-virtual/range {p0 .. p1}, Lcom/sec/android/glview/TwGLList;->clearClip(Ljavax/microedition/khronos/opengles/GL11;)V

    .line 1099
    add-int/lit8 v5, v5, 0x1

    goto :goto_5

    .line 906
    .end local v2           #checked:Z
    .end local v3           #clipRect:Landroid/graphics/Rect;
    .end local v7           #matrix:[F
    .end local v9           #view:Lcom/sec/android/glview/TwGLView;
    :cond_9
    move-object/from16 v0, p0

    iget v11, v0, Lcom/sec/android/glview/TwGLList;->mFlingVelocityX:F

    move-object/from16 v0, p0

    iget v13, v0, Lcom/sec/android/glview/TwGLList;->mFlingVelocity:F

    add-float/2addr v11, v13

    move-object/from16 v0, p0

    iput v11, v0, Lcom/sec/android/glview/TwGLList;->mFlingVelocityX:F

    .line 907
    move-object/from16 v0, p0

    iget v11, v0, Lcom/sec/android/glview/TwGLList;->mFlingVelocityX:F

    const/4 v13, 0x0

    cmpl-float v11, v11, v13

    if-lez v11, :cond_4

    .line 908
    const/4 v11, 0x0

    move-object/from16 v0, p0

    iput v11, v0, Lcom/sec/android/glview/TwGLList;->mFlingVelocityX:F

    goto/16 :goto_2

    .line 915
    :cond_a
    move-object/from16 v0, p0

    iget v11, v0, Lcom/sec/android/glview/TwGLList;->mFlingVelocityY:F

    move-object/from16 v0, p0

    iget v13, v0, Lcom/sec/android/glview/TwGLList;->mFlingVelocity:F

    add-float/2addr v11, v13

    move-object/from16 v0, p0

    iput v11, v0, Lcom/sec/android/glview/TwGLList;->mFlingVelocityY:F

    .line 916
    move-object/from16 v0, p0

    iget v11, v0, Lcom/sec/android/glview/TwGLList;->mFlingVelocityY:F

    const/4 v13, 0x0

    cmpl-float v11, v11, v13

    if-lez v11, :cond_5

    .line 917
    const/4 v11, 0x0

    move-object/from16 v0, p0

    iput v11, v0, Lcom/sec/android/glview/TwGLList;->mFlingVelocityY:F

    goto/16 :goto_3

    .line 919
    .end local v5           #i:I
    :cond_b
    move-object/from16 v0, p0

    iget-boolean v11, v0, Lcom/sec/android/glview/TwGLList;->mBouncing:Z

    if-eqz v11, :cond_5

    .line 920
    move-object/from16 v0, p0

    iget v11, v0, Lcom/sec/android/glview/TwGLList;->mScroll:I

    const/4 v13, 0x1

    if-ne v11, v13, :cond_18

    .line 921
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/glview/TwGLList;->getHeight()F

    move-result v11

    move-object/from16 v0, p0

    iget v13, v0, Lcom/sec/android/glview/TwGLList;->mContentHeight:F

    cmpg-float v11, v11, v13

    if-gez v11, :cond_c

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/glview/TwGLList;->getHeight()F

    move-result v4

    .line 923
    .local v4, height:F
    :goto_7
    move-object/from16 v0, p0

    iget v11, v0, Lcom/sec/android/glview/TwGLList;->mPortraitBounceOffset:F

    invoke-static {v11}, Ljava/lang/Math;->abs(F)F

    move-result v11

    move-object/from16 v0, p0

    iget v13, v0, Lcom/sec/android/glview/TwGLList;->mBounceImageMaxAlphaThreshold:F

    const/high16 v14, 0x4000

    div-float/2addr v13, v14

    div-float/2addr v11, v13

    const/high16 v13, 0x3f80

    cmpl-float v11, v11, v13

    if-lez v11, :cond_d

    const/high16 v1, 0x3f80

    .line 924
    .local v1, alpha:F
    :goto_8
    const/high16 v11, 0x3f80

    mul-float/2addr v11, v1

    const/4 v13, 0x0

    add-float v1, v11, v13

    .line 926
    move-object/from16 v0, p0

    iget v11, v0, Lcom/sec/android/glview/TwGLList;->mScrollSumY:F

    const/4 v13, 0x0

    cmpl-float v11, v11, v13

    if-lez v11, :cond_13

    .line 929
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/sec/android/glview/TwGLViewGroup;->mGLViews:Ljava/util/List;

    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, i$:Ljava/util/Iterator;
    :goto_9
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_e

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/sec/android/glview/TwGLView;

    .line 930
    .restart local v9       #view:Lcom/sec/android/glview/TwGLView;
    const/4 v11, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-virtual {v9, v11, v13, v14}, Lcom/sec/android/glview/TwGLView;->translateAbsolute(FFZ)V

    goto :goto_9

    .line 921
    .end local v1           #alpha:F
    .end local v4           #height:F
    .end local v6           #i$:Ljava/util/Iterator;
    .end local v9           #view:Lcom/sec/android/glview/TwGLView;
    :cond_c
    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/glview/TwGLList;->mContentHeight:F

    goto :goto_7

    .line 923
    .restart local v4       #height:F
    :cond_d
    move-object/from16 v0, p0

    iget v11, v0, Lcom/sec/android/glview/TwGLList;->mPortraitBounceOffset:F

    invoke-static {v11}, Ljava/lang/Math;->abs(F)F

    move-result v11

    move-object/from16 v0, p0

    iget v13, v0, Lcom/sec/android/glview/TwGLList;->mBounceImageMaxAlphaThreshold:F

    const/high16 v14, 0x4000

    div-float/2addr v13, v14

    div-float v1, v11, v13

    goto :goto_8

    .line 932
    .restart local v1       #alpha:F
    .restart local v6       #i$:Ljava/util/Iterator;
    :cond_e
    move-object/from16 v0, p0

    iget-boolean v11, v0, Lcom/sec/android/glview/TwGLList;->mScrollBarVisible:Z

    if-eqz v11, :cond_f

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/sec/android/glview/TwGLList;->mScrollBar:Lcom/sec/android/glview/TwGLNinePatch;

    if-eqz v11, :cond_f

    .line 933
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/sec/android/glview/TwGLList;->mScrollBar:Lcom/sec/android/glview/TwGLNinePatch;

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-virtual {v11, v13, v14, v15}, Lcom/sec/android/glview/TwGLNinePatch;->translateAbsolute(FFZ)V

    .line 936
    :cond_f
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/sec/android/glview/TwGLList;->mBounceImageTop:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v11, v1}, Lcom/sec/android/glview/TwGLImage;->setAlpha(F)V

    .line 937
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/sec/android/glview/TwGLList;->mBounceImageTop:Lcom/sec/android/glview/TwGLImage;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/glview/TwGLList;->mBounceImageTop:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v13}, Lcom/sec/android/glview/TwGLImage;->getWidth()F

    move-result v13

    move-object/from16 v0, p0

    iget v14, v0, Lcom/sec/android/glview/TwGLList;->mPortraitBounceOffset:F

    invoke-virtual {v11, v13, v14}, Lcom/sec/android/glview/TwGLImage;->setSize(FF)V

    .line 938
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/sec/android/glview/TwGLList;->mBounceEdgeTop:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v11, v1}, Lcom/sec/android/glview/TwGLImage;->setAlpha(F)V

    .line 941
    move-object/from16 v0, p0

    iget v11, v0, Lcom/sec/android/glview/TwGLList;->mFlingVelocityY:F

    const/4 v13, 0x0

    cmpl-float v11, v11, v13

    if-lez v11, :cond_11

    .line 942
    move-object/from16 v0, p0

    iget v11, v0, Lcom/sec/android/glview/TwGLList;->mFlingVelocityY:F

    move-object/from16 v0, p0

    iget v13, v0, Lcom/sec/android/glview/TwGLList;->mBouncingVelocity:F

    move-object/from16 v0, p0

    iget v14, v0, Lcom/sec/android/glview/TwGLList;->mPortraitBounceOffset:F

    move-object/from16 v0, p0

    iget v15, v0, Lcom/sec/android/glview/TwGLList;->mBounceImageMaxAlphaThreshold:F

    div-float/2addr v14, v15

    const/high16 v15, 0x3f80

    add-float/2addr v14, v15

    mul-float/2addr v13, v14

    sub-float/2addr v11, v13

    move-object/from16 v0, p0

    iput v11, v0, Lcom/sec/android/glview/TwGLList;->mFlingVelocityY:F

    .line 952
    :goto_a
    move-object/from16 v0, p0

    iget v11, v0, Lcom/sec/android/glview/TwGLList;->mScrollSumY:F

    move-object/from16 v0, p0

    iget v13, v0, Lcom/sec/android/glview/TwGLList;->mFlingVelocityY:F

    add-float/2addr v11, v13

    const/4 v13, 0x0

    cmpg-float v11, v11, v13

    if-gtz v11, :cond_10

    .line 955
    const/4 v11, 0x0

    move-object/from16 v0, p0

    iput v11, v0, Lcom/sec/android/glview/TwGLList;->mScrollSumY:F

    .line 956
    const/4 v11, 0x0

    move-object/from16 v0, p0

    iput v11, v0, Lcom/sec/android/glview/TwGLList;->mFlingVelocityY:F

    .line 957
    const/4 v11, 0x0

    move-object/from16 v0, p0

    iput-boolean v11, v0, Lcom/sec/android/glview/TwGLList;->mBouncing:Z

    .line 1071
    .end local v1           #alpha:F
    .end local v4           #height:F
    .end local v6           #i$:Ljava/util/Iterator;
    :cond_10
    :goto_b
    move-object/from16 v0, p0

    iget-boolean v11, v0, Lcom/sec/android/glview/TwGLList;->mBouncing:Z

    if-nez v11, :cond_5

    .line 1074
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/sec/android/glview/TwGLViewGroup;->mGLViews:Ljava/util/List;

    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .restart local v6       #i$:Ljava/util/Iterator;
    :goto_c
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_24

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/sec/android/glview/TwGLView;

    .line 1075
    .restart local v9       #view:Lcom/sec/android/glview/TwGLView;
    move-object/from16 v0, p0

    iget v11, v0, Lcom/sec/android/glview/TwGLList;->mScrollSumX:F

    move-object/from16 v0, p0

    iget v13, v0, Lcom/sec/android/glview/TwGLList;->mScrollSumY:F

    const/4 v14, 0x0

    invoke-virtual {v9, v11, v13, v14}, Lcom/sec/android/glview/TwGLView;->translateAbsolute(FFZ)V

    goto :goto_c

    .line 945
    .end local v9           #view:Lcom/sec/android/glview/TwGLView;
    .restart local v1       #alpha:F
    .restart local v4       #height:F
    :cond_11
    move-object/from16 v0, p0

    iget v11, v0, Lcom/sec/android/glview/TwGLList;->mPortraitBounceOffset:F

    move-object/from16 v0, p0

    iget v13, v0, Lcom/sec/android/glview/TwGLList;->mBounceImageMaxAlphaThreshold:F

    const/high16 v14, 0x4000

    div-float/2addr v13, v14

    cmpl-float v11, v11, v13

    if-lez v11, :cond_12

    .line 946
    move-object/from16 v0, p0

    iget v11, v0, Lcom/sec/android/glview/TwGLList;->mFlingVelocityY:F

    move-object/from16 v0, p0

    iget v13, v0, Lcom/sec/android/glview/TwGLList;->mBouncingVelocity:F

    move-object/from16 v0, p0

    iget v14, v0, Lcom/sec/android/glview/TwGLList;->mPortraitBounceOffset:F

    move-object/from16 v0, p0

    iget v15, v0, Lcom/sec/android/glview/TwGLList;->mBounceImageMaxAlphaThreshold:F

    div-float/2addr v14, v15

    const/high16 v15, 0x3f80

    add-float/2addr v14, v15

    mul-float/2addr v13, v14

    sub-float/2addr v11, v13

    move-object/from16 v0, p0

    iput v11, v0, Lcom/sec/android/glview/TwGLList;->mFlingVelocityY:F

    goto :goto_a

    .line 948
    :cond_12
    move-object/from16 v0, p0

    iget v11, v0, Lcom/sec/android/glview/TwGLList;->mFlingVelocityY:F

    const v13, 0x3e99999a

    mul-float/2addr v11, v13

    move-object/from16 v0, p0

    iget v13, v0, Lcom/sec/android/glview/TwGLList;->mBouncingVelocity:F

    sub-float/2addr v11, v13

    move-object/from16 v0, p0

    iput v11, v0, Lcom/sec/android/glview/TwGLList;->mFlingVelocityY:F

    goto :goto_a

    .line 959
    .end local v6           #i$:Ljava/util/Iterator;
    :cond_13
    move-object/from16 v0, p0

    iget v11, v0, Lcom/sec/android/glview/TwGLList;->mContentHeight:F

    move-object/from16 v0, p0

    iget v13, v0, Lcom/sec/android/glview/TwGLList;->mScrollSumY:F

    add-float/2addr v11, v13

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/glview/TwGLList;->getContentAreaHeight()F

    move-result v13

    cmpg-float v11, v11, v13

    if-gez v11, :cond_10

    .line 962
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/sec/android/glview/TwGLViewGroup;->mGLViews:Ljava/util/List;

    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .restart local v6       #i$:Ljava/util/Iterator;
    :goto_d
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_14

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/sec/android/glview/TwGLView;

    .line 963
    .restart local v9       #view:Lcom/sec/android/glview/TwGLView;
    const/4 v11, 0x0

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/glview/TwGLView;->mPaddings:Landroid/graphics/Rect;

    iget v13, v13, Landroid/graphics/Rect;->top:I

    int-to-float v13, v13

    sub-float v13, v4, v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/glview/TwGLView;->mPaddings:Landroid/graphics/Rect;

    iget v14, v14, Landroid/graphics/Rect;->bottom:I

    int-to-float v14, v14

    sub-float/2addr v13, v14

    move-object/from16 v0, p0

    iget v14, v0, Lcom/sec/android/glview/TwGLList;->mContentHeight:F

    sub-float/2addr v13, v14

    const/4 v14, 0x0

    invoke-virtual {v9, v11, v13, v14}, Lcom/sec/android/glview/TwGLView;->translateAbsolute(FFZ)V

    goto :goto_d

    .line 965
    .end local v9           #view:Lcom/sec/android/glview/TwGLView;
    :cond_14
    move-object/from16 v0, p0

    iget-boolean v11, v0, Lcom/sec/android/glview/TwGLList;->mScrollBarVisible:Z

    if-eqz v11, :cond_15

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/sec/android/glview/TwGLList;->mScrollBar:Lcom/sec/android/glview/TwGLNinePatch;

    if-eqz v11, :cond_15

    .line 966
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/sec/android/glview/TwGLList;->mScrollBar:Lcom/sec/android/glview/TwGLNinePatch;

    const/4 v13, 0x0

    move-object/from16 v0, p0

    iget v14, v0, Lcom/sec/android/glview/TwGLList;->mListVisibleHeight:F

    move-object/from16 v0, p0

    iget v15, v0, Lcom/sec/android/glview/TwGLList;->mContentHeight:F

    div-float/2addr v14, v15

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/glview/TwGLView;->mPaddings:Landroid/graphics/Rect;

    iget v15, v15, Landroid/graphics/Rect;->top:I

    int-to-float v15, v15

    sub-float v15, v4, v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/glview/TwGLView;->mPaddings:Landroid/graphics/Rect;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v16, v0

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v16, v0

    sub-float v15, v15, v16

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/glview/TwGLList;->mContentHeight:F

    move/from16 v16, v0

    sub-float v15, v15, v16

    mul-float/2addr v14, v15

    neg-float v14, v14

    const/4 v15, 0x0

    invoke-virtual {v11, v13, v14, v15}, Lcom/sec/android/glview/TwGLNinePatch;->translateAbsolute(FFZ)V

    .line 970
    :cond_15
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/sec/android/glview/TwGLList;->mBounceImageBottom:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v11, v1}, Lcom/sec/android/glview/TwGLImage;->setAlpha(F)V

    .line 971
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/sec/android/glview/TwGLList;->mBounceImageBottom:Lcom/sec/android/glview/TwGLImage;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/glview/TwGLList;->mBounceImageBottom:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v13}, Lcom/sec/android/glview/TwGLImage;->getWidth()F

    move-result v13

    move-object/from16 v0, p0

    iget v14, v0, Lcom/sec/android/glview/TwGLList;->mPortraitBounceOffset:F

    invoke-static {v14}, Ljava/lang/Math;->abs(F)F

    move-result v14

    invoke-virtual {v11, v13, v14}, Lcom/sec/android/glview/TwGLImage;->setSize(FF)V

    .line 972
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/sec/android/glview/TwGLList;->mBounceImageBottom:Lcom/sec/android/glview/TwGLImage;

    const/4 v13, 0x0

    move-object/from16 v0, p0

    iget v14, v0, Lcom/sec/android/glview/TwGLList;->mListVisibleHeight:F

    move-object/from16 v0, p0

    iget v15, v0, Lcom/sec/android/glview/TwGLList;->mPortraitBounceOffset:F

    invoke-static {v15}, Ljava/lang/Math;->abs(F)F

    move-result v15

    sub-float/2addr v14, v15

    invoke-virtual {v11, v13, v14}, Lcom/sec/android/glview/TwGLImage;->moveLayoutAbsolute(FF)V

    .line 973
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/sec/android/glview/TwGLList;->mBounceEdgeBottom:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v11, v1}, Lcom/sec/android/glview/TwGLImage;->setAlpha(F)V

    .line 977
    move-object/from16 v0, p0

    iget v11, v0, Lcom/sec/android/glview/TwGLList;->mFlingVelocityY:F

    const/4 v13, 0x0

    cmpg-float v11, v11, v13

    if-gez v11, :cond_16

    .line 978
    move-object/from16 v0, p0

    iget v11, v0, Lcom/sec/android/glview/TwGLList;->mFlingVelocityY:F

    move-object/from16 v0, p0

    iget v13, v0, Lcom/sec/android/glview/TwGLList;->mBouncingVelocity:F

    move-object/from16 v0, p0

    iget v14, v0, Lcom/sec/android/glview/TwGLList;->mPortraitBounceOffset:F

    move-object/from16 v0, p0

    iget v15, v0, Lcom/sec/android/glview/TwGLList;->mBounceImageMaxAlphaThreshold:F

    div-float/2addr v14, v15

    const/high16 v15, 0x3f80

    add-float/2addr v14, v15

    mul-float/2addr v13, v14

    add-float/2addr v11, v13

    move-object/from16 v0, p0

    iput v11, v0, Lcom/sec/android/glview/TwGLList;->mFlingVelocityY:F

    .line 988
    :goto_e
    move-object/from16 v0, p0

    iget v11, v0, Lcom/sec/android/glview/TwGLList;->mContentHeight:F

    move-object/from16 v0, p0

    iget v13, v0, Lcom/sec/android/glview/TwGLList;->mScrollSumY:F

    add-float/2addr v11, v13

    move-object/from16 v0, p0

    iget v13, v0, Lcom/sec/android/glview/TwGLList;->mFlingVelocityY:F

    add-float/2addr v11, v13

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/glview/TwGLView;->mPaddings:Landroid/graphics/Rect;

    iget v13, v13, Landroid/graphics/Rect;->top:I

    int-to-float v13, v13

    sub-float v13, v4, v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/glview/TwGLView;->mPaddings:Landroid/graphics/Rect;

    iget v14, v14, Landroid/graphics/Rect;->bottom:I

    int-to-float v14, v14

    sub-float/2addr v13, v14

    cmpl-float v11, v11, v13

    if-ltz v11, :cond_10

    .line 991
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/sec/android/glview/TwGLView;->mPaddings:Landroid/graphics/Rect;

    iget v11, v11, Landroid/graphics/Rect;->top:I

    int-to-float v11, v11

    sub-float v11, v4, v11

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/glview/TwGLView;->mPaddings:Landroid/graphics/Rect;

    iget v13, v13, Landroid/graphics/Rect;->bottom:I

    int-to-float v13, v13

    sub-float/2addr v11, v13

    move-object/from16 v0, p0

    iget v13, v0, Lcom/sec/android/glview/TwGLList;->mContentHeight:F

    sub-float/2addr v11, v13

    move-object/from16 v0, p0

    iput v11, v0, Lcom/sec/android/glview/TwGLList;->mScrollSumY:F

    .line 992
    const/4 v11, 0x0

    move-object/from16 v0, p0

    iput v11, v0, Lcom/sec/android/glview/TwGLList;->mFlingVelocityY:F

    .line 993
    const/4 v11, 0x0

    move-object/from16 v0, p0

    iput-boolean v11, v0, Lcom/sec/android/glview/TwGLList;->mBouncing:Z

    goto/16 :goto_b

    .line 981
    :cond_16
    move-object/from16 v0, p0

    iget v11, v0, Lcom/sec/android/glview/TwGLList;->mPortraitBounceOffset:F

    move-object/from16 v0, p0

    iget v13, v0, Lcom/sec/android/glview/TwGLList;->mBounceImageMaxAlphaThreshold:F

    const/high16 v14, 0x4000

    div-float/2addr v13, v14

    cmpl-float v11, v11, v13

    if-lez v11, :cond_17

    .line 982
    move-object/from16 v0, p0

    iget v11, v0, Lcom/sec/android/glview/TwGLList;->mFlingVelocityY:F

    move-object/from16 v0, p0

    iget v13, v0, Lcom/sec/android/glview/TwGLList;->mBouncingVelocity:F

    move-object/from16 v0, p0

    iget v14, v0, Lcom/sec/android/glview/TwGLList;->mPortraitBounceOffset:F

    move-object/from16 v0, p0

    iget v15, v0, Lcom/sec/android/glview/TwGLList;->mBounceImageMaxAlphaThreshold:F

    div-float/2addr v14, v15

    const/high16 v15, 0x3f80

    add-float/2addr v14, v15

    mul-float/2addr v13, v14

    add-float/2addr v11, v13

    move-object/from16 v0, p0

    iput v11, v0, Lcom/sec/android/glview/TwGLList;->mFlingVelocityY:F

    goto :goto_e

    .line 984
    :cond_17
    move-object/from16 v0, p0

    iget v11, v0, Lcom/sec/android/glview/TwGLList;->mFlingVelocityY:F

    const v13, 0x3e99999a

    mul-float/2addr v11, v13

    move-object/from16 v0, p0

    iget v13, v0, Lcom/sec/android/glview/TwGLList;->mBouncingVelocity:F

    add-float/2addr v11, v13

    move-object/from16 v0, p0

    iput v11, v0, Lcom/sec/android/glview/TwGLList;->mFlingVelocityY:F

    goto/16 :goto_e

    .line 996
    .end local v1           #alpha:F
    .end local v4           #height:F
    .end local v6           #i$:Ljava/util/Iterator;
    :cond_18
    move-object/from16 v0, p0

    iget v11, v0, Lcom/sec/android/glview/TwGLList;->mScroll:I

    const/4 v13, 0x2

    if-ne v11, v13, :cond_10

    .line 997
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/glview/TwGLList;->getWidth()F

    move-result v11

    move-object/from16 v0, p0

    iget v13, v0, Lcom/sec/android/glview/TwGLList;->mContentWidth:F

    cmpg-float v11, v11, v13

    if-gez v11, :cond_19

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/glview/TwGLList;->getWidth()F

    move-result v10

    .line 999
    .local v10, width:F
    :goto_f
    move-object/from16 v0, p0

    iget v11, v0, Lcom/sec/android/glview/TwGLList;->mLandscapeBounceOffset:F

    invoke-static {v11}, Ljava/lang/Math;->abs(F)F

    move-result v11

    move-object/from16 v0, p0

    iget v13, v0, Lcom/sec/android/glview/TwGLList;->mListVisibleWidth:F

    const v14, 0x3dcccccd

    mul-float/2addr v13, v14

    div-float/2addr v11, v13

    const/high16 v13, 0x3f80

    cmpl-float v11, v11, v13

    if-lez v11, :cond_1a

    const/high16 v1, 0x3f80

    .line 1000
    .restart local v1       #alpha:F
    :goto_10
    const/high16 v11, 0x3f80

    mul-float/2addr v11, v1

    const/4 v13, 0x0

    add-float v1, v11, v13

    .line 1002
    move-object/from16 v0, p0

    iget v11, v0, Lcom/sec/android/glview/TwGLList;->mScrollSumX:F

    const/4 v13, 0x0

    cmpl-float v11, v11, v13

    if-lez v11, :cond_1f

    .line 1005
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/sec/android/glview/TwGLViewGroup;->mGLViews:Ljava/util/List;

    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .restart local v6       #i$:Ljava/util/Iterator;
    :goto_11
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_1b

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/sec/android/glview/TwGLView;

    .line 1006
    .restart local v9       #view:Lcom/sec/android/glview/TwGLView;
    const/4 v11, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-virtual {v9, v11, v13, v14}, Lcom/sec/android/glview/TwGLView;->translateAbsolute(FFZ)V

    goto :goto_11

    .line 997
    .end local v1           #alpha:F
    .end local v6           #i$:Ljava/util/Iterator;
    .end local v9           #view:Lcom/sec/android/glview/TwGLView;
    .end local v10           #width:F
    :cond_19
    move-object/from16 v0, p0

    iget v10, v0, Lcom/sec/android/glview/TwGLList;->mContentWidth:F

    goto :goto_f

    .line 999
    .restart local v10       #width:F
    :cond_1a
    move-object/from16 v0, p0

    iget v11, v0, Lcom/sec/android/glview/TwGLList;->mLandscapeBounceOffset:F

    invoke-static {v11}, Ljava/lang/Math;->abs(F)F

    move-result v11

    move-object/from16 v0, p0

    iget v13, v0, Lcom/sec/android/glview/TwGLList;->mListVisibleWidth:F

    const v14, 0x3e4ccccd

    mul-float/2addr v13, v14

    const/high16 v14, 0x4000

    div-float/2addr v13, v14

    div-float v1, v11, v13

    goto :goto_10

    .line 1008
    .restart local v1       #alpha:F
    .restart local v6       #i$:Ljava/util/Iterator;
    :cond_1b
    move-object/from16 v0, p0

    iget-boolean v11, v0, Lcom/sec/android/glview/TwGLList;->mScrollBarVisible:Z

    if-eqz v11, :cond_1c

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/sec/android/glview/TwGLList;->mScrollBar:Lcom/sec/android/glview/TwGLNinePatch;

    if-eqz v11, :cond_1c

    .line 1009
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/sec/android/glview/TwGLList;->mScrollBar:Lcom/sec/android/glview/TwGLNinePatch;

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-virtual {v11, v13, v14, v15}, Lcom/sec/android/glview/TwGLNinePatch;->translateAbsolute(FFZ)V

    .line 1012
    :cond_1c
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/sec/android/glview/TwGLList;->mBounceImageTop:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v11, v1}, Lcom/sec/android/glview/TwGLImage;->setAlpha(F)V

    .line 1013
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/sec/android/glview/TwGLList;->mBounceImageTop:Lcom/sec/android/glview/TwGLImage;

    move-object/from16 v0, p0

    iget v13, v0, Lcom/sec/android/glview/TwGLList;->BOUNCE_IMAGE_SIZE:F

    move-object/from16 v0, p0

    iget v14, v0, Lcom/sec/android/glview/TwGLList;->mLandscapeBounceOffset:F

    add-float/2addr v13, v14

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/glview/TwGLList;->mBounceImageTop:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v14}, Lcom/sec/android/glview/TwGLImage;->getHeight()F

    move-result v14

    invoke-virtual {v11, v13, v14}, Lcom/sec/android/glview/TwGLImage;->setSize(FF)V

    .line 1017
    move-object/from16 v0, p0

    iget v11, v0, Lcom/sec/android/glview/TwGLList;->mFlingVelocityX:F

    const/4 v13, 0x0

    cmpl-float v11, v11, v13

    if-lez v11, :cond_1d

    .line 1018
    move-object/from16 v0, p0

    iget v11, v0, Lcom/sec/android/glview/TwGLList;->mFlingVelocityX:F

    move-object/from16 v0, p0

    iget v13, v0, Lcom/sec/android/glview/TwGLList;->mBouncingVelocity:F

    move-object/from16 v0, p0

    iget v14, v0, Lcom/sec/android/glview/TwGLList;->mLandscapeBounceOffset:F

    move-object/from16 v0, p0

    iget v15, v0, Lcom/sec/android/glview/TwGLList;->mBounceImageMaxAlphaThreshold:F

    div-float/2addr v14, v15

    const/high16 v15, 0x3f80

    add-float/2addr v14, v15

    mul-float/2addr v13, v14

    sub-float/2addr v11, v13

    move-object/from16 v0, p0

    iput v11, v0, Lcom/sec/android/glview/TwGLList;->mFlingVelocityX:F

    .line 1028
    :goto_12
    move-object/from16 v0, p0

    iget v11, v0, Lcom/sec/android/glview/TwGLList;->mScrollSumX:F

    move-object/from16 v0, p0

    iget v13, v0, Lcom/sec/android/glview/TwGLList;->mFlingVelocityX:F

    add-float/2addr v11, v13

    const/4 v13, 0x0

    cmpg-float v11, v11, v13

    if-gtz v11, :cond_10

    .line 1031
    const/4 v11, 0x0

    move-object/from16 v0, p0

    iput v11, v0, Lcom/sec/android/glview/TwGLList;->mScrollSumX:F

    .line 1032
    const/4 v11, 0x0

    move-object/from16 v0, p0

    iput v11, v0, Lcom/sec/android/glview/TwGLList;->mFlingVelocityX:F

    .line 1033
    const/4 v11, 0x0

    move-object/from16 v0, p0

    iput-boolean v11, v0, Lcom/sec/android/glview/TwGLList;->mBouncing:Z

    goto/16 :goto_b

    .line 1021
    :cond_1d
    move-object/from16 v0, p0

    iget v11, v0, Lcom/sec/android/glview/TwGLList;->mLandscapeBounceOffset:F

    move-object/from16 v0, p0

    iget v13, v0, Lcom/sec/android/glview/TwGLList;->mBounceImageMaxAlphaThreshold:F

    const/high16 v14, 0x4000

    div-float/2addr v13, v14

    cmpl-float v11, v11, v13

    if-lez v11, :cond_1e

    .line 1022
    move-object/from16 v0, p0

    iget v11, v0, Lcom/sec/android/glview/TwGLList;->mFlingVelocityX:F

    move-object/from16 v0, p0

    iget v13, v0, Lcom/sec/android/glview/TwGLList;->mBouncingVelocity:F

    move-object/from16 v0, p0

    iget v14, v0, Lcom/sec/android/glview/TwGLList;->mLandscapeBounceOffset:F

    move-object/from16 v0, p0

    iget v15, v0, Lcom/sec/android/glview/TwGLList;->mBounceImageMaxAlphaThreshold:F

    div-float/2addr v14, v15

    const/high16 v15, 0x3f80

    add-float/2addr v14, v15

    mul-float/2addr v13, v14

    sub-float/2addr v11, v13

    move-object/from16 v0, p0

    iput v11, v0, Lcom/sec/android/glview/TwGLList;->mFlingVelocityX:F

    goto :goto_12

    .line 1024
    :cond_1e
    move-object/from16 v0, p0

    iget v11, v0, Lcom/sec/android/glview/TwGLList;->mFlingVelocityX:F

    const v13, 0x3e99999a

    mul-float/2addr v11, v13

    move-object/from16 v0, p0

    iget v13, v0, Lcom/sec/android/glview/TwGLList;->mBouncingVelocity:F

    sub-float/2addr v11, v13

    move-object/from16 v0, p0

    iput v11, v0, Lcom/sec/android/glview/TwGLList;->mFlingVelocityX:F

    goto :goto_12

    .line 1035
    .end local v6           #i$:Ljava/util/Iterator;
    :cond_1f
    move-object/from16 v0, p0

    iget v11, v0, Lcom/sec/android/glview/TwGLList;->mContentWidth:F

    move-object/from16 v0, p0

    iget v13, v0, Lcom/sec/android/glview/TwGLList;->mScrollSumX:F

    add-float/2addr v11, v13

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/glview/TwGLList;->getContentAreaWidth()F

    move-result v13

    cmpg-float v11, v11, v13

    if-gez v11, :cond_10

    .line 1038
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/sec/android/glview/TwGLViewGroup;->mGLViews:Ljava/util/List;

    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .restart local v6       #i$:Ljava/util/Iterator;
    :goto_13
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_20

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/sec/android/glview/TwGLView;

    .line 1039
    .restart local v9       #view:Lcom/sec/android/glview/TwGLView;
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/sec/android/glview/TwGLView;->mPaddings:Landroid/graphics/Rect;

    iget v11, v11, Landroid/graphics/Rect;->left:I

    int-to-float v11, v11

    sub-float v11, v10, v11

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/glview/TwGLView;->mPaddings:Landroid/graphics/Rect;

    iget v13, v13, Landroid/graphics/Rect;->right:I

    int-to-float v13, v13

    sub-float/2addr v11, v13

    move-object/from16 v0, p0

    iget v13, v0, Lcom/sec/android/glview/TwGLList;->mContentWidth:F

    sub-float/2addr v11, v13

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-virtual {v9, v11, v13, v14}, Lcom/sec/android/glview/TwGLView;->translateAbsolute(FFZ)V

    goto :goto_13

    .line 1041
    .end local v9           #view:Lcom/sec/android/glview/TwGLView;
    :cond_20
    move-object/from16 v0, p0

    iget-boolean v11, v0, Lcom/sec/android/glview/TwGLList;->mScrollBarVisible:Z

    if-eqz v11, :cond_21

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/sec/android/glview/TwGLList;->mScrollBar:Lcom/sec/android/glview/TwGLNinePatch;

    if-eqz v11, :cond_21

    .line 1042
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/sec/android/glview/TwGLList;->mScrollBar:Lcom/sec/android/glview/TwGLNinePatch;

    move-object/from16 v0, p0

    iget v13, v0, Lcom/sec/android/glview/TwGLList;->mListVisibleWidth:F

    move-object/from16 v0, p0

    iget v14, v0, Lcom/sec/android/glview/TwGLList;->mContentWidth:F

    div-float/2addr v13, v14

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/glview/TwGLView;->mPaddings:Landroid/graphics/Rect;

    iget v14, v14, Landroid/graphics/Rect;->left:I

    int-to-float v14, v14

    sub-float v14, v10, v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/glview/TwGLView;->mPaddings:Landroid/graphics/Rect;

    iget v15, v15, Landroid/graphics/Rect;->right:I

    int-to-float v15, v15

    sub-float/2addr v14, v15

    move-object/from16 v0, p0

    iget v15, v0, Lcom/sec/android/glview/TwGLList;->mContentWidth:F

    sub-float/2addr v14, v15

    mul-float/2addr v13, v14

    neg-float v13, v13

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-virtual {v11, v13, v14, v15}, Lcom/sec/android/glview/TwGLNinePatch;->translateAbsolute(FFZ)V

    .line 1045
    :cond_21
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/sec/android/glview/TwGLList;->mBounceImageBottom:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v11, v1}, Lcom/sec/android/glview/TwGLImage;->setAlpha(F)V

    .line 1046
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/sec/android/glview/TwGLList;->mBounceImageBottom:Lcom/sec/android/glview/TwGLImage;

    move-object/from16 v0, p0

    iget v13, v0, Lcom/sec/android/glview/TwGLList;->BOUNCE_IMAGE_SIZE:F

    move-object/from16 v0, p0

    iget v14, v0, Lcom/sec/android/glview/TwGLList;->mLandscapeBounceOffset:F

    invoke-static {v14}, Ljava/lang/Math;->abs(F)F

    move-result v14

    add-float/2addr v13, v14

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/glview/TwGLList;->mBounceImageBottom:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v14}, Lcom/sec/android/glview/TwGLImage;->getHeight()F

    move-result v14

    invoke-virtual {v11, v13, v14}, Lcom/sec/android/glview/TwGLImage;->setSize(FF)V

    .line 1047
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/sec/android/glview/TwGLList;->mBounceImageBottom:Lcom/sec/android/glview/TwGLImage;

    move-object/from16 v0, p0

    iget v13, v0, Lcom/sec/android/glview/TwGLList;->mListVisibleWidth:F

    move-object/from16 v0, p0

    iget v14, v0, Lcom/sec/android/glview/TwGLList;->BOUNCE_IMAGE_SIZE:F

    move-object/from16 v0, p0

    iget v15, v0, Lcom/sec/android/glview/TwGLList;->mLandscapeBounceOffset:F

    invoke-static {v15}, Ljava/lang/Math;->abs(F)F

    move-result v15

    add-float/2addr v14, v15

    sub-float/2addr v13, v14

    const/4 v14, 0x0

    invoke-virtual {v11, v13, v14}, Lcom/sec/android/glview/TwGLImage;->moveLayoutAbsolute(FF)V

    .line 1051
    move-object/from16 v0, p0

    iget v11, v0, Lcom/sec/android/glview/TwGLList;->mFlingVelocityX:F

    const/4 v13, 0x0

    cmpg-float v11, v11, v13

    if-gez v11, :cond_22

    .line 1052
    move-object/from16 v0, p0

    iget v11, v0, Lcom/sec/android/glview/TwGLList;->mFlingVelocityX:F

    move-object/from16 v0, p0

    iget v13, v0, Lcom/sec/android/glview/TwGLList;->mBouncingVelocity:F

    move-object/from16 v0, p0

    iget v14, v0, Lcom/sec/android/glview/TwGLList;->mLandscapeBounceOffset:F

    move-object/from16 v0, p0

    iget v15, v0, Lcom/sec/android/glview/TwGLList;->mBounceImageMaxAlphaThreshold:F

    div-float/2addr v14, v15

    const/high16 v15, 0x3f80

    add-float/2addr v14, v15

    mul-float/2addr v13, v14

    add-float/2addr v11, v13

    move-object/from16 v0, p0

    iput v11, v0, Lcom/sec/android/glview/TwGLList;->mFlingVelocityX:F

    .line 1062
    :goto_14
    move-object/from16 v0, p0

    iget v11, v0, Lcom/sec/android/glview/TwGLList;->mContentWidth:F

    move-object/from16 v0, p0

    iget v13, v0, Lcom/sec/android/glview/TwGLList;->mScrollSumX:F

    add-float/2addr v11, v13

    move-object/from16 v0, p0

    iget v13, v0, Lcom/sec/android/glview/TwGLList;->mFlingVelocityX:F

    add-float/2addr v11, v13

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/glview/TwGLView;->mPaddings:Landroid/graphics/Rect;

    iget v13, v13, Landroid/graphics/Rect;->left:I

    int-to-float v13, v13

    sub-float v13, v10, v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/glview/TwGLView;->mPaddings:Landroid/graphics/Rect;

    iget v14, v14, Landroid/graphics/Rect;->right:I

    int-to-float v14, v14

    sub-float/2addr v13, v14

    cmpl-float v11, v11, v13

    if-ltz v11, :cond_10

    .line 1065
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/sec/android/glview/TwGLView;->mPaddings:Landroid/graphics/Rect;

    iget v11, v11, Landroid/graphics/Rect;->left:I

    int-to-float v11, v11

    sub-float v11, v10, v11

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/glview/TwGLView;->mPaddings:Landroid/graphics/Rect;

    iget v13, v13, Landroid/graphics/Rect;->right:I

    int-to-float v13, v13

    sub-float/2addr v11, v13

    move-object/from16 v0, p0

    iget v13, v0, Lcom/sec/android/glview/TwGLList;->mContentWidth:F

    sub-float/2addr v11, v13

    move-object/from16 v0, p0

    iput v11, v0, Lcom/sec/android/glview/TwGLList;->mScrollSumX:F

    .line 1066
    const/4 v11, 0x0

    move-object/from16 v0, p0

    iput v11, v0, Lcom/sec/android/glview/TwGLList;->mFlingVelocityX:F

    .line 1067
    const/4 v11, 0x0

    move-object/from16 v0, p0

    iput-boolean v11, v0, Lcom/sec/android/glview/TwGLList;->mBouncing:Z

    goto/16 :goto_b

    .line 1055
    :cond_22
    move-object/from16 v0, p0

    iget v11, v0, Lcom/sec/android/glview/TwGLList;->mLandscapeBounceOffset:F

    move-object/from16 v0, p0

    iget v13, v0, Lcom/sec/android/glview/TwGLList;->mBounceImageMaxAlphaThreshold:F

    const/high16 v14, 0x4000

    div-float/2addr v13, v14

    cmpl-float v11, v11, v13

    if-lez v11, :cond_23

    .line 1056
    move-object/from16 v0, p0

    iget v11, v0, Lcom/sec/android/glview/TwGLList;->mFlingVelocityX:F

    move-object/from16 v0, p0

    iget v13, v0, Lcom/sec/android/glview/TwGLList;->mBouncingVelocity:F

    move-object/from16 v0, p0

    iget v14, v0, Lcom/sec/android/glview/TwGLList;->mLandscapeBounceOffset:F

    move-object/from16 v0, p0

    iget v15, v0, Lcom/sec/android/glview/TwGLList;->mBounceImageMaxAlphaThreshold:F

    div-float/2addr v14, v15

    const/high16 v15, 0x3f80

    add-float/2addr v14, v15

    mul-float/2addr v13, v14

    add-float/2addr v11, v13

    move-object/from16 v0, p0

    iput v11, v0, Lcom/sec/android/glview/TwGLList;->mFlingVelocityX:F

    goto :goto_14

    .line 1058
    :cond_23
    move-object/from16 v0, p0

    iget v11, v0, Lcom/sec/android/glview/TwGLList;->mFlingVelocityX:F

    const v13, 0x3e99999a

    mul-float/2addr v11, v13

    move-object/from16 v0, p0

    iget v13, v0, Lcom/sec/android/glview/TwGLList;->mBouncingVelocity:F

    add-float/2addr v11, v13

    move-object/from16 v0, p0

    iput v11, v0, Lcom/sec/android/glview/TwGLList;->mFlingVelocityX:F

    goto/16 :goto_14

    .line 1077
    .end local v1           #alpha:F
    .end local v10           #width:F
    :cond_24
    move-object/from16 v0, p0

    iget-boolean v11, v0, Lcom/sec/android/glview/TwGLList;->mScrollBarVisible:Z

    if-eqz v11, :cond_25

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/sec/android/glview/TwGLList;->mScrollBar:Lcom/sec/android/glview/TwGLNinePatch;

    if-eqz v11, :cond_25

    .line 1078
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/sec/android/glview/TwGLList;->mScrollBar:Lcom/sec/android/glview/TwGLNinePatch;

    move-object/from16 v0, p0

    iget v13, v0, Lcom/sec/android/glview/TwGLList;->mListVisibleWidth:F

    move-object/from16 v0, p0

    iget v14, v0, Lcom/sec/android/glview/TwGLList;->mContentWidth:F

    div-float/2addr v13, v14

    move-object/from16 v0, p0

    iget v14, v0, Lcom/sec/android/glview/TwGLList;->mScrollSumX:F

    mul-float/2addr v13, v14

    neg-float v13, v13

    move-object/from16 v0, p0

    iget v14, v0, Lcom/sec/android/glview/TwGLList;->mListVisibleHeight:F

    move-object/from16 v0, p0

    iget v15, v0, Lcom/sec/android/glview/TwGLList;->mContentHeight:F

    div-float/2addr v14, v15

    move-object/from16 v0, p0

    iget v15, v0, Lcom/sec/android/glview/TwGLList;->mScrollSumY:F

    mul-float/2addr v14, v15

    neg-float v14, v14

    const/4 v15, 0x0

    invoke-virtual {v11, v13, v14, v15}, Lcom/sec/android/glview/TwGLNinePatch;->translateAbsolute(FFZ)V

    .line 1080
    :cond_25
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/sec/android/glview/TwGLList;->mBounceImageTop:Lcom/sec/android/glview/TwGLImage;

    const/4 v13, 0x0

    invoke-virtual {v11, v13}, Lcom/sec/android/glview/TwGLImage;->setAlpha(F)V

    .line 1081
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/sec/android/glview/TwGLList;->mBounceImageBottom:Lcom/sec/android/glview/TwGLImage;

    const/4 v13, 0x0

    invoke-virtual {v11, v13}, Lcom/sec/android/glview/TwGLImage;->setAlpha(F)V

    .line 1082
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/sec/android/glview/TwGLList;->mBounceEdgeTop:Lcom/sec/android/glview/TwGLImage;

    const/4 v13, 0x0

    invoke-virtual {v11, v13}, Lcom/sec/android/glview/TwGLImage;->setAlpha(F)V

    .line 1083
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/sec/android/glview/TwGLList;->mBounceEdgeBottom:Lcom/sec/android/glview/TwGLImage;

    const/4 v13, 0x0

    invoke-virtual {v11, v13}, Lcom/sec/android/glview/TwGLImage;->setAlpha(F)V

    .line 1084
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/glview/TwGLList;->getContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v11

    const/4 v13, 0x1

    invoke-virtual {v11, v13}, Lcom/sec/android/glview/TwGLContext;->setDirty(Z)V

    goto/16 :goto_3

    .line 1091
    .end local v6           #i$:Ljava/util/Iterator;
    :cond_26
    move-object/from16 v0, p0

    iget-boolean v11, v0, Lcom/sec/android/glview/TwGLList;->mBouncing:Z

    if-eqz v11, :cond_7

    .line 1092
    const/4 v11, 0x0

    move-object/from16 v0, p0

    iput-boolean v11, v0, Lcom/sec/android/glview/TwGLList;->mBouncing:Z

    .line 1093
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/glview/TwGLList;->getContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v11

    const/4 v13, 0x1

    invoke-virtual {v11, v13}, Lcom/sec/android/glview/TwGLContext;->setDirty(Z)V

    goto/16 :goto_4

    .line 1106
    .restart local v2       #checked:Z
    .restart local v3       #clipRect:Landroid/graphics/Rect;
    .restart local v5       #i:I
    .restart local v7       #matrix:[F
    .restart local v9       #view:Lcom/sec/android/glview/TwGLView;
    :cond_27
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/sec/android/glview/TwGLViewGroup;->mGLViews:Ljava/util/List;

    add-int/lit8 v13, v5, -0x1

    invoke-interface {v11, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/sec/android/glview/TwGLView;

    invoke-virtual {v11}, Lcom/sec/android/glview/TwGLView;->isClipped()Z

    move-result v11

    if-eqz v11, :cond_8

    .line 1107
    move-object/from16 v0, p0

    iput v5, v0, Lcom/sec/android/glview/TwGLList;->mFirstFullyVisibleViewIndex:I

    .line 1108
    const/4 v2, 0x1

    goto/16 :goto_6

    .line 1118
    .end local v9           #view:Lcom/sec/android/glview/TwGLView;
    :cond_28
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/sec/android/glview/TwGLList;->mScrollBar:Lcom/sec/android/glview/TwGLNinePatch;

    if-eqz v11, :cond_29

    move-object/from16 v0, p0

    iget-boolean v11, v0, Lcom/sec/android/glview/TwGLList;->mScrollBarVisible:Z

    if-eqz v11, :cond_29

    .line 1119
    invoke-virtual/range {p0 .. p1}, Lcom/sec/android/glview/TwGLList;->clip(Ljavax/microedition/khronos/opengles/GL11;)V

    .line 1120
    invoke-interface/range {p1 .. p1}, Ljavax/microedition/khronos/opengles/GL11;->glPushMatrix()V

    .line 1121
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/sec/android/glview/TwGLList;->mScrollBar:Lcom/sec/android/glview/TwGLNinePatch;

    move-object/from16 v0, p1

    invoke-virtual {v11, v0, v7, v3}, Lcom/sec/android/glview/TwGLNinePatch;->draw(Ljavax/microedition/khronos/opengles/GL10;[FLandroid/graphics/Rect;)V

    .line 1122
    invoke-interface/range {p1 .. p1}, Ljavax/microedition/khronos/opengles/GL11;->glPopMatrix()V

    .line 1123
    invoke-virtual/range {p0 .. p1}, Lcom/sec/android/glview/TwGLList;->clearClip(Ljavax/microedition/khronos/opengles/GL11;)V

    .line 1125
    :cond_29
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/sec/android/glview/TwGLList;->mBounceImageTop:Lcom/sec/android/glview/TwGLImage;

    if-eqz v11, :cond_2a

    .line 1126
    invoke-virtual/range {p0 .. p1}, Lcom/sec/android/glview/TwGLList;->clip(Ljavax/microedition/khronos/opengles/GL11;)V

    .line 1127
    invoke-interface/range {p1 .. p1}, Ljavax/microedition/khronos/opengles/GL11;->glPushMatrix()V

    .line 1128
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/sec/android/glview/TwGLList;->mBounceImageTop:Lcom/sec/android/glview/TwGLImage;

    move-object/from16 v0, p1

    invoke-virtual {v11, v0, v7, v3}, Lcom/sec/android/glview/TwGLImage;->draw(Ljavax/microedition/khronos/opengles/GL10;[FLandroid/graphics/Rect;)V

    .line 1129
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/sec/android/glview/TwGLList;->mBounceEdgeTop:Lcom/sec/android/glview/TwGLImage;

    move-object/from16 v0, p1

    invoke-virtual {v11, v0, v7, v3}, Lcom/sec/android/glview/TwGLImage;->draw(Ljavax/microedition/khronos/opengles/GL10;[FLandroid/graphics/Rect;)V

    .line 1130
    invoke-interface/range {p1 .. p1}, Ljavax/microedition/khronos/opengles/GL11;->glPopMatrix()V

    .line 1131
    invoke-virtual/range {p0 .. p1}, Lcom/sec/android/glview/TwGLList;->clearClip(Ljavax/microedition/khronos/opengles/GL11;)V

    .line 1133
    :cond_2a
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/sec/android/glview/TwGLList;->mBounceImageBottom:Lcom/sec/android/glview/TwGLImage;

    if-eqz v11, :cond_2b

    .line 1134
    invoke-virtual/range {p0 .. p1}, Lcom/sec/android/glview/TwGLList;->clip(Ljavax/microedition/khronos/opengles/GL11;)V

    .line 1135
    invoke-interface/range {p1 .. p1}, Ljavax/microedition/khronos/opengles/GL11;->glPushMatrix()V

    .line 1136
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/sec/android/glview/TwGLList;->mBounceImageBottom:Lcom/sec/android/glview/TwGLImage;

    move-object/from16 v0, p1

    invoke-virtual {v11, v0, v7, v3}, Lcom/sec/android/glview/TwGLImage;->draw(Ljavax/microedition/khronos/opengles/GL10;[FLandroid/graphics/Rect;)V

    .line 1137
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/sec/android/glview/TwGLList;->mBounceEdgeBottom:Lcom/sec/android/glview/TwGLImage;

    move-object/from16 v0, p1

    invoke-virtual {v11, v0, v7, v3}, Lcom/sec/android/glview/TwGLImage;->draw(Ljavax/microedition/khronos/opengles/GL10;[FLandroid/graphics/Rect;)V

    .line 1138
    invoke-interface/range {p1 .. p1}, Ljavax/microedition/khronos/opengles/GL11;->glPopMatrix()V

    .line 1139
    invoke-virtual/range {p0 .. p1}, Lcom/sec/android/glview/TwGLList;->clearClip(Ljavax/microedition/khronos/opengles/GL11;)V

    .line 1141
    :cond_2b
    monitor-exit v12
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1142
    const/4 v11, 0x0

    move-object/from16 v0, p0

    iput-boolean v11, v0, Lcom/sec/android/glview/TwGLView;->mDrawFirstTime:Z

    .line 1143
    return-void
.end method

.method public onFocusChanged(Lcom/sec/android/glview/TwGLView;I)Z
    .locals 1
    .parameter "view"
    .parameter "focusStatus"

    .prologue
    const/4 v0, 0x1

    .line 1362
    if-ne p2, v0, :cond_0

    .line 1363
    iput-boolean v0, p0, Lcom/sec/android/glview/TwGLList;->mScrollRequested:Z

    .line 1364
    iput-object p1, p0, Lcom/sec/android/glview/TwGLList;->mScrollToVisibleView:Lcom/sec/android/glview/TwGLView;

    .line 1366
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public onKeyDown(Lcom/sec/android/glview/TwGLView;Landroid/view/KeyEvent;)Z
    .locals 1
    .parameter "view"
    .parameter "event"

    .prologue
    .line 1351
    const/4 v0, 0x0

    return v0
.end method

.method public onKeyUp(Lcom/sec/android/glview/TwGLView;Landroid/view/KeyEvent;)Z
    .locals 1
    .parameter "view"
    .parameter "event"

    .prologue
    .line 1357
    const/4 v0, 0x0

    return v0
.end method

.method protected onLoad(Ljavax/microedition/khronos/opengles/GL11;)Z
    .locals 1
    .parameter "gl"

    .prologue
    .line 343
    const/4 v0, 0x1

    .line 344
    .local v0, ret:Z
    invoke-super {p0, p1}, Lcom/sec/android/glview/TwGLViewGroup;->onLoad(Ljavax/microedition/khronos/opengles/GL11;)Z

    move-result v0

    .line 345
    return v0
.end method

.method public onReset()V
    .locals 4

    .prologue
    .line 1584
    iget-object v3, p0, Lcom/sec/android/glview/TwGLViewGroup;->mGLViews:Ljava/util/List;

    monitor-enter v3

    .line 1585
    :try_start_0
    iget-object v2, p0, Lcom/sec/android/glview/TwGLList;->mScrollBar:Lcom/sec/android/glview/TwGLNinePatch;

    if-eqz v2, :cond_0

    .line 1586
    iget-object v2, p0, Lcom/sec/android/glview/TwGLList;->mScrollBar:Lcom/sec/android/glview/TwGLNinePatch;

    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLNinePatch;->reset()V

    .line 1587
    :cond_0
    iget-object v2, p0, Lcom/sec/android/glview/TwGLList;->mBounceImageTop:Lcom/sec/android/glview/TwGLImage;

    if-eqz v2, :cond_1

    .line 1588
    iget-object v2, p0, Lcom/sec/android/glview/TwGLList;->mBounceImageTop:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLImage;->reset()V

    .line 1590
    :cond_1
    iget-object v2, p0, Lcom/sec/android/glview/TwGLList;->mBounceEdgeTop:Lcom/sec/android/glview/TwGLImage;

    if-eqz v2, :cond_2

    .line 1591
    iget-object v2, p0, Lcom/sec/android/glview/TwGLList;->mBounceEdgeTop:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLImage;->reset()V

    .line 1593
    :cond_2
    iget-object v2, p0, Lcom/sec/android/glview/TwGLList;->mBounceImageBottom:Lcom/sec/android/glview/TwGLImage;

    if-eqz v2, :cond_3

    .line 1594
    iget-object v2, p0, Lcom/sec/android/glview/TwGLList;->mBounceImageBottom:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLImage;->reset()V

    .line 1596
    :cond_3
    iget-object v2, p0, Lcom/sec/android/glview/TwGLList;->mBounceEdgeBottom:Lcom/sec/android/glview/TwGLImage;

    if-eqz v2, :cond_4

    .line 1597
    iget-object v2, p0, Lcom/sec/android/glview/TwGLList;->mBounceEdgeBottom:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLImage;->reset()V

    .line 1599
    :cond_4
    iget-object v2, p0, Lcom/sec/android/glview/TwGLViewGroup;->mGLViews:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/glview/TwGLView;

    .line 1600
    .local v1, view:Lcom/sec/android/glview/TwGLView;
    invoke-virtual {v1}, Lcom/sec/android/glview/TwGLView;->reset()V

    goto :goto_0

    .line 1602
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #view:Lcom/sec/android/glview/TwGLView;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .restart local v0       #i$:Ljava/util/Iterator;
    :cond_5
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1603
    return-void
.end method

.method public onTouch(Lcom/sec/android/glview/TwGLView;Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "v"
    .parameter "e"

    .prologue
    .line 1185
    invoke-virtual {p0, p2}, Lcom/sec/android/glview/TwGLList;->touchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 12
    .parameter "e"

    .prologue
    .line 1193
    iget-object v8, p0, Lcom/sec/android/glview/TwGLViewGroup;->mGLViews:Ljava/util/List;

    monitor-enter v8

    .line 1194
    :try_start_0
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v3

    .line 1195
    .local v3, et:Landroid/view/MotionEvent;
    iget-object v7, p0, Lcom/sec/android/glview/TwGLView;->mTransformedScreenCoordinate:[F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v9

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v10

    invoke-virtual {p0, v7, v9, v10}, Lcom/sec/android/glview/TwGLList;->mapPointReverse([FFF)V

    .line 1196
    iget-object v7, p0, Lcom/sec/android/glview/TwGLView;->mTransformedScreenCoordinate:[F

    const/4 v9, 0x0

    aget v7, v7, v9

    iget-object v9, p0, Lcom/sec/android/glview/TwGLView;->mTransformedScreenCoordinate:[F

    const/4 v10, 0x1

    aget v9, v9, v10

    invoke-virtual {v3, v7, v9}, Landroid/view/MotionEvent;->setLocation(FF)V

    .line 1198
    invoke-direct {p0}, Lcom/sec/android/glview/TwGLList;->checkBoundary()Z

    move-result v5

    .line 1200
    .local v5, mBoundary:Z
    iget-object v7, p0, Lcom/sec/android/glview/TwGLList;->mGestureDetector:Landroid/view/GestureDetector;

    if-nez v7, :cond_0

    .line 1201
    new-instance v7, Landroid/view/GestureDetector;

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLList;->getContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v9

    invoke-virtual {v9}, Lcom/sec/android/glview/TwGLContext;->getApplicationContext()Landroid/content/Context;

    move-result-object v9

    new-instance v10, Lcom/sec/android/glview/TwGLList$TwGLListGestureDetectorListener;

    invoke-direct {v10, p0}, Lcom/sec/android/glview/TwGLList$TwGLListGestureDetectorListener;-><init>(Lcom/sec/android/glview/TwGLList;)V

    invoke-direct {v7, v9, v10}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v7, p0, Lcom/sec/android/glview/TwGLList;->mGestureDetector:Landroid/view/GestureDetector;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1204
    :cond_0
    :try_start_1
    iget-object v7, p0, Lcom/sec/android/glview/TwGLList;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v7, v3}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v7

    if-eqz v7, :cond_1

    .line 1205
    const/4 v7, 0x1

    :try_start_2
    monitor-exit v8

    .line 1344
    :goto_0
    return v7

    .line 1207
    :catch_0
    move-exception v7

    .line 1211
    :cond_1
    invoke-virtual {v3}, Landroid/view/MotionEvent;->getAction()I

    move-result v7

    if-nez v7, :cond_2

    .line 1212
    const-string v7, "TwGLList"

    const-string v9, "ACTION_DOWN"

    invoke-static {v7, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1213
    invoke-virtual {v3}, Landroid/view/MotionEvent;->getX()F

    move-result v7

    iput v7, p0, Lcom/sec/android/glview/TwGLList;->mScrollX:F

    .line 1214
    invoke-virtual {v3}, Landroid/view/MotionEvent;->getY()F

    move-result v7

    iput v7, p0, Lcom/sec/android/glview/TwGLList;->mScrollY:F

    .line 1215
    const/4 v7, 0x0

    iput v7, p0, Lcom/sec/android/glview/TwGLList;->mFlingVelocityY:F

    .line 1216
    const/4 v7, 0x0

    iput v7, p0, Lcom/sec/android/glview/TwGLList;->mFlingVelocityX:F

    .line 1217
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLList;->showScrollBar()V

    .line 1218
    const/4 v7, 0x0

    monitor-exit v8

    goto :goto_0

    .line 1345
    .end local v3           #et:Landroid/view/MotionEvent;
    .end local v5           #mBoundary:Z
    :catchall_0
    move-exception v7

    monitor-exit v8
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v7

    .line 1220
    .restart local v3       #et:Landroid/view/MotionEvent;
    .restart local v5       #mBoundary:Z
    :cond_2
    :try_start_3
    iget-boolean v7, p0, Lcom/sec/android/glview/TwGLList;->mScrolling:Z

    if-nez v7, :cond_5

    iget-boolean v7, p0, Lcom/sec/android/glview/TwGLView;->mDragging:Z

    if-nez v7, :cond_5

    invoke-virtual {v3}, Landroid/view/MotionEvent;->getAction()I

    move-result v7

    const/4 v9, 0x2

    if-ne v7, v9, :cond_5

    .line 1221
    iget v7, p0, Lcom/sec/android/glview/TwGLList;->mScroll:I

    and-int/lit8 v7, v7, 0x1

    const/4 v9, 0x1

    if-ne v7, v9, :cond_3

    .line 1222
    iget v7, p0, Lcom/sec/android/glview/TwGLList;->mScrollY:F

    invoke-virtual {v3}, Landroid/view/MotionEvent;->getY()F

    move-result v9

    sub-float/2addr v7, v9

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v7

    iget v9, p0, Lcom/sec/android/glview/TwGLList;->mScrollThreshold:F

    cmpl-float v7, v7, v9

    if-lez v7, :cond_3

    .line 1224
    const/4 v7, 0x1

    invoke-virtual {p0, v7}, Lcom/sec/android/glview/TwGLList;->setScrolling(Z)V

    .line 1225
    const/4 v7, 0x3

    invoke-virtual {p1, v7}, Landroid/view/MotionEvent;->setAction(I)V

    .line 1228
    :cond_3
    iget v7, p0, Lcom/sec/android/glview/TwGLList;->mScroll:I

    and-int/lit8 v7, v7, 0x2

    const/4 v9, 0x2

    if-ne v7, v9, :cond_4

    .line 1229
    iget v7, p0, Lcom/sec/android/glview/TwGLList;->mScrollX:F

    invoke-virtual {v3}, Landroid/view/MotionEvent;->getX()F

    move-result v9

    sub-float/2addr v7, v9

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v7

    iget v9, p0, Lcom/sec/android/glview/TwGLList;->mScrollThreshold:F

    cmpl-float v7, v7, v9

    if-lez v7, :cond_4

    .line 1231
    const/4 v7, 0x1

    invoke-virtual {p0, v7}, Lcom/sec/android/glview/TwGLList;->setScrolling(Z)V

    .line 1232
    const/4 v7, 0x3

    invoke-virtual {p1, v7}, Landroid/view/MotionEvent;->setAction(I)V

    .line 1235
    :cond_4
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLList;->restartScrollBarTimer()V

    .line 1236
    const/4 v7, 0x0

    monitor-exit v8

    goto :goto_0

    .line 1238
    :cond_5
    iget-boolean v7, p0, Lcom/sec/android/glview/TwGLList;->mScrolling:Z

    if-eqz v7, :cond_19

    iget-boolean v7, p0, Lcom/sec/android/glview/TwGLView;->mDragging:Z

    if-nez v7, :cond_19

    invoke-virtual {v3}, Landroid/view/MotionEvent;->getAction()I

    move-result v7

    const/4 v9, 0x2

    if-ne v7, v9, :cond_19

    .line 1239
    iget v7, p0, Lcom/sec/android/glview/TwGLList;->mScroll:I

    and-int/lit8 v7, v7, 0x1

    const/4 v9, 0x1

    if-ne v7, v9, :cond_e

    .line 1240
    invoke-virtual {v3}, Landroid/view/MotionEvent;->getY()F

    move-result v7

    iget v9, p0, Lcom/sec/android/glview/TwGLList;->mScrollY:F

    sub-float v1, v7, v9

    .line 1241
    .local v1, delta:F
    move v2, v1

    .line 1243
    .local v2, deltaForContents:F
    iget v7, p0, Lcom/sec/android/glview/TwGLList;->mScrollSumY:F

    const/4 v9, 0x0

    cmpl-float v7, v7, v9

    if-gez v7, :cond_6

    iget v7, p0, Lcom/sec/android/glview/TwGLList;->mContentHeight:F

    iget v9, p0, Lcom/sec/android/glview/TwGLList;->mScrollSumY:F

    add-float/2addr v7, v9

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLList;->getContentAreaHeight()F

    move-result v9

    cmpg-float v7, v7, v9

    if-gtz v7, :cond_8

    .line 1245
    :cond_6
    const/4 v2, 0x0

    .line 1256
    :cond_7
    :goto_1
    iget-object v7, p0, Lcom/sec/android/glview/TwGLViewGroup;->mGLViews:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, i$:Ljava/util/Iterator;
    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_b

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/sec/android/glview/TwGLView;

    .line 1257
    .local v6, view:Lcom/sec/android/glview/TwGLView;
    if-nez v5, :cond_a

    .line 1258
    const/4 v7, 0x0

    const/4 v9, 0x0

    invoke-virtual {v6, v7, v2, v9}, Lcom/sec/android/glview/TwGLView;->translate(FFZ)V

    goto :goto_2

    .line 1246
    .end local v4           #i$:Ljava/util/Iterator;
    .end local v6           #view:Lcom/sec/android/glview/TwGLView;
    :cond_8
    iget v7, p0, Lcom/sec/android/glview/TwGLList;->mScrollSumY:F

    add-float/2addr v7, v1

    const/4 v9, 0x0

    cmpl-float v7, v7, v9

    if-lez v7, :cond_9

    .line 1248
    iget v7, p0, Lcom/sec/android/glview/TwGLList;->mScrollSumY:F

    sub-float v2, v1, v7

    .line 1249
    const/4 v7, 0x1

    iput-boolean v7, p0, Lcom/sec/android/glview/TwGLList;->mBouncing:Z

    goto :goto_1

    .line 1250
    :cond_9
    iget v7, p0, Lcom/sec/android/glview/TwGLList;->mContentHeight:F

    iget v9, p0, Lcom/sec/android/glview/TwGLList;->mScrollSumY:F

    add-float/2addr v7, v9

    add-float/2addr v7, v1

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLList;->getContentAreaHeight()F

    move-result v9

    cmpg-float v7, v7, v9

    if-gez v7, :cond_7

    .line 1252
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLList;->getContentAreaHeight()F

    move-result v7

    iget v9, p0, Lcom/sec/android/glview/TwGLList;->mContentHeight:F

    sub-float/2addr v7, v9

    iget v9, p0, Lcom/sec/android/glview/TwGLList;->mScrollSumY:F

    add-float/2addr v7, v9

    sub-float v2, v1, v7

    .line 1253
    const/4 v7, 0x1

    iput-boolean v7, p0, Lcom/sec/android/glview/TwGLList;->mBouncing:Z

    goto :goto_1

    .line 1260
    .restart local v4       #i$:Ljava/util/Iterator;
    .restart local v6       #view:Lcom/sec/android/glview/TwGLView;
    :cond_a
    const/4 v7, 0x0

    const v9, 0x3e4ccccd

    mul-float/2addr v9, v2

    const/4 v10, 0x0

    invoke-virtual {v6, v7, v9, v10}, Lcom/sec/android/glview/TwGLView;->translate(FFZ)V

    goto :goto_2

    .line 1264
    .end local v6           #view:Lcom/sec/android/glview/TwGLView;
    :cond_b
    iget-boolean v7, p0, Lcom/sec/android/glview/TwGLList;->mScrollBarVisible:Z

    if-eqz v7, :cond_c

    iget-object v7, p0, Lcom/sec/android/glview/TwGLList;->mScrollBar:Lcom/sec/android/glview/TwGLNinePatch;

    if-eqz v7, :cond_c

    .line 1265
    if-nez v5, :cond_f

    .line 1266
    iget v7, p0, Lcom/sec/android/glview/TwGLList;->mListVisibleHeight:F

    iget v9, p0, Lcom/sec/android/glview/TwGLList;->mContentHeight:F

    div-float/2addr v7, v9

    mul-float/2addr v7, v2

    iput v7, p0, Lcom/sec/android/glview/TwGLList;->mScrollBarOffset:F

    .line 1270
    :goto_3
    iget-object v7, p0, Lcom/sec/android/glview/TwGLList;->mScrollBar:Lcom/sec/android/glview/TwGLNinePatch;

    const/4 v9, 0x0

    iget v10, p0, Lcom/sec/android/glview/TwGLList;->mScrollBarOffset:F

    neg-float v10, v10

    invoke-virtual {v7, v9, v10}, Lcom/sec/android/glview/TwGLNinePatch;->translate(FF)V

    .line 1273
    :cond_c
    iget-object v7, p0, Lcom/sec/android/glview/TwGLList;->mBounceImageTop:Lcom/sec/android/glview/TwGLImage;

    if-eqz v7, :cond_d

    iget-object v7, p0, Lcom/sec/android/glview/TwGLList;->mBounceImageBottom:Lcom/sec/android/glview/TwGLImage;

    if-eqz v7, :cond_d

    iget-object v7, p0, Lcom/sec/android/glview/TwGLList;->mBounceEdgeTop:Lcom/sec/android/glview/TwGLImage;

    if-eqz v7, :cond_d

    iget-object v7, p0, Lcom/sec/android/glview/TwGLList;->mBounceEdgeBottom:Lcom/sec/android/glview/TwGLImage;

    if-eqz v7, :cond_d

    .line 1275
    iget-object v7, p0, Lcom/sec/android/glview/TwGLList;->mBounceImageTop:Lcom/sec/android/glview/TwGLImage;

    const/4 v9, 0x0

    invoke-virtual {v7, v9}, Lcom/sec/android/glview/TwGLImage;->setAlpha(F)V

    .line 1276
    iget-object v7, p0, Lcom/sec/android/glview/TwGLList;->mBounceImageBottom:Lcom/sec/android/glview/TwGLImage;

    const/4 v9, 0x0

    invoke-virtual {v7, v9}, Lcom/sec/android/glview/TwGLImage;->setAlpha(F)V

    .line 1277
    iget-object v7, p0, Lcom/sec/android/glview/TwGLList;->mBounceEdgeTop:Lcom/sec/android/glview/TwGLImage;

    const/4 v9, 0x0

    invoke-virtual {v7, v9}, Lcom/sec/android/glview/TwGLImage;->setAlpha(F)V

    .line 1278
    iget-object v7, p0, Lcom/sec/android/glview/TwGLList;->mBounceEdgeBottom:Lcom/sec/android/glview/TwGLImage;

    const/4 v9, 0x0

    invoke-virtual {v7, v9}, Lcom/sec/android/glview/TwGLImage;->setAlpha(F)V

    .line 1281
    iget-object v7, p0, Lcom/sec/android/glview/TwGLList;->mBounceImageTop:Lcom/sec/android/glview/TwGLImage;

    iget-object v9, p0, Lcom/sec/android/glview/TwGLList;->mBounceImageTop:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v9}, Lcom/sec/android/glview/TwGLImage;->getWidth()F

    move-result v9

    iget v10, p0, Lcom/sec/android/glview/TwGLList;->mPortraitBounceOffset:F

    invoke-virtual {v7, v9, v10}, Lcom/sec/android/glview/TwGLImage;->setSize(FF)V

    .line 1282
    iget-object v7, p0, Lcom/sec/android/glview/TwGLList;->mBounceImageBottom:Lcom/sec/android/glview/TwGLImage;

    iget-object v9, p0, Lcom/sec/android/glview/TwGLList;->mBounceImageBottom:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v9}, Lcom/sec/android/glview/TwGLImage;->getWidth()F

    move-result v9

    iget v10, p0, Lcom/sec/android/glview/TwGLList;->mPortraitBounceOffset:F

    invoke-static {v10}, Ljava/lang/Math;->abs(F)F

    move-result v10

    invoke-virtual {v7, v9, v10}, Lcom/sec/android/glview/TwGLImage;->setSize(FF)V

    .line 1283
    iget-object v7, p0, Lcom/sec/android/glview/TwGLList;->mBounceImageBottom:Lcom/sec/android/glview/TwGLImage;

    const/4 v9, 0x0

    iget v10, p0, Lcom/sec/android/glview/TwGLList;->mListVisibleHeight:F

    iget v11, p0, Lcom/sec/android/glview/TwGLList;->mPortraitBounceOffset:F

    invoke-static {v11}, Ljava/lang/Math;->abs(F)F

    move-result v11

    sub-float/2addr v10, v11

    invoke-virtual {v7, v9, v10}, Lcom/sec/android/glview/TwGLImage;->moveLayoutAbsolute(FF)V

    .line 1287
    iget v7, p0, Lcom/sec/android/glview/TwGLList;->mPortraitBounceOffset:F

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v7

    iget v9, p0, Lcom/sec/android/glview/TwGLList;->mBounceImageMaxAlphaThreshold:F

    const/high16 v10, 0x4000

    div-float/2addr v9, v10

    div-float/2addr v7, v9

    const/high16 v9, 0x3f80

    cmpl-float v7, v7, v9

    if-lez v7, :cond_10

    const/high16 v0, 0x3f80

    .line 1288
    .local v0, alpha:F
    :goto_4
    const/high16 v7, 0x3f80

    mul-float/2addr v7, v0

    const/4 v9, 0x0

    add-float v0, v7, v9

    .line 1289
    iget v7, p0, Lcom/sec/android/glview/TwGLList;->mScrollSumY:F

    const/4 v9, 0x0

    cmpl-float v7, v7, v9

    if-lez v7, :cond_11

    .line 1290
    iget-object v7, p0, Lcom/sec/android/glview/TwGLList;->mBounceImageTop:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v7, v0}, Lcom/sec/android/glview/TwGLImage;->setAlpha(F)V

    .line 1291
    iget-object v7, p0, Lcom/sec/android/glview/TwGLList;->mBounceEdgeTop:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v7, v0}, Lcom/sec/android/glview/TwGLImage;->setAlpha(F)V

    .line 1297
    .end local v0           #alpha:F
    :cond_d
    :goto_5
    if-nez v5, :cond_12

    .line 1298
    iget v7, p0, Lcom/sec/android/glview/TwGLList;->mScrollSumY:F

    add-float/2addr v7, v1

    iput v7, p0, Lcom/sec/android/glview/TwGLList;->mScrollSumY:F

    .line 1303
    :goto_6
    invoke-virtual {v3}, Landroid/view/MotionEvent;->getY()F

    move-result v7

    iput v7, p0, Lcom/sec/android/glview/TwGLList;->mScrollY:F

    .line 1305
    .end local v1           #delta:F
    .end local v2           #deltaForContents:F
    .end local v4           #i$:Ljava/util/Iterator;
    :cond_e
    iget v7, p0, Lcom/sec/android/glview/TwGLList;->mScroll:I

    and-int/lit8 v7, v7, 0x2

    const/4 v9, 0x2

    if-ne v7, v9, :cond_16

    .line 1306
    invoke-virtual {v3}, Landroid/view/MotionEvent;->getX()F

    move-result v7

    iget v9, p0, Lcom/sec/android/glview/TwGLList;->mScrollX:F

    sub-float v1, v7, v9

    .line 1307
    .restart local v1       #delta:F
    move v2, v1

    .line 1310
    .restart local v2       #deltaForContents:F
    iget-object v7, p0, Lcom/sec/android/glview/TwGLViewGroup;->mGLViews:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .restart local v4       #i$:Ljava/util/Iterator;
    :goto_7
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_14

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/sec/android/glview/TwGLView;

    .line 1311
    .restart local v6       #view:Lcom/sec/android/glview/TwGLView;
    if-nez v5, :cond_13

    .line 1312
    const/4 v7, 0x0

    const/4 v9, 0x0

    invoke-virtual {v6, v2, v7, v9}, Lcom/sec/android/glview/TwGLView;->translate(FFZ)V

    goto :goto_7

    .line 1268
    .end local v6           #view:Lcom/sec/android/glview/TwGLView;
    :cond_f
    iget v7, p0, Lcom/sec/android/glview/TwGLList;->mListVisibleHeight:F

    iget v9, p0, Lcom/sec/android/glview/TwGLList;->mContentHeight:F

    div-float/2addr v7, v9

    mul-float/2addr v7, v2

    const v9, 0x3e4ccccd

    mul-float/2addr v7, v9

    iput v7, p0, Lcom/sec/android/glview/TwGLList;->mScrollBarOffset:F

    goto/16 :goto_3

    .line 1287
    :cond_10
    iget v7, p0, Lcom/sec/android/glview/TwGLList;->mPortraitBounceOffset:F

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v7

    iget v9, p0, Lcom/sec/android/glview/TwGLList;->mBounceImageMaxAlphaThreshold:F

    const/high16 v10, 0x4000

    div-float/2addr v9, v10

    div-float v0, v7, v9

    goto :goto_4

    .line 1292
    .restart local v0       #alpha:F
    :cond_11
    iget v7, p0, Lcom/sec/android/glview/TwGLList;->mContentHeight:F

    iget v9, p0, Lcom/sec/android/glview/TwGLList;->mScrollSumY:F

    add-float/2addr v7, v9

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLList;->getHeight()F

    move-result v9

    iget-object v10, p0, Lcom/sec/android/glview/TwGLView;->mPaddings:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->top:I

    int-to-float v10, v10

    sub-float/2addr v9, v10

    iget-object v10, p0, Lcom/sec/android/glview/TwGLView;->mPaddings:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->bottom:I

    int-to-float v10, v10

    sub-float/2addr v9, v10

    cmpg-float v7, v7, v9

    if-gez v7, :cond_d

    .line 1293
    iget-object v7, p0, Lcom/sec/android/glview/TwGLList;->mBounceImageBottom:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v7, v0}, Lcom/sec/android/glview/TwGLImage;->setAlpha(F)V

    .line 1294
    iget-object v7, p0, Lcom/sec/android/glview/TwGLList;->mBounceEdgeBottom:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v7, v0}, Lcom/sec/android/glview/TwGLImage;->setAlpha(F)V

    goto :goto_5

    .line 1300
    .end local v0           #alpha:F
    :cond_12
    iget v7, p0, Lcom/sec/android/glview/TwGLList;->mScrollSumY:F

    const v9, 0x3e4ccccd

    mul-float/2addr v9, v1

    add-float/2addr v7, v9

    iput v7, p0, Lcom/sec/android/glview/TwGLList;->mScrollSumY:F

    goto :goto_6

    .line 1314
    .restart local v6       #view:Lcom/sec/android/glview/TwGLView;
    :cond_13
    const v7, 0x3e4ccccd

    mul-float/2addr v7, v2

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual {v6, v7, v9, v10}, Lcom/sec/android/glview/TwGLView;->translate(FFZ)V

    goto :goto_7

    .line 1318
    .end local v6           #view:Lcom/sec/android/glview/TwGLView;
    :cond_14
    iget-boolean v7, p0, Lcom/sec/android/glview/TwGLList;->mScrollBarVisible:Z

    if-eqz v7, :cond_15

    iget-object v7, p0, Lcom/sec/android/glview/TwGLList;->mScrollBar:Lcom/sec/android/glview/TwGLNinePatch;

    if-eqz v7, :cond_15

    .line 1319
    if-nez v5, :cond_17

    .line 1320
    iget v7, p0, Lcom/sec/android/glview/TwGLList;->mListVisibleWidth:F

    iget v9, p0, Lcom/sec/android/glview/TwGLList;->mContentWidth:F

    div-float/2addr v7, v9

    mul-float/2addr v7, v2

    iput v7, p0, Lcom/sec/android/glview/TwGLList;->mScrollBarOffset:F

    .line 1324
    :goto_8
    iget-object v7, p0, Lcom/sec/android/glview/TwGLList;->mScrollBar:Lcom/sec/android/glview/TwGLNinePatch;

    iget v9, p0, Lcom/sec/android/glview/TwGLList;->mScrollBarOffset:F

    neg-float v9, v9

    const/4 v10, 0x0

    invoke-virtual {v7, v9, v10}, Lcom/sec/android/glview/TwGLNinePatch;->translate(FF)V

    .line 1326
    :cond_15
    if-nez v5, :cond_18

    .line 1327
    iget v7, p0, Lcom/sec/android/glview/TwGLList;->mScrollSumX:F

    add-float/2addr v7, v1

    iput v7, p0, Lcom/sec/android/glview/TwGLList;->mScrollSumX:F

    .line 1331
    :goto_9
    invoke-virtual {v3}, Landroid/view/MotionEvent;->getX()F

    move-result v7

    iput v7, p0, Lcom/sec/android/glview/TwGLList;->mScrollX:F

    .line 1333
    .end local v1           #delta:F
    .end local v2           #deltaForContents:F
    .end local v4           #i$:Ljava/util/Iterator;
    :cond_16
    const/4 v7, 0x1

    monitor-exit v8

    goto/16 :goto_0

    .line 1322
    .restart local v1       #delta:F
    .restart local v2       #deltaForContents:F
    .restart local v4       #i$:Ljava/util/Iterator;
    :cond_17
    iget v7, p0, Lcom/sec/android/glview/TwGLList;->mListVisibleWidth:F

    iget v9, p0, Lcom/sec/android/glview/TwGLList;->mContentWidth:F

    div-float/2addr v7, v9

    mul-float/2addr v7, v2

    const v9, 0x3e4ccccd

    mul-float/2addr v7, v9

    iput v7, p0, Lcom/sec/android/glview/TwGLList;->mScrollBarOffset:F

    goto :goto_8

    .line 1329
    :cond_18
    iget v7, p0, Lcom/sec/android/glview/TwGLList;->mScrollSumX:F

    const v9, 0x3e4ccccd

    mul-float/2addr v9, v1

    add-float/2addr v7, v9

    iput v7, p0, Lcom/sec/android/glview/TwGLList;->mScrollSumX:F

    goto :goto_9

    .line 1335
    .end local v1           #delta:F
    .end local v2           #deltaForContents:F
    .end local v4           #i$:Ljava/util/Iterator;
    :cond_19
    iget-boolean v7, p0, Lcom/sec/android/glview/TwGLList;->mScrolling:Z

    if-eqz v7, :cond_1b

    invoke-virtual {v3}, Landroid/view/MotionEvent;->getAction()I

    move-result v7

    const/4 v9, 0x1

    if-eq v7, v9, :cond_1a

    invoke-virtual {v3}, Landroid/view/MotionEvent;->getAction()I

    move-result v7

    const/4 v9, 0x3

    if-ne v7, v9, :cond_1b

    .line 1336
    :cond_1a
    const-string v7, "TwGLList"

    const-string v9, "ACTION_UP"

    invoke-static {v7, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1337
    const/4 v7, 0x0

    invoke-virtual {p0, v7}, Lcom/sec/android/glview/TwGLList;->setScrolling(Z)V

    .line 1338
    const/4 v7, 0x1

    iput-boolean v7, p0, Lcom/sec/android/glview/TwGLList;->mBouncing:Z

    .line 1339
    const/4 v7, 0x3

    invoke-virtual {p1, v7}, Landroid/view/MotionEvent;->setAction(I)V

    .line 1340
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLList;->restartScrollBarTimer()V

    .line 1341
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLList;->getContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v7

    const/4 v9, 0x1

    invoke-virtual {v7, v9}, Lcom/sec/android/glview/TwGLContext;->setDirty(Z)V

    .line 1342
    const/4 v7, 0x0

    monitor-exit v8

    goto/16 :goto_0

    .line 1344
    :cond_1b
    const/4 v7, 0x0

    monitor-exit v8
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_0
.end method

.method public removeView(Lcom/sec/android/glview/TwGLView;)V
    .locals 3
    .parameter "view"

    .prologue
    .line 802
    iget-object v1, p0, Lcom/sec/android/glview/TwGLViewGroup;->mGLViews:Ljava/util/List;

    monitor-enter v1

    .line 803
    :try_start_0
    iget-object v0, p0, Lcom/sec/android/glview/TwGLViewGroup;->mGLViews:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 804
    iget v0, p0, Lcom/sec/android/glview/TwGLList;->mStackOrientation:I

    if-nez v0, :cond_1

    .line 805
    iget v0, p0, Lcom/sec/android/glview/TwGLList;->mContentHeight:F

    invoke-virtual {p1}, Lcom/sec/android/glview/TwGLView;->getHeight()F

    move-result v2

    sub-float/2addr v0, v2

    iput v0, p0, Lcom/sec/android/glview/TwGLList;->mContentHeight:F

    .line 810
    :cond_0
    :goto_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 812
    invoke-super {p0, p1}, Lcom/sec/android/glview/TwGLViewGroup;->removeView(Lcom/sec/android/glview/TwGLView;)V

    .line 813
    return-void

    .line 807
    :cond_1
    :try_start_1
    iget v0, p0, Lcom/sec/android/glview/TwGLList;->mContentWidth:F

    invoke-virtual {p1}, Lcom/sec/android/glview/TwGLView;->getWidth()F

    move-result v2

    sub-float/2addr v0, v2

    iput v0, p0, Lcom/sec/android/glview/TwGLList;->mContentWidth:F

    goto :goto_0

    .line 810
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method protected restartScrollBarTimer()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 558
    iget-object v0, p0, Lcom/sec/android/glview/TwGLList;->mMainHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 559
    iget-object v0, p0, Lcom/sec/android/glview/TwGLList;->mMainHandler:Landroid/os/Handler;

    const-wide/16 v1, 0x3e8

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 560
    return-void
.end method

.method public scrollToVisible(Lcom/sec/android/glview/TwGLView;)V
    .locals 1
    .parameter "view"

    .prologue
    .line 816
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/glview/TwGLList;->mScrollRequested:Z

    .line 817
    iput-object p1, p0, Lcom/sec/android/glview/TwGLList;->mScrollToVisibleView:Lcom/sec/android/glview/TwGLView;

    .line 818
    return-void
.end method

.method public scrollToVisible()Z
    .locals 12

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 821
    iget-object v8, p0, Lcom/sec/android/glview/TwGLList;->mScrollToVisibleView:Lcom/sec/android/glview/TwGLView;

    if-nez v8, :cond_0

    .line 865
    :goto_0
    return v6

    .line 825
    :cond_0
    iget-object v8, p0, Lcom/sec/android/glview/TwGLList;->mScrollToVisibleView:Lcom/sec/android/glview/TwGLView;

    invoke-virtual {v8}, Lcom/sec/android/glview/TwGLView;->getCurrentContentArea()Landroid/graphics/RectF;

    move-result-object v1

    .line 826
    .local v1, itemCurrentRect:Landroid/graphics/RectF;
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLList;->getCurrentContentArea()Landroid/graphics/RectF;

    move-result-object v2

    .line 829
    .local v2, listCurrentRect:Landroid/graphics/RectF;
    invoke-virtual {v2, v1}, Landroid/graphics/RectF;->contains(Landroid/graphics/RectF;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 830
    iput-boolean v6, p0, Lcom/sec/android/glview/TwGLList;->mScrollRequested:Z

    move v6, v7

    .line 831
    goto :goto_0

    .line 833
    :cond_1
    const/4 v4, 0x0

    .line 834
    .local v4, offsetY:F
    const/4 v3, 0x0

    .line 836
    .local v3, offsetX:F
    iget v8, p0, Lcom/sec/android/glview/TwGLList;->mStackOrientation:I

    if-nez v8, :cond_4

    .line 837
    iget v8, v1, Landroid/graphics/RectF;->top:F

    iget v9, v2, Landroid/graphics/RectF;->top:F

    cmpg-float v8, v8, v9

    if-gez v8, :cond_3

    .line 838
    iget v8, v2, Landroid/graphics/RectF;->top:F

    iget v9, v1, Landroid/graphics/RectF;->top:F

    sub-float v4, v8, v9

    .line 839
    iget v8, p0, Lcom/sec/android/glview/TwGLList;->mScrollSumY:F

    add-float/2addr v8, v4

    iput v8, p0, Lcom/sec/android/glview/TwGLList;->mScrollSumY:F

    .line 856
    :cond_2
    :goto_1
    iget-object v8, p0, Lcom/sec/android/glview/TwGLViewGroup;->mGLViews:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sec/android/glview/TwGLView;

    .line 857
    .local v5, v:Lcom/sec/android/glview/TwGLView;
    iget v8, p0, Lcom/sec/android/glview/TwGLList;->mScrollSumX:F

    iget v9, p0, Lcom/sec/android/glview/TwGLList;->mScrollSumY:F

    invoke-virtual {v5, v8, v9, v6}, Lcom/sec/android/glview/TwGLView;->translateAbsolute(FFZ)V

    goto :goto_2

    .line 840
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v5           #v:Lcom/sec/android/glview/TwGLView;
    :cond_3
    iget v8, v1, Landroid/graphics/RectF;->bottom:F

    iget v9, v2, Landroid/graphics/RectF;->bottom:F

    cmpl-float v8, v8, v9

    if-lez v8, :cond_2

    .line 841
    iget v8, v2, Landroid/graphics/RectF;->bottom:F

    iget v9, v1, Landroid/graphics/RectF;->bottom:F

    sub-float v4, v8, v9

    .line 842
    iget v8, p0, Lcom/sec/android/glview/TwGLList;->mScrollSumY:F

    add-float/2addr v8, v4

    iput v8, p0, Lcom/sec/android/glview/TwGLList;->mScrollSumY:F

    goto :goto_1

    .line 844
    :cond_4
    iget v8, p0, Lcom/sec/android/glview/TwGLList;->mStackOrientation:I

    if-ne v8, v7, :cond_2

    .line 845
    iget v8, v1, Landroid/graphics/RectF;->left:F

    iget v9, v2, Landroid/graphics/RectF;->left:F

    cmpg-float v8, v8, v9

    if-gez v8, :cond_5

    .line 846
    iget v8, v2, Landroid/graphics/RectF;->left:F

    iget v9, v1, Landroid/graphics/RectF;->left:F

    sub-float v3, v8, v9

    .line 847
    iget v8, p0, Lcom/sec/android/glview/TwGLList;->mScrollSumX:F

    add-float/2addr v8, v3

    iput v8, p0, Lcom/sec/android/glview/TwGLList;->mScrollSumX:F

    goto :goto_1

    .line 848
    :cond_5
    iget v8, v1, Landroid/graphics/RectF;->right:F

    iget v9, v2, Landroid/graphics/RectF;->right:F

    cmpl-float v8, v8, v9

    if-lez v8, :cond_2

    .line 849
    iget v8, v2, Landroid/graphics/RectF;->right:F

    iget v9, v1, Landroid/graphics/RectF;->right:F

    sub-float v3, v8, v9

    .line 850
    iget v8, p0, Lcom/sec/android/glview/TwGLList;->mScrollSumX:F

    add-float/2addr v8, v3

    iput v8, p0, Lcom/sec/android/glview/TwGLList;->mScrollSumX:F

    goto :goto_1

    .line 859
    .restart local v0       #i$:Ljava/util/Iterator;
    :cond_6
    iget-object v8, p0, Lcom/sec/android/glview/TwGLList;->mScrollBar:Lcom/sec/android/glview/TwGLNinePatch;

    if-eqz v8, :cond_7

    .line 860
    iget-object v8, p0, Lcom/sec/android/glview/TwGLList;->mScrollBar:Lcom/sec/android/glview/TwGLNinePatch;

    iget v9, p0, Lcom/sec/android/glview/TwGLList;->mListVisibleWidth:F

    iget v10, p0, Lcom/sec/android/glview/TwGLList;->mContentWidth:F

    div-float/2addr v9, v10

    iget v10, p0, Lcom/sec/android/glview/TwGLList;->mScrollSumX:F

    mul-float/2addr v9, v10

    neg-float v9, v9

    iget v10, p0, Lcom/sec/android/glview/TwGLList;->mListVisibleHeight:F

    iget v11, p0, Lcom/sec/android/glview/TwGLList;->mContentHeight:F

    div-float/2addr v10, v11

    iget v11, p0, Lcom/sec/android/glview/TwGLList;->mScrollSumY:F

    mul-float/2addr v10, v11

    neg-float v10, v10

    invoke-virtual {v8, v9, v10, v6}, Lcom/sec/android/glview/TwGLNinePatch;->translateAbsolute(FFZ)V

    .line 862
    :cond_7
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLList;->showScrollBar()V

    .line 863
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLList;->getContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v8

    invoke-virtual {v8, v7}, Lcom/sec/android/glview/TwGLContext;->setDirty(Z)V

    .line 864
    iput-boolean v6, p0, Lcom/sec/android/glview/TwGLList;->mScrollRequested:Z

    move v6, v7

    .line 865
    goto/16 :goto_0
.end method

.method public setAdapter(Lcom/sec/android/glview/TwGLList$Adapter;)V
    .locals 1
    .parameter "adapter"

    .prologue
    .line 619
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/sec/android/glview/TwGLList;->setAdapter(Lcom/sec/android/glview/TwGLList$Adapter;I)V

    .line 620
    return-void
.end method

.method public setAdapter(Lcom/sec/android/glview/TwGLList$Adapter;I)V
    .locals 15
    .parameter "adapter"
    .parameter "stackOrientation"

    .prologue
    .line 629
    if-nez p1, :cond_0

    .line 630
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1

    .line 632
    :cond_0
    move-object/from16 v0, p1

    iput-object v0, p0, Lcom/sec/android/glview/TwGLList;->mAdapter:Lcom/sec/android/glview/TwGLList$Adapter;

    .line 633
    move/from16 v0, p2

    iput v0, p0, Lcom/sec/android/glview/TwGLList;->mStackOrientation:I

    .line 635
    iget-object v2, p0, Lcom/sec/android/glview/TwGLViewGroup;->mGLViews:Ljava/util/List;

    monitor-enter v2

    .line 636
    :try_start_0
    iget-object v1, p0, Lcom/sec/android/glview/TwGLViewGroup;->mGLViews:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .local v11, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/sec/android/glview/TwGLView;

    .line 637
    .local v14, view:Lcom/sec/android/glview/TwGLView;
    invoke-virtual {v14}, Lcom/sec/android/glview/TwGLView;->clear()V

    goto :goto_0

    .line 640
    .end local v11           #i$:Ljava/util/Iterator;
    .end local v14           #view:Lcom/sec/android/glview/TwGLView;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 639
    .restart local v11       #i$:Ljava/util/Iterator;
    :cond_1
    :try_start_1
    iget-object v1, p0, Lcom/sec/android/glview/TwGLViewGroup;->mGLViews:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 640
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 642
    iget v1, p0, Lcom/sec/android/glview/TwGLList;->mStackOrientation:I

    if-nez v1, :cond_3

    .line 643
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/sec/android/glview/TwGLList;->setScroll(I)V

    .line 648
    :goto_1
    const/4 v12, 0x0

    .line 649
    .local v12, offset:I
    iget-object v1, p0, Lcom/sec/android/glview/TwGLList;->mAdapter:Lcom/sec/android/glview/TwGLList$Adapter;

    invoke-interface {v1}, Lcom/sec/android/glview/TwGLList$Adapter;->getCount()I

    move-result v9

    .line 650
    .local v9, count:I
    const/4 v10, 0x0

    .local v10, i:I
    :goto_2
    if-ge v10, v9, :cond_8

    .line 651
    iget-object v1, p0, Lcom/sec/android/glview/TwGLList;->mAdapter:Lcom/sec/android/glview/TwGLList$Adapter;

    const/4 v2, 0x0

    invoke-interface {v1, v10, v2}, Lcom/sec/android/glview/TwGLList$Adapter;->getView(ILcom/sec/android/glview/TwGLView;)Lcom/sec/android/glview/TwGLView;

    move-result-object v14

    .line 652
    .restart local v14       #view:Lcom/sec/android/glview/TwGLView;
    if-nez v14, :cond_4

    .line 720
    .end local v14           #view:Lcom/sec/android/glview/TwGLView;
    :cond_2
    :goto_3
    return-void

    .line 645
    .end local v9           #count:I
    .end local v10           #i:I
    .end local v12           #offset:I
    :cond_3
    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Lcom/sec/android/glview/TwGLList;->setScroll(I)V

    goto :goto_1

    .line 655
    .restart local v9       #count:I
    .restart local v10       #i:I
    .restart local v12       #offset:I
    .restart local v14       #view:Lcom/sec/android/glview/TwGLView;
    :cond_4
    iget v1, p0, Lcom/sec/android/glview/TwGLList;->mStackOrientation:I

    if-nez v1, :cond_6

    .line 656
    invoke-virtual {v14}, Lcom/sec/android/glview/TwGLView;->getScrollHint()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 657
    neg-int v1, v12

    int-to-float v1, v1

    iput v1, p0, Lcom/sec/android/glview/TwGLList;->mScrollSumY:F

    .line 659
    :cond_5
    const/4 v1, 0x0

    int-to-float v2, v12

    invoke-virtual {v14, v1, v2}, Lcom/sec/android/glview/TwGLView;->moveLayoutAbsolute(FF)V

    .line 660
    int-to-float v1, v12

    invoke-virtual {v14}, Lcom/sec/android/glview/TwGLView;->getHeight()F

    move-result v2

    add-float/2addr v1, v2

    float-to-int v12, v1

    .line 668
    :goto_4
    invoke-virtual {v14, p0}, Lcom/sec/android/glview/TwGLView;->setOnFocusListener(Lcom/sec/android/glview/TwGLView$OnFocusListener;)V

    .line 669
    invoke-virtual {p0, v14}, Lcom/sec/android/glview/TwGLList;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 650
    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    .line 662
    :cond_6
    invoke-virtual {v14}, Lcom/sec/android/glview/TwGLView;->getScrollHint()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 663
    neg-int v1, v12

    int-to-float v1, v1

    iput v1, p0, Lcom/sec/android/glview/TwGLList;->mScrollSumX:F

    .line 665
    :cond_7
    int-to-float v1, v12

    const/4 v2, 0x0

    invoke-virtual {v14, v1, v2}, Lcom/sec/android/glview/TwGLView;->moveLayoutAbsolute(FF)V

    .line 666
    int-to-float v1, v12

    invoke-virtual {v14}, Lcom/sec/android/glview/TwGLView;->getWidth()F

    move-result v2

    add-float/2addr v1, v2

    float-to-int v12, v1

    goto :goto_4

    .line 672
    .end local v14           #view:Lcom/sec/android/glview/TwGLView;
    :cond_8
    iget v1, p0, Lcom/sec/android/glview/TwGLList;->mStackOrientation:I

    if-nez v1, :cond_b

    .line 673
    int-to-float v1, v12

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLList;->getHeight()F

    move-result v2

    cmpg-float v1, v1, v2

    if-gez v1, :cond_9

    .line 674
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLList;->getWidth()F

    move-result v1

    int-to-float v2, v12

    invoke-virtual {p0, v1, v2}, Lcom/sec/android/glview/TwGLList;->setSize(FF)V

    .line 682
    :cond_9
    :goto_5
    iget v1, p0, Lcom/sec/android/glview/TwGLList;->mStackOrientation:I

    if-nez v1, :cond_c

    .line 683
    new-instance v1, Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLList;->getContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v2

    const/4 v3, 0x0

    iget v4, p0, Lcom/sec/android/glview/TwGLList;->BOUNCE_EDGE_SIZE:F

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLList;->getWidth()F

    move-result v5

    iget v6, p0, Lcom/sec/android/glview/TwGLList;->BOUNCE_IMAGE_SIZE:F

    const/4 v7, 0x1

    const v8, 0x7f0201d8

    invoke-direct/range {v1 .. v8}, Lcom/sec/android/glview/TwGLImage;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFZI)V

    iput-object v1, p0, Lcom/sec/android/glview/TwGLList;->mBounceImageTop:Lcom/sec/android/glview/TwGLImage;

    .line 684
    new-instance v1, Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLList;->getContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLList;->getWidth()F

    move-result v5

    iget v6, p0, Lcom/sec/android/glview/TwGLList;->BOUNCE_IMAGE_SIZE:F

    const/4 v7, 0x1

    const v8, 0x7f0201d6

    invoke-direct/range {v1 .. v8}, Lcom/sec/android/glview/TwGLImage;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFZI)V

    iput-object v1, p0, Lcom/sec/android/glview/TwGLList;->mBounceImageBottom:Lcom/sec/android/glview/TwGLImage;

    .line 685
    new-instance v1, Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLList;->getContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLList;->getWidth()F

    move-result v5

    iget v6, p0, Lcom/sec/android/glview/TwGLList;->BOUNCE_EDGE_SIZE:F

    const/4 v7, 0x1

    const v8, 0x7f0201d7

    invoke-direct/range {v1 .. v8}, Lcom/sec/android/glview/TwGLImage;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFZI)V

    iput-object v1, p0, Lcom/sec/android/glview/TwGLList;->mBounceEdgeTop:Lcom/sec/android/glview/TwGLImage;

    .line 686
    new-instance v1, Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLList;->getContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLList;->getWidth()F

    move-result v5

    iget v6, p0, Lcom/sec/android/glview/TwGLList;->BOUNCE_EDGE_SIZE:F

    const/4 v7, 0x1

    const v8, 0x7f0201d7

    invoke-direct/range {v1 .. v8}, Lcom/sec/android/glview/TwGLImage;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFZI)V

    iput-object v1, p0, Lcom/sec/android/glview/TwGLList;->mBounceEdgeBottom:Lcom/sec/android/glview/TwGLImage;

    .line 693
    :goto_6
    iget-object v1, p0, Lcom/sec/android/glview/TwGLList;->mBounceImageTop:Lcom/sec/android/glview/TwGLImage;

    iput-object p0, v1, Lcom/sec/android/glview/TwGLView;->mParent:Lcom/sec/android/glview/TwGLView;

    .line 694
    iget-object v1, p0, Lcom/sec/android/glview/TwGLList;->mBounceImageBottom:Lcom/sec/android/glview/TwGLImage;

    iput-object p0, v1, Lcom/sec/android/glview/TwGLView;->mParent:Lcom/sec/android/glview/TwGLView;

    .line 695
    iget-object v1, p0, Lcom/sec/android/glview/TwGLList;->mBounceEdgeTop:Lcom/sec/android/glview/TwGLImage;

    iput-object p0, v1, Lcom/sec/android/glview/TwGLView;->mParent:Lcom/sec/android/glview/TwGLView;

    .line 696
    iget-object v1, p0, Lcom/sec/android/glview/TwGLList;->mBounceEdgeBottom:Lcom/sec/android/glview/TwGLImage;

    iput-object p0, v1, Lcom/sec/android/glview/TwGLView;->mParent:Lcom/sec/android/glview/TwGLView;

    .line 697
    iget-object v1, p0, Lcom/sec/android/glview/TwGLList;->mBounceImageTop:Lcom/sec/android/glview/TwGLImage;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLImage;->setAlpha(F)V

    .line 698
    iget-object v1, p0, Lcom/sec/android/glview/TwGLList;->mBounceImageBottom:Lcom/sec/android/glview/TwGLImage;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLImage;->setAlpha(F)V

    .line 699
    iget-object v1, p0, Lcom/sec/android/glview/TwGLList;->mBounceEdgeTop:Lcom/sec/android/glview/TwGLImage;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLImage;->setAlpha(F)V

    .line 700
    iget-object v1, p0, Lcom/sec/android/glview/TwGLList;->mBounceEdgeBottom:Lcom/sec/android/glview/TwGLImage;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLImage;->setAlpha(F)V

    .line 702
    invoke-direct {p0}, Lcom/sec/android/glview/TwGLList;->setVisibleArea()V

    .line 704
    iget v1, p0, Lcom/sec/android/glview/TwGLList;->mStackOrientation:I

    if-nez v1, :cond_d

    .line 705
    iget-object v1, p0, Lcom/sec/android/glview/TwGLList;->mScrollBar:Lcom/sec/android/glview/TwGLNinePatch;

    if-eqz v1, :cond_a

    .line 706
    invoke-direct {p0}, Lcom/sec/android/glview/TwGLList;->setScrollBarLayout()V

    .line 714
    :cond_a
    :goto_7
    iget-object v1, p0, Lcom/sec/android/glview/TwGLViewGroup;->mGLViews:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_8
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_e

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/sec/android/glview/TwGLView;

    .line 715
    .local v13, v:Lcom/sec/android/glview/TwGLView;
    iget v1, p0, Lcom/sec/android/glview/TwGLList;->mScrollSumX:F

    iget v2, p0, Lcom/sec/android/glview/TwGLList;->mScrollSumY:F

    invoke-virtual {v13, v1, v2}, Lcom/sec/android/glview/TwGLView;->translateAbsolute(FF)V

    goto :goto_8

    .line 677
    .end local v13           #v:Lcom/sec/android/glview/TwGLView;
    :cond_b
    int-to-float v1, v12

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLList;->getWidth()F

    move-result v2

    cmpg-float v1, v1, v2

    if-gez v1, :cond_9

    .line 678
    int-to-float v1, v12

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLList;->getHeight()F

    move-result v2

    invoke-virtual {p0, v1, v2}, Lcom/sec/android/glview/TwGLList;->setSize(FF)V

    goto/16 :goto_5

    .line 688
    :cond_c
    new-instance v1, Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLList;->getContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v2

    iget v3, p0, Lcom/sec/android/glview/TwGLList;->BOUNCE_EDGE_SIZE:F

    const/4 v4, 0x0

    iget v5, p0, Lcom/sec/android/glview/TwGLList;->BOUNCE_IMAGE_SIZE:F

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLList;->getHeight()F

    move-result v6

    const/4 v7, 0x1

    const v8, 0x7f0201d4

    invoke-direct/range {v1 .. v8}, Lcom/sec/android/glview/TwGLImage;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFZI)V

    iput-object v1, p0, Lcom/sec/android/glview/TwGLList;->mBounceImageTop:Lcom/sec/android/glview/TwGLImage;

    .line 689
    new-instance v1, Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLList;->getContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    iget v5, p0, Lcom/sec/android/glview/TwGLList;->BOUNCE_IMAGE_SIZE:F

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLList;->getHeight()F

    move-result v6

    const/4 v7, 0x1

    const v8, 0x7f0201d5

    invoke-direct/range {v1 .. v8}, Lcom/sec/android/glview/TwGLImage;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFZI)V

    iput-object v1, p0, Lcom/sec/android/glview/TwGLList;->mBounceImageBottom:Lcom/sec/android/glview/TwGLImage;

    .line 690
    new-instance v1, Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLList;->getContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    iget v5, p0, Lcom/sec/android/glview/TwGLList;->BOUNCE_EDGE_SIZE:F

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLList;->getHeight()F

    move-result v6

    const/4 v7, 0x1

    const v8, 0x7f0201d3

    invoke-direct/range {v1 .. v8}, Lcom/sec/android/glview/TwGLImage;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFZI)V

    iput-object v1, p0, Lcom/sec/android/glview/TwGLList;->mBounceEdgeTop:Lcom/sec/android/glview/TwGLImage;

    .line 691
    new-instance v1, Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLList;->getContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    iget v5, p0, Lcom/sec/android/glview/TwGLList;->BOUNCE_EDGE_SIZE:F

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLList;->getHeight()F

    move-result v6

    const/4 v7, 0x1

    const v8, 0x7f0201d3

    invoke-direct/range {v1 .. v8}, Lcom/sec/android/glview/TwGLImage;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFZI)V

    iput-object v1, p0, Lcom/sec/android/glview/TwGLList;->mBounceEdgeBottom:Lcom/sec/android/glview/TwGLImage;

    goto/16 :goto_6

    .line 708
    :cond_d
    iget v1, p0, Lcom/sec/android/glview/TwGLList;->mStackOrientation:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_a

    .line 709
    iget-object v1, p0, Lcom/sec/android/glview/TwGLList;->mScrollBar:Lcom/sec/android/glview/TwGLNinePatch;

    if-eqz v1, :cond_a

    .line 710
    invoke-direct {p0}, Lcom/sec/android/glview/TwGLList;->setScrollBarLayout()V

    goto/16 :goto_7

    .line 717
    :cond_e
    iget-boolean v1, p0, Lcom/sec/android/glview/TwGLList;->mScrollBarVisible:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/sec/android/glview/TwGLList;->mScrollBar:Lcom/sec/android/glview/TwGLNinePatch;

    if-eqz v1, :cond_2

    .line 718
    iget-object v1, p0, Lcom/sec/android/glview/TwGLList;->mScrollBar:Lcom/sec/android/glview/TwGLNinePatch;

    iget v2, p0, Lcom/sec/android/glview/TwGLList;->mListVisibleWidth:F

    iget v3, p0, Lcom/sec/android/glview/TwGLList;->mContentWidth:F

    div-float/2addr v2, v3

    iget v3, p0, Lcom/sec/android/glview/TwGLList;->mScrollSumX:F

    mul-float/2addr v2, v3

    neg-float v2, v2

    iget v3, p0, Lcom/sec/android/glview/TwGLList;->mListVisibleHeight:F

    iget v4, p0, Lcom/sec/android/glview/TwGLList;->mContentHeight:F

    div-float/2addr v3, v4

    iget v4, p0, Lcom/sec/android/glview/TwGLList;->mScrollSumY:F

    mul-float/2addr v3, v4

    neg-float v3, v3

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/glview/TwGLNinePatch;->translate(FF)V

    goto/16 :goto_3
.end method

.method public setOnScrollListener(Lcom/sec/android/glview/TwGLList$OnScrollListener;)V
    .locals 0
    .parameter "l"

    .prologue
    .line 336
    iput-object p1, p0, Lcom/sec/android/glview/TwGLList;->mOnScrollListener:Lcom/sec/android/glview/TwGLList$OnScrollListener;

    .line 337
    return-void
.end method

.method public setPaddings(Landroid/graphics/Rect;)V
    .locals 12
    .parameter "paddings"

    .prologue
    .line 353
    iput-object p1, p0, Lcom/sec/android/glview/TwGLView;->mPaddings:Landroid/graphics/Rect;

    .line 354
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLList;->getLeft()F

    move-result v3

    .line 355
    .local v3, left:F
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLList;->getRight()F

    move-result v4

    .line 356
    .local v4, right:F
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLList;->getTop()F

    move-result v5

    .line 357
    .local v5, top:F
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLList;->getBottom()F

    move-result v0

    .line 359
    .local v0, bottom:F
    iget-object v8, p0, Lcom/sec/android/glview/TwGLViewGroup;->mGLViews:Ljava/util/List;

    monitor-enter v8

    .line 360
    :try_start_0
    iget-object v7, p0, Lcom/sec/android/glview/TwGLViewGroup;->mGLViews:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/sec/android/glview/TwGLView;

    .line 361
    .local v6, view:Lcom/sec/android/glview/TwGLView;
    new-instance v1, Landroid/graphics/Rect;

    const/4 v7, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-direct {v1, v7, v9, v10, v11}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 363
    .local v1, childPaddings:Landroid/graphics/Rect;
    iget v7, p0, Lcom/sec/android/glview/TwGLList;->mStackOrientation:I

    const/4 v9, 0x1

    if-eq v7, v9, :cond_0

    .line 364
    invoke-virtual {v6}, Lcom/sec/android/glview/TwGLView;->getLeft()F

    move-result v7

    sub-float/2addr v7, v3

    iget v9, p1, Landroid/graphics/Rect;->left:I

    int-to-float v9, v9

    cmpg-float v7, v7, v9

    if-gez v7, :cond_2

    invoke-virtual {v6}, Lcom/sec/android/glview/TwGLView;->getLeft()F

    move-result v7

    cmpl-float v7, v7, v3

    if-ltz v7, :cond_2

    .line 365
    iget v7, p1, Landroid/graphics/Rect;->left:I

    int-to-float v7, v7

    invoke-virtual {v6}, Lcom/sec/android/glview/TwGLView;->getLeft()F

    move-result v9

    sub-float/2addr v9, v3

    sub-float/2addr v7, v9

    float-to-int v7, v7

    iput v7, v1, Landroid/graphics/Rect;->left:I

    .line 369
    :goto_1
    invoke-virtual {v6}, Lcom/sec/android/glview/TwGLView;->getRight()F

    move-result v7

    sub-float v7, v4, v7

    iget v9, p1, Landroid/graphics/Rect;->right:I

    int-to-float v9, v9

    cmpg-float v7, v7, v9

    if-gez v7, :cond_3

    invoke-virtual {v6}, Lcom/sec/android/glview/TwGLView;->getRight()F

    move-result v7

    cmpl-float v7, v4, v7

    if-ltz v7, :cond_3

    .line 370
    iget v7, p1, Landroid/graphics/Rect;->right:I

    int-to-float v7, v7

    invoke-virtual {v6}, Lcom/sec/android/glview/TwGLView;->getRight()F

    move-result v9

    sub-float v9, v4, v9

    sub-float/2addr v7, v9

    float-to-int v7, v7

    iput v7, v1, Landroid/graphics/Rect;->right:I

    .line 374
    :goto_2
    iget-object v7, v6, Lcom/sec/android/glview/TwGLView;->mPaddings:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->top:I

    iput v7, v1, Landroid/graphics/Rect;->top:I

    .line 375
    iget-object v7, v6, Lcom/sec/android/glview/TwGLView;->mPaddings:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->bottom:I

    iput v7, v1, Landroid/graphics/Rect;->bottom:I

    .line 377
    :cond_0
    iget v7, p0, Lcom/sec/android/glview/TwGLList;->mStackOrientation:I

    if-eqz v7, :cond_1

    .line 378
    invoke-virtual {v6}, Lcom/sec/android/glview/TwGLView;->getTop()F

    move-result v7

    sub-float/2addr v7, v5

    iget v9, p1, Landroid/graphics/Rect;->top:I

    int-to-float v9, v9

    cmpg-float v7, v7, v9

    if-gez v7, :cond_4

    invoke-virtual {v6}, Lcom/sec/android/glview/TwGLView;->getTop()F

    move-result v7

    cmpl-float v7, v7, v5

    if-ltz v7, :cond_4

    .line 379
    iget v7, p1, Landroid/graphics/Rect;->top:I

    int-to-float v7, v7

    invoke-virtual {v6}, Lcom/sec/android/glview/TwGLView;->getTop()F

    move-result v9

    sub-float/2addr v9, v5

    sub-float/2addr v7, v9

    float-to-int v7, v7

    iput v7, v1, Landroid/graphics/Rect;->top:I

    .line 383
    :goto_3
    invoke-virtual {v6}, Lcom/sec/android/glview/TwGLView;->getBottom()F

    move-result v7

    sub-float v7, v0, v7

    iget v9, p1, Landroid/graphics/Rect;->bottom:I

    int-to-float v9, v9

    cmpg-float v7, v7, v9

    if-gez v7, :cond_5

    invoke-virtual {v6}, Lcom/sec/android/glview/TwGLView;->getBottom()F

    move-result v7

    cmpl-float v7, v0, v7

    if-ltz v7, :cond_5

    .line 384
    iget v7, p1, Landroid/graphics/Rect;->bottom:I

    int-to-float v7, v7

    invoke-virtual {v6}, Lcom/sec/android/glview/TwGLView;->getBottom()F

    move-result v9

    sub-float v9, v0, v9

    sub-float/2addr v7, v9

    float-to-int v7, v7

    iput v7, v1, Landroid/graphics/Rect;->bottom:I

    .line 388
    :goto_4
    iget-object v7, v6, Lcom/sec/android/glview/TwGLView;->mPaddings:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->left:I

    iput v7, v1, Landroid/graphics/Rect;->left:I

    .line 389
    iget-object v7, v6, Lcom/sec/android/glview/TwGLView;->mPaddings:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->right:I

    iput v7, v1, Landroid/graphics/Rect;->right:I

    .line 391
    :cond_1
    invoke-virtual {v6, v1}, Lcom/sec/android/glview/TwGLView;->setPaddings(Landroid/graphics/Rect;)V

    goto/16 :goto_0

    .line 393
    .end local v1           #childPaddings:Landroid/graphics/Rect;
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v6           #view:Lcom/sec/android/glview/TwGLView;
    :catchall_0
    move-exception v7

    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v7

    .line 367
    .restart local v1       #childPaddings:Landroid/graphics/Rect;
    .restart local v2       #i$:Ljava/util/Iterator;
    .restart local v6       #view:Lcom/sec/android/glview/TwGLView;
    :cond_2
    :try_start_1
    invoke-virtual {v6}, Lcom/sec/android/glview/TwGLView;->getPaddings()Landroid/graphics/Rect;

    move-result-object v7

    iget v7, v7, Landroid/graphics/Rect;->left:I

    iput v7, v1, Landroid/graphics/Rect;->left:I

    goto/16 :goto_1

    .line 372
    :cond_3
    invoke-virtual {v6}, Lcom/sec/android/glview/TwGLView;->getPaddings()Landroid/graphics/Rect;

    move-result-object v7

    iget v7, v7, Landroid/graphics/Rect;->right:I

    iput v7, v1, Landroid/graphics/Rect;->right:I

    goto :goto_2

    .line 381
    :cond_4
    invoke-virtual {v6}, Lcom/sec/android/glview/TwGLView;->getPaddings()Landroid/graphics/Rect;

    move-result-object v7

    iget v7, v7, Landroid/graphics/Rect;->top:I

    iput v7, v1, Landroid/graphics/Rect;->top:I

    goto :goto_3

    .line 386
    :cond_5
    invoke-virtual {v6}, Lcom/sec/android/glview/TwGLView;->getPaddings()Landroid/graphics/Rect;

    move-result-object v7

    iget v7, v7, Landroid/graphics/Rect;->bottom:I

    iput v7, v1, Landroid/graphics/Rect;->bottom:I

    goto :goto_4

    .line 393
    .end local v1           #childPaddings:Landroid/graphics/Rect;
    .end local v6           #view:Lcom/sec/android/glview/TwGLView;
    :cond_6
    monitor-exit v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 395
    invoke-direct {p0}, Lcom/sec/android/glview/TwGLList;->setVisibleArea()V

    .line 396
    iget-object v7, p0, Lcom/sec/android/glview/TwGLList;->mScrollBar:Lcom/sec/android/glview/TwGLNinePatch;

    if-eqz v7, :cond_7

    .line 397
    invoke-direct {p0}, Lcom/sec/android/glview/TwGLList;->setScrollBarLayout()V

    .line 399
    :cond_7
    return-void
.end method

.method public setScroll(I)V
    .locals 0
    .parameter "scroll"

    .prologue
    .line 514
    iput p1, p0, Lcom/sec/android/glview/TwGLList;->mScroll:I

    .line 515
    return-void
.end method

.method public setScrollBarResource(I)V
    .locals 3
    .parameter "ninepatchId"

    .prologue
    const/4 v2, 0x0

    .line 433
    new-instance v0, Lcom/sec/android/glview/TwGLNinePatch;

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLList;->getContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    invoke-direct {v0, v1, v2, v2, p1}, Lcom/sec/android/glview/TwGLNinePatch;-><init>(Lcom/sec/android/glview/TwGLContext;FFI)V

    iput-object v0, p0, Lcom/sec/android/glview/TwGLList;->mScrollBar:Lcom/sec/android/glview/TwGLNinePatch;

    .line 434
    iget-object v0, p0, Lcom/sec/android/glview/TwGLList;->mScrollBar:Lcom/sec/android/glview/TwGLNinePatch;

    const v1, 0xfffff

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLNinePatch;->setTag(I)V

    .line 435
    iget-object v0, p0, Lcom/sec/android/glview/TwGLList;->mScrollBar:Lcom/sec/android/glview/TwGLNinePatch;

    iput-object p0, v0, Lcom/sec/android/glview/TwGLView;->mParent:Lcom/sec/android/glview/TwGLView;

    .line 436
    return-void
.end method

.method public setScrollThreshold(F)V
    .locals 3
    .parameter "scrollThresholdDIP"

    .prologue
    .line 523
    const-string v0, "TwGLList"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setScrollThreshold : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 525
    iput p1, p0, Lcom/sec/android/glview/TwGLList;->mScrollThreshold:F

    .line 526
    return-void
.end method

.method public setScrolling(Z)V
    .locals 1
    .parameter "start"

    .prologue
    .line 541
    iget-boolean v0, p0, Lcom/sec/android/glview/TwGLList;->mScrolling:Z

    if-eq v0, p1, :cond_0

    .line 542
    iput-boolean p1, p0, Lcom/sec/android/glview/TwGLList;->mScrolling:Z

    .line 543
    iget-object v0, p0, Lcom/sec/android/glview/TwGLList;->mOnScrollListener:Lcom/sec/android/glview/TwGLList$OnScrollListener;

    if-eqz v0, :cond_0

    .line 544
    if-eqz p1, :cond_2

    .line 545
    iget-object v0, p0, Lcom/sec/android/glview/TwGLList;->mOnScrollListener:Lcom/sec/android/glview/TwGLList$OnScrollListener;

    invoke-interface {v0}, Lcom/sec/android/glview/TwGLList$OnScrollListener;->onScrollStart()V

    .line 550
    :cond_0
    :goto_0
    if-eqz p1, :cond_1

    .line 551
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLList;->resetDrag()V

    .line 552
    :cond_1
    return-void

    .line 547
    :cond_2
    iget-object v0, p0, Lcom/sec/android/glview/TwGLList;->mOnScrollListener:Lcom/sec/android/glview/TwGLList$OnScrollListener;

    invoke-interface {v0}, Lcom/sec/android/glview/TwGLList$OnScrollListener;->onScrollEnd()V

    goto :goto_0
.end method

.method public setSize(FF)V
    .locals 1
    .parameter "width"
    .parameter "height"

    .prologue
    .line 406
    invoke-super {p0, p1, p2}, Lcom/sec/android/glview/TwGLViewGroup;->setSize(FF)V

    .line 408
    invoke-direct {p0}, Lcom/sec/android/glview/TwGLList;->checkBoundary()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 409
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/glview/TwGLList;->mBouncing:Z

    .line 411
    :cond_0
    invoke-direct {p0}, Lcom/sec/android/glview/TwGLList;->setVisibleArea()V

    .line 412
    iget-object v0, p0, Lcom/sec/android/glview/TwGLList;->mScrollBar:Lcom/sec/android/glview/TwGLNinePatch;

    if-eqz v0, :cond_1

    .line 413
    invoke-direct {p0}, Lcom/sec/android/glview/TwGLList;->setScrollBarLayout()V

    .line 415
    :cond_1
    return-void
.end method

.method public showScrollBar()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 596
    iget-object v0, p0, Lcom/sec/android/glview/TwGLList;->mScrollBar:Lcom/sec/android/glview/TwGLNinePatch;

    if-nez v0, :cond_1

    .line 611
    :cond_0
    :goto_0
    return-void

    .line 599
    :cond_1
    iget v0, p0, Lcom/sec/android/glview/TwGLList;->mStackOrientation:I

    if-nez v0, :cond_2

    iget v0, p0, Lcom/sec/android/glview/TwGLList;->mListVisibleHeight:F

    iget-object v1, p0, Lcom/sec/android/glview/TwGLView;->mPaddings:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    int-to-float v1, v1

    add-float/2addr v0, v1

    iget-object v1, p0, Lcom/sec/android/glview/TwGLView;->mPaddings:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    int-to-float v1, v1

    add-float/2addr v0, v1

    iget v1, p0, Lcom/sec/android/glview/TwGLList;->mContentHeight:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    .line 602
    :cond_2
    iget v0, p0, Lcom/sec/android/glview/TwGLList;->mStackOrientation:I

    if-ne v0, v2, :cond_3

    iget v0, p0, Lcom/sec/android/glview/TwGLList;->mListVisibleWidth:F

    iget-object v1, p0, Lcom/sec/android/glview/TwGLView;->mPaddings:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    add-float/2addr v0, v1

    iget-object v1, p0, Lcom/sec/android/glview/TwGLView;->mPaddings:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    int-to-float v1, v1

    add-float/2addr v0, v1

    iget v1, p0, Lcom/sec/android/glview/TwGLList;->mContentWidth:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    .line 606
    :cond_3
    iget-object v0, p0, Lcom/sec/android/glview/TwGLList;->mScrollBar:Lcom/sec/android/glview/TwGLNinePatch;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLNinePatch;->setAnimation(Landroid/view/animation/Animation;)V

    .line 607
    iget-object v0, p0, Lcom/sec/android/glview/TwGLList;->mScrollBar:Lcom/sec/android/glview/TwGLNinePatch;

    const/high16 v1, 0x3f80

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLNinePatch;->setAlpha(F)V

    .line 608
    iput-boolean v2, p0, Lcom/sec/android/glview/TwGLList;->mScrollBarVisible:Z

    .line 609
    iget-object v0, p0, Lcom/sec/android/glview/TwGLList;->mScrollBar:Lcom/sec/android/glview/TwGLNinePatch;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLNinePatch;->setVisibility(I)V

    .line 610
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLList;->restartScrollBarTimer()V

    goto :goto_0
.end method
