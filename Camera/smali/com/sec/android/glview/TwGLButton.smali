.class public Lcom/sec/android/glview/TwGLButton;
.super Lcom/sec/android/glview/TwGLView;
.source "TwGLButton.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/glview/TwGLButton$OnButtonHighlightChangedListener;
    }
.end annotation


# static fields
.field private static final DRAW_HIGHLIGHT_DELAY:I = 0xc8

.field private static HIGHLIGHTTYPE_COLOR:I = 0x0

.field private static HIGHLIGHTTYPE_NONE:I = 0x0

.field private static HIGHLIGHTTYPE_RESOURCE:I = 0x0

.field private static final HIGHLIGHT_FADE_OUT_ANIM_DURATION:I = 0x190


# instance fields
.field protected mButtonHeight:F

.field protected mButtonWidth:F

.field protected mDim:Z

.field protected mDimBackground:Lcom/sec/android/glview/TwGLTexture;

.field protected mDimId:I

.field protected mDrawHighlight:Z

.field protected mHighlight:Lcom/sec/android/glview/TwGLTexture;

.field protected mHighlightFadeOut:Z

.field protected mHighlightId:I

.field protected mHighlightType:I

.field protected mImageData:[B

.field protected mImagePath:Ljava/lang/String;

.field protected mIsNinePatchButton:Z

.field protected mMute:Z

.field protected mNormalBackground:Lcom/sec/android/glview/TwGLTexture;

.field protected mNormalId:I

.field protected mOnHighlightAnimationEventListener:Lcom/sec/android/glview/TwGLView$OnAnimationEventListener;

.field protected mOnHighlightChangedListener:Lcom/sec/android/glview/TwGLButton$OnButtonHighlightChangedListener;

.field protected mPressed:Z

.field protected mPressedBackground:Lcom/sec/android/glview/TwGLTexture;

.field protected mPressedId:I

.field protected mResourceOffsetX:F

.field protected mResourceOffsetY:F

.field protected mShowHighlight:Z

.field protected mShowText:Z

.field protected mText:Lcom/sec/android/glview/TwGLText;

.field private setDrawHighlight:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 40
    const/4 v0, 0x0

    sput v0, Lcom/sec/android/glview/TwGLButton;->HIGHLIGHTTYPE_NONE:I

    .line 41
    const/4 v0, 0x1

    sput v0, Lcom/sec/android/glview/TwGLButton;->HIGHLIGHTTYPE_RESOURCE:I

    .line 42
    const/4 v0, 0x2

    sput v0, Lcom/sec/android/glview/TwGLButton;->HIGHLIGHTTYPE_COLOR:I

    return-void
.end method

.method public constructor <init>(Lcom/sec/android/glview/TwGLContext;FFFFIIII)V
    .locals 8
    .parameter "glContext"
    .parameter "left"
    .parameter "top"
    .parameter "width"
    .parameter "height"
    .parameter "normalId"
    .parameter "pressedId"
    .parameter "dimmedId"
    .parameter "npHighlightId"

    .prologue
    .line 397
    invoke-direct/range {p0 .. p5}, Lcom/sec/android/glview/TwGLView;-><init>(Lcom/sec/android/glview/TwGLContext;FFFF)V

    .line 63
    const/4 v1, 0x0

    iput v1, p0, Lcom/sec/android/glview/TwGLButton;->mButtonWidth:F

    .line 66
    const/4 v1, 0x0

    iput v1, p0, Lcom/sec/android/glview/TwGLButton;->mButtonHeight:F

    .line 69
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/sec/android/glview/TwGLButton;->mPressed:Z

    .line 72
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/sec/android/glview/TwGLButton;->mDim:Z

    .line 75
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/sec/android/glview/TwGLButton;->mMute:Z

    .line 78
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/sec/android/glview/TwGLButton;->mShowText:Z

    .line 81
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/sec/android/glview/TwGLButton;->mShowHighlight:Z

    .line 83
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/sec/android/glview/TwGLButton;->mDrawHighlight:Z

    .line 89
    sget v1, Lcom/sec/android/glview/TwGLButton;->HIGHLIGHTTYPE_NONE:I

    iput v1, p0, Lcom/sec/android/glview/TwGLButton;->mHighlightType:I

    .line 98
    const/4 v1, 0x0

    iput v1, p0, Lcom/sec/android/glview/TwGLButton;->mResourceOffsetX:F

    .line 101
    const/4 v1, 0x0

    iput v1, p0, Lcom/sec/android/glview/TwGLButton;->mResourceOffsetY:F

    .line 103
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/sec/android/glview/TwGLButton;->mIsNinePatchButton:Z

    .line 105
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/sec/android/glview/TwGLButton;->mHighlightFadeOut:Z

    .line 107
    new-instance v1, Lcom/sec/android/glview/TwGLButton$1;

    invoke-direct {v1, p0}, Lcom/sec/android/glview/TwGLButton$1;-><init>(Lcom/sec/android/glview/TwGLButton;)V

    iput-object v1, p0, Lcom/sec/android/glview/TwGLButton;->mOnHighlightAnimationEventListener:Lcom/sec/android/glview/TwGLView$OnAnimationEventListener;

    .line 117
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sec/android/glview/TwGLButton;->mOnHighlightChangedListener:Lcom/sec/android/glview/TwGLButton$OnButtonHighlightChangedListener;

    .line 119
    new-instance v1, Lcom/sec/android/glview/TwGLButton$2;

    invoke-direct {v1, p0}, Lcom/sec/android/glview/TwGLButton$2;-><init>(Lcom/sec/android/glview/TwGLButton;)V

    iput-object v1, p0, Lcom/sec/android/glview/TwGLButton;->setDrawHighlight:Ljava/lang/Runnable;

    .line 399
    if-eqz p6, :cond_0

    .line 400
    new-instance v1, Lcom/sec/android/glview/TwGLResourceTexture;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v1, p1, v2, v3, p6}, Lcom/sec/android/glview/TwGLResourceTexture;-><init>(Lcom/sec/android/glview/TwGLContext;FFI)V

    iput-object v1, p0, Lcom/sec/android/glview/TwGLButton;->mNormalBackground:Lcom/sec/android/glview/TwGLTexture;

    .line 402
    :cond_0
    if-eqz p7, :cond_1

    .line 403
    new-instance v1, Lcom/sec/android/glview/TwGLResourceTexture;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v1, p1, v2, v3, p7}, Lcom/sec/android/glview/TwGLResourceTexture;-><init>(Lcom/sec/android/glview/TwGLContext;FFI)V

    iput-object v1, p0, Lcom/sec/android/glview/TwGLButton;->mPressedBackground:Lcom/sec/android/glview/TwGLTexture;

    .line 404
    :cond_1
    if-eqz p8, :cond_2

    .line 405
    new-instance v1, Lcom/sec/android/glview/TwGLResourceTexture;

    const/4 v2, 0x0

    const/4 v3, 0x0

    move/from16 v0, p8

    invoke-direct {v1, p1, v2, v3, v0}, Lcom/sec/android/glview/TwGLResourceTexture;-><init>(Lcom/sec/android/glview/TwGLContext;FFI)V

    iput-object v1, p0, Lcom/sec/android/glview/TwGLButton;->mDimBackground:Lcom/sec/android/glview/TwGLTexture;

    .line 408
    :cond_2
    if-eqz p9, :cond_3

    .line 409
    sget v1, Lcom/sec/android/glview/TwGLButton;->HIGHLIGHTTYPE_RESOURCE:I

    iput v1, p0, Lcom/sec/android/glview/TwGLButton;->mHighlightType:I

    .line 410
    new-instance v1, Lcom/sec/android/glview/TwGLNinePatchTexture;

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v2, p1

    move v5, p4

    move v6, p5

    move/from16 v7, p9

    invoke-direct/range {v1 .. v7}, Lcom/sec/android/glview/TwGLNinePatchTexture;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFI)V

    iput-object v1, p0, Lcom/sec/android/glview/TwGLButton;->mHighlight:Lcom/sec/android/glview/TwGLTexture;

    .line 412
    :cond_3
    iput p4, p0, Lcom/sec/android/glview/TwGLButton;->mButtonWidth:F

    .line 413
    iput p5, p0, Lcom/sec/android/glview/TwGLButton;->mButtonHeight:F

    .line 415
    iget-object v1, p0, Lcom/sec/android/glview/TwGLButton;->mNormalBackground:Lcom/sec/android/glview/TwGLTexture;

    if-eqz v1, :cond_4

    iget v1, p0, Lcom/sec/android/glview/TwGLButton;->mButtonWidth:F

    iget-object v2, p0, Lcom/sec/android/glview/TwGLButton;->mNormalBackground:Lcom/sec/android/glview/TwGLTexture;

    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLTexture;->getWidth()F

    move-result v2

    cmpl-float v1, v1, v2

    if-lez v1, :cond_4

    .line 416
    iget v1, p0, Lcom/sec/android/glview/TwGLButton;->mButtonWidth:F

    iget-object v2, p0, Lcom/sec/android/glview/TwGLButton;->mNormalBackground:Lcom/sec/android/glview/TwGLTexture;

    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLTexture;->getWidth()F

    move-result v2

    sub-float/2addr v1, v2

    const/high16 v2, 0x4000

    div-float/2addr v1, v2

    iput v1, p0, Lcom/sec/android/glview/TwGLButton;->mResourceOffsetX:F

    .line 418
    :cond_4
    iget-object v1, p0, Lcom/sec/android/glview/TwGLButton;->mNormalBackground:Lcom/sec/android/glview/TwGLTexture;

    if-eqz v1, :cond_5

    iget v1, p0, Lcom/sec/android/glview/TwGLButton;->mButtonHeight:F

    iget-object v2, p0, Lcom/sec/android/glview/TwGLButton;->mNormalBackground:Lcom/sec/android/glview/TwGLTexture;

    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLTexture;->getHeight()F

    move-result v2

    cmpl-float v1, v1, v2

    if-lez v1, :cond_5

    .line 419
    iget v1, p0, Lcom/sec/android/glview/TwGLButton;->mButtonHeight:F

    iget-object v2, p0, Lcom/sec/android/glview/TwGLButton;->mNormalBackground:Lcom/sec/android/glview/TwGLTexture;

    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLTexture;->getHeight()F

    move-result v2

    sub-float/2addr v1, v2

    const/high16 v2, 0x4000

    div-float/2addr v1, v2

    iput v1, p0, Lcom/sec/android/glview/TwGLButton;->mResourceOffsetY:F

    .line 421
    :cond_5
    iget v1, p0, Lcom/sec/android/glview/TwGLButton;->mResourceOffsetX:F

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-nez v1, :cond_6

    iget v1, p0, Lcom/sec/android/glview/TwGLButton;->mResourceOffsetY:F

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_9

    .line 422
    :cond_6
    iget-object v1, p0, Lcom/sec/android/glview/TwGLButton;->mNormalBackground:Lcom/sec/android/glview/TwGLTexture;

    if-eqz v1, :cond_7

    .line 423
    iget-object v1, p0, Lcom/sec/android/glview/TwGLButton;->mNormalBackground:Lcom/sec/android/glview/TwGLTexture;

    iget v2, p0, Lcom/sec/android/glview/TwGLButton;->mResourceOffsetX:F

    iget v3, p0, Lcom/sec/android/glview/TwGLButton;->mResourceOffsetY:F

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/glview/TwGLTexture;->moveLayout(FF)V

    .line 424
    :cond_7
    iget-object v1, p0, Lcom/sec/android/glview/TwGLButton;->mPressedBackground:Lcom/sec/android/glview/TwGLTexture;

    if-eqz v1, :cond_8

    .line 425
    iget-object v1, p0, Lcom/sec/android/glview/TwGLButton;->mPressedBackground:Lcom/sec/android/glview/TwGLTexture;

    iget v2, p0, Lcom/sec/android/glview/TwGLButton;->mResourceOffsetX:F

    iget v3, p0, Lcom/sec/android/glview/TwGLButton;->mResourceOffsetY:F

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/glview/TwGLTexture;->moveLayout(FF)V

    .line 426
    :cond_8
    iget-object v1, p0, Lcom/sec/android/glview/TwGLButton;->mDimBackground:Lcom/sec/android/glview/TwGLTexture;

    if-eqz v1, :cond_9

    .line 427
    iget-object v1, p0, Lcom/sec/android/glview/TwGLButton;->mDimBackground:Lcom/sec/android/glview/TwGLTexture;

    iget v2, p0, Lcom/sec/android/glview/TwGLButton;->mResourceOffsetX:F

    iget v3, p0, Lcom/sec/android/glview/TwGLButton;->mResourceOffsetY:F

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/glview/TwGLTexture;->moveLayout(FF)V

    .line 430
    :cond_9
    iget-object v1, p0, Lcom/sec/android/glview/TwGLButton;->mNormalBackground:Lcom/sec/android/glview/TwGLTexture;

    if-eqz v1, :cond_a

    .line 431
    iget-object v1, p0, Lcom/sec/android/glview/TwGLButton;->mNormalBackground:Lcom/sec/android/glview/TwGLTexture;

    iput-object p0, v1, Lcom/sec/android/glview/TwGLView;->mParent:Lcom/sec/android/glview/TwGLView;

    .line 432
    :cond_a
    iget-object v1, p0, Lcom/sec/android/glview/TwGLButton;->mPressedBackground:Lcom/sec/android/glview/TwGLTexture;

    if-eqz v1, :cond_b

    .line 433
    iget-object v1, p0, Lcom/sec/android/glview/TwGLButton;->mPressedBackground:Lcom/sec/android/glview/TwGLTexture;

    iput-object p0, v1, Lcom/sec/android/glview/TwGLView;->mParent:Lcom/sec/android/glview/TwGLView;

    .line 434
    :cond_b
    iget-object v1, p0, Lcom/sec/android/glview/TwGLButton;->mDimBackground:Lcom/sec/android/glview/TwGLTexture;

    if-eqz v1, :cond_c

    .line 435
    iget-object v1, p0, Lcom/sec/android/glview/TwGLButton;->mDimBackground:Lcom/sec/android/glview/TwGLTexture;

    iput-object p0, v1, Lcom/sec/android/glview/TwGLView;->mParent:Lcom/sec/android/glview/TwGLView;

    .line 436
    :cond_c
    iget-object v1, p0, Lcom/sec/android/glview/TwGLButton;->mHighlight:Lcom/sec/android/glview/TwGLTexture;

    if-eqz v1, :cond_d

    .line 437
    iget-object v1, p0, Lcom/sec/android/glview/TwGLButton;->mHighlight:Lcom/sec/android/glview/TwGLTexture;

    iput-object p0, v1, Lcom/sec/android/glview/TwGLView;->mParent:Lcom/sec/android/glview/TwGLView;

    .line 438
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/sec/android/glview/TwGLButton;->mShowHighlight:Z

    .line 441
    :cond_d
    iput p6, p0, Lcom/sec/android/glview/TwGLButton;->mNormalId:I

    .line 442
    iput p7, p0, Lcom/sec/android/glview/TwGLButton;->mPressedId:I

    .line 443
    move/from16 v0, p8

    iput v0, p0, Lcom/sec/android/glview/TwGLButton;->mDimId:I

    .line 444
    move/from16 v0, p9

    iput v0, p0, Lcom/sec/android/glview/TwGLButton;->mHighlightId:I

    .line 445
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/sec/android/glview/TwGLButton;->setFocusable(Z)V

    .line 446
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/sec/android/glview/TwGLButton;->setClickable(Z)V

    .line 447
    return-void
.end method

.method public constructor <init>(Lcom/sec/android/glview/TwGLContext;FFFFIIIILandroid/graphics/Bitmap$Config;)V
    .locals 8
    .parameter "glContext"
    .parameter "left"
    .parameter "top"
    .parameter "width"
    .parameter "height"
    .parameter "normalId"
    .parameter "pressedId"
    .parameter "dimmedId"
    .parameter "highlightColor"
    .parameter "highlightConf"

    .prologue
    .line 513
    invoke-direct/range {p0 .. p5}, Lcom/sec/android/glview/TwGLView;-><init>(Lcom/sec/android/glview/TwGLContext;FFFF)V

    .line 63
    const/4 v1, 0x0

    iput v1, p0, Lcom/sec/android/glview/TwGLButton;->mButtonWidth:F

    .line 66
    const/4 v1, 0x0

    iput v1, p0, Lcom/sec/android/glview/TwGLButton;->mButtonHeight:F

    .line 69
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/sec/android/glview/TwGLButton;->mPressed:Z

    .line 72
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/sec/android/glview/TwGLButton;->mDim:Z

    .line 75
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/sec/android/glview/TwGLButton;->mMute:Z

    .line 78
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/sec/android/glview/TwGLButton;->mShowText:Z

    .line 81
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/sec/android/glview/TwGLButton;->mShowHighlight:Z

    .line 83
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/sec/android/glview/TwGLButton;->mDrawHighlight:Z

    .line 89
    sget v1, Lcom/sec/android/glview/TwGLButton;->HIGHLIGHTTYPE_NONE:I

    iput v1, p0, Lcom/sec/android/glview/TwGLButton;->mHighlightType:I

    .line 98
    const/4 v1, 0x0

    iput v1, p0, Lcom/sec/android/glview/TwGLButton;->mResourceOffsetX:F

    .line 101
    const/4 v1, 0x0

    iput v1, p0, Lcom/sec/android/glview/TwGLButton;->mResourceOffsetY:F

    .line 103
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/sec/android/glview/TwGLButton;->mIsNinePatchButton:Z

    .line 105
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/sec/android/glview/TwGLButton;->mHighlightFadeOut:Z

    .line 107
    new-instance v1, Lcom/sec/android/glview/TwGLButton$1;

    invoke-direct {v1, p0}, Lcom/sec/android/glview/TwGLButton$1;-><init>(Lcom/sec/android/glview/TwGLButton;)V

    iput-object v1, p0, Lcom/sec/android/glview/TwGLButton;->mOnHighlightAnimationEventListener:Lcom/sec/android/glview/TwGLView$OnAnimationEventListener;

    .line 117
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sec/android/glview/TwGLButton;->mOnHighlightChangedListener:Lcom/sec/android/glview/TwGLButton$OnButtonHighlightChangedListener;

    .line 119
    new-instance v1, Lcom/sec/android/glview/TwGLButton$2;

    invoke-direct {v1, p0}, Lcom/sec/android/glview/TwGLButton$2;-><init>(Lcom/sec/android/glview/TwGLButton;)V

    iput-object v1, p0, Lcom/sec/android/glview/TwGLButton;->setDrawHighlight:Ljava/lang/Runnable;

    .line 515
    if-eqz p6, :cond_0

    .line 516
    new-instance v1, Lcom/sec/android/glview/TwGLResourceTexture;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v1, p1, v2, v3, p6}, Lcom/sec/android/glview/TwGLResourceTexture;-><init>(Lcom/sec/android/glview/TwGLContext;FFI)V

    iput-object v1, p0, Lcom/sec/android/glview/TwGLButton;->mNormalBackground:Lcom/sec/android/glview/TwGLTexture;

    .line 518
    :cond_0
    if-eqz p7, :cond_1

    .line 519
    new-instance v1, Lcom/sec/android/glview/TwGLResourceTexture;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v1, p1, v2, v3, p7}, Lcom/sec/android/glview/TwGLResourceTexture;-><init>(Lcom/sec/android/glview/TwGLContext;FFI)V

    iput-object v1, p0, Lcom/sec/android/glview/TwGLButton;->mPressedBackground:Lcom/sec/android/glview/TwGLTexture;

    .line 520
    :cond_1
    if-eqz p8, :cond_2

    .line 521
    new-instance v1, Lcom/sec/android/glview/TwGLResourceTexture;

    const/4 v2, 0x0

    const/4 v3, 0x0

    move/from16 v0, p8

    invoke-direct {v1, p1, v2, v3, v0}, Lcom/sec/android/glview/TwGLResourceTexture;-><init>(Lcom/sec/android/glview/TwGLContext;FFI)V

    iput-object v1, p0, Lcom/sec/android/glview/TwGLButton;->mDimBackground:Lcom/sec/android/glview/TwGLTexture;

    .line 524
    :cond_2
    if-eqz p9, :cond_3

    .line 525
    sget v1, Lcom/sec/android/glview/TwGLButton;->HIGHLIGHTTYPE_COLOR:I

    iput v1, p0, Lcom/sec/android/glview/TwGLButton;->mHighlightType:I

    .line 526
    new-instance v1, Lcom/sec/android/glview/TwGLFillRectangle;

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v2, p1

    move v5, p4

    move v6, p5

    move/from16 v7, p9

    invoke-direct/range {v1 .. v7}, Lcom/sec/android/glview/TwGLFillRectangle;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFI)V

    iput-object v1, p0, Lcom/sec/android/glview/TwGLButton;->mHighlight:Lcom/sec/android/glview/TwGLTexture;

    .line 528
    :cond_3
    iput p4, p0, Lcom/sec/android/glview/TwGLButton;->mButtonWidth:F

    .line 529
    iput p5, p0, Lcom/sec/android/glview/TwGLButton;->mButtonHeight:F

    .line 531
    iget-object v1, p0, Lcom/sec/android/glview/TwGLButton;->mNormalBackground:Lcom/sec/android/glview/TwGLTexture;

    if-eqz v1, :cond_4

    iget v1, p0, Lcom/sec/android/glview/TwGLButton;->mButtonWidth:F

    iget-object v2, p0, Lcom/sec/android/glview/TwGLButton;->mNormalBackground:Lcom/sec/android/glview/TwGLTexture;

    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLTexture;->getWidth()F

    move-result v2

    cmpl-float v1, v1, v2

    if-lez v1, :cond_4

    .line 532
    iget v1, p0, Lcom/sec/android/glview/TwGLButton;->mButtonWidth:F

    iget-object v2, p0, Lcom/sec/android/glview/TwGLButton;->mNormalBackground:Lcom/sec/android/glview/TwGLTexture;

    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLTexture;->getWidth()F

    move-result v2

    sub-float/2addr v1, v2

    const/high16 v2, 0x4000

    div-float/2addr v1, v2

    iput v1, p0, Lcom/sec/android/glview/TwGLButton;->mResourceOffsetX:F

    .line 534
    :cond_4
    iget-object v1, p0, Lcom/sec/android/glview/TwGLButton;->mNormalBackground:Lcom/sec/android/glview/TwGLTexture;

    if-eqz v1, :cond_5

    iget v1, p0, Lcom/sec/android/glview/TwGLButton;->mButtonHeight:F

    iget-object v2, p0, Lcom/sec/android/glview/TwGLButton;->mNormalBackground:Lcom/sec/android/glview/TwGLTexture;

    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLTexture;->getHeight()F

    move-result v2

    cmpl-float v1, v1, v2

    if-lez v1, :cond_5

    .line 535
    iget v1, p0, Lcom/sec/android/glview/TwGLButton;->mButtonHeight:F

    iget-object v2, p0, Lcom/sec/android/glview/TwGLButton;->mNormalBackground:Lcom/sec/android/glview/TwGLTexture;

    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLTexture;->getHeight()F

    move-result v2

    sub-float/2addr v1, v2

    const/high16 v2, 0x4000

    div-float/2addr v1, v2

    iput v1, p0, Lcom/sec/android/glview/TwGLButton;->mResourceOffsetY:F

    .line 537
    :cond_5
    iget v1, p0, Lcom/sec/android/glview/TwGLButton;->mResourceOffsetX:F

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-nez v1, :cond_6

    iget v1, p0, Lcom/sec/android/glview/TwGLButton;->mResourceOffsetY:F

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_9

    .line 538
    :cond_6
    iget-object v1, p0, Lcom/sec/android/glview/TwGLButton;->mNormalBackground:Lcom/sec/android/glview/TwGLTexture;

    if-eqz v1, :cond_7

    .line 539
    iget-object v1, p0, Lcom/sec/android/glview/TwGLButton;->mNormalBackground:Lcom/sec/android/glview/TwGLTexture;

    iget v2, p0, Lcom/sec/android/glview/TwGLButton;->mResourceOffsetX:F

    iget v3, p0, Lcom/sec/android/glview/TwGLButton;->mResourceOffsetY:F

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/glview/TwGLTexture;->moveLayout(FF)V

    .line 540
    :cond_7
    iget-object v1, p0, Lcom/sec/android/glview/TwGLButton;->mPressedBackground:Lcom/sec/android/glview/TwGLTexture;

    if-eqz v1, :cond_8

    .line 541
    iget-object v1, p0, Lcom/sec/android/glview/TwGLButton;->mPressedBackground:Lcom/sec/android/glview/TwGLTexture;

    iget v2, p0, Lcom/sec/android/glview/TwGLButton;->mResourceOffsetX:F

    iget v3, p0, Lcom/sec/android/glview/TwGLButton;->mResourceOffsetY:F

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/glview/TwGLTexture;->moveLayout(FF)V

    .line 542
    :cond_8
    iget-object v1, p0, Lcom/sec/android/glview/TwGLButton;->mDimBackground:Lcom/sec/android/glview/TwGLTexture;

    if-eqz v1, :cond_9

    .line 543
    iget-object v1, p0, Lcom/sec/android/glview/TwGLButton;->mDimBackground:Lcom/sec/android/glview/TwGLTexture;

    iget v2, p0, Lcom/sec/android/glview/TwGLButton;->mResourceOffsetX:F

    iget v3, p0, Lcom/sec/android/glview/TwGLButton;->mResourceOffsetY:F

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/glview/TwGLTexture;->moveLayout(FF)V

    .line 546
    :cond_9
    iget-object v1, p0, Lcom/sec/android/glview/TwGLButton;->mNormalBackground:Lcom/sec/android/glview/TwGLTexture;

    if-eqz v1, :cond_a

    .line 547
    iget-object v1, p0, Lcom/sec/android/glview/TwGLButton;->mNormalBackground:Lcom/sec/android/glview/TwGLTexture;

    iput-object p0, v1, Lcom/sec/android/glview/TwGLView;->mParent:Lcom/sec/android/glview/TwGLView;

    .line 548
    :cond_a
    iget-object v1, p0, Lcom/sec/android/glview/TwGLButton;->mPressedBackground:Lcom/sec/android/glview/TwGLTexture;

    if-eqz v1, :cond_b

    .line 549
    iget-object v1, p0, Lcom/sec/android/glview/TwGLButton;->mPressedBackground:Lcom/sec/android/glview/TwGLTexture;

    iput-object p0, v1, Lcom/sec/android/glview/TwGLView;->mParent:Lcom/sec/android/glview/TwGLView;

    .line 550
    :cond_b
    iget-object v1, p0, Lcom/sec/android/glview/TwGLButton;->mDimBackground:Lcom/sec/android/glview/TwGLTexture;

    if-eqz v1, :cond_c

    .line 551
    iget-object v1, p0, Lcom/sec/android/glview/TwGLButton;->mDimBackground:Lcom/sec/android/glview/TwGLTexture;

    iput-object p0, v1, Lcom/sec/android/glview/TwGLView;->mParent:Lcom/sec/android/glview/TwGLView;

    .line 552
    :cond_c
    iget-object v1, p0, Lcom/sec/android/glview/TwGLButton;->mHighlight:Lcom/sec/android/glview/TwGLTexture;

    if-eqz v1, :cond_d

    .line 553
    iget-object v1, p0, Lcom/sec/android/glview/TwGLButton;->mHighlight:Lcom/sec/android/glview/TwGLTexture;

    iput-object p0, v1, Lcom/sec/android/glview/TwGLView;->mParent:Lcom/sec/android/glview/TwGLView;

    .line 554
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/sec/android/glview/TwGLButton;->mShowHighlight:Z

    .line 557
    :cond_d
    iput p6, p0, Lcom/sec/android/glview/TwGLButton;->mNormalId:I

    .line 558
    iput p7, p0, Lcom/sec/android/glview/TwGLButton;->mPressedId:I

    .line 559
    move/from16 v0, p8

    iput v0, p0, Lcom/sec/android/glview/TwGLButton;->mDimId:I

    .line 560
    move/from16 v0, p9

    iput v0, p0, Lcom/sec/android/glview/TwGLButton;->mHighlightId:I

    .line 561
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/sec/android/glview/TwGLButton;->setFocusable(Z)V

    .line 562
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/sec/android/glview/TwGLButton;->setClickable(Z)V

    .line 563
    return-void
.end method

.method public constructor <init>(Lcom/sec/android/glview/TwGLContext;FFFFLjava/lang/String;)V
    .locals 8
    .parameter "glContext"
    .parameter "left"
    .parameter "top"
    .parameter "width"
    .parameter "height"
    .parameter "imagePath"

    .prologue
    const/4 v7, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 194
    invoke-direct/range {p0 .. p5}, Lcom/sec/android/glview/TwGLView;-><init>(Lcom/sec/android/glview/TwGLContext;FFFF)V

    .line 63
    iput v2, p0, Lcom/sec/android/glview/TwGLButton;->mButtonWidth:F

    .line 66
    iput v2, p0, Lcom/sec/android/glview/TwGLButton;->mButtonHeight:F

    .line 69
    iput-boolean v1, p0, Lcom/sec/android/glview/TwGLButton;->mPressed:Z

    .line 72
    iput-boolean v1, p0, Lcom/sec/android/glview/TwGLButton;->mDim:Z

    .line 75
    iput-boolean v1, p0, Lcom/sec/android/glview/TwGLButton;->mMute:Z

    .line 78
    iput-boolean v1, p0, Lcom/sec/android/glview/TwGLButton;->mShowText:Z

    .line 81
    iput-boolean v1, p0, Lcom/sec/android/glview/TwGLButton;->mShowHighlight:Z

    .line 83
    iput-boolean v1, p0, Lcom/sec/android/glview/TwGLButton;->mDrawHighlight:Z

    .line 89
    sget v0, Lcom/sec/android/glview/TwGLButton;->HIGHLIGHTTYPE_NONE:I

    iput v0, p0, Lcom/sec/android/glview/TwGLButton;->mHighlightType:I

    .line 98
    iput v2, p0, Lcom/sec/android/glview/TwGLButton;->mResourceOffsetX:F

    .line 101
    iput v2, p0, Lcom/sec/android/glview/TwGLButton;->mResourceOffsetY:F

    .line 103
    iput-boolean v1, p0, Lcom/sec/android/glview/TwGLButton;->mIsNinePatchButton:Z

    .line 105
    iput-boolean v1, p0, Lcom/sec/android/glview/TwGLButton;->mHighlightFadeOut:Z

    .line 107
    new-instance v0, Lcom/sec/android/glview/TwGLButton$1;

    invoke-direct {v0, p0}, Lcom/sec/android/glview/TwGLButton$1;-><init>(Lcom/sec/android/glview/TwGLButton;)V

    iput-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mOnHighlightAnimationEventListener:Lcom/sec/android/glview/TwGLView$OnAnimationEventListener;

    .line 117
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mOnHighlightChangedListener:Lcom/sec/android/glview/TwGLButton$OnButtonHighlightChangedListener;

    .line 119
    new-instance v0, Lcom/sec/android/glview/TwGLButton$2;

    invoke-direct {v0, p0}, Lcom/sec/android/glview/TwGLButton$2;-><init>(Lcom/sec/android/glview/TwGLButton;)V

    iput-object v0, p0, Lcom/sec/android/glview/TwGLButton;->setDrawHighlight:Ljava/lang/Runnable;

    .line 196
    if-eqz p6, :cond_0

    .line 197
    new-instance v0, Lcom/sec/android/glview/TwGLFileTexture;

    move-object v1, p1

    move v3, v2

    move v4, p4

    move v5, p5

    move-object v6, p6

    invoke-direct/range {v0 .. v6}, Lcom/sec/android/glview/TwGLFileTexture;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFLjava/lang/String;)V

    iput-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mNormalBackground:Lcom/sec/android/glview/TwGLTexture;

    .line 198
    iput p4, p0, Lcom/sec/android/glview/TwGLButton;->mButtonWidth:F

    .line 199
    iput p5, p0, Lcom/sec/android/glview/TwGLButton;->mButtonHeight:F

    .line 202
    :cond_0
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mNormalBackground:Lcom/sec/android/glview/TwGLTexture;

    if-eqz v0, :cond_1

    .line 203
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mNormalBackground:Lcom/sec/android/glview/TwGLTexture;

    iput-object p0, v0, Lcom/sec/android/glview/TwGLView;->mParent:Lcom/sec/android/glview/TwGLView;

    .line 205
    :cond_1
    iput-object p6, p0, Lcom/sec/android/glview/TwGLButton;->mImagePath:Ljava/lang/String;

    .line 206
    invoke-virtual {p0, v7}, Lcom/sec/android/glview/TwGLButton;->setFocusable(Z)V

    .line 207
    invoke-virtual {p0, v7}, Lcom/sec/android/glview/TwGLButton;->setClickable(Z)V

    .line 208
    return-void
.end method

.method public constructor <init>(Lcom/sec/android/glview/TwGLContext;FFFF[B)V
    .locals 8
    .parameter "glContext"
    .parameter "left"
    .parameter "top"
    .parameter "width"
    .parameter "height"
    .parameter "image"

    .prologue
    const/4 v7, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 269
    invoke-direct/range {p0 .. p5}, Lcom/sec/android/glview/TwGLView;-><init>(Lcom/sec/android/glview/TwGLContext;FFFF)V

    .line 63
    iput v2, p0, Lcom/sec/android/glview/TwGLButton;->mButtonWidth:F

    .line 66
    iput v2, p0, Lcom/sec/android/glview/TwGLButton;->mButtonHeight:F

    .line 69
    iput-boolean v1, p0, Lcom/sec/android/glview/TwGLButton;->mPressed:Z

    .line 72
    iput-boolean v1, p0, Lcom/sec/android/glview/TwGLButton;->mDim:Z

    .line 75
    iput-boolean v1, p0, Lcom/sec/android/glview/TwGLButton;->mMute:Z

    .line 78
    iput-boolean v1, p0, Lcom/sec/android/glview/TwGLButton;->mShowText:Z

    .line 81
    iput-boolean v1, p0, Lcom/sec/android/glview/TwGLButton;->mShowHighlight:Z

    .line 83
    iput-boolean v1, p0, Lcom/sec/android/glview/TwGLButton;->mDrawHighlight:Z

    .line 89
    sget v0, Lcom/sec/android/glview/TwGLButton;->HIGHLIGHTTYPE_NONE:I

    iput v0, p0, Lcom/sec/android/glview/TwGLButton;->mHighlightType:I

    .line 98
    iput v2, p0, Lcom/sec/android/glview/TwGLButton;->mResourceOffsetX:F

    .line 101
    iput v2, p0, Lcom/sec/android/glview/TwGLButton;->mResourceOffsetY:F

    .line 103
    iput-boolean v1, p0, Lcom/sec/android/glview/TwGLButton;->mIsNinePatchButton:Z

    .line 105
    iput-boolean v1, p0, Lcom/sec/android/glview/TwGLButton;->mHighlightFadeOut:Z

    .line 107
    new-instance v0, Lcom/sec/android/glview/TwGLButton$1;

    invoke-direct {v0, p0}, Lcom/sec/android/glview/TwGLButton$1;-><init>(Lcom/sec/android/glview/TwGLButton;)V

    iput-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mOnHighlightAnimationEventListener:Lcom/sec/android/glview/TwGLView$OnAnimationEventListener;

    .line 117
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mOnHighlightChangedListener:Lcom/sec/android/glview/TwGLButton$OnButtonHighlightChangedListener;

    .line 119
    new-instance v0, Lcom/sec/android/glview/TwGLButton$2;

    invoke-direct {v0, p0}, Lcom/sec/android/glview/TwGLButton$2;-><init>(Lcom/sec/android/glview/TwGLButton;)V

    iput-object v0, p0, Lcom/sec/android/glview/TwGLButton;->setDrawHighlight:Ljava/lang/Runnable;

    .line 271
    if-eqz p6, :cond_0

    .line 272
    new-instance v0, Lcom/sec/android/glview/TwGLByteArrayTexture;

    move-object v1, p1

    move v3, v2

    move v4, p4

    move v5, p5

    move-object v6, p6

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/glview/TwGLByteArrayTexture;-><init>(Lcom/sec/android/glview/TwGLContext;FFFF[BZ)V

    iput-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mNormalBackground:Lcom/sec/android/glview/TwGLTexture;

    .line 273
    iput p4, p0, Lcom/sec/android/glview/TwGLButton;->mButtonWidth:F

    .line 274
    iput p5, p0, Lcom/sec/android/glview/TwGLButton;->mButtonHeight:F

    .line 277
    :cond_0
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mNormalBackground:Lcom/sec/android/glview/TwGLTexture;

    if-eqz v0, :cond_1

    .line 278
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mNormalBackground:Lcom/sec/android/glview/TwGLTexture;

    iput-object p0, v0, Lcom/sec/android/glview/TwGLView;->mParent:Lcom/sec/android/glview/TwGLView;

    .line 280
    :cond_1
    iput-object p6, p0, Lcom/sec/android/glview/TwGLButton;->mImageData:[B

    .line 281
    invoke-virtual {p0, v7}, Lcom/sec/android/glview/TwGLButton;->setFocusable(Z)V

    .line 282
    invoke-virtual {p0, v7}, Lcom/sec/android/glview/TwGLButton;->setClickable(Z)V

    .line 283
    return-void
.end method

.method public constructor <init>(Lcom/sec/android/glview/TwGLContext;FFIIII)V
    .locals 8
    .parameter "glContext"
    .parameter "left"
    .parameter "top"
    .parameter "normalId"
    .parameter "pressedId"
    .parameter "dimmedId"
    .parameter "npHighlightId"

    .prologue
    const/4 v7, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 345
    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/glview/TwGLView;-><init>(Lcom/sec/android/glview/TwGLContext;FF)V

    .line 63
    iput v2, p0, Lcom/sec/android/glview/TwGLButton;->mButtonWidth:F

    .line 66
    iput v2, p0, Lcom/sec/android/glview/TwGLButton;->mButtonHeight:F

    .line 69
    iput-boolean v1, p0, Lcom/sec/android/glview/TwGLButton;->mPressed:Z

    .line 72
    iput-boolean v1, p0, Lcom/sec/android/glview/TwGLButton;->mDim:Z

    .line 75
    iput-boolean v1, p0, Lcom/sec/android/glview/TwGLButton;->mMute:Z

    .line 78
    iput-boolean v1, p0, Lcom/sec/android/glview/TwGLButton;->mShowText:Z

    .line 81
    iput-boolean v1, p0, Lcom/sec/android/glview/TwGLButton;->mShowHighlight:Z

    .line 83
    iput-boolean v1, p0, Lcom/sec/android/glview/TwGLButton;->mDrawHighlight:Z

    .line 89
    sget v0, Lcom/sec/android/glview/TwGLButton;->HIGHLIGHTTYPE_NONE:I

    iput v0, p0, Lcom/sec/android/glview/TwGLButton;->mHighlightType:I

    .line 98
    iput v2, p0, Lcom/sec/android/glview/TwGLButton;->mResourceOffsetX:F

    .line 101
    iput v2, p0, Lcom/sec/android/glview/TwGLButton;->mResourceOffsetY:F

    .line 103
    iput-boolean v1, p0, Lcom/sec/android/glview/TwGLButton;->mIsNinePatchButton:Z

    .line 105
    iput-boolean v1, p0, Lcom/sec/android/glview/TwGLButton;->mHighlightFadeOut:Z

    .line 107
    new-instance v0, Lcom/sec/android/glview/TwGLButton$1;

    invoke-direct {v0, p0}, Lcom/sec/android/glview/TwGLButton$1;-><init>(Lcom/sec/android/glview/TwGLButton;)V

    iput-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mOnHighlightAnimationEventListener:Lcom/sec/android/glview/TwGLView$OnAnimationEventListener;

    .line 117
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mOnHighlightChangedListener:Lcom/sec/android/glview/TwGLButton$OnButtonHighlightChangedListener;

    .line 119
    new-instance v0, Lcom/sec/android/glview/TwGLButton$2;

    invoke-direct {v0, p0}, Lcom/sec/android/glview/TwGLButton$2;-><init>(Lcom/sec/android/glview/TwGLButton;)V

    iput-object v0, p0, Lcom/sec/android/glview/TwGLButton;->setDrawHighlight:Ljava/lang/Runnable;

    .line 347
    if-eqz p4, :cond_0

    .line 348
    new-instance v0, Lcom/sec/android/glview/TwGLResourceTexture;

    invoke-direct {v0, p1, v2, v2, p4}, Lcom/sec/android/glview/TwGLResourceTexture;-><init>(Lcom/sec/android/glview/TwGLContext;FFI)V

    iput-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mNormalBackground:Lcom/sec/android/glview/TwGLTexture;

    .line 349
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mNormalBackground:Lcom/sec/android/glview/TwGLTexture;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLTexture;->getWidth()F

    move-result v0

    iput v0, p0, Lcom/sec/android/glview/TwGLButton;->mButtonWidth:F

    .line 350
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mNormalBackground:Lcom/sec/android/glview/TwGLTexture;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLTexture;->getHeight()F

    move-result v0

    iput v0, p0, Lcom/sec/android/glview/TwGLButton;->mButtonHeight:F

    .line 352
    :cond_0
    if-eqz p5, :cond_1

    .line 353
    new-instance v0, Lcom/sec/android/glview/TwGLResourceTexture;

    invoke-direct {v0, p1, v2, v2, p5}, Lcom/sec/android/glview/TwGLResourceTexture;-><init>(Lcom/sec/android/glview/TwGLContext;FFI)V

    iput-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mPressedBackground:Lcom/sec/android/glview/TwGLTexture;

    .line 354
    :cond_1
    if-eqz p6, :cond_2

    .line 355
    new-instance v0, Lcom/sec/android/glview/TwGLResourceTexture;

    invoke-direct {v0, p1, v2, v2, p6}, Lcom/sec/android/glview/TwGLResourceTexture;-><init>(Lcom/sec/android/glview/TwGLContext;FFI)V

    iput-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mDimBackground:Lcom/sec/android/glview/TwGLTexture;

    .line 356
    :cond_2
    if-eqz p7, :cond_3

    .line 357
    sget v0, Lcom/sec/android/glview/TwGLButton;->HIGHLIGHTTYPE_RESOURCE:I

    iput v0, p0, Lcom/sec/android/glview/TwGLButton;->mHighlightType:I

    .line 358
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mNormalBackground:Lcom/sec/android/glview/TwGLTexture;

    if-eqz v0, :cond_8

    .line 359
    new-instance v0, Lcom/sec/android/glview/TwGLNinePatchTexture;

    iget-object v1, p0, Lcom/sec/android/glview/TwGLButton;->mNormalBackground:Lcom/sec/android/glview/TwGLTexture;

    invoke-virtual {v1}, Lcom/sec/android/glview/TwGLTexture;->getWidth()F

    move-result v4

    iget-object v1, p0, Lcom/sec/android/glview/TwGLButton;->mNormalBackground:Lcom/sec/android/glview/TwGLTexture;

    invoke-virtual {v1}, Lcom/sec/android/glview/TwGLTexture;->getHeight()F

    move-result v5

    move-object v1, p1

    move v3, v2

    move v6, p7

    invoke-direct/range {v0 .. v6}, Lcom/sec/android/glview/TwGLNinePatchTexture;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFI)V

    iput-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mHighlight:Lcom/sec/android/glview/TwGLTexture;

    .line 364
    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mNormalBackground:Lcom/sec/android/glview/TwGLTexture;

    if-eqz v0, :cond_4

    .line 365
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mNormalBackground:Lcom/sec/android/glview/TwGLTexture;

    iput-object p0, v0, Lcom/sec/android/glview/TwGLView;->mParent:Lcom/sec/android/glview/TwGLView;

    .line 366
    :cond_4
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mPressedBackground:Lcom/sec/android/glview/TwGLTexture;

    if-eqz v0, :cond_5

    .line 367
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mPressedBackground:Lcom/sec/android/glview/TwGLTexture;

    iput-object p0, v0, Lcom/sec/android/glview/TwGLView;->mParent:Lcom/sec/android/glview/TwGLView;

    .line 368
    :cond_5
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mDimBackground:Lcom/sec/android/glview/TwGLTexture;

    if-eqz v0, :cond_6

    .line 369
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mDimBackground:Lcom/sec/android/glview/TwGLTexture;

    iput-object p0, v0, Lcom/sec/android/glview/TwGLView;->mParent:Lcom/sec/android/glview/TwGLView;

    .line 370
    :cond_6
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mHighlight:Lcom/sec/android/glview/TwGLTexture;

    if-eqz v0, :cond_7

    .line 371
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mHighlight:Lcom/sec/android/glview/TwGLTexture;

    iput-object p0, v0, Lcom/sec/android/glview/TwGLView;->mParent:Lcom/sec/android/glview/TwGLView;

    .line 372
    iput-boolean v7, p0, Lcom/sec/android/glview/TwGLButton;->mShowHighlight:Z

    .line 375
    :cond_7
    iput p4, p0, Lcom/sec/android/glview/TwGLButton;->mNormalId:I

    .line 376
    iput p5, p0, Lcom/sec/android/glview/TwGLButton;->mPressedId:I

    .line 377
    iput p6, p0, Lcom/sec/android/glview/TwGLButton;->mDimId:I

    .line 378
    iput p7, p0, Lcom/sec/android/glview/TwGLButton;->mHighlightId:I

    .line 379
    invoke-virtual {p0, v7}, Lcom/sec/android/glview/TwGLButton;->setFocusable(Z)V

    .line 380
    invoke-virtual {p0, v7}, Lcom/sec/android/glview/TwGLButton;->setClickable(Z)V

    .line 381
    return-void

    .line 361
    :cond_8
    new-instance v0, Lcom/sec/android/glview/TwGLNinePatchTexture;

    move-object v1, p1

    move v3, v2

    move v4, v2

    move v5, v2

    move v6, p7

    invoke-direct/range {v0 .. v6}, Lcom/sec/android/glview/TwGLNinePatchTexture;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFI)V

    iput-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mHighlight:Lcom/sec/android/glview/TwGLTexture;

    goto :goto_0
.end method

.method public constructor <init>(Lcom/sec/android/glview/TwGLContext;FFIIIII)V
    .locals 7
    .parameter "glContext"
    .parameter "left"
    .parameter "top"
    .parameter "normalId"
    .parameter "pressedId"
    .parameter "dimmedId"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 575
    int-to-float v4, p7

    int-to-float v5, p8

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/glview/TwGLView;-><init>(Lcom/sec/android/glview/TwGLContext;FFFF)V

    .line 63
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/glview/TwGLButton;->mButtonWidth:F

    .line 66
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/glview/TwGLButton;->mButtonHeight:F

    .line 69
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/glview/TwGLButton;->mPressed:Z

    .line 72
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/glview/TwGLButton;->mDim:Z

    .line 75
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/glview/TwGLButton;->mMute:Z

    .line 78
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/glview/TwGLButton;->mShowText:Z

    .line 81
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/glview/TwGLButton;->mShowHighlight:Z

    .line 83
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/glview/TwGLButton;->mDrawHighlight:Z

    .line 89
    sget v0, Lcom/sec/android/glview/TwGLButton;->HIGHLIGHTTYPE_NONE:I

    iput v0, p0, Lcom/sec/android/glview/TwGLButton;->mHighlightType:I

    .line 98
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/glview/TwGLButton;->mResourceOffsetX:F

    .line 101
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/glview/TwGLButton;->mResourceOffsetY:F

    .line 103
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/glview/TwGLButton;->mIsNinePatchButton:Z

    .line 105
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/glview/TwGLButton;->mHighlightFadeOut:Z

    .line 107
    new-instance v0, Lcom/sec/android/glview/TwGLButton$1;

    invoke-direct {v0, p0}, Lcom/sec/android/glview/TwGLButton$1;-><init>(Lcom/sec/android/glview/TwGLButton;)V

    iput-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mOnHighlightAnimationEventListener:Lcom/sec/android/glview/TwGLView$OnAnimationEventListener;

    .line 117
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mOnHighlightChangedListener:Lcom/sec/android/glview/TwGLButton$OnButtonHighlightChangedListener;

    .line 119
    new-instance v0, Lcom/sec/android/glview/TwGLButton$2;

    invoke-direct {v0, p0}, Lcom/sec/android/glview/TwGLButton$2;-><init>(Lcom/sec/android/glview/TwGLButton;)V

    iput-object v0, p0, Lcom/sec/android/glview/TwGLButton;->setDrawHighlight:Ljava/lang/Runnable;

    .line 577
    int-to-float v0, p7

    iput v0, p0, Lcom/sec/android/glview/TwGLButton;->mButtonWidth:F

    .line 578
    int-to-float v0, p8

    iput v0, p0, Lcom/sec/android/glview/TwGLButton;->mButtonHeight:F

    .line 580
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/glview/TwGLButton;->mIsNinePatchButton:Z

    .line 582
    if-eqz p4, :cond_0

    .line 583
    new-instance v0, Lcom/sec/android/glview/TwGLNinePatchTexture;

    const/4 v2, 0x0

    const/4 v3, 0x0

    iget v4, p0, Lcom/sec/android/glview/TwGLButton;->mButtonWidth:F

    iget v5, p0, Lcom/sec/android/glview/TwGLButton;->mButtonHeight:F

    move-object v1, p1

    move v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/sec/android/glview/TwGLNinePatchTexture;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFI)V

    iput-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mNormalBackground:Lcom/sec/android/glview/TwGLTexture;

    .line 585
    :cond_0
    if-eqz p5, :cond_1

    .line 586
    new-instance v0, Lcom/sec/android/glview/TwGLNinePatchTexture;

    const/4 v2, 0x0

    const/4 v3, 0x0

    iget v4, p0, Lcom/sec/android/glview/TwGLButton;->mButtonWidth:F

    iget v5, p0, Lcom/sec/android/glview/TwGLButton;->mButtonHeight:F

    move-object v1, p1

    move v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/sec/android/glview/TwGLNinePatchTexture;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFI)V

    iput-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mPressedBackground:Lcom/sec/android/glview/TwGLTexture;

    .line 588
    :cond_1
    if-eqz p6, :cond_2

    .line 589
    new-instance v0, Lcom/sec/android/glview/TwGLNinePatchTexture;

    const/4 v2, 0x0

    const/4 v3, 0x0

    iget v4, p0, Lcom/sec/android/glview/TwGLButton;->mButtonWidth:F

    iget v5, p0, Lcom/sec/android/glview/TwGLButton;->mButtonHeight:F

    move-object v1, p1

    move v6, p6

    invoke-direct/range {v0 .. v6}, Lcom/sec/android/glview/TwGLNinePatchTexture;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFI)V

    iput-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mDimBackground:Lcom/sec/android/glview/TwGLTexture;

    .line 591
    :cond_2
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mNormalBackground:Lcom/sec/android/glview/TwGLTexture;

    if-eqz v0, :cond_3

    .line 592
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mNormalBackground:Lcom/sec/android/glview/TwGLTexture;

    iput-object p0, v0, Lcom/sec/android/glview/TwGLView;->mParent:Lcom/sec/android/glview/TwGLView;

    .line 593
    :cond_3
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mPressedBackground:Lcom/sec/android/glview/TwGLTexture;

    if-eqz v0, :cond_4

    .line 594
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mPressedBackground:Lcom/sec/android/glview/TwGLTexture;

    iput-object p0, v0, Lcom/sec/android/glview/TwGLView;->mParent:Lcom/sec/android/glview/TwGLView;

    .line 595
    :cond_4
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mDimBackground:Lcom/sec/android/glview/TwGLTexture;

    if-eqz v0, :cond_5

    .line 596
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mDimBackground:Lcom/sec/android/glview/TwGLTexture;

    iput-object p0, v0, Lcom/sec/android/glview/TwGLView;->mParent:Lcom/sec/android/glview/TwGLView;

    .line 598
    :cond_5
    iput p4, p0, Lcom/sec/android/glview/TwGLButton;->mNormalId:I

    .line 599
    iput p5, p0, Lcom/sec/android/glview/TwGLButton;->mPressedId:I

    .line 600
    iput p6, p0, Lcom/sec/android/glview/TwGLButton;->mDimId:I

    .line 601
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sec/android/glview/TwGLButton;->setFocusable(Z)V

    .line 602
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sec/android/glview/TwGLButton;->setClickable(Z)V

    .line 603
    return-void
.end method

.method public constructor <init>(Lcom/sec/android/glview/TwGLContext;FFIIIILandroid/graphics/Bitmap$Config;)V
    .locals 7
    .parameter "glContext"
    .parameter "left"
    .parameter "top"
    .parameter "normalId"
    .parameter "pressedId"
    .parameter "dimmedId"
    .parameter "highlightColor"
    .parameter "highlightConf"

    .prologue
    .line 461
    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/glview/TwGLView;-><init>(Lcom/sec/android/glview/TwGLContext;FF)V

    .line 63
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/glview/TwGLButton;->mButtonWidth:F

    .line 66
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/glview/TwGLButton;->mButtonHeight:F

    .line 69
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/glview/TwGLButton;->mPressed:Z

    .line 72
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/glview/TwGLButton;->mDim:Z

    .line 75
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/glview/TwGLButton;->mMute:Z

    .line 78
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/glview/TwGLButton;->mShowText:Z

    .line 81
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/glview/TwGLButton;->mShowHighlight:Z

    .line 83
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/glview/TwGLButton;->mDrawHighlight:Z

    .line 89
    sget v0, Lcom/sec/android/glview/TwGLButton;->HIGHLIGHTTYPE_NONE:I

    iput v0, p0, Lcom/sec/android/glview/TwGLButton;->mHighlightType:I

    .line 98
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/glview/TwGLButton;->mResourceOffsetX:F

    .line 101
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/glview/TwGLButton;->mResourceOffsetY:F

    .line 103
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/glview/TwGLButton;->mIsNinePatchButton:Z

    .line 105
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/glview/TwGLButton;->mHighlightFadeOut:Z

    .line 107
    new-instance v0, Lcom/sec/android/glview/TwGLButton$1;

    invoke-direct {v0, p0}, Lcom/sec/android/glview/TwGLButton$1;-><init>(Lcom/sec/android/glview/TwGLButton;)V

    iput-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mOnHighlightAnimationEventListener:Lcom/sec/android/glview/TwGLView$OnAnimationEventListener;

    .line 117
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mOnHighlightChangedListener:Lcom/sec/android/glview/TwGLButton$OnButtonHighlightChangedListener;

    .line 119
    new-instance v0, Lcom/sec/android/glview/TwGLButton$2;

    invoke-direct {v0, p0}, Lcom/sec/android/glview/TwGLButton$2;-><init>(Lcom/sec/android/glview/TwGLButton;)V

    iput-object v0, p0, Lcom/sec/android/glview/TwGLButton;->setDrawHighlight:Ljava/lang/Runnable;

    .line 463
    if-eqz p4, :cond_0

    .line 464
    new-instance v0, Lcom/sec/android/glview/TwGLResourceTexture;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {v0, p1, v1, v2, p4}, Lcom/sec/android/glview/TwGLResourceTexture;-><init>(Lcom/sec/android/glview/TwGLContext;FFI)V

    iput-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mNormalBackground:Lcom/sec/android/glview/TwGLTexture;

    .line 465
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mNormalBackground:Lcom/sec/android/glview/TwGLTexture;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLTexture;->getWidth()F

    move-result v0

    iput v0, p0, Lcom/sec/android/glview/TwGLButton;->mButtonWidth:F

    .line 466
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mNormalBackground:Lcom/sec/android/glview/TwGLTexture;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLTexture;->getHeight()F

    move-result v0

    iput v0, p0, Lcom/sec/android/glview/TwGLButton;->mButtonHeight:F

    .line 468
    :cond_0
    if-eqz p5, :cond_1

    .line 469
    new-instance v0, Lcom/sec/android/glview/TwGLResourceTexture;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {v0, p1, v1, v2, p5}, Lcom/sec/android/glview/TwGLResourceTexture;-><init>(Lcom/sec/android/glview/TwGLContext;FFI)V

    iput-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mPressedBackground:Lcom/sec/android/glview/TwGLTexture;

    .line 470
    :cond_1
    if-eqz p6, :cond_2

    .line 471
    new-instance v0, Lcom/sec/android/glview/TwGLResourceTexture;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {v0, p1, v1, v2, p6}, Lcom/sec/android/glview/TwGLResourceTexture;-><init>(Lcom/sec/android/glview/TwGLContext;FFI)V

    iput-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mDimBackground:Lcom/sec/android/glview/TwGLTexture;

    .line 472
    :cond_2
    if-eqz p7, :cond_3

    .line 473
    sget v0, Lcom/sec/android/glview/TwGLButton;->HIGHLIGHTTYPE_COLOR:I

    iput v0, p0, Lcom/sec/android/glview/TwGLButton;->mHighlightType:I

    .line 474
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mNormalBackground:Lcom/sec/android/glview/TwGLTexture;

    if-eqz v0, :cond_8

    .line 475
    new-instance v0, Lcom/sec/android/glview/TwGLFillRectangle;

    const/4 v2, 0x0

    const/4 v3, 0x0

    iget-object v1, p0, Lcom/sec/android/glview/TwGLButton;->mNormalBackground:Lcom/sec/android/glview/TwGLTexture;

    invoke-virtual {v1}, Lcom/sec/android/glview/TwGLTexture;->getWidth()F

    move-result v4

    iget-object v1, p0, Lcom/sec/android/glview/TwGLButton;->mNormalBackground:Lcom/sec/android/glview/TwGLTexture;

    invoke-virtual {v1}, Lcom/sec/android/glview/TwGLTexture;->getHeight()F

    move-result v5

    move-object v1, p1

    move v6, p7

    invoke-direct/range {v0 .. v6}, Lcom/sec/android/glview/TwGLFillRectangle;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFI)V

    iput-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mHighlight:Lcom/sec/android/glview/TwGLTexture;

    .line 480
    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mNormalBackground:Lcom/sec/android/glview/TwGLTexture;

    if-eqz v0, :cond_4

    .line 481
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mNormalBackground:Lcom/sec/android/glview/TwGLTexture;

    iput-object p0, v0, Lcom/sec/android/glview/TwGLView;->mParent:Lcom/sec/android/glview/TwGLView;

    .line 482
    :cond_4
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mPressedBackground:Lcom/sec/android/glview/TwGLTexture;

    if-eqz v0, :cond_5

    .line 483
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mPressedBackground:Lcom/sec/android/glview/TwGLTexture;

    iput-object p0, v0, Lcom/sec/android/glview/TwGLView;->mParent:Lcom/sec/android/glview/TwGLView;

    .line 484
    :cond_5
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mDimBackground:Lcom/sec/android/glview/TwGLTexture;

    if-eqz v0, :cond_6

    .line 485
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mDimBackground:Lcom/sec/android/glview/TwGLTexture;

    iput-object p0, v0, Lcom/sec/android/glview/TwGLView;->mParent:Lcom/sec/android/glview/TwGLView;

    .line 486
    :cond_6
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mHighlight:Lcom/sec/android/glview/TwGLTexture;

    if-eqz v0, :cond_7

    .line 487
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mHighlight:Lcom/sec/android/glview/TwGLTexture;

    iput-object p0, v0, Lcom/sec/android/glview/TwGLView;->mParent:Lcom/sec/android/glview/TwGLView;

    .line 488
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/glview/TwGLButton;->mShowHighlight:Z

    .line 491
    :cond_7
    iput p4, p0, Lcom/sec/android/glview/TwGLButton;->mNormalId:I

    .line 492
    iput p5, p0, Lcom/sec/android/glview/TwGLButton;->mPressedId:I

    .line 493
    iput p6, p0, Lcom/sec/android/glview/TwGLButton;->mDimId:I

    .line 494
    iput p7, p0, Lcom/sec/android/glview/TwGLButton;->mHighlightId:I

    .line 495
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sec/android/glview/TwGLButton;->setFocusable(Z)V

    .line 496
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sec/android/glview/TwGLButton;->setClickable(Z)V

    .line 497
    return-void

    .line 477
    :cond_8
    new-instance v0, Lcom/sec/android/glview/TwGLFillRectangle;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p1

    move v6, p7

    invoke-direct/range {v0 .. v6}, Lcom/sec/android/glview/TwGLFillRectangle;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFI)V

    iput-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mHighlight:Lcom/sec/android/glview/TwGLTexture;

    goto :goto_0
.end method

.method public constructor <init>(Lcom/sec/android/glview/TwGLContext;FFLjava/lang/String;)V
    .locals 4
    .parameter "glContext"
    .parameter "left"
    .parameter "top"
    .parameter "imagePath"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 167
    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/glview/TwGLView;-><init>(Lcom/sec/android/glview/TwGLContext;FF)V

    .line 63
    iput v2, p0, Lcom/sec/android/glview/TwGLButton;->mButtonWidth:F

    .line 66
    iput v2, p0, Lcom/sec/android/glview/TwGLButton;->mButtonHeight:F

    .line 69
    iput-boolean v1, p0, Lcom/sec/android/glview/TwGLButton;->mPressed:Z

    .line 72
    iput-boolean v1, p0, Lcom/sec/android/glview/TwGLButton;->mDim:Z

    .line 75
    iput-boolean v1, p0, Lcom/sec/android/glview/TwGLButton;->mMute:Z

    .line 78
    iput-boolean v1, p0, Lcom/sec/android/glview/TwGLButton;->mShowText:Z

    .line 81
    iput-boolean v1, p0, Lcom/sec/android/glview/TwGLButton;->mShowHighlight:Z

    .line 83
    iput-boolean v1, p0, Lcom/sec/android/glview/TwGLButton;->mDrawHighlight:Z

    .line 89
    sget v0, Lcom/sec/android/glview/TwGLButton;->HIGHLIGHTTYPE_NONE:I

    iput v0, p0, Lcom/sec/android/glview/TwGLButton;->mHighlightType:I

    .line 98
    iput v2, p0, Lcom/sec/android/glview/TwGLButton;->mResourceOffsetX:F

    .line 101
    iput v2, p0, Lcom/sec/android/glview/TwGLButton;->mResourceOffsetY:F

    .line 103
    iput-boolean v1, p0, Lcom/sec/android/glview/TwGLButton;->mIsNinePatchButton:Z

    .line 105
    iput-boolean v1, p0, Lcom/sec/android/glview/TwGLButton;->mHighlightFadeOut:Z

    .line 107
    new-instance v0, Lcom/sec/android/glview/TwGLButton$1;

    invoke-direct {v0, p0}, Lcom/sec/android/glview/TwGLButton$1;-><init>(Lcom/sec/android/glview/TwGLButton;)V

    iput-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mOnHighlightAnimationEventListener:Lcom/sec/android/glview/TwGLView$OnAnimationEventListener;

    .line 117
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mOnHighlightChangedListener:Lcom/sec/android/glview/TwGLButton$OnButtonHighlightChangedListener;

    .line 119
    new-instance v0, Lcom/sec/android/glview/TwGLButton$2;

    invoke-direct {v0, p0}, Lcom/sec/android/glview/TwGLButton$2;-><init>(Lcom/sec/android/glview/TwGLButton;)V

    iput-object v0, p0, Lcom/sec/android/glview/TwGLButton;->setDrawHighlight:Ljava/lang/Runnable;

    .line 169
    if-eqz p4, :cond_0

    .line 170
    new-instance v0, Lcom/sec/android/glview/TwGLFileTexture;

    invoke-direct {v0, p1, v2, v2, p4}, Lcom/sec/android/glview/TwGLFileTexture;-><init>(Lcom/sec/android/glview/TwGLContext;FFLjava/lang/String;)V

    iput-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mNormalBackground:Lcom/sec/android/glview/TwGLTexture;

    .line 171
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mNormalBackground:Lcom/sec/android/glview/TwGLTexture;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLTexture;->getWidth()F

    move-result v0

    iput v0, p0, Lcom/sec/android/glview/TwGLButton;->mButtonWidth:F

    .line 172
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mNormalBackground:Lcom/sec/android/glview/TwGLTexture;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLTexture;->getHeight()F

    move-result v0

    iput v0, p0, Lcom/sec/android/glview/TwGLButton;->mButtonHeight:F

    .line 175
    :cond_0
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mNormalBackground:Lcom/sec/android/glview/TwGLTexture;

    if-eqz v0, :cond_1

    .line 176
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mNormalBackground:Lcom/sec/android/glview/TwGLTexture;

    iput-object p0, v0, Lcom/sec/android/glview/TwGLView;->mParent:Lcom/sec/android/glview/TwGLView;

    .line 178
    :cond_1
    iput-object p4, p0, Lcom/sec/android/glview/TwGLButton;->mImagePath:Ljava/lang/String;

    .line 179
    invoke-virtual {p0, v3}, Lcom/sec/android/glview/TwGLButton;->setFocusable(Z)V

    .line 180
    invoke-virtual {p0, v3}, Lcom/sec/android/glview/TwGLButton;->setClickable(Z)V

    .line 181
    return-void
.end method

.method public constructor <init>(Lcom/sec/android/glview/TwGLContext;FF[B)V
    .locals 4
    .parameter "glContext"
    .parameter "left"
    .parameter "top"
    .parameter "image"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 242
    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/glview/TwGLView;-><init>(Lcom/sec/android/glview/TwGLContext;FF)V

    .line 63
    iput v2, p0, Lcom/sec/android/glview/TwGLButton;->mButtonWidth:F

    .line 66
    iput v2, p0, Lcom/sec/android/glview/TwGLButton;->mButtonHeight:F

    .line 69
    iput-boolean v1, p0, Lcom/sec/android/glview/TwGLButton;->mPressed:Z

    .line 72
    iput-boolean v1, p0, Lcom/sec/android/glview/TwGLButton;->mDim:Z

    .line 75
    iput-boolean v1, p0, Lcom/sec/android/glview/TwGLButton;->mMute:Z

    .line 78
    iput-boolean v1, p0, Lcom/sec/android/glview/TwGLButton;->mShowText:Z

    .line 81
    iput-boolean v1, p0, Lcom/sec/android/glview/TwGLButton;->mShowHighlight:Z

    .line 83
    iput-boolean v1, p0, Lcom/sec/android/glview/TwGLButton;->mDrawHighlight:Z

    .line 89
    sget v0, Lcom/sec/android/glview/TwGLButton;->HIGHLIGHTTYPE_NONE:I

    iput v0, p0, Lcom/sec/android/glview/TwGLButton;->mHighlightType:I

    .line 98
    iput v2, p0, Lcom/sec/android/glview/TwGLButton;->mResourceOffsetX:F

    .line 101
    iput v2, p0, Lcom/sec/android/glview/TwGLButton;->mResourceOffsetY:F

    .line 103
    iput-boolean v1, p0, Lcom/sec/android/glview/TwGLButton;->mIsNinePatchButton:Z

    .line 105
    iput-boolean v1, p0, Lcom/sec/android/glview/TwGLButton;->mHighlightFadeOut:Z

    .line 107
    new-instance v0, Lcom/sec/android/glview/TwGLButton$1;

    invoke-direct {v0, p0}, Lcom/sec/android/glview/TwGLButton$1;-><init>(Lcom/sec/android/glview/TwGLButton;)V

    iput-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mOnHighlightAnimationEventListener:Lcom/sec/android/glview/TwGLView$OnAnimationEventListener;

    .line 117
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mOnHighlightChangedListener:Lcom/sec/android/glview/TwGLButton$OnButtonHighlightChangedListener;

    .line 119
    new-instance v0, Lcom/sec/android/glview/TwGLButton$2;

    invoke-direct {v0, p0}, Lcom/sec/android/glview/TwGLButton$2;-><init>(Lcom/sec/android/glview/TwGLButton;)V

    iput-object v0, p0, Lcom/sec/android/glview/TwGLButton;->setDrawHighlight:Ljava/lang/Runnable;

    .line 244
    if-eqz p4, :cond_0

    .line 245
    new-instance v0, Lcom/sec/android/glview/TwGLByteArrayTexture;

    invoke-direct {v0, p1, v2, v2, p4}, Lcom/sec/android/glview/TwGLByteArrayTexture;-><init>(Lcom/sec/android/glview/TwGLContext;FF[B)V

    iput-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mNormalBackground:Lcom/sec/android/glview/TwGLTexture;

    .line 246
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mNormalBackground:Lcom/sec/android/glview/TwGLTexture;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLTexture;->getWidth()F

    move-result v0

    iput v0, p0, Lcom/sec/android/glview/TwGLButton;->mButtonWidth:F

    .line 247
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mNormalBackground:Lcom/sec/android/glview/TwGLTexture;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLTexture;->getHeight()F

    move-result v0

    iput v0, p0, Lcom/sec/android/glview/TwGLButton;->mButtonHeight:F

    .line 250
    :cond_0
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mNormalBackground:Lcom/sec/android/glview/TwGLTexture;

    if-eqz v0, :cond_1

    .line 251
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mNormalBackground:Lcom/sec/android/glview/TwGLTexture;

    iput-object p0, v0, Lcom/sec/android/glview/TwGLView;->mParent:Lcom/sec/android/glview/TwGLView;

    .line 253
    :cond_1
    iput-object p4, p0, Lcom/sec/android/glview/TwGLButton;->mImageData:[B

    .line 254
    invoke-virtual {p0, v3}, Lcom/sec/android/glview/TwGLButton;->setFocusable(Z)V

    .line 255
    invoke-virtual {p0, v3}, Lcom/sec/android/glview/TwGLButton;->setClickable(Z)V

    .line 256
    return-void
.end method

.method public constructor <init>(Lcom/sec/android/glview/TwGLContext;IIII)V
    .locals 8
    .parameter "glContext"
    .parameter "normalId"
    .parameter "pressedId"
    .parameter "dimmedId"
    .parameter "npHighlightId"

    .prologue
    const/4 v7, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 295
    invoke-direct {p0, p1, v2, v2}, Lcom/sec/android/glview/TwGLView;-><init>(Lcom/sec/android/glview/TwGLContext;FF)V

    .line 63
    iput v2, p0, Lcom/sec/android/glview/TwGLButton;->mButtonWidth:F

    .line 66
    iput v2, p0, Lcom/sec/android/glview/TwGLButton;->mButtonHeight:F

    .line 69
    iput-boolean v1, p0, Lcom/sec/android/glview/TwGLButton;->mPressed:Z

    .line 72
    iput-boolean v1, p0, Lcom/sec/android/glview/TwGLButton;->mDim:Z

    .line 75
    iput-boolean v1, p0, Lcom/sec/android/glview/TwGLButton;->mMute:Z

    .line 78
    iput-boolean v1, p0, Lcom/sec/android/glview/TwGLButton;->mShowText:Z

    .line 81
    iput-boolean v1, p0, Lcom/sec/android/glview/TwGLButton;->mShowHighlight:Z

    .line 83
    iput-boolean v1, p0, Lcom/sec/android/glview/TwGLButton;->mDrawHighlight:Z

    .line 89
    sget v0, Lcom/sec/android/glview/TwGLButton;->HIGHLIGHTTYPE_NONE:I

    iput v0, p0, Lcom/sec/android/glview/TwGLButton;->mHighlightType:I

    .line 98
    iput v2, p0, Lcom/sec/android/glview/TwGLButton;->mResourceOffsetX:F

    .line 101
    iput v2, p0, Lcom/sec/android/glview/TwGLButton;->mResourceOffsetY:F

    .line 103
    iput-boolean v1, p0, Lcom/sec/android/glview/TwGLButton;->mIsNinePatchButton:Z

    .line 105
    iput-boolean v1, p0, Lcom/sec/android/glview/TwGLButton;->mHighlightFadeOut:Z

    .line 107
    new-instance v0, Lcom/sec/android/glview/TwGLButton$1;

    invoke-direct {v0, p0}, Lcom/sec/android/glview/TwGLButton$1;-><init>(Lcom/sec/android/glview/TwGLButton;)V

    iput-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mOnHighlightAnimationEventListener:Lcom/sec/android/glview/TwGLView$OnAnimationEventListener;

    .line 117
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mOnHighlightChangedListener:Lcom/sec/android/glview/TwGLButton$OnButtonHighlightChangedListener;

    .line 119
    new-instance v0, Lcom/sec/android/glview/TwGLButton$2;

    invoke-direct {v0, p0}, Lcom/sec/android/glview/TwGLButton$2;-><init>(Lcom/sec/android/glview/TwGLButton;)V

    iput-object v0, p0, Lcom/sec/android/glview/TwGLButton;->setDrawHighlight:Ljava/lang/Runnable;

    .line 297
    if-eqz p2, :cond_0

    .line 298
    new-instance v0, Lcom/sec/android/glview/TwGLResourceTexture;

    invoke-direct {v0, p1, v2, v2, p2}, Lcom/sec/android/glview/TwGLResourceTexture;-><init>(Lcom/sec/android/glview/TwGLContext;FFI)V

    iput-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mNormalBackground:Lcom/sec/android/glview/TwGLTexture;

    .line 299
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mNormalBackground:Lcom/sec/android/glview/TwGLTexture;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLTexture;->getWidth()F

    move-result v0

    iput v0, p0, Lcom/sec/android/glview/TwGLButton;->mButtonWidth:F

    .line 300
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mNormalBackground:Lcom/sec/android/glview/TwGLTexture;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLTexture;->getHeight()F

    move-result v0

    iput v0, p0, Lcom/sec/android/glview/TwGLButton;->mButtonHeight:F

    .line 302
    :cond_0
    if-eqz p3, :cond_1

    .line 303
    new-instance v0, Lcom/sec/android/glview/TwGLResourceTexture;

    invoke-direct {v0, p1, v2, v2, p3}, Lcom/sec/android/glview/TwGLResourceTexture;-><init>(Lcom/sec/android/glview/TwGLContext;FFI)V

    iput-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mPressedBackground:Lcom/sec/android/glview/TwGLTexture;

    .line 304
    :cond_1
    if-eqz p4, :cond_2

    .line 305
    new-instance v0, Lcom/sec/android/glview/TwGLResourceTexture;

    invoke-direct {v0, p1, v2, v2, p4}, Lcom/sec/android/glview/TwGLResourceTexture;-><init>(Lcom/sec/android/glview/TwGLContext;FFI)V

    iput-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mDimBackground:Lcom/sec/android/glview/TwGLTexture;

    .line 306
    :cond_2
    if-eqz p5, :cond_3

    .line 307
    sget v0, Lcom/sec/android/glview/TwGLButton;->HIGHLIGHTTYPE_RESOURCE:I

    iput v0, p0, Lcom/sec/android/glview/TwGLButton;->mHighlightType:I

    .line 308
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mNormalBackground:Lcom/sec/android/glview/TwGLTexture;

    if-eqz v0, :cond_8

    .line 309
    new-instance v0, Lcom/sec/android/glview/TwGLNinePatchTexture;

    iget-object v1, p0, Lcom/sec/android/glview/TwGLButton;->mNormalBackground:Lcom/sec/android/glview/TwGLTexture;

    invoke-virtual {v1}, Lcom/sec/android/glview/TwGLTexture;->getWidth()F

    move-result v4

    iget-object v1, p0, Lcom/sec/android/glview/TwGLButton;->mNormalBackground:Lcom/sec/android/glview/TwGLTexture;

    invoke-virtual {v1}, Lcom/sec/android/glview/TwGLTexture;->getHeight()F

    move-result v5

    move-object v1, p1

    move v3, v2

    move v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/sec/android/glview/TwGLNinePatchTexture;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFI)V

    iput-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mHighlight:Lcom/sec/android/glview/TwGLTexture;

    .line 314
    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mNormalBackground:Lcom/sec/android/glview/TwGLTexture;

    if-eqz v0, :cond_4

    .line 315
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mNormalBackground:Lcom/sec/android/glview/TwGLTexture;

    iput-object p0, v0, Lcom/sec/android/glview/TwGLView;->mParent:Lcom/sec/android/glview/TwGLView;

    .line 316
    :cond_4
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mPressedBackground:Lcom/sec/android/glview/TwGLTexture;

    if-eqz v0, :cond_5

    .line 317
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mPressedBackground:Lcom/sec/android/glview/TwGLTexture;

    iput-object p0, v0, Lcom/sec/android/glview/TwGLView;->mParent:Lcom/sec/android/glview/TwGLView;

    .line 318
    :cond_5
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mDimBackground:Lcom/sec/android/glview/TwGLTexture;

    if-eqz v0, :cond_6

    .line 319
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mDimBackground:Lcom/sec/android/glview/TwGLTexture;

    iput-object p0, v0, Lcom/sec/android/glview/TwGLView;->mParent:Lcom/sec/android/glview/TwGLView;

    .line 320
    :cond_6
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mHighlight:Lcom/sec/android/glview/TwGLTexture;

    if-eqz v0, :cond_7

    .line 321
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mHighlight:Lcom/sec/android/glview/TwGLTexture;

    iput-object p0, v0, Lcom/sec/android/glview/TwGLView;->mParent:Lcom/sec/android/glview/TwGLView;

    .line 322
    iput-boolean v7, p0, Lcom/sec/android/glview/TwGLButton;->mShowHighlight:Z

    .line 325
    :cond_7
    iput p2, p0, Lcom/sec/android/glview/TwGLButton;->mNormalId:I

    .line 326
    iput p3, p0, Lcom/sec/android/glview/TwGLButton;->mPressedId:I

    .line 327
    iput p4, p0, Lcom/sec/android/glview/TwGLButton;->mDimId:I

    .line 328
    iput p5, p0, Lcom/sec/android/glview/TwGLButton;->mHighlightId:I

    .line 329
    invoke-virtual {p0, v7}, Lcom/sec/android/glview/TwGLButton;->setFocusable(Z)V

    .line 330
    invoke-virtual {p0, v7}, Lcom/sec/android/glview/TwGLButton;->setClickable(Z)V

    .line 331
    return-void

    .line 311
    :cond_8
    new-instance v0, Lcom/sec/android/glview/TwGLNinePatchTexture;

    move-object v1, p1

    move v3, v2

    move v4, v2

    move v5, v2

    move v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/sec/android/glview/TwGLNinePatchTexture;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFI)V

    iput-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mHighlight:Lcom/sec/android/glview/TwGLTexture;

    goto :goto_0
.end method

.method public constructor <init>(Lcom/sec/android/glview/TwGLContext;Ljava/lang/String;)V
    .locals 4
    .parameter "glContext"
    .parameter "imagePath"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 144
    invoke-direct {p0, p1, v1, v1}, Lcom/sec/android/glview/TwGLView;-><init>(Lcom/sec/android/glview/TwGLContext;FF)V

    .line 63
    iput v1, p0, Lcom/sec/android/glview/TwGLButton;->mButtonWidth:F

    .line 66
    iput v1, p0, Lcom/sec/android/glview/TwGLButton;->mButtonHeight:F

    .line 69
    iput-boolean v2, p0, Lcom/sec/android/glview/TwGLButton;->mPressed:Z

    .line 72
    iput-boolean v2, p0, Lcom/sec/android/glview/TwGLButton;->mDim:Z

    .line 75
    iput-boolean v2, p0, Lcom/sec/android/glview/TwGLButton;->mMute:Z

    .line 78
    iput-boolean v2, p0, Lcom/sec/android/glview/TwGLButton;->mShowText:Z

    .line 81
    iput-boolean v2, p0, Lcom/sec/android/glview/TwGLButton;->mShowHighlight:Z

    .line 83
    iput-boolean v2, p0, Lcom/sec/android/glview/TwGLButton;->mDrawHighlight:Z

    .line 89
    sget v0, Lcom/sec/android/glview/TwGLButton;->HIGHLIGHTTYPE_NONE:I

    iput v0, p0, Lcom/sec/android/glview/TwGLButton;->mHighlightType:I

    .line 98
    iput v1, p0, Lcom/sec/android/glview/TwGLButton;->mResourceOffsetX:F

    .line 101
    iput v1, p0, Lcom/sec/android/glview/TwGLButton;->mResourceOffsetY:F

    .line 103
    iput-boolean v2, p0, Lcom/sec/android/glview/TwGLButton;->mIsNinePatchButton:Z

    .line 105
    iput-boolean v2, p0, Lcom/sec/android/glview/TwGLButton;->mHighlightFadeOut:Z

    .line 107
    new-instance v0, Lcom/sec/android/glview/TwGLButton$1;

    invoke-direct {v0, p0}, Lcom/sec/android/glview/TwGLButton$1;-><init>(Lcom/sec/android/glview/TwGLButton;)V

    iput-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mOnHighlightAnimationEventListener:Lcom/sec/android/glview/TwGLView$OnAnimationEventListener;

    .line 117
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mOnHighlightChangedListener:Lcom/sec/android/glview/TwGLButton$OnButtonHighlightChangedListener;

    .line 119
    new-instance v0, Lcom/sec/android/glview/TwGLButton$2;

    invoke-direct {v0, p0}, Lcom/sec/android/glview/TwGLButton$2;-><init>(Lcom/sec/android/glview/TwGLButton;)V

    iput-object v0, p0, Lcom/sec/android/glview/TwGLButton;->setDrawHighlight:Ljava/lang/Runnable;

    .line 146
    if-eqz p2, :cond_0

    .line 147
    new-instance v0, Lcom/sec/android/glview/TwGLFileTexture;

    invoke-direct {v0, p1, v1, v1, p2}, Lcom/sec/android/glview/TwGLFileTexture;-><init>(Lcom/sec/android/glview/TwGLContext;FFLjava/lang/String;)V

    iput-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mNormalBackground:Lcom/sec/android/glview/TwGLTexture;

    .line 148
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mNormalBackground:Lcom/sec/android/glview/TwGLTexture;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLTexture;->getWidth()F

    move-result v0

    iput v0, p0, Lcom/sec/android/glview/TwGLButton;->mButtonWidth:F

    .line 149
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mNormalBackground:Lcom/sec/android/glview/TwGLTexture;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLTexture;->getHeight()F

    move-result v0

    iput v0, p0, Lcom/sec/android/glview/TwGLButton;->mButtonHeight:F

    .line 152
    :cond_0
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mNormalBackground:Lcom/sec/android/glview/TwGLTexture;

    if-eqz v0, :cond_1

    .line 153
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mNormalBackground:Lcom/sec/android/glview/TwGLTexture;

    iput-object p0, v0, Lcom/sec/android/glview/TwGLView;->mParent:Lcom/sec/android/glview/TwGLView;

    .line 154
    :cond_1
    invoke-virtual {p0, v3}, Lcom/sec/android/glview/TwGLButton;->setFocusable(Z)V

    .line 155
    invoke-virtual {p0, v3}, Lcom/sec/android/glview/TwGLButton;->setClickable(Z)V

    .line 156
    return-void
.end method

.method public constructor <init>(Lcom/sec/android/glview/TwGLContext;[B)V
    .locals 4
    .parameter "glContext"
    .parameter "image"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 217
    invoke-direct {p0, p1, v1, v1}, Lcom/sec/android/glview/TwGLView;-><init>(Lcom/sec/android/glview/TwGLContext;FF)V

    .line 63
    iput v1, p0, Lcom/sec/android/glview/TwGLButton;->mButtonWidth:F

    .line 66
    iput v1, p0, Lcom/sec/android/glview/TwGLButton;->mButtonHeight:F

    .line 69
    iput-boolean v2, p0, Lcom/sec/android/glview/TwGLButton;->mPressed:Z

    .line 72
    iput-boolean v2, p0, Lcom/sec/android/glview/TwGLButton;->mDim:Z

    .line 75
    iput-boolean v2, p0, Lcom/sec/android/glview/TwGLButton;->mMute:Z

    .line 78
    iput-boolean v2, p0, Lcom/sec/android/glview/TwGLButton;->mShowText:Z

    .line 81
    iput-boolean v2, p0, Lcom/sec/android/glview/TwGLButton;->mShowHighlight:Z

    .line 83
    iput-boolean v2, p0, Lcom/sec/android/glview/TwGLButton;->mDrawHighlight:Z

    .line 89
    sget v0, Lcom/sec/android/glview/TwGLButton;->HIGHLIGHTTYPE_NONE:I

    iput v0, p0, Lcom/sec/android/glview/TwGLButton;->mHighlightType:I

    .line 98
    iput v1, p0, Lcom/sec/android/glview/TwGLButton;->mResourceOffsetX:F

    .line 101
    iput v1, p0, Lcom/sec/android/glview/TwGLButton;->mResourceOffsetY:F

    .line 103
    iput-boolean v2, p0, Lcom/sec/android/glview/TwGLButton;->mIsNinePatchButton:Z

    .line 105
    iput-boolean v2, p0, Lcom/sec/android/glview/TwGLButton;->mHighlightFadeOut:Z

    .line 107
    new-instance v0, Lcom/sec/android/glview/TwGLButton$1;

    invoke-direct {v0, p0}, Lcom/sec/android/glview/TwGLButton$1;-><init>(Lcom/sec/android/glview/TwGLButton;)V

    iput-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mOnHighlightAnimationEventListener:Lcom/sec/android/glview/TwGLView$OnAnimationEventListener;

    .line 117
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mOnHighlightChangedListener:Lcom/sec/android/glview/TwGLButton$OnButtonHighlightChangedListener;

    .line 119
    new-instance v0, Lcom/sec/android/glview/TwGLButton$2;

    invoke-direct {v0, p0}, Lcom/sec/android/glview/TwGLButton$2;-><init>(Lcom/sec/android/glview/TwGLButton;)V

    iput-object v0, p0, Lcom/sec/android/glview/TwGLButton;->setDrawHighlight:Ljava/lang/Runnable;

    .line 219
    if-eqz p2, :cond_0

    .line 220
    new-instance v0, Lcom/sec/android/glview/TwGLByteArrayTexture;

    invoke-direct {v0, p1, v1, v1, p2}, Lcom/sec/android/glview/TwGLByteArrayTexture;-><init>(Lcom/sec/android/glview/TwGLContext;FF[B)V

    iput-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mNormalBackground:Lcom/sec/android/glview/TwGLTexture;

    .line 221
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mNormalBackground:Lcom/sec/android/glview/TwGLTexture;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLTexture;->getWidth()F

    move-result v0

    iput v0, p0, Lcom/sec/android/glview/TwGLButton;->mButtonWidth:F

    .line 222
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mNormalBackground:Lcom/sec/android/glview/TwGLTexture;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLTexture;->getHeight()F

    move-result v0

    iput v0, p0, Lcom/sec/android/glview/TwGLButton;->mButtonHeight:F

    .line 225
    :cond_0
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mNormalBackground:Lcom/sec/android/glview/TwGLTexture;

    if-eqz v0, :cond_1

    .line 226
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mNormalBackground:Lcom/sec/android/glview/TwGLTexture;

    iput-object p0, v0, Lcom/sec/android/glview/TwGLView;->mParent:Lcom/sec/android/glview/TwGLView;

    .line 228
    :cond_1
    iput-object p2, p0, Lcom/sec/android/glview/TwGLButton;->mImageData:[B

    .line 229
    invoke-virtual {p0, v3}, Lcom/sec/android/glview/TwGLButton;->setFocusable(Z)V

    .line 230
    invoke-virtual {p0, v3}, Lcom/sec/android/glview/TwGLButton;->setClickable(Z)V

    .line 231
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 715
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mNormalBackground:Lcom/sec/android/glview/TwGLTexture;

    if-eqz v0, :cond_0

    .line 716
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mNormalBackground:Lcom/sec/android/glview/TwGLTexture;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLTexture;->clear()V

    .line 717
    iput-object v1, p0, Lcom/sec/android/glview/TwGLButton;->mNormalBackground:Lcom/sec/android/glview/TwGLTexture;

    .line 719
    :cond_0
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mPressedBackground:Lcom/sec/android/glview/TwGLTexture;

    if-eqz v0, :cond_1

    .line 720
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mPressedBackground:Lcom/sec/android/glview/TwGLTexture;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLTexture;->clear()V

    .line 721
    iput-object v1, p0, Lcom/sec/android/glview/TwGLButton;->mPressedBackground:Lcom/sec/android/glview/TwGLTexture;

    .line 723
    :cond_1
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mDimBackground:Lcom/sec/android/glview/TwGLTexture;

    if-eqz v0, :cond_2

    .line 724
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mDimBackground:Lcom/sec/android/glview/TwGLTexture;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLTexture;->clear()V

    .line 725
    iput-object v1, p0, Lcom/sec/android/glview/TwGLButton;->mDimBackground:Lcom/sec/android/glview/TwGLTexture;

    .line 727
    :cond_2
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mHighlight:Lcom/sec/android/glview/TwGLTexture;

    if-eqz v0, :cond_3

    .line 728
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mHighlight:Lcom/sec/android/glview/TwGLTexture;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLTexture;->clear()V

    .line 729
    iput-object v1, p0, Lcom/sec/android/glview/TwGLButton;->mHighlight:Lcom/sec/android/glview/TwGLTexture;

    .line 731
    :cond_3
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mText:Lcom/sec/android/glview/TwGLText;

    if-eqz v0, :cond_4

    .line 732
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLText;->clear()V

    .line 733
    iput-object v1, p0, Lcom/sec/android/glview/TwGLButton;->mText:Lcom/sec/android/glview/TwGLText;

    .line 735
    :cond_4
    iput-object v1, p0, Lcom/sec/android/glview/TwGLButton;->mImageData:[B

    .line 736
    invoke-super {p0}, Lcom/sec/android/glview/TwGLView;->clear()V

    .line 737
    return-void
.end method

.method protected getHoverPopupWindow()Lcom/sec/android/glview/HoverPopupWindow;
    .locals 3

    .prologue
    const/4 v0, 0x0

    const/4 v2, 0x1

    .line 1257
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLButton;->getTitle()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/sec/android/glview/TwGLView;->mHasExtraDescription:Z

    if-ne v1, v2, :cond_1

    .line 1273
    :cond_0
    :goto_0
    return-object v0

    .line 1260
    :cond_1
    iget-boolean v1, p0, Lcom/sec/android/glview/TwGLButton;->mShowText:Z

    if-eq v1, v2, :cond_0

    .line 1263
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mHoverPopup:Lcom/sec/android/glview/HoverPopupWindow;

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mGLContext:Lcom/sec/android/glview/TwGLContext;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLContext;->getHoverBaseView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 1264
    new-instance v0, Lcom/sec/android/glview/HoverPopupWindow;

    iget-object v1, p0, Lcom/sec/android/glview/TwGLView;->mGLContext:Lcom/sec/android/glview/TwGLContext;

    invoke-virtual {v1}, Lcom/sec/android/glview/TwGLContext;->getHoverBaseView()Landroid/view/View;

    move-result-object v1

    invoke-direct {v0, v1, p0, v2}, Lcom/sec/android/glview/HoverPopupWindow;-><init>(Landroid/view/View;Lcom/sec/android/glview/TwGLView;I)V

    iput-object v0, p0, Lcom/sec/android/glview/TwGLView;->mHoverPopup:Lcom/sec/android/glview/HoverPopupWindow;

    .line 1266
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mHoverPopup:Lcom/sec/android/glview/HoverPopupWindow;

    if-eqz v0, :cond_2

    .line 1267
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mHoverPopup:Lcom/sec/android/glview/HoverPopupWindow;

    iget v1, p0, Lcom/sec/android/glview/TwGLView;->mHoverPopupGravity:I

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/HoverPopupWindow;->setPopupGravity(I)V

    .line 1268
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mHoverPopup:Lcom/sec/android/glview/HoverPopupWindow;

    iget v1, p0, Lcom/sec/android/glview/TwGLView;->mHoverPopupOffsetX:I

    iget v2, p0, Lcom/sec/android/glview/TwGLView;->mHoverPopupOffsetY:I

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/HoverPopupWindow;->setPopupPosOffset(II)V

    .line 1269
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mHoverPopup:Lcom/sec/android/glview/HoverPopupWindow;

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLButton;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/HoverPopupWindow;->setContent(Ljava/lang/CharSequence;)V

    .line 1273
    :cond_2
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mHoverPopup:Lcom/sec/android/glview/HoverPopupWindow;

    goto :goto_0
.end method

.method public getLoaded(Ljavax/microedition/khronos/opengles/GL11;)Z
    .locals 2
    .parameter "gl"

    .prologue
    .line 768
    const/4 v0, 0x1

    .line 769
    .local v0, ret:Z
    iget-object v1, p0, Lcom/sec/android/glview/TwGLButton;->mNormalBackground:Lcom/sec/android/glview/TwGLTexture;

    if-eqz v1, :cond_0

    .line 770
    iget-object v1, p0, Lcom/sec/android/glview/TwGLButton;->mNormalBackground:Lcom/sec/android/glview/TwGLTexture;

    invoke-virtual {v1, p1}, Lcom/sec/android/glview/TwGLTexture;->load(Ljavax/microedition/khronos/opengles/GL11;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 771
    const/4 v0, 0x0

    .line 773
    :cond_0
    iget-object v1, p0, Lcom/sec/android/glview/TwGLButton;->mPressedBackground:Lcom/sec/android/glview/TwGLTexture;

    if-eqz v1, :cond_1

    .line 774
    iget-object v1, p0, Lcom/sec/android/glview/TwGLButton;->mPressedBackground:Lcom/sec/android/glview/TwGLTexture;

    invoke-virtual {v1, p1}, Lcom/sec/android/glview/TwGLTexture;->load(Ljavax/microedition/khronos/opengles/GL11;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 775
    const/4 v0, 0x0

    .line 777
    :cond_1
    iget-object v1, p0, Lcom/sec/android/glview/TwGLButton;->mDimBackground:Lcom/sec/android/glview/TwGLTexture;

    if-eqz v1, :cond_2

    .line 778
    iget-object v1, p0, Lcom/sec/android/glview/TwGLButton;->mDimBackground:Lcom/sec/android/glview/TwGLTexture;

    invoke-virtual {v1, p1}, Lcom/sec/android/glview/TwGLTexture;->load(Ljavax/microedition/khronos/opengles/GL11;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 779
    const/4 v0, 0x0

    .line 781
    :cond_2
    iget-object v1, p0, Lcom/sec/android/glview/TwGLButton;->mHighlight:Lcom/sec/android/glview/TwGLTexture;

    if-eqz v1, :cond_3

    .line 782
    iget-object v1, p0, Lcom/sec/android/glview/TwGLButton;->mHighlight:Lcom/sec/android/glview/TwGLTexture;

    invoke-virtual {v1, p1}, Lcom/sec/android/glview/TwGLTexture;->load(Ljavax/microedition/khronos/opengles/GL11;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 783
    const/4 v0, 0x0

    .line 785
    :cond_3
    iget-object v1, p0, Lcom/sec/android/glview/TwGLButton;->mText:Lcom/sec/android/glview/TwGLText;

    if-eqz v1, :cond_4

    .line 786
    iget-object v1, p0, Lcom/sec/android/glview/TwGLButton;->mText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v1, p1}, Lcom/sec/android/glview/TwGLText;->load(Ljavax/microedition/khronos/opengles/GL11;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 787
    const/4 v0, 0x0

    .line 790
    :cond_4
    return v0
.end method

.method public initSize()V
    .locals 3

    .prologue
    .line 1136
    const/4 v1, 0x0

    .local v1, width:F
    const/4 v0, 0x0

    .line 1138
    .local v0, height:F
    iget-object v2, p0, Lcom/sec/android/glview/TwGLButton;->mNormalBackground:Lcom/sec/android/glview/TwGLTexture;

    if-eqz v2, :cond_1

    .line 1139
    iget v2, p0, Lcom/sec/android/glview/TwGLButton;->mButtonWidth:F

    cmpl-float v2, v2, v1

    if-lez v2, :cond_0

    .line 1140
    iget v1, p0, Lcom/sec/android/glview/TwGLButton;->mButtonWidth:F

    .line 1142
    :cond_0
    iget v2, p0, Lcom/sec/android/glview/TwGLButton;->mButtonHeight:F

    cmpl-float v2, v2, v0

    if-lez v2, :cond_1

    .line 1143
    iget v0, p0, Lcom/sec/android/glview/TwGLButton;->mButtonHeight:F

    .line 1146
    :cond_1
    iget-object v2, p0, Lcom/sec/android/glview/TwGLButton;->mPressedBackground:Lcom/sec/android/glview/TwGLTexture;

    if-eqz v2, :cond_3

    .line 1147
    iget v2, p0, Lcom/sec/android/glview/TwGLButton;->mButtonWidth:F

    cmpl-float v2, v2, v1

    if-lez v2, :cond_2

    .line 1148
    iget v1, p0, Lcom/sec/android/glview/TwGLButton;->mButtonWidth:F

    .line 1150
    :cond_2
    iget v2, p0, Lcom/sec/android/glview/TwGLButton;->mButtonHeight:F

    cmpl-float v2, v2, v0

    if-lez v2, :cond_3

    .line 1151
    iget v0, p0, Lcom/sec/android/glview/TwGLButton;->mButtonHeight:F

    .line 1154
    :cond_3
    iget-object v2, p0, Lcom/sec/android/glview/TwGLButton;->mDimBackground:Lcom/sec/android/glview/TwGLTexture;

    if-eqz v2, :cond_5

    .line 1155
    iget v2, p0, Lcom/sec/android/glview/TwGLButton;->mButtonWidth:F

    cmpl-float v2, v2, v1

    if-lez v2, :cond_4

    .line 1156
    iget v1, p0, Lcom/sec/android/glview/TwGLButton;->mButtonWidth:F

    .line 1158
    :cond_4
    iget v2, p0, Lcom/sec/android/glview/TwGLButton;->mButtonHeight:F

    cmpl-float v2, v2, v0

    if-lez v2, :cond_5

    .line 1159
    iget v0, p0, Lcom/sec/android/glview/TwGLButton;->mButtonHeight:F

    .line 1162
    :cond_5
    iget-object v2, p0, Lcom/sec/android/glview/TwGLButton;->mText:Lcom/sec/android/glview/TwGLText;

    if-eqz v2, :cond_7

    .line 1163
    iget-object v2, p0, Lcom/sec/android/glview/TwGLButton;->mText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLText;->getWidth()F

    move-result v2

    cmpl-float v2, v2, v1

    if-lez v2, :cond_6

    .line 1164
    iget-object v2, p0, Lcom/sec/android/glview/TwGLButton;->mText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLText;->getWidth()F

    move-result v1

    .line 1166
    :cond_6
    iget-object v2, p0, Lcom/sec/android/glview/TwGLButton;->mText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLText;->getHeight()F

    move-result v2

    cmpl-float v2, v2, v0

    if-lez v2, :cond_7

    .line 1167
    iget-object v2, p0, Lcom/sec/android/glview/TwGLButton;->mText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLText;->getHeight()F

    move-result v0

    .line 1171
    :cond_7
    invoke-virtual {p0, v1, v0}, Lcom/sec/android/glview/TwGLButton;->setSize(FF)V

    .line 1172
    return-void
.end method

.method public isDimmed()Z
    .locals 1

    .prologue
    .line 707
    iget-boolean v0, p0, Lcom/sec/android/glview/TwGLButton;->mDim:Z

    return v0
.end method

.method public isPressed()Z
    .locals 1

    .prologue
    .line 1253
    iget-boolean v0, p0, Lcom/sec/android/glview/TwGLButton;->mPressed:Z

    return v0
.end method

.method public onAlphaUpdated()V
    .locals 1

    .prologue
    .line 845
    invoke-super {p0}, Lcom/sec/android/glview/TwGLView;->onAlphaUpdated()V

    .line 846
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mNormalBackground:Lcom/sec/android/glview/TwGLTexture;

    if-eqz v0, :cond_0

    .line 847
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mNormalBackground:Lcom/sec/android/glview/TwGLTexture;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLTexture;->onAlphaUpdated()V

    .line 849
    :cond_0
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mPressedBackground:Lcom/sec/android/glview/TwGLTexture;

    if-eqz v0, :cond_1

    .line 850
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mPressedBackground:Lcom/sec/android/glview/TwGLTexture;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLTexture;->onAlphaUpdated()V

    .line 852
    :cond_1
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mDimBackground:Lcom/sec/android/glview/TwGLTexture;

    if-eqz v0, :cond_2

    .line 853
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mDimBackground:Lcom/sec/android/glview/TwGLTexture;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLTexture;->onAlphaUpdated()V

    .line 855
    :cond_2
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mHighlight:Lcom/sec/android/glview/TwGLTexture;

    if-eqz v0, :cond_3

    .line 856
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mHighlight:Lcom/sec/android/glview/TwGLTexture;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLTexture;->onAlphaUpdated()V

    .line 858
    :cond_3
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mText:Lcom/sec/android/glview/TwGLText;

    if-eqz v0, :cond_4

    .line 859
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLText;->onAlphaUpdated()V

    .line 861
    :cond_4
    return-void
.end method

.method protected onDraw(Ljavax/microedition/khronos/opengles/GL11;)V
    .locals 3
    .parameter "gl"

    .prologue
    .line 798
    iget-boolean v0, p0, Lcom/sec/android/glview/TwGLButton;->mDim:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mDimBackground:Lcom/sec/android/glview/TwGLTexture;

    if-eqz v0, :cond_2

    .line 799
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mDimBackground:Lcom/sec/android/glview/TwGLTexture;

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLButton;->getMatrix()[F

    move-result-object v1

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLButton;->getClipRect()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v0, p1, v1, v2}, Lcom/sec/android/glview/TwGLTexture;->draw(Ljavax/microedition/khronos/opengles/GL10;[FLandroid/graphics/Rect;)V

    .line 816
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mText:Lcom/sec/android/glview/TwGLText;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/sec/android/glview/TwGLButton;->mShowText:Z

    if-eqz v0, :cond_1

    .line 817
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLButton;->getMatrix()[F

    move-result-object v1

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLButton;->getClipRect()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v0, p1, v1, v2}, Lcom/sec/android/glview/TwGLText;->draw(Ljavax/microedition/khronos/opengles/GL10;[FLandroid/graphics/Rect;)V

    .line 819
    :cond_1
    return-void

    .line 800
    :cond_2
    iget-boolean v0, p0, Lcom/sec/android/glview/TwGLButton;->mPressed:Z

    if-eqz v0, :cond_4

    .line 801
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mHighlight:Lcom/sec/android/glview/TwGLTexture;

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/sec/android/glview/TwGLButton;->mShowHighlight:Z

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/sec/android/glview/TwGLButton;->mDrawHighlight:Z

    if-eqz v0, :cond_3

    .line 802
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mHighlight:Lcom/sec/android/glview/TwGLTexture;

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLButton;->getMatrix()[F

    move-result-object v1

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLButton;->getClipRect()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v0, p1, v1, v2}, Lcom/sec/android/glview/TwGLTexture;->draw(Ljavax/microedition/khronos/opengles/GL10;[FLandroid/graphics/Rect;)V

    .line 804
    :cond_3
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mPressedBackground:Lcom/sec/android/glview/TwGLTexture;

    if-eqz v0, :cond_0

    .line 805
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mPressedBackground:Lcom/sec/android/glview/TwGLTexture;

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLButton;->getMatrix()[F

    move-result-object v1

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLButton;->getClipRect()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v0, p1, v1, v2}, Lcom/sec/android/glview/TwGLTexture;->draw(Ljavax/microedition/khronos/opengles/GL10;[FLandroid/graphics/Rect;)V

    goto :goto_0

    .line 807
    :cond_4
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mNormalBackground:Lcom/sec/android/glview/TwGLTexture;

    if-eqz v0, :cond_5

    .line 808
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mNormalBackground:Lcom/sec/android/glview/TwGLTexture;

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLButton;->getMatrix()[F

    move-result-object v1

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLButton;->getClipRect()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v0, p1, v1, v2}, Lcom/sec/android/glview/TwGLTexture;->draw(Ljavax/microedition/khronos/opengles/GL10;[FLandroid/graphics/Rect;)V

    goto :goto_0

    .line 809
    :cond_5
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mHighlight:Lcom/sec/android/glview/TwGLTexture;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/sec/android/glview/TwGLButton;->mShowHighlight:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/sec/android/glview/TwGLButton;->mDrawHighlight:Z

    if-eqz v0, :cond_0

    .line 810
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mHighlight:Lcom/sec/android/glview/TwGLTexture;

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLButton;->getMatrix()[F

    move-result-object v1

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLButton;->getClipRect()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v0, p1, v1, v2}, Lcom/sec/android/glview/TwGLTexture;->draw(Ljavax/microedition/khronos/opengles/GL10;[FLandroid/graphics/Rect;)V

    .line 811
    iget-boolean v0, p0, Lcom/sec/android/glview/TwGLButton;->mHighlightFadeOut:Z

    if-nez v0, :cond_0

    .line 812
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/glview/TwGLButton;->mDrawHighlight:Z

    goto :goto_0
.end method

.method public onFocusStatusChanged(I)V
    .locals 1
    .parameter "focusStatus"

    .prologue
    .line 968
    invoke-super {p0, p1}, Lcom/sec/android/glview/TwGLView;->onFocusStatusChanged(I)V

    .line 970
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/glview/TwGLButton;->mPressed:Z

    .line 971
    return-void
.end method

.method public onKeyDownEvent(ILandroid/view/KeyEvent;)Z
    .locals 2
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v0, 0x1

    .line 930
    sparse-switch p1, :sswitch_data_0

    .line 942
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/sec/android/glview/TwGLView;->onKeyDownEvent(ILandroid/view/KeyEvent;)Z

    move-result v0

    :cond_1
    :goto_0
    return v0

    .line 933
    :sswitch_0
    iget-boolean v1, p0, Lcom/sec/android/glview/TwGLButton;->mDim:Z

    if-nez v1, :cond_1

    .line 936
    iput-boolean v0, p0, Lcom/sec/android/glview/TwGLButton;->mPressed:Z

    .line 937
    iput-boolean v0, p0, Lcom/sec/android/glview/TwGLButton;->mDrawHighlight:Z

    .line 938
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mOnKeyListener:Lcom/sec/android/glview/TwGLView$OnKeyListener;

    if-eqz v0, :cond_0

    .line 939
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mOnKeyListener:Lcom/sec/android/glview/TwGLView$OnKeyListener;

    invoke-interface {v0, p0, p2}, Lcom/sec/android/glview/TwGLView$OnKeyListener;->onKeyDown(Lcom/sec/android/glview/TwGLView;Landroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0

    .line 930
    :sswitch_data_0
    .sparse-switch
        0x17 -> :sswitch_0
        0x42 -> :sswitch_0
    .end sparse-switch
.end method

.method public onKeyUpEvent(ILandroid/view/KeyEvent;)Z
    .locals 4
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v3, 0x0

    .line 947
    sparse-switch p1, :sswitch_data_0

    .line 963
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/sec/android/glview/TwGLView;->onKeyUpEvent(ILandroid/view/KeyEvent;)Z

    move-result v1

    :goto_0
    return v1

    .line 950
    :sswitch_0
    iget-boolean v1, p0, Lcom/sec/android/glview/TwGLButton;->mDim:Z

    if-eqz v1, :cond_1

    .line 951
    const/4 v1, 0x1

    goto :goto_0

    .line 953
    :cond_1
    iput-boolean v3, p0, Lcom/sec/android/glview/TwGLButton;->mPressed:Z

    .line 954
    iget-object v1, p0, Lcom/sec/android/glview/TwGLView;->mOnClickListener:Lcom/sec/android/glview/TwGLView$OnClickListener;

    if-eqz v1, :cond_0

    .line 955
    iget-boolean v1, p0, Lcom/sec/android/glview/TwGLButton;->mMute:Z

    if-nez v1, :cond_2

    .line 956
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLButton;->getContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/glview/TwGLContext;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "audio"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 957
    .local v0, am:Landroid/media/AudioManager;
    invoke-virtual {v0, v3}, Landroid/media/AudioManager;->playSoundEffect(I)V

    .line 959
    .end local v0           #am:Landroid/media/AudioManager;
    :cond_2
    iget-object v1, p0, Lcom/sec/android/glview/TwGLView;->mOnClickListener:Lcom/sec/android/glview/TwGLView$OnClickListener;

    invoke-interface {v1, p0}, Lcom/sec/android/glview/TwGLView$OnClickListener;->onClick(Lcom/sec/android/glview/TwGLView;)Z

    move-result v1

    goto :goto_0

    .line 947
    nop

    :sswitch_data_0
    .sparse-switch
        0x17 -> :sswitch_0
        0x42 -> :sswitch_0
    .end sparse-switch
.end method

.method public onLayoutUpdated()V
    .locals 1

    .prologue
    .line 826
    invoke-super {p0}, Lcom/sec/android/glview/TwGLView;->onLayoutUpdated()V

    .line 827
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mNormalBackground:Lcom/sec/android/glview/TwGLTexture;

    if-eqz v0, :cond_0

    .line 828
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mNormalBackground:Lcom/sec/android/glview/TwGLTexture;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLTexture;->onLayoutUpdated()V

    .line 830
    :cond_0
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mPressedBackground:Lcom/sec/android/glview/TwGLTexture;

    if-eqz v0, :cond_1

    .line 831
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mPressedBackground:Lcom/sec/android/glview/TwGLTexture;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLTexture;->onLayoutUpdated()V

    .line 833
    :cond_1
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mDimBackground:Lcom/sec/android/glview/TwGLTexture;

    if-eqz v0, :cond_2

    .line 834
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mDimBackground:Lcom/sec/android/glview/TwGLTexture;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLTexture;->onLayoutUpdated()V

    .line 836
    :cond_2
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mHighlight:Lcom/sec/android/glview/TwGLTexture;

    if-eqz v0, :cond_3

    .line 837
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mHighlight:Lcom/sec/android/glview/TwGLTexture;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLTexture;->onLayoutUpdated()V

    .line 839
    :cond_3
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mText:Lcom/sec/android/glview/TwGLText;

    if-eqz v0, :cond_4

    .line 840
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLText;->onLayoutUpdated()V

    .line 842
    :cond_4
    return-void
.end method

.method protected onLoad(Ljavax/microedition/khronos/opengles/GL11;)Z
    .locals 1
    .parameter "gl"

    .prologue
    .line 744
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mNormalBackground:Lcom/sec/android/glview/TwGLTexture;

    if-eqz v0, :cond_0

    .line 745
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mNormalBackground:Lcom/sec/android/glview/TwGLTexture;

    invoke-virtual {v0, p1}, Lcom/sec/android/glview/TwGLTexture;->load(Ljavax/microedition/khronos/opengles/GL11;)Z

    .line 747
    :cond_0
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mPressedBackground:Lcom/sec/android/glview/TwGLTexture;

    if-eqz v0, :cond_1

    .line 748
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mPressedBackground:Lcom/sec/android/glview/TwGLTexture;

    invoke-virtual {v0, p1}, Lcom/sec/android/glview/TwGLTexture;->load(Ljavax/microedition/khronos/opengles/GL11;)Z

    .line 750
    :cond_1
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mDimBackground:Lcom/sec/android/glview/TwGLTexture;

    if-eqz v0, :cond_2

    .line 751
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mDimBackground:Lcom/sec/android/glview/TwGLTexture;

    invoke-virtual {v0, p1}, Lcom/sec/android/glview/TwGLTexture;->load(Ljavax/microedition/khronos/opengles/GL11;)Z

    .line 753
    :cond_2
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mHighlight:Lcom/sec/android/glview/TwGLTexture;

    if-eqz v0, :cond_3

    .line 754
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mHighlight:Lcom/sec/android/glview/TwGLTexture;

    invoke-virtual {v0, p1}, Lcom/sec/android/glview/TwGLTexture;->load(Ljavax/microedition/khronos/opengles/GL11;)Z

    .line 756
    :cond_3
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mText:Lcom/sec/android/glview/TwGLText;

    if-eqz v0, :cond_4

    .line 757
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v0, p1}, Lcom/sec/android/glview/TwGLText;->load(Ljavax/microedition/khronos/opengles/GL11;)Z

    .line 760
    :cond_4
    const/4 v0, 0x0

    return v0
.end method

.method public onReset()V
    .locals 1

    .prologue
    .line 1231
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mDimBackground:Lcom/sec/android/glview/TwGLTexture;

    if-eqz v0, :cond_0

    .line 1232
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mDimBackground:Lcom/sec/android/glview/TwGLTexture;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLTexture;->reset()V

    .line 1234
    :cond_0
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mPressedBackground:Lcom/sec/android/glview/TwGLTexture;

    if-eqz v0, :cond_1

    .line 1235
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mPressedBackground:Lcom/sec/android/glview/TwGLTexture;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLTexture;->reset()V

    .line 1237
    :cond_1
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mHighlight:Lcom/sec/android/glview/TwGLTexture;

    if-eqz v0, :cond_2

    .line 1238
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mHighlight:Lcom/sec/android/glview/TwGLTexture;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLTexture;->reset()V

    .line 1240
    :cond_2
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mNormalBackground:Lcom/sec/android/glview/TwGLTexture;

    if-eqz v0, :cond_3

    .line 1241
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mNormalBackground:Lcom/sec/android/glview/TwGLTexture;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLTexture;->reset()V

    .line 1243
    :cond_3
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mText:Lcom/sec/android/glview/TwGLText;

    if-eqz v0, :cond_4

    .line 1244
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLText;->reset()V

    .line 1246
    :cond_4
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 9
    .parameter "e"

    .prologue
    const-wide/16 v7, 0x190

    const/4 v2, 0x1

    const/4 v6, 0x0

    .line 872
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    if-nez v3, :cond_2

    .line 873
    iget-boolean v3, p0, Lcom/sec/android/glview/TwGLButton;->mDim:Z

    if-eqz v3, :cond_1

    .line 925
    :cond_0
    :goto_0
    return v2

    .line 876
    :cond_1
    iput-boolean v2, p0, Lcom/sec/android/glview/TwGLButton;->mPressed:Z

    .line 877
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLButton;->getContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/glview/TwGLContext;->getMainHandler()Landroid/os/Handler;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/android/glview/TwGLButton;->setDrawHighlight:Ljava/lang/Runnable;

    const-wide/16 v5, 0xc8

    invoke-virtual {v3, v4, v5, v6}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 879
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    if-ne v3, v2, :cond_7

    iget-boolean v3, p0, Lcom/sec/android/glview/TwGLButton;->mPressed:Z

    if-eqz v3, :cond_7

    .line 880
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLButton;->getContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/glview/TwGLContext;->getMainHandler()Landroid/os/Handler;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/android/glview/TwGLButton;->setDrawHighlight:Ljava/lang/Runnable;

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 881
    iput-boolean v6, p0, Lcom/sec/android/glview/TwGLButton;->mPressed:Z

    .line 882
    iget-object v3, p0, Lcom/sec/android/glview/TwGLButton;->mHighlight:Lcom/sec/android/glview/TwGLTexture;

    if-eqz v3, :cond_3

    .line 883
    iput-boolean v2, p0, Lcom/sec/android/glview/TwGLButton;->mDrawHighlight:Z

    .line 884
    iget-boolean v3, p0, Lcom/sec/android/glview/TwGLButton;->mHighlightFadeOut:Z

    if-eqz v3, :cond_3

    .line 885
    invoke-static {}, Lcom/sec/android/glview/TwGLUtil;->getAlphaOffAnimation()Landroid/view/animation/Animation;

    move-result-object v1

    .line 886
    .local v1, anim:Landroid/view/animation/Animation;
    invoke-virtual {v1, v7, v8}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 887
    iget-object v3, p0, Lcom/sec/android/glview/TwGLButton;->mHighlight:Lcom/sec/android/glview/TwGLTexture;

    invoke-virtual {v3, v1, v6}, Lcom/sec/android/glview/TwGLTexture;->setAnimation(Landroid/view/animation/Animation;Z)V

    .line 888
    iget-object v3, p0, Lcom/sec/android/glview/TwGLButton;->mHighlight:Lcom/sec/android/glview/TwGLTexture;

    invoke-virtual {v3}, Lcom/sec/android/glview/TwGLTexture;->startAnimation()V

    .line 889
    iget-object v3, p0, Lcom/sec/android/glview/TwGLButton;->mHighlight:Lcom/sec/android/glview/TwGLTexture;

    iget-object v4, p0, Lcom/sec/android/glview/TwGLButton;->mOnHighlightAnimationEventListener:Lcom/sec/android/glview/TwGLView$OnAnimationEventListener;

    invoke-virtual {v3, v4}, Lcom/sec/android/glview/TwGLTexture;->setOnAnimationEventListener(Lcom/sec/android/glview/TwGLView$OnAnimationEventListener;)V

    .line 892
    .end local v1           #anim:Landroid/view/animation/Animation;
    :cond_3
    iget-object v3, p0, Lcom/sec/android/glview/TwGLView;->mOnClickListener:Lcom/sec/android/glview/TwGLView$OnClickListener;

    if-eqz v3, :cond_6

    .line 893
    iget-boolean v3, p0, Lcom/sec/android/glview/TwGLButton;->mMute:Z

    if-nez v3, :cond_4

    .line 894
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLButton;->getContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/glview/TwGLContext;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "audio"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 895
    .local v0, am:Landroid/media/AudioManager;
    invoke-virtual {v0, v6}, Landroid/media/AudioManager;->playSoundEffect(I)V

    .line 897
    .end local v0           #am:Landroid/media/AudioManager;
    :cond_4
    iget-object v3, p0, Lcom/sec/android/glview/TwGLView;->mTitle:Ljava/lang/String;

    if-eqz v3, :cond_5

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLButton;->getVisibility()I

    move-result v3

    const/4 v4, 0x4

    if-eq v3, v4, :cond_5

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLButton;->getContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/glview/TwGLContext;->isScreenReaderActive()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLButton;->getContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/glview/TwGLContext;->isTouchExplorationEnabled()Z

    move-result v3

    if-nez v3, :cond_5

    .line 898
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLButton;->getContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v3

    if-eqz v3, :cond_5

    .line 899
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLButton;->getContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/glview/TwGLContext;->getTts()Landroid/speech/tts/TextToSpeech;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/android/glview/TwGLView;->mTitle:Ljava/lang/String;

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v6, v5}, Landroid/speech/tts/TextToSpeech;->speak(Ljava/lang/String;ILjava/util/HashMap;)I

    .line 902
    :cond_5
    iget-object v3, p0, Lcom/sec/android/glview/TwGLView;->mOnClickListener:Lcom/sec/android/glview/TwGLView$OnClickListener;

    invoke-interface {v3, p0}, Lcom/sec/android/glview/TwGLView$OnClickListener;->onClick(Lcom/sec/android/glview/TwGLView;)Z

    .line 904
    :cond_6
    iget-object v3, p0, Lcom/sec/android/glview/TwGLButton;->mOnHighlightChangedListener:Lcom/sec/android/glview/TwGLButton$OnButtonHighlightChangedListener;

    if-eqz v3, :cond_0

    .line 905
    iget-object v3, p0, Lcom/sec/android/glview/TwGLButton;->mOnHighlightChangedListener:Lcom/sec/android/glview/TwGLButton$OnButtonHighlightChangedListener;

    invoke-interface {v3, v6}, Lcom/sec/android/glview/TwGLButton$OnButtonHighlightChangedListener;->onButtonHighlightChanged(Z)V

    goto/16 :goto_0

    .line 908
    :cond_7
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    const/4 v4, 0x3

    if-ne v3, v4, :cond_9

    .line 909
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLButton;->getContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/glview/TwGLContext;->getMainHandler()Landroid/os/Handler;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/android/glview/TwGLButton;->setDrawHighlight:Ljava/lang/Runnable;

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 910
    iput-boolean v6, p0, Lcom/sec/android/glview/TwGLButton;->mPressed:Z

    .line 911
    iget-object v3, p0, Lcom/sec/android/glview/TwGLButton;->mHighlight:Lcom/sec/android/glview/TwGLTexture;

    if-eqz v3, :cond_8

    .line 912
    iget-boolean v3, p0, Lcom/sec/android/glview/TwGLButton;->mHighlightFadeOut:Z

    if-eqz v3, :cond_8

    .line 913
    invoke-static {}, Lcom/sec/android/glview/TwGLUtil;->getAlphaOffAnimation()Landroid/view/animation/Animation;

    move-result-object v1

    .line 914
    .restart local v1       #anim:Landroid/view/animation/Animation;
    invoke-virtual {v1, v7, v8}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 915
    iget-object v3, p0, Lcom/sec/android/glview/TwGLButton;->mHighlight:Lcom/sec/android/glview/TwGLTexture;

    invoke-virtual {v3, v1, v6}, Lcom/sec/android/glview/TwGLTexture;->setAnimation(Landroid/view/animation/Animation;Z)V

    .line 916
    iget-object v3, p0, Lcom/sec/android/glview/TwGLButton;->mHighlight:Lcom/sec/android/glview/TwGLTexture;

    invoke-virtual {v3}, Lcom/sec/android/glview/TwGLTexture;->startAnimation()V

    .line 917
    iget-object v3, p0, Lcom/sec/android/glview/TwGLButton;->mHighlight:Lcom/sec/android/glview/TwGLTexture;

    iget-object v4, p0, Lcom/sec/android/glview/TwGLButton;->mOnHighlightAnimationEventListener:Lcom/sec/android/glview/TwGLView$OnAnimationEventListener;

    invoke-virtual {v3, v4}, Lcom/sec/android/glview/TwGLTexture;->setOnAnimationEventListener(Lcom/sec/android/glview/TwGLView$OnAnimationEventListener;)V

    .line 920
    .end local v1           #anim:Landroid/view/animation/Animation;
    :cond_8
    iget-object v3, p0, Lcom/sec/android/glview/TwGLButton;->mOnHighlightChangedListener:Lcom/sec/android/glview/TwGLButton$OnButtonHighlightChangedListener;

    if-eqz v3, :cond_0

    .line 921
    iget-object v3, p0, Lcom/sec/android/glview/TwGLButton;->mOnHighlightChangedListener:Lcom/sec/android/glview/TwGLButton$OnButtonHighlightChangedListener;

    invoke-interface {v3, v6}, Lcom/sec/android/glview/TwGLButton$OnButtonHighlightChangedListener;->onButtonHighlightChanged(Z)V

    goto/16 :goto_0

    .line 925
    :cond_9
    invoke-super {p0, p1}, Lcom/sec/android/glview/TwGLView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    goto/16 :goto_0
.end method

.method public setButtonResources(IIII)V
    .locals 9
    .parameter "normalId"
    .parameter "pressedId"
    .parameter "dimmedId"
    .parameter "npHighlightId"

    .prologue
    const/high16 v8, 0x3f80

    const v7, 0x3e4ccccd

    const/4 v2, 0x0

    .line 982
    if-eqz p1, :cond_1

    iget v0, p0, Lcom/sec/android/glview/TwGLButton;->mNormalId:I

    if-eq v0, p1, :cond_1

    .line 983
    iput p1, p0, Lcom/sec/android/glview/TwGLButton;->mNormalId:I

    .line 984
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mNormalBackground:Lcom/sec/android/glview/TwGLTexture;

    if-eqz v0, :cond_0

    .line 985
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mNormalBackground:Lcom/sec/android/glview/TwGLTexture;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLTexture;->clear()V

    .line 986
    :cond_0
    new-instance v0, Lcom/sec/android/glview/TwGLResourceTexture;

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLButton;->getContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    invoke-direct {v0, v1, v2, v2, p1}, Lcom/sec/android/glview/TwGLResourceTexture;-><init>(Lcom/sec/android/glview/TwGLContext;FFI)V

    iput-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mNormalBackground:Lcom/sec/android/glview/TwGLTexture;

    .line 988
    :cond_1
    if-eqz p2, :cond_3

    iget v0, p0, Lcom/sec/android/glview/TwGLButton;->mPressedId:I

    if-eq v0, p2, :cond_3

    .line 989
    iput p2, p0, Lcom/sec/android/glview/TwGLButton;->mPressedId:I

    .line 990
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mPressedBackground:Lcom/sec/android/glview/TwGLTexture;

    if-eqz v0, :cond_2

    .line 991
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mPressedBackground:Lcom/sec/android/glview/TwGLTexture;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLTexture;->clear()V

    .line 992
    :cond_2
    new-instance v0, Lcom/sec/android/glview/TwGLResourceTexture;

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLButton;->getContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    invoke-direct {v0, v1, v2, v2, p2}, Lcom/sec/android/glview/TwGLResourceTexture;-><init>(Lcom/sec/android/glview/TwGLContext;FFI)V

    iput-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mPressedBackground:Lcom/sec/android/glview/TwGLTexture;

    .line 994
    :cond_3
    if-eqz p3, :cond_5

    iget v0, p0, Lcom/sec/android/glview/TwGLButton;->mDimId:I

    if-eq v0, p3, :cond_5

    .line 995
    iput p3, p0, Lcom/sec/android/glview/TwGLButton;->mDimId:I

    .line 996
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mDimBackground:Lcom/sec/android/glview/TwGLTexture;

    if-eqz v0, :cond_4

    .line 997
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mDimBackground:Lcom/sec/android/glview/TwGLTexture;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLTexture;->clear()V

    .line 998
    :cond_4
    new-instance v0, Lcom/sec/android/glview/TwGLResourceTexture;

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLButton;->getContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    invoke-direct {v0, v1, v2, v2, p3}, Lcom/sec/android/glview/TwGLResourceTexture;-><init>(Lcom/sec/android/glview/TwGLContext;FFI)V

    iput-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mDimBackground:Lcom/sec/android/glview/TwGLTexture;

    .line 1000
    :cond_5
    if-eqz p4, :cond_8

    iget v0, p0, Lcom/sec/android/glview/TwGLButton;->mHighlightId:I

    if-ne v0, p4, :cond_6

    iget v0, p0, Lcom/sec/android/glview/TwGLButton;->mHighlightType:I

    sget v1, Lcom/sec/android/glview/TwGLButton;->HIGHLIGHTTYPE_RESOURCE:I

    if-eq v0, v1, :cond_8

    .line 1001
    :cond_6
    iput p4, p0, Lcom/sec/android/glview/TwGLButton;->mHighlightId:I

    .line 1002
    sget v0, Lcom/sec/android/glview/TwGLButton;->HIGHLIGHTTYPE_RESOURCE:I

    iput v0, p0, Lcom/sec/android/glview/TwGLButton;->mHighlightType:I

    .line 1003
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mHighlight:Lcom/sec/android/glview/TwGLTexture;

    if-eqz v0, :cond_7

    .line 1004
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mHighlight:Lcom/sec/android/glview/TwGLTexture;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLTexture;->clear()V

    .line 1005
    :cond_7
    new-instance v0, Lcom/sec/android/glview/TwGLNinePatchTexture;

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLButton;->getContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLButton;->getWidth()F

    move-result v4

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLButton;->getHeight()F

    move-result v5

    move v3, v2

    move v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/sec/android/glview/TwGLNinePatchTexture;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFI)V

    iput-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mHighlight:Lcom/sec/android/glview/TwGLTexture;

    .line 1008
    :cond_8
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mNormalBackground:Lcom/sec/android/glview/TwGLTexture;

    if-eqz v0, :cond_9

    .line 1009
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mNormalBackground:Lcom/sec/android/glview/TwGLTexture;

    iput-object p0, v0, Lcom/sec/android/glview/TwGLView;->mParent:Lcom/sec/android/glview/TwGLView;

    .line 1010
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mNormalBackground:Lcom/sec/android/glview/TwGLTexture;

    iget v1, p0, Lcom/sec/android/glview/TwGLButton;->mResourceOffsetX:F

    iget v2, p0, Lcom/sec/android/glview/TwGLButton;->mResourceOffsetY:F

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLTexture;->moveLayoutAbsolute(FF)V

    .line 1012
    :cond_9
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mPressedBackground:Lcom/sec/android/glview/TwGLTexture;

    if-eqz v0, :cond_a

    .line 1013
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mPressedBackground:Lcom/sec/android/glview/TwGLTexture;

    iput-object p0, v0, Lcom/sec/android/glview/TwGLView;->mParent:Lcom/sec/android/glview/TwGLView;

    .line 1014
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mPressedBackground:Lcom/sec/android/glview/TwGLTexture;

    iget v1, p0, Lcom/sec/android/glview/TwGLButton;->mResourceOffsetX:F

    iget v2, p0, Lcom/sec/android/glview/TwGLButton;->mResourceOffsetY:F

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLTexture;->moveLayoutAbsolute(FF)V

    .line 1016
    :cond_a
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mDimBackground:Lcom/sec/android/glview/TwGLTexture;

    if-eqz v0, :cond_b

    .line 1017
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mDimBackground:Lcom/sec/android/glview/TwGLTexture;

    iput-object p0, v0, Lcom/sec/android/glview/TwGLView;->mParent:Lcom/sec/android/glview/TwGLView;

    .line 1018
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mDimBackground:Lcom/sec/android/glview/TwGLTexture;

    iget v1, p0, Lcom/sec/android/glview/TwGLButton;->mResourceOffsetX:F

    iget v2, p0, Lcom/sec/android/glview/TwGLButton;->mResourceOffsetY:F

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLTexture;->moveLayoutAbsolute(FF)V

    .line 1020
    :cond_b
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mHighlight:Lcom/sec/android/glview/TwGLTexture;

    if-eqz v0, :cond_c

    .line 1021
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mHighlight:Lcom/sec/android/glview/TwGLTexture;

    iput-object p0, v0, Lcom/sec/android/glview/TwGLView;->mParent:Lcom/sec/android/glview/TwGLView;

    .line 1023
    :cond_c
    iget-boolean v0, p0, Lcom/sec/android/glview/TwGLButton;->mDim:Z

    if-eqz v0, :cond_f

    .line 1024
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mText:Lcom/sec/android/glview/TwGLText;

    if-eqz v0, :cond_d

    .line 1025
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v0, v7}, Lcom/sec/android/glview/TwGLText;->setAlpha(F)V

    .line 1026
    :cond_d
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mNormalBackground:Lcom/sec/android/glview/TwGLTexture;

    if-eqz v0, :cond_e

    .line 1027
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mNormalBackground:Lcom/sec/android/glview/TwGLTexture;

    invoke-virtual {v0, v7}, Lcom/sec/android/glview/TwGLTexture;->setAlpha(F)V

    .line 1034
    :cond_e
    :goto_0
    return-void

    .line 1029
    :cond_f
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mText:Lcom/sec/android/glview/TwGLText;

    if-eqz v0, :cond_10

    .line 1030
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v0, v8}, Lcom/sec/android/glview/TwGLText;->setAlpha(F)V

    .line 1031
    :cond_10
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mNormalBackground:Lcom/sec/android/glview/TwGLTexture;

    if-eqz v0, :cond_e

    .line 1032
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mNormalBackground:Lcom/sec/android/glview/TwGLTexture;

    invoke-virtual {v0, v8}, Lcom/sec/android/glview/TwGLTexture;->setAlpha(F)V

    goto :goto_0
.end method

.method public setButtonResources(IIIILandroid/graphics/Bitmap$Config;)V
    .locals 9
    .parameter "normalId"
    .parameter "pressedId"
    .parameter "dimmedId"
    .parameter "highlightColor"
    .parameter "highlightConf"

    .prologue
    const/high16 v8, 0x3f80

    const v7, 0x3e4ccccd

    const/4 v2, 0x0

    .line 1045
    if-eqz p1, :cond_1

    iget v0, p0, Lcom/sec/android/glview/TwGLButton;->mNormalId:I

    if-eq v0, p1, :cond_1

    .line 1046
    iput p1, p0, Lcom/sec/android/glview/TwGLButton;->mNormalId:I

    .line 1047
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mNormalBackground:Lcom/sec/android/glview/TwGLTexture;

    if-eqz v0, :cond_0

    .line 1048
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mNormalBackground:Lcom/sec/android/glview/TwGLTexture;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLTexture;->clear()V

    .line 1049
    :cond_0
    new-instance v0, Lcom/sec/android/glview/TwGLResourceTexture;

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLButton;->getContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    invoke-direct {v0, v1, v2, v2, p1}, Lcom/sec/android/glview/TwGLResourceTexture;-><init>(Lcom/sec/android/glview/TwGLContext;FFI)V

    iput-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mNormalBackground:Lcom/sec/android/glview/TwGLTexture;

    .line 1051
    :cond_1
    if-eqz p2, :cond_3

    iget v0, p0, Lcom/sec/android/glview/TwGLButton;->mPressedId:I

    if-eq v0, p2, :cond_3

    .line 1052
    iput p2, p0, Lcom/sec/android/glview/TwGLButton;->mPressedId:I

    .line 1053
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mPressedBackground:Lcom/sec/android/glview/TwGLTexture;

    if-eqz v0, :cond_2

    .line 1054
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mPressedBackground:Lcom/sec/android/glview/TwGLTexture;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLTexture;->clear()V

    .line 1055
    :cond_2
    new-instance v0, Lcom/sec/android/glview/TwGLResourceTexture;

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLButton;->getContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    invoke-direct {v0, v1, v2, v2, p2}, Lcom/sec/android/glview/TwGLResourceTexture;-><init>(Lcom/sec/android/glview/TwGLContext;FFI)V

    iput-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mPressedBackground:Lcom/sec/android/glview/TwGLTexture;

    .line 1057
    :cond_3
    if-eqz p3, :cond_5

    iget v0, p0, Lcom/sec/android/glview/TwGLButton;->mDimId:I

    if-eq v0, p3, :cond_5

    .line 1058
    iput p3, p0, Lcom/sec/android/glview/TwGLButton;->mDimId:I

    .line 1059
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mDimBackground:Lcom/sec/android/glview/TwGLTexture;

    if-eqz v0, :cond_4

    .line 1060
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mDimBackground:Lcom/sec/android/glview/TwGLTexture;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLTexture;->clear()V

    .line 1061
    :cond_4
    new-instance v0, Lcom/sec/android/glview/TwGLResourceTexture;

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLButton;->getContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    invoke-direct {v0, v1, v2, v2, p3}, Lcom/sec/android/glview/TwGLResourceTexture;-><init>(Lcom/sec/android/glview/TwGLContext;FFI)V

    iput-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mDimBackground:Lcom/sec/android/glview/TwGLTexture;

    .line 1063
    :cond_5
    if-eqz p4, :cond_8

    iget v0, p0, Lcom/sec/android/glview/TwGLButton;->mHighlightId:I

    if-ne v0, p4, :cond_6

    iget v0, p0, Lcom/sec/android/glview/TwGLButton;->mHighlightType:I

    sget v1, Lcom/sec/android/glview/TwGLButton;->HIGHLIGHTTYPE_COLOR:I

    if-eq v0, v1, :cond_8

    .line 1064
    :cond_6
    iput p4, p0, Lcom/sec/android/glview/TwGLButton;->mHighlightId:I

    .line 1065
    sget v0, Lcom/sec/android/glview/TwGLButton;->HIGHLIGHTTYPE_COLOR:I

    iput v0, p0, Lcom/sec/android/glview/TwGLButton;->mHighlightType:I

    .line 1066
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mHighlight:Lcom/sec/android/glview/TwGLTexture;

    if-eqz v0, :cond_7

    .line 1067
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mHighlight:Lcom/sec/android/glview/TwGLTexture;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLTexture;->clear()V

    .line 1068
    :cond_7
    new-instance v0, Lcom/sec/android/glview/TwGLFillRectangle;

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLButton;->getContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLButton;->getWidth()F

    move-result v4

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLButton;->getHeight()F

    move-result v5

    move v3, v2

    move v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/sec/android/glview/TwGLFillRectangle;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFI)V

    iput-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mHighlight:Lcom/sec/android/glview/TwGLTexture;

    .line 1071
    :cond_8
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mNormalBackground:Lcom/sec/android/glview/TwGLTexture;

    if-eqz v0, :cond_9

    .line 1072
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mNormalBackground:Lcom/sec/android/glview/TwGLTexture;

    iput-object p0, v0, Lcom/sec/android/glview/TwGLView;->mParent:Lcom/sec/android/glview/TwGLView;

    .line 1073
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mNormalBackground:Lcom/sec/android/glview/TwGLTexture;

    iget v1, p0, Lcom/sec/android/glview/TwGLButton;->mResourceOffsetX:F

    iget v2, p0, Lcom/sec/android/glview/TwGLButton;->mResourceOffsetY:F

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLTexture;->moveLayoutAbsolute(FF)V

    .line 1075
    :cond_9
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mPressedBackground:Lcom/sec/android/glview/TwGLTexture;

    if-eqz v0, :cond_a

    .line 1076
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mPressedBackground:Lcom/sec/android/glview/TwGLTexture;

    iput-object p0, v0, Lcom/sec/android/glview/TwGLView;->mParent:Lcom/sec/android/glview/TwGLView;

    .line 1077
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mPressedBackground:Lcom/sec/android/glview/TwGLTexture;

    iget v1, p0, Lcom/sec/android/glview/TwGLButton;->mResourceOffsetX:F

    iget v2, p0, Lcom/sec/android/glview/TwGLButton;->mResourceOffsetY:F

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLTexture;->moveLayoutAbsolute(FF)V

    .line 1079
    :cond_a
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mDimBackground:Lcom/sec/android/glview/TwGLTexture;

    if-eqz v0, :cond_b

    .line 1080
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mDimBackground:Lcom/sec/android/glview/TwGLTexture;

    iput-object p0, v0, Lcom/sec/android/glview/TwGLView;->mParent:Lcom/sec/android/glview/TwGLView;

    .line 1081
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mDimBackground:Lcom/sec/android/glview/TwGLTexture;

    iget v1, p0, Lcom/sec/android/glview/TwGLButton;->mResourceOffsetX:F

    iget v2, p0, Lcom/sec/android/glview/TwGLButton;->mResourceOffsetY:F

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLTexture;->moveLayoutAbsolute(FF)V

    .line 1083
    :cond_b
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mHighlight:Lcom/sec/android/glview/TwGLTexture;

    if-eqz v0, :cond_c

    .line 1084
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mHighlight:Lcom/sec/android/glview/TwGLTexture;

    iput-object p0, v0, Lcom/sec/android/glview/TwGLView;->mParent:Lcom/sec/android/glview/TwGLView;

    .line 1086
    :cond_c
    iget-boolean v0, p0, Lcom/sec/android/glview/TwGLButton;->mDim:Z

    if-eqz v0, :cond_f

    .line 1087
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mText:Lcom/sec/android/glview/TwGLText;

    if-eqz v0, :cond_d

    .line 1088
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v0, v7}, Lcom/sec/android/glview/TwGLText;->setAlpha(F)V

    .line 1089
    :cond_d
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mNormalBackground:Lcom/sec/android/glview/TwGLTexture;

    if-eqz v0, :cond_e

    .line 1090
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mNormalBackground:Lcom/sec/android/glview/TwGLTexture;

    invoke-virtual {v0, v7}, Lcom/sec/android/glview/TwGLTexture;->setAlpha(F)V

    .line 1097
    :cond_e
    :goto_0
    return-void

    .line 1092
    :cond_f
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mText:Lcom/sec/android/glview/TwGLText;

    if-eqz v0, :cond_10

    .line 1093
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v0, v8}, Lcom/sec/android/glview/TwGLText;->setAlpha(F)V

    .line 1094
    :cond_10
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mNormalBackground:Lcom/sec/android/glview/TwGLTexture;

    if-eqz v0, :cond_e

    .line 1095
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mNormalBackground:Lcom/sec/android/glview/TwGLTexture;

    invoke-virtual {v0, v8}, Lcom/sec/android/glview/TwGLTexture;->setAlpha(F)V

    goto :goto_0
.end method

.method public setDim(Z)V
    .locals 3
    .parameter "dim"

    .prologue
    const/high16 v2, 0x3f80

    const v1, 0x3e4ccccd

    .line 688
    iget-boolean v0, p0, Lcom/sec/android/glview/TwGLButton;->mDim:Z

    if-ne v0, p1, :cond_1

    .line 704
    :cond_0
    :goto_0
    return-void

    .line 690
    :cond_1
    iput-boolean p1, p0, Lcom/sec/android/glview/TwGLButton;->mDim:Z

    .line 691
    iget-boolean v0, p0, Lcom/sec/android/glview/TwGLButton;->mDim:Z

    if-eqz v0, :cond_3

    .line 692
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mText:Lcom/sec/android/glview/TwGLText;

    if-eqz v0, :cond_2

    .line 693
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLText;->setAlpha(F)V

    .line 694
    :cond_2
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mNormalBackground:Lcom/sec/android/glview/TwGLTexture;

    if-eqz v0, :cond_0

    .line 695
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mNormalBackground:Lcom/sec/android/glview/TwGLTexture;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLTexture;->setAlpha(F)V

    goto :goto_0

    .line 698
    :cond_3
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mText:Lcom/sec/android/glview/TwGLText;

    if-eqz v0, :cond_4

    .line 699
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v0, v2}, Lcom/sec/android/glview/TwGLText;->setAlpha(F)V

    .line 700
    :cond_4
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mNormalBackground:Lcom/sec/android/glview/TwGLTexture;

    if-eqz v0, :cond_0

    .line 701
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mNormalBackground:Lcom/sec/android/glview/TwGLTexture;

    invoke-virtual {v0, v2}, Lcom/sec/android/glview/TwGLTexture;->setAlpha(F)V

    goto :goto_0
.end method

.method public setHighlightVisibility(Z)V
    .locals 0
    .parameter "visibility"

    .prologue
    .line 681
    iput-boolean p1, p0, Lcom/sec/android/glview/TwGLButton;->mShowHighlight:Z

    .line 682
    return-void
.end method

.method public setMute(Z)V
    .locals 0
    .parameter "mute"

    .prologue
    .line 864
    iput-boolean p1, p0, Lcom/sec/android/glview/TwGLButton;->mMute:Z

    .line 865
    return-void
.end method

.method public setOnButtonHighlightChangedListener(Lcom/sec/android/glview/TwGLButton$OnButtonHighlightChangedListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 133
    iput-object p1, p0, Lcom/sec/android/glview/TwGLButton;->mOnHighlightChangedListener:Lcom/sec/android/glview/TwGLButton$OnButtonHighlightChangedListener;

    .line 134
    return-void
.end method

.method public setPaddings(Landroid/graphics/Rect;)V
    .locals 4
    .parameter "paddings"

    .prologue
    .line 1221
    invoke-super {p0, p1}, Lcom/sec/android/glview/TwGLView;->setPaddings(Landroid/graphics/Rect;)V

    .line 1223
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mHighlight:Lcom/sec/android/glview/TwGLTexture;

    if-eqz v0, :cond_0

    .line 1224
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mHighlight:Lcom/sec/android/glview/TwGLTexture;

    iget v1, p0, Lcom/sec/android/glview/TwGLButton;->mButtonWidth:F

    iget-object v2, p0, Lcom/sec/android/glview/TwGLView;->mPaddings:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    sub-float/2addr v1, v2

    iget-object v2, p0, Lcom/sec/android/glview/TwGLView;->mPaddings:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    int-to-float v2, v2

    sub-float/2addr v1, v2

    iget v2, p0, Lcom/sec/android/glview/TwGLButton;->mButtonHeight:F

    iget-object v3, p0, Lcom/sec/android/glview/TwGLView;->mPaddings:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    int-to-float v3, v3

    sub-float/2addr v2, v3

    iget-object v3, p0, Lcom/sec/android/glview/TwGLView;->mPaddings:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    int-to-float v3, v3

    sub-float/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLTexture;->setSize(FF)V

    .line 1225
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mHighlight:Lcom/sec/android/glview/TwGLTexture;

    iget-object v1, p0, Lcom/sec/android/glview/TwGLView;->mPaddings:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    iget-object v2, p0, Lcom/sec/android/glview/TwGLView;->mPaddings:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLTexture;->moveLayoutAbsolute(FF)V

    .line 1227
    :cond_0
    return-void
.end method

.method public setPressed(Z)V
    .locals 0
    .parameter "pressed"

    .prologue
    .line 1249
    iput-boolean p1, p0, Lcom/sec/android/glview/TwGLButton;->mPressed:Z

    .line 1250
    return-void
.end method

.method public setResourceOffset(FF)Z
    .locals 5
    .parameter "x"
    .parameter "y"

    .prologue
    .line 1107
    iput p1, p0, Lcom/sec/android/glview/TwGLButton;->mResourceOffsetX:F

    .line 1108
    iput p2, p0, Lcom/sec/android/glview/TwGLButton;->mResourceOffsetY:F

    .line 1110
    iget-object v2, p0, Lcom/sec/android/glview/TwGLButton;->mNormalBackground:Lcom/sec/android/glview/TwGLTexture;

    if-nez v2, :cond_0

    .line 1111
    const/4 v2, 0x0

    .line 1126
    :goto_0
    return v2

    .line 1113
    :cond_0
    iget-object v2, p0, Lcom/sec/android/glview/TwGLButton;->mNormalBackground:Lcom/sec/android/glview/TwGLTexture;

    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLTexture;->getWidth()F

    move-result v1

    .line 1114
    .local v1, buttonImageWidth:F
    iget-object v2, p0, Lcom/sec/android/glview/TwGLButton;->mNormalBackground:Lcom/sec/android/glview/TwGLTexture;

    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLTexture;->getHeight()F

    move-result v0

    .line 1116
    .local v0, buttonImageHeight:F
    iget v2, p0, Lcom/sec/android/glview/TwGLButton;->mButtonWidth:F

    cmpl-float v2, v2, v1

    if-ltz v2, :cond_3

    iget v2, p0, Lcom/sec/android/glview/TwGLButton;->mButtonHeight:F

    cmpl-float v2, v2, v0

    if-ltz v2, :cond_3

    iget v2, p0, Lcom/sec/android/glview/TwGLButton;->mButtonWidth:F

    cmpl-float v2, v2, v1

    if-nez v2, :cond_1

    iget v2, p0, Lcom/sec/android/glview/TwGLButton;->mButtonHeight:F

    cmpl-float v2, v2, v0

    if-eqz v2, :cond_3

    .line 1118
    :cond_1
    iget-object v2, p0, Lcom/sec/android/glview/TwGLButton;->mNormalBackground:Lcom/sec/android/glview/TwGLTexture;

    iget v3, p0, Lcom/sec/android/glview/TwGLButton;->mResourceOffsetX:F

    iget v4, p0, Lcom/sec/android/glview/TwGLButton;->mResourceOffsetY:F

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/glview/TwGLTexture;->moveLayoutAbsolute(FF)V

    .line 1119
    iget-object v2, p0, Lcom/sec/android/glview/TwGLButton;->mPressedBackground:Lcom/sec/android/glview/TwGLTexture;

    if-eqz v2, :cond_2

    .line 1120
    iget-object v2, p0, Lcom/sec/android/glview/TwGLButton;->mPressedBackground:Lcom/sec/android/glview/TwGLTexture;

    iget v3, p0, Lcom/sec/android/glview/TwGLButton;->mResourceOffsetX:F

    iget v4, p0, Lcom/sec/android/glview/TwGLButton;->mResourceOffsetY:F

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/glview/TwGLTexture;->moveLayoutAbsolute(FF)V

    .line 1122
    :cond_2
    iget-object v2, p0, Lcom/sec/android/glview/TwGLButton;->mDimBackground:Lcom/sec/android/glview/TwGLTexture;

    if-eqz v2, :cond_3

    .line 1123
    iget-object v2, p0, Lcom/sec/android/glview/TwGLButton;->mDimBackground:Lcom/sec/android/glview/TwGLTexture;

    iget v3, p0, Lcom/sec/android/glview/TwGLButton;->mResourceOffsetX:F

    iget v4, p0, Lcom/sec/android/glview/TwGLButton;->mResourceOffsetY:F

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/glview/TwGLTexture;->moveLayoutAbsolute(FF)V

    .line 1126
    :cond_3
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public setSize(FF)V
    .locals 4
    .parameter "width"
    .parameter "height"

    .prologue
    const/high16 v2, 0x4000

    .line 1176
    invoke-super {p0, p1, p2}, Lcom/sec/android/glview/TwGLView;->setSize(FF)V

    .line 1177
    iput p1, p0, Lcom/sec/android/glview/TwGLButton;->mButtonWidth:F

    .line 1178
    iput p2, p0, Lcom/sec/android/glview/TwGLButton;->mButtonHeight:F

    .line 1180
    iget-boolean v0, p0, Lcom/sec/android/glview/TwGLButton;->mIsNinePatchButton:Z

    if-eqz v0, :cond_5

    .line 1181
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mNormalBackground:Lcom/sec/android/glview/TwGLTexture;

    if-eqz v0, :cond_0

    .line 1182
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mNormalBackground:Lcom/sec/android/glview/TwGLTexture;

    iget v1, p0, Lcom/sec/android/glview/TwGLButton;->mButtonWidth:F

    iget v2, p0, Lcom/sec/android/glview/TwGLButton;->mButtonHeight:F

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLTexture;->setSize(FF)V

    .line 1184
    :cond_0
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mPressedBackground:Lcom/sec/android/glview/TwGLTexture;

    if-eqz v0, :cond_1

    .line 1185
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mPressedBackground:Lcom/sec/android/glview/TwGLTexture;

    iget v1, p0, Lcom/sec/android/glview/TwGLButton;->mButtonWidth:F

    iget v2, p0, Lcom/sec/android/glview/TwGLButton;->mButtonHeight:F

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLTexture;->setSize(FF)V

    .line 1187
    :cond_1
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mDimBackground:Lcom/sec/android/glview/TwGLTexture;

    if-eqz v0, :cond_2

    .line 1188
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mDimBackground:Lcom/sec/android/glview/TwGLTexture;

    iget v1, p0, Lcom/sec/android/glview/TwGLButton;->mButtonWidth:F

    iget v2, p0, Lcom/sec/android/glview/TwGLButton;->mButtonHeight:F

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLTexture;->setSize(FF)V

    .line 1190
    :cond_2
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mHighlight:Lcom/sec/android/glview/TwGLTexture;

    if-eqz v0, :cond_3

    .line 1191
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mHighlight:Lcom/sec/android/glview/TwGLTexture;

    iget v1, p0, Lcom/sec/android/glview/TwGLButton;->mButtonWidth:F

    iget v2, p0, Lcom/sec/android/glview/TwGLButton;->mButtonHeight:F

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLTexture;->setSize(FF)V

    .line 1193
    :cond_3
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mText:Lcom/sec/android/glview/TwGLText;

    if-eqz v0, :cond_4

    .line 1194
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mText:Lcom/sec/android/glview/TwGLText;

    iget v1, p0, Lcom/sec/android/glview/TwGLButton;->mButtonWidth:F

    iget v2, p0, Lcom/sec/android/glview/TwGLButton;->mButtonHeight:F

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLText;->setSize(FF)V

    .line 1217
    :cond_4
    :goto_0
    return-void

    .line 1199
    :cond_5
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mNormalBackground:Lcom/sec/android/glview/TwGLTexture;

    if-eqz v0, :cond_6

    iget v0, p0, Lcom/sec/android/glview/TwGLButton;->mButtonWidth:F

    iget-object v1, p0, Lcom/sec/android/glview/TwGLButton;->mNormalBackground:Lcom/sec/android/glview/TwGLTexture;

    invoke-virtual {v1}, Lcom/sec/android/glview/TwGLTexture;->getWidth()F

    move-result v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_6

    .line 1200
    iget v0, p0, Lcom/sec/android/glview/TwGLButton;->mButtonWidth:F

    iget-object v1, p0, Lcom/sec/android/glview/TwGLButton;->mNormalBackground:Lcom/sec/android/glview/TwGLTexture;

    invoke-virtual {v1}, Lcom/sec/android/glview/TwGLTexture;->getWidth()F

    move-result v1

    sub-float/2addr v0, v1

    div-float/2addr v0, v2

    iput v0, p0, Lcom/sec/android/glview/TwGLButton;->mResourceOffsetX:F

    .line 1202
    :cond_6
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mNormalBackground:Lcom/sec/android/glview/TwGLTexture;

    if-eqz v0, :cond_7

    iget v0, p0, Lcom/sec/android/glview/TwGLButton;->mButtonHeight:F

    iget-object v1, p0, Lcom/sec/android/glview/TwGLButton;->mNormalBackground:Lcom/sec/android/glview/TwGLTexture;

    invoke-virtual {v1}, Lcom/sec/android/glview/TwGLTexture;->getHeight()F

    move-result v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_7

    .line 1203
    iget v0, p0, Lcom/sec/android/glview/TwGLButton;->mButtonHeight:F

    iget-object v1, p0, Lcom/sec/android/glview/TwGLButton;->mNormalBackground:Lcom/sec/android/glview/TwGLTexture;

    invoke-virtual {v1}, Lcom/sec/android/glview/TwGLTexture;->getHeight()F

    move-result v1

    sub-float/2addr v0, v1

    div-float/2addr v0, v2

    iput v0, p0, Lcom/sec/android/glview/TwGLButton;->mResourceOffsetY:F

    .line 1205
    :cond_7
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mNormalBackground:Lcom/sec/android/glview/TwGLTexture;

    if-eqz v0, :cond_8

    .line 1206
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mNormalBackground:Lcom/sec/android/glview/TwGLTexture;

    iget v1, p0, Lcom/sec/android/glview/TwGLButton;->mResourceOffsetX:F

    iget v2, p0, Lcom/sec/android/glview/TwGLButton;->mResourceOffsetY:F

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLTexture;->moveLayoutAbsolute(FF)V

    .line 1208
    :cond_8
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mPressedBackground:Lcom/sec/android/glview/TwGLTexture;

    if-eqz v0, :cond_9

    .line 1209
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mPressedBackground:Lcom/sec/android/glview/TwGLTexture;

    iget v1, p0, Lcom/sec/android/glview/TwGLButton;->mResourceOffsetX:F

    iget v2, p0, Lcom/sec/android/glview/TwGLButton;->mResourceOffsetY:F

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLTexture;->moveLayoutAbsolute(FF)V

    .line 1211
    :cond_9
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mDimBackground:Lcom/sec/android/glview/TwGLTexture;

    if-eqz v0, :cond_a

    .line 1212
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mDimBackground:Lcom/sec/android/glview/TwGLTexture;

    iget v1, p0, Lcom/sec/android/glview/TwGLButton;->mResourceOffsetX:F

    iget v2, p0, Lcom/sec/android/glview/TwGLButton;->mResourceOffsetY:F

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLTexture;->moveLayoutAbsolute(FF)V

    .line 1214
    :cond_a
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mHighlight:Lcom/sec/android/glview/TwGLTexture;

    if-eqz v0, :cond_4

    .line 1215
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mHighlight:Lcom/sec/android/glview/TwGLTexture;

    iget v1, p0, Lcom/sec/android/glview/TwGLButton;->mButtonWidth:F

    iget-object v2, p0, Lcom/sec/android/glview/TwGLView;->mPaddings:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    sub-float/2addr v1, v2

    iget-object v2, p0, Lcom/sec/android/glview/TwGLView;->mPaddings:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    int-to-float v2, v2

    sub-float/2addr v1, v2

    iget v2, p0, Lcom/sec/android/glview/TwGLButton;->mButtonHeight:F

    iget-object v3, p0, Lcom/sec/android/glview/TwGLView;->mPaddings:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    int-to-float v3, v3

    sub-float/2addr v2, v3

    iget-object v3, p0, Lcom/sec/android/glview/TwGLView;->mPaddings:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    int-to-float v3, v3

    sub-float/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLTexture;->setSize(FF)V

    goto/16 :goto_0
.end method

.method public setText(Lcom/sec/android/glview/TwGLText;)V
    .locals 1
    .parameter "text"

    .prologue
    .line 623
    if-eqz p1, :cond_0

    .line 624
    iput-object p1, p0, Lcom/sec/android/glview/TwGLButton;->mText:Lcom/sec/android/glview/TwGLText;

    .line 625
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mText:Lcom/sec/android/glview/TwGLText;

    iput-object p0, v0, Lcom/sec/android/glview/TwGLView;->mParent:Lcom/sec/android/glview/TwGLView;

    .line 626
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/glview/TwGLButton;->mShowText:Z

    .line 628
    :cond_0
    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .locals 8
    .parameter "text"

    .prologue
    const/4 v7, 0x2

    const/4 v2, 0x0

    .line 611
    new-instance v0, Lcom/sec/android/glview/TwGLText;

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLButton;->getContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    iget v4, p0, Lcom/sec/android/glview/TwGLButton;->mButtonWidth:F

    iget v5, p0, Lcom/sec/android/glview/TwGLButton;->mButtonHeight:F

    move v3, v2

    move-object v6, p1

    invoke-direct/range {v0 .. v6}, Lcom/sec/android/glview/TwGLText;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFLjava/lang/String;)V

    iput-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mText:Lcom/sec/android/glview/TwGLText;

    .line 612
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v0, v7, v7}, Lcom/sec/android/glview/TwGLText;->setAlign(II)V

    .line 613
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mText:Lcom/sec/android/glview/TwGLText;

    iput-object p0, v0, Lcom/sec/android/glview/TwGLView;->mParent:Lcom/sec/android/glview/TwGLView;

    .line 614
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/glview/TwGLButton;->mShowText:Z

    .line 615
    return-void
.end method

.method public setText(Ljava/lang/String;FIZ)V
    .locals 11
    .parameter "text"
    .parameter "textSize"
    .parameter "color"
    .parameter "shadow"

    .prologue
    const/4 v10, 0x2

    const/4 v2, 0x0

    .line 636
    new-instance v0, Lcom/sec/android/glview/TwGLText;

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLButton;->getContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    iget v4, p0, Lcom/sec/android/glview/TwGLButton;->mButtonWidth:F

    iget v5, p0, Lcom/sec/android/glview/TwGLButton;->mButtonHeight:F

    move v3, v2

    move-object v6, p1

    move v7, p2

    move v8, p3

    move v9, p4

    invoke-direct/range {v0 .. v9}, Lcom/sec/android/glview/TwGLText;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFLjava/lang/String;FIZ)V

    iput-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mText:Lcom/sec/android/glview/TwGLText;

    .line 637
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v0, v10, v10}, Lcom/sec/android/glview/TwGLText;->setAlign(II)V

    .line 638
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mText:Lcom/sec/android/glview/TwGLText;

    iput-object p0, v0, Lcom/sec/android/glview/TwGLView;->mParent:Lcom/sec/android/glview/TwGLView;

    .line 639
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/glview/TwGLButton;->mShowText:Z

    .line 640
    return-void
.end method

.method public setTextAlign(II)V
    .locals 1
    .parameter "hAlign"
    .parameter "vAlign"

    .prologue
    .line 661
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mText:Lcom/sec/android/glview/TwGLText;

    if-eqz v0, :cond_0

    .line 662
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v0, p1, p2}, Lcom/sec/android/glview/TwGLText;->setAlign(II)V

    .line 664
    :cond_0
    return-void
.end method

.method public setTextPosition(FF)V
    .locals 1
    .parameter "left"
    .parameter "top"

    .prologue
    .line 649
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mText:Lcom/sec/android/glview/TwGLText;

    if-eqz v0, :cond_0

    .line 650
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v0, p1, p2}, Lcom/sec/android/glview/TwGLText;->moveLayoutAbsolute(FF)V

    .line 652
    :cond_0
    return-void
.end method

.method public setTextVisibility(Z)V
    .locals 0
    .parameter "visibility"

    .prologue
    .line 672
    iput-boolean p1, p0, Lcom/sec/android/glview/TwGLButton;->mShowText:Z

    .line 673
    return-void
.end method
