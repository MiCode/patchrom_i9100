.class Lcom/android/phone/IncomingCallWidget$Handle;
.super Ljava/lang/Object;
.source "IncomingCallWidget.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/IncomingCallWidget;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Handle"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/IncomingCallWidget$Handle$TargetCircle;,
        Lcom/android/phone/IncomingCallWidget$Handle$TabCircle;
    }
.end annotation


# instance fields
.field private final ARROW_ANI_DURATION:I

.field final ARROW_COUNT:I

.field private final FIRST_WAVE_DELAY:I

.field private final MAKE_TARGET_DURATION:I

.field private final RESET_DURATION:I

.field private final SECOND_WAVE_DELAY:I

.field private final START_WAVE:I

.field private mArrowContainer:Landroid/widget/LinearLayout;

.field private mArrowImageViews:[Landroid/widget/ImageView;

.field private mCircleColor:I

.field private mContainer:Landroid/widget/FrameLayout;

.field private mContext:Landroid/content/Context;

.field private mCurrentState:I

.field private mHandleType:I

.field private mHandler:Landroid/os/Handler;

.field private mParent:Landroid/view/ViewGroup;

.field private mTab:Landroid/widget/ImageView;

.field private mTabCircle:Lcom/android/phone/IncomingCallWidget$Handle$TabCircle;

.field private mTargetCircle:Lcom/android/phone/IncomingCallWidget$Handle$TargetCircle;

.field private mTopOffset:I

.field final synthetic this$0:Lcom/android/phone/IncomingCallWidget;


# direct methods
.method public constructor <init>(Lcom/android/phone/IncomingCallWidget;Landroid/content/Context;Landroid/view/ViewGroup;I)V
    .locals 2
    .parameter
    .parameter "context"
    .parameter "parent"
    .parameter "handleType"

    .prologue
    const/16 v1, 0x384

    .line 340
    iput-object p1, p0, Lcom/android/phone/IncomingCallWidget$Handle;->this$0:Lcom/android/phone/IncomingCallWidget;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 306
    iput v1, p0, Lcom/android/phone/IncomingCallWidget$Handle;->FIRST_WAVE_DELAY:I

    .line 308
    const/16 v0, 0x96

    iput v0, p0, Lcom/android/phone/IncomingCallWidget$Handle;->SECOND_WAVE_DELAY:I

    .line 310
    const/16 v0, 0x64

    iput v0, p0, Lcom/android/phone/IncomingCallWidget$Handle;->START_WAVE:I

    .line 312
    iput v1, p0, Lcom/android/phone/IncomingCallWidget$Handle;->ARROW_ANI_DURATION:I

    .line 324
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/phone/IncomingCallWidget$Handle;->ARROW_COUNT:I

    .line 334
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/phone/IncomingCallWidget$Handle;->mHandleType:I

    .line 484
    new-instance v0, Lcom/android/phone/IncomingCallWidget$Handle$2;

    invoke-direct {v0, p0}, Lcom/android/phone/IncomingCallWidget$Handle$2;-><init>(Lcom/android/phone/IncomingCallWidget$Handle;)V

    iput-object v0, p0, Lcom/android/phone/IncomingCallWidget$Handle;->mHandler:Landroid/os/Handler;

    .line 596
    const/16 v0, 0x190

    iput v0, p0, Lcom/android/phone/IncomingCallWidget$Handle;->MAKE_TARGET_DURATION:I

    .line 598
    const/16 v0, 0xc8

    iput v0, p0, Lcom/android/phone/IncomingCallWidget$Handle;->RESET_DURATION:I

    .line 341
    iput-object p2, p0, Lcom/android/phone/IncomingCallWidget$Handle;->mContext:Landroid/content/Context;

    .line 342
    iput p4, p0, Lcom/android/phone/IncomingCallWidget$Handle;->mHandleType:I

    .line 343
    iput-object p3, p0, Lcom/android/phone/IncomingCallWidget$Handle;->mParent:Landroid/view/ViewGroup;

    .line 344
    invoke-direct {p0}, Lcom/android/phone/IncomingCallWidget$Handle;->init()V

    .line 345
    return-void
.end method

.method static synthetic access$000(Lcom/android/phone/IncomingCallWidget$Handle;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 298
    invoke-direct {p0}, Lcom/android/phone/IncomingCallWidget$Handle;->showArrow()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/phone/IncomingCallWidget$Handle;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 298
    invoke-direct {p0}, Lcom/android/phone/IncomingCallWidget$Handle;->hideArrow()V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/phone/IncomingCallWidget$Handle;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 298
    iget v0, p0, Lcom/android/phone/IncomingCallWidget$Handle;->mCircleColor:I

    return v0
.end method

.method static synthetic access$1300(Lcom/android/phone/IncomingCallWidget$Handle;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 298
    iget v0, p0, Lcom/android/phone/IncomingCallWidget$Handle;->mTopOffset:I

    return v0
.end method

.method static synthetic access$300(Lcom/android/phone/IncomingCallWidget$Handle;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 298
    iget v0, p0, Lcom/android/phone/IncomingCallWidget$Handle;->mHandleType:I

    return v0
.end method

.method static synthetic access$400(Lcom/android/phone/IncomingCallWidget$Handle;)[Landroid/widget/ImageView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 298
    iget-object v0, p0, Lcom/android/phone/IncomingCallWidget$Handle;->mArrowImageViews:[Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/phone/IncomingCallWidget$Handle;)Landroid/view/animation/AlphaAnimation;
    .locals 1
    .parameter "x0"

    .prologue
    .line 298
    invoke-direct {p0}, Lcom/android/phone/IncomingCallWidget$Handle;->makeArrowAnimation()Landroid/view/animation/AlphaAnimation;

    move-result-object v0

    return-object v0
.end method

.method private hideArrow()V
    .locals 6

    .prologue
    .line 477
    iget-object v4, p0, Lcom/android/phone/IncomingCallWidget$Handle;->mHandler:Landroid/os/Handler;

    const/16 v5, 0x64

    invoke-virtual {v4, v5}, Landroid/os/Handler;->removeMessages(I)V

    .line 478
    iget-object v4, p0, Lcom/android/phone/IncomingCallWidget$Handle;->mArrowContainer:Landroid/widget/LinearLayout;

    const/4 v5, 0x4

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 479
    iget-object v0, p0, Lcom/android/phone/IncomingCallWidget$Handle;->mArrowImageViews:[Landroid/widget/ImageView;

    .local v0, arr$:[Landroid/widget/ImageView;
    array-length v3, v0

    .local v3, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v2, v0, v1

    .line 480
    .local v2, imageView:Landroid/widget/ImageView;
    invoke-virtual {v2}, Landroid/widget/ImageView;->clearAnimation()V

    .line 479
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 482
    .end local v2           #imageView:Landroid/widget/ImageView;
    :cond_0
    return-void
.end method

.method private init()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/4 v6, -0x2

    .line 348
    iget-object v4, p0, Lcom/android/phone/IncomingCallWidget$Handle;->this$0:Lcom/android/phone/IncomingCallWidget;

    const-string v5, " Handle ; init!"

    invoke-virtual {v4, v5}, Lcom/android/phone/IncomingCallWidget;->log(Ljava/lang/String;)V

    .line 350
    iput v7, p0, Lcom/android/phone/IncomingCallWidget$Handle;->mCurrentState:I

    .line 353
    new-instance v4, Lcom/android/phone/IncomingCallWidget$Handle$1;

    iget-object v5, p0, Lcom/android/phone/IncomingCallWidget$Handle;->mContext:Landroid/content/Context;

    invoke-direct {v4, p0, v5}, Lcom/android/phone/IncomingCallWidget$Handle$1;-><init>(Lcom/android/phone/IncomingCallWidget$Handle;Landroid/content/Context;)V

    iput-object v4, p0, Lcom/android/phone/IncomingCallWidget$Handle;->mContainer:Landroid/widget/FrameLayout;

    .line 368
    iget-object v4, p0, Lcom/android/phone/IncomingCallWidget$Handle;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    .line 370
    .local v3, metrics:Landroid/util/DisplayMetrics;
    iget v4, v3, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v5, v3, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    mul-int/lit8 v4, v4, 0x5b

    div-int/lit16 v1, v4, 0x80

    .line 372
    .local v1, diameter:I
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 374
    .local v0, containerParams:Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v4, 0xc

    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 377
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v4, 0x11

    invoke-direct {v2, v6, v6, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 381
    .local v2, layoutParams:Landroid/widget/FrameLayout$LayoutParams;
    new-instance v4, Landroid/widget/ImageView;

    iget-object v5, p0, Lcom/android/phone/IncomingCallWidget$Handle;->mContext:Landroid/content/Context;

    invoke-direct {v4, v5}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/android/phone/IncomingCallWidget$Handle;->mTab:Landroid/widget/ImageView;

    .line 382
    iget-object v4, p0, Lcom/android/phone/IncomingCallWidget$Handle;->mContainer:Landroid/widget/FrameLayout;

    iget-object v5, p0, Lcom/android/phone/IncomingCallWidget$Handle;->mTab:Landroid/widget/ImageView;

    invoke-virtual {v4, v5, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 384
    iget v4, p0, Lcom/android/phone/IncomingCallWidget$Handle;->mHandleType:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_1

    .line 385
    const/16 v4, 0x9

    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 386
    iget-object v4, p0, Lcom/android/phone/IncomingCallWidget$Handle;->mTab:Landroid/widget/ImageView;

    const v5, 0x7f0202ba

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 387
    const v4, -0x9e5eeb

    iput v4, p0, Lcom/android/phone/IncomingCallWidget$Handle;->mCircleColor:I

    .line 394
    :cond_0
    :goto_0
    new-instance v4, Lcom/android/phone/IncomingCallWidget$Handle$TabCircle;

    iget-object v5, p0, Lcom/android/phone/IncomingCallWidget$Handle;->mContext:Landroid/content/Context;

    mul-int/lit8 v6, v1, 0x9

    div-int/lit8 v6, v6, 0x32

    int-to-float v6, v6

    invoke-direct {v4, p0, v5, v6}, Lcom/android/phone/IncomingCallWidget$Handle$TabCircle;-><init>(Lcom/android/phone/IncomingCallWidget$Handle;Landroid/content/Context;F)V

    iput-object v4, p0, Lcom/android/phone/IncomingCallWidget$Handle;->mTabCircle:Lcom/android/phone/IncomingCallWidget$Handle$TabCircle;

    .line 395
    iget-object v4, p0, Lcom/android/phone/IncomingCallWidget$Handle;->mTabCircle:Lcom/android/phone/IncomingCallWidget$Handle$TabCircle;

    invoke-virtual {v4, v7}, Lcom/android/phone/IncomingCallWidget$Handle$TabCircle;->setVisibility(I)V

    .line 396
    iget-object v4, p0, Lcom/android/phone/IncomingCallWidget$Handle;->mContainer:Landroid/widget/FrameLayout;

    iget-object v5, p0, Lcom/android/phone/IncomingCallWidget$Handle;->mTabCircle:Lcom/android/phone/IncomingCallWidget$Handle$TabCircle;

    invoke-virtual {v4, v5, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 398
    iget-object v4, p0, Lcom/android/phone/IncomingCallWidget$Handle;->mContainer:Landroid/widget/FrameLayout;

    invoke-direct {p0, v4, v1}, Lcom/android/phone/IncomingCallWidget$Handle;->makeArrowViews(Landroid/widget/FrameLayout;I)V

    .line 400
    new-instance v4, Lcom/android/phone/IncomingCallWidget$Handle$TargetCircle;

    iget-object v5, p0, Lcom/android/phone/IncomingCallWidget$Handle;->mContext:Landroid/content/Context;

    div-int/lit8 v6, v1, 0x2

    int-to-float v6, v6

    invoke-direct {v4, p0, v5, v6}, Lcom/android/phone/IncomingCallWidget$Handle$TargetCircle;-><init>(Lcom/android/phone/IncomingCallWidget$Handle;Landroid/content/Context;F)V

    iput-object v4, p0, Lcom/android/phone/IncomingCallWidget$Handle;->mTargetCircle:Lcom/android/phone/IncomingCallWidget$Handle$TargetCircle;

    .line 401
    iget-object v4, p0, Lcom/android/phone/IncomingCallWidget$Handle;->mTargetCircle:Lcom/android/phone/IncomingCallWidget$Handle$TargetCircle;

    const/4 v5, 0x4

    invoke-virtual {v4, v5}, Lcom/android/phone/IncomingCallWidget$Handle$TargetCircle;->setVisibility(I)V

    .line 402
    iget-object v4, p0, Lcom/android/phone/IncomingCallWidget$Handle;->mContainer:Landroid/widget/FrameLayout;

    iget-object v5, p0, Lcom/android/phone/IncomingCallWidget$Handle;->mTargetCircle:Lcom/android/phone/IncomingCallWidget$Handle$TargetCircle;

    invoke-virtual {v4, v5, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 404
    iget-object v4, p0, Lcom/android/phone/IncomingCallWidget$Handle;->mContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v4, v0}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 406
    iget-object v4, p0, Lcom/android/phone/IncomingCallWidget$Handle;->mParent:Landroid/view/ViewGroup;

    iget-object v5, p0, Lcom/android/phone/IncomingCallWidget$Handle;->mContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 407
    return-void

    .line 388
    :cond_1
    iget v4, p0, Lcom/android/phone/IncomingCallWidget$Handle;->mHandleType:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_0

    .line 389
    const/16 v4, 0xb

    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 390
    iget-object v4, p0, Lcom/android/phone/IncomingCallWidget$Handle;->mTab:Landroid/widget/ImageView;

    const v5, 0x7f0202bd

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 391
    const v4, -0x57e5f1

    iput v4, p0, Lcom/android/phone/IncomingCallWidget$Handle;->mCircleColor:I

    goto :goto_0
.end method

.method private makeArrowAnimation()Landroid/view/animation/AlphaAnimation;
    .locals 3

    .prologue
    .line 522
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/high16 v1, 0x3f80

    const v2, 0x3f19999a

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 523
    .local v0, alphaAni:Landroid/view/animation/AlphaAnimation;
    const-wide/16 v1, 0x384

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 525
    iget-object v1, p0, Lcom/android/phone/IncomingCallWidget$Handle;->mContext:Landroid/content/Context;

    const v2, 0x10a0005

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 528
    return-object v0
.end method

.method private makeArrowViews(Landroid/widget/FrameLayout;I)V
    .locals 12
    .parameter "container"
    .parameter "diameter"

    .prologue
    .line 410
    new-instance v8, Landroid/widget/LinearLayout;

    iget-object v9, p0, Lcom/android/phone/IncomingCallWidget$Handle;->mContext:Landroid/content/Context;

    invoke-direct {v8, v9}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v8, p0, Lcom/android/phone/IncomingCallWidget$Handle;->mArrowContainer:Landroid/widget/LinearLayout;

    .line 412
    const/high16 v0, 0x41a0

    .line 414
    .local v0, ALPHA_GAP:F
    const/4 v8, 0x3

    new-array v8, v8, [Landroid/widget/ImageView;

    iput-object v8, p0, Lcom/android/phone/IncomingCallWidget$Handle;->mArrowImageViews:[Landroid/widget/ImageView;

    .line 415
    const/4 v2, 0x0

    .line 416
    .local v2, arrowResId:I
    const/4 v4, 0x0

    .line 418
    .local v4, layoutGravity:I
    new-instance v7, Landroid/widget/LinearLayout$LayoutParams;

    mul-int/lit8 v8, p2, 0x3

    div-int/lit8 v8, v8, 0x50

    mul-int/lit8 v9, p2, 0x3

    div-int/lit8 v9, v9, 0x50

    const/4 v10, 0x0

    invoke-direct {v7, v8, v9, v10}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 421
    .local v7, paddingLp:Landroid/widget/LinearLayout$LayoutParams;
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    const/4 v8, 0x3

    if-ge v3, v8, :cond_3

    .line 422
    iget-object v8, p0, Lcom/android/phone/IncomingCallWidget$Handle;->mArrowImageViews:[Landroid/widget/ImageView;

    new-instance v9, Landroid/widget/ImageView;

    iget-object v10, p0, Lcom/android/phone/IncomingCallWidget$Handle;->mContext:Landroid/content/Context;

    invoke-direct {v9, v10}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    aput-object v9, v8, v3

    .line 423
    const/4 v1, 0x0

    .line 425
    .local v1, alpha:I
    iget v8, p0, Lcom/android/phone/IncomingCallWidget$Handle;->mHandleType:I

    const/4 v9, 0x1

    if-ne v8, v9, :cond_2

    .line 426
    const/high16 v2, 0x7f02

    .line 427
    const/16 v4, 0x15

    .line 428
    const/high16 v8, 0x437f

    const/high16 v9, 0x3f80

    const/high16 v10, 0x41a0

    rsub-int/lit8 v11, v3, 0x3

    add-int/lit8 v11, v11, -0x1

    int-to-float v11, v11

    mul-float/2addr v10, v11

    const/high16 v11, 0x42c8

    div-float/2addr v10, v11

    sub-float/2addr v9, v10

    mul-float/2addr v8, v9

    float-to-int v1, v8

    .line 431
    if-eqz v3, :cond_0

    .line 432
    iget-object v8, p0, Lcom/android/phone/IncomingCallWidget$Handle;->mArrowContainer:Landroid/widget/LinearLayout;

    new-instance v9, Landroid/view/View;

    iget-object v10, p0, Lcom/android/phone/IncomingCallWidget$Handle;->mContext:Landroid/content/Context;

    invoke-direct {v9, v10}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    invoke-virtual {v8, v9, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 434
    :cond_0
    iget-object v8, p0, Lcom/android/phone/IncomingCallWidget$Handle;->mArrowContainer:Landroid/widget/LinearLayout;

    iget-object v9, p0, Lcom/android/phone/IncomingCallWidget$Handle;->mArrowImageViews:[Landroid/widget/ImageView;

    aget-object v9, v9, v3

    invoke-virtual {v8, v9}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 447
    :cond_1
    :goto_1
    iget-object v8, p0, Lcom/android/phone/IncomingCallWidget$Handle;->mArrowImageViews:[Landroid/widget/ImageView;

    aget-object v8, v8, v3

    invoke-virtual {v8, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 448
    iget-object v8, p0, Lcom/android/phone/IncomingCallWidget$Handle;->mArrowImageViews:[Landroid/widget/ImageView;

    aget-object v8, v8, v3

    invoke-virtual {v8, v1}, Landroid/widget/ImageView;->setAlpha(I)V

    .line 421
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 436
    :cond_2
    const/high16 v8, 0x437f

    const/high16 v9, 0x3f80

    const/high16 v10, 0x41a0

    int-to-float v11, v3

    mul-float/2addr v10, v11

    const/high16 v11, 0x42c8

    div-float/2addr v10, v11

    sub-float/2addr v9, v10

    mul-float/2addr v8, v9

    float-to-int v1, v8

    .line 437
    const v2, 0x7f020001

    .line 438
    const/16 v4, 0x13

    .line 440
    iget-object v8, p0, Lcom/android/phone/IncomingCallWidget$Handle;->mArrowContainer:Landroid/widget/LinearLayout;

    iget-object v9, p0, Lcom/android/phone/IncomingCallWidget$Handle;->mArrowImageViews:[Landroid/widget/ImageView;

    aget-object v9, v9, v3

    invoke-virtual {v8, v9}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 443
    const/4 v8, 0x2

    if-eq v3, v8, :cond_1

    .line 444
    iget-object v8, p0, Lcom/android/phone/IncomingCallWidget$Handle;->mArrowContainer:Landroid/widget/LinearLayout;

    new-instance v9, Landroid/view/View;

    iget-object v10, p0, Lcom/android/phone/IncomingCallWidget$Handle;->mContext:Landroid/content/Context;

    invoke-direct {v9, v10}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    invoke-virtual {v8, v9, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_1

    .line 451
    .end local v1           #alpha:I
    :cond_3
    new-instance v5, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v8, -0x2

    const/4 v9, -0x2

    invoke-direct {v5, v8, v9, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 454
    .local v5, layoutParams:Landroid/widget/FrameLayout$LayoutParams;
    iget-object v8, p0, Lcom/android/phone/IncomingCallWidget$Handle;->mArrowContainer:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v8, v5}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 456
    iget-object v8, p0, Lcom/android/phone/IncomingCallWidget$Handle;->mArrowContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v8}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 458
    .local v6, lp:Landroid/view/ViewGroup$MarginLayoutParams;
    iget v8, p0, Lcom/android/phone/IncomingCallWidget$Handle;->mHandleType:I

    const/4 v9, 0x1

    if-ne v8, v9, :cond_4

    .line 459
    mul-int/lit8 v8, p2, 0xb

    div-int/lit8 v8, v8, 0x78

    iput v8, v6, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 463
    :goto_2
    iget-object v8, p0, Lcom/android/phone/IncomingCallWidget$Handle;->mArrowContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v8, v6}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 464
    return-void

    .line 461
    :cond_4
    mul-int/lit8 v8, p2, 0xb

    div-int/lit8 v8, v8, 0x78

    iput v8, v6, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    goto :goto_2
.end method

.method private reset()V
    .locals 9

    .prologue
    const v2, 0x3e99999a

    const/high16 v1, 0x3f80

    .line 629
    new-instance v8, Landroid/view/animation/AnimationSet;

    const/4 v3, 0x1

    invoke-direct {v8, v3}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 631
    .local v8, aniSet:Landroid/view/animation/AnimationSet;
    new-instance v0, Landroid/view/animation/ScaleAnimation;

    iget-object v3, p0, Lcom/android/phone/IncomingCallWidget$Handle;->mTargetCircle:Lcom/android/phone/IncomingCallWidget$Handle$TargetCircle;

    invoke-virtual {v3}, Lcom/android/phone/IncomingCallWidget$Handle$TargetCircle;->getWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v5, v3

    iget-object v3, p0, Lcom/android/phone/IncomingCallWidget$Handle;->mTargetCircle:Lcom/android/phone/IncomingCallWidget$Handle$TargetCircle;

    invoke-virtual {v3}, Lcom/android/phone/IncomingCallWidget$Handle$TargetCircle;->getWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v6, v3

    move v3, v1

    move v4, v2

    invoke-direct/range {v0 .. v6}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFFF)V

    .line 633
    .local v0, scaleAni:Landroid/view/animation/ScaleAnimation;
    invoke-virtual {v8, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 635
    new-instance v7, Landroid/view/animation/AlphaAnimation;

    const/4 v2, 0x0

    invoke-direct {v7, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 636
    .local v7, alphaAni:Landroid/view/animation/AlphaAnimation;
    invoke-virtual {v8, v7}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 638
    const-wide/16 v1, 0x190

    invoke-virtual {v8, v1, v2}, Landroid/view/animation/AnimationSet;->setDuration(J)V

    .line 639
    iget-object v1, p0, Lcom/android/phone/IncomingCallWidget$Handle;->mContext:Landroid/content/Context;

    const v2, 0x10a0005

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v1

    invoke-virtual {v8, v1}, Landroid/view/animation/AnimationSet;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 642
    iget-object v1, p0, Lcom/android/phone/IncomingCallWidget$Handle;->mTargetCircle:Lcom/android/phone/IncomingCallWidget$Handle$TargetCircle;

    invoke-virtual {v1}, Lcom/android/phone/IncomingCallWidget$Handle$TargetCircle;->clearAnimation()V

    .line 643
    iget-object v1, p0, Lcom/android/phone/IncomingCallWidget$Handle;->mTargetCircle:Lcom/android/phone/IncomingCallWidget$Handle$TargetCircle;

    invoke-virtual {v1, v8}, Lcom/android/phone/IncomingCallWidget$Handle$TargetCircle;->startAnimation(Landroid/view/animation/Animation;)V

    .line 644
    iget-object v1, p0, Lcom/android/phone/IncomingCallWidget$Handle;->mTargetCircle:Lcom/android/phone/IncomingCallWidget$Handle$TargetCircle;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/android/phone/IncomingCallWidget$Handle$TargetCircle;->setVisibility(I)V

    .line 646
    iget-object v1, p0, Lcom/android/phone/IncomingCallWidget$Handle;->mTabCircle:Lcom/android/phone/IncomingCallWidget$Handle$TabCircle;

    const/16 v2, 0xff

    invoke-virtual {v1, v2}, Lcom/android/phone/IncomingCallWidget$Handle$TabCircle;->setAlpha(I)V

    .line 647
    iget-object v1, p0, Lcom/android/phone/IncomingCallWidget$Handle;->mTabCircle:Lcom/android/phone/IncomingCallWidget$Handle$TabCircle;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/phone/IncomingCallWidget$Handle$TabCircle;->setVisibility(I)V

    .line 648
    invoke-direct {p0}, Lcom/android/phone/IncomingCallWidget$Handle;->showArrow()V

    .line 649
    return-void
.end method

.method private setDisable()V
    .locals 3

    .prologue
    .line 655
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/high16 v1, 0x3f80

    const v2, 0x3eb33333

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 656
    .local v0, alphaAni:Landroid/view/animation/AlphaAnimation;
    const-wide/16 v1, 0xc8

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 657
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setFillAfter(Z)V

    .line 658
    iget-object v1, p0, Lcom/android/phone/IncomingCallWidget$Handle;->mTab:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 659
    iget-object v1, p0, Lcom/android/phone/IncomingCallWidget$Handle;->mTabCircle:Lcom/android/phone/IncomingCallWidget$Handle$TabCircle;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/android/phone/IncomingCallWidget$Handle$TabCircle;->setVisibility(I)V

    .line 660
    invoke-direct {p0}, Lcom/android/phone/IncomingCallWidget$Handle;->hideArrow()V

    .line 661
    return-void
.end method

.method private setEnable()V
    .locals 3

    .prologue
    .line 667
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const v1, 0x3eb33333

    const/high16 v2, 0x3f80

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 668
    .local v0, tabAni:Landroid/view/animation/AlphaAnimation;
    const-wide/16 v1, 0xc8

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 669
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setFillAfter(Z)V

    .line 670
    iget-object v1, p0, Lcom/android/phone/IncomingCallWidget$Handle;->mTab:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 671
    iget-object v1, p0, Lcom/android/phone/IncomingCallWidget$Handle;->mTabCircle:Lcom/android/phone/IncomingCallWidget$Handle$TabCircle;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/phone/IncomingCallWidget$Handle$TabCircle;->setVisibility(I)V

    .line 672
    invoke-direct {p0}, Lcom/android/phone/IncomingCallWidget$Handle;->showArrow()V

    .line 673
    return-void
.end method

.method private showArrow()V
    .locals 3

    .prologue
    const/16 v2, 0x64

    .line 467
    iget-object v0, p0, Lcom/android/phone/IncomingCallWidget$Handle;->mContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->isShown()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 468
    iget-object v0, p0, Lcom/android/phone/IncomingCallWidget$Handle;->mArrowContainer:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 470
    iget-object v0, p0, Lcom/android/phone/IncomingCallWidget$Handle;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 471
    iget-object v0, p0, Lcom/android/phone/IncomingCallWidget$Handle;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 474
    :cond_0
    return-void
.end method

.method private showTarget()V
    .locals 10

    .prologue
    const/4 v9, 0x1

    const v1, 0x3e99999a

    const/high16 v2, 0x3f80

    .line 605
    new-instance v8, Landroid/view/animation/AnimationSet;

    invoke-direct {v8, v9}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 607
    .local v8, aniSet:Landroid/view/animation/AnimationSet;
    new-instance v0, Landroid/view/animation/ScaleAnimation;

    iget-object v3, p0, Lcom/android/phone/IncomingCallWidget$Handle;->mTargetCircle:Lcom/android/phone/IncomingCallWidget$Handle$TargetCircle;

    invoke-virtual {v3}, Lcom/android/phone/IncomingCallWidget$Handle$TargetCircle;->getWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v5, v3

    iget-object v3, p0, Lcom/android/phone/IncomingCallWidget$Handle;->mTargetCircle:Lcom/android/phone/IncomingCallWidget$Handle$TargetCircle;

    invoke-virtual {v3}, Lcom/android/phone/IncomingCallWidget$Handle$TargetCircle;->getWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v6, v3

    move v3, v1

    move v4, v2

    invoke-direct/range {v0 .. v6}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFFF)V

    .line 609
    .local v0, scaleAni:Landroid/view/animation/ScaleAnimation;
    invoke-virtual {v8, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 611
    new-instance v7, Landroid/view/animation/AlphaAnimation;

    const/4 v1, 0x0

    invoke-direct {v7, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 612
    .local v7, alphaAni:Landroid/view/animation/AlphaAnimation;
    invoke-virtual {v8, v7}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 614
    const-wide/16 v1, 0x190

    invoke-virtual {v8, v1, v2}, Landroid/view/animation/AnimationSet;->setDuration(J)V

    .line 615
    iget-object v1, p0, Lcom/android/phone/IncomingCallWidget$Handle;->mContext:Landroid/content/Context;

    const v2, 0x10a0006

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v1

    invoke-virtual {v8, v1}, Landroid/view/animation/AnimationSet;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 617
    invoke-virtual {v8, v9}, Landroid/view/animation/AnimationSet;->setFillAfter(Z)V

    .line 619
    iget-object v1, p0, Lcom/android/phone/IncomingCallWidget$Handle;->mTargetCircle:Lcom/android/phone/IncomingCallWidget$Handle$TargetCircle;

    invoke-virtual {v1, v8}, Lcom/android/phone/IncomingCallWidget$Handle$TargetCircle;->startAnimation(Landroid/view/animation/Animation;)V

    .line 620
    iget-object v1, p0, Lcom/android/phone/IncomingCallWidget$Handle;->mTargetCircle:Lcom/android/phone/IncomingCallWidget$Handle$TargetCircle;

    const/16 v2, 0x61

    invoke-virtual {v1, v2}, Lcom/android/phone/IncomingCallWidget$Handle$TargetCircle;->setAlpha(I)V

    .line 621
    iget-object v1, p0, Lcom/android/phone/IncomingCallWidget$Handle;->mTargetCircle:Lcom/android/phone/IncomingCallWidget$Handle$TargetCircle;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/phone/IncomingCallWidget$Handle$TargetCircle;->setVisibility(I)V

    .line 622
    return-void
.end method


# virtual methods
.method public getState()I
    .locals 1

    .prologue
    .line 593
    iget v0, p0, Lcom/android/phone/IncomingCallWidget$Handle;->mCurrentState:I

    return v0
.end method

.method public isHandleSelected(FF)Z
    .locals 3
    .parameter "x"
    .parameter "y"

    .prologue
    .line 720
    iget-object v0, p0, Lcom/android/phone/IncomingCallWidget$Handle;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/IncomingCallWidget$Handle;->this$0:Lcom/android/phone/IncomingCallWidget;

    #getter for: Lcom/android/phone/IncomingCallWidget;->mDisplayMetrics:Landroid/util/DisplayMetrics;
    invoke-static {v1}, Lcom/android/phone/IncomingCallWidget;->access$600(Lcom/android/phone/IncomingCallWidget;)Landroid/util/DisplayMetrics;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 723
    iget-object v0, p0, Lcom/android/phone/IncomingCallWidget$Handle;->this$0:Lcom/android/phone/IncomingCallWidget;

    #getter for: Lcom/android/phone/IncomingCallWidget;->mDisplayMetrics:Landroid/util/DisplayMetrics;
    invoke-static {v0}, Lcom/android/phone/IncomingCallWidget;->access$600(Lcom/android/phone/IncomingCallWidget;)Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    iget-object v1, p0, Lcom/android/phone/IncomingCallWidget$Handle;->this$0:Lcom/android/phone/IncomingCallWidget;

    invoke-virtual {v1}, Lcom/android/phone/IncomingCallWidget;->getMeasuredHeight()I

    move-result v1

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/android/phone/IncomingCallWidget$Handle;->mTopOffset:I

    .line 725
    iget-object v0, p0, Lcom/android/phone/IncomingCallWidget$Handle;->this$0:Lcom/android/phone/IncomingCallWidget;

    #getter for: Lcom/android/phone/IncomingCallWidget;->DBG:Z
    invoke-static {v0}, Lcom/android/phone/IncomingCallWidget;->access$200(Lcom/android/phone/IncomingCallWidget;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/IncomingCallWidget$Handle;->this$0:Lcom/android/phone/IncomingCallWidget;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mTopOffset : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/phone/IncomingCallWidget$Handle;->mTopOffset:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/phone/IncomingCallWidget;->log(Ljava/lang/String;)V

    .line 727
    :cond_0
    iget v0, p0, Lcom/android/phone/IncomingCallWidget$Handle;->mTopOffset:I

    if-gez v0, :cond_1

    .line 728
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/phone/IncomingCallWidget$Handle;->mTopOffset:I

    .line 731
    :cond_1
    iget-object v0, p0, Lcom/android/phone/IncomingCallWidget$Handle;->mTabCircle:Lcom/android/phone/IncomingCallWidget$Handle$TabCircle;

    invoke-virtual {v0, p1, p2}, Lcom/android/phone/IncomingCallWidget$Handle$TabCircle;->isInCircle(FF)Z

    move-result v0

    return v0
.end method

.method public makeLayout()V
    .locals 8

    .prologue
    .line 536
    iget-object v5, p0, Lcom/android/phone/IncomingCallWidget$Handle;->mContext:Landroid/content/Context;

    check-cast v5, Landroid/app/Activity;

    invoke-virtual {v5}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v5

    invoke-interface {v5}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v5

    iget-object v6, p0, Lcom/android/phone/IncomingCallWidget$Handle;->this$0:Lcom/android/phone/IncomingCallWidget;

    #getter for: Lcom/android/phone/IncomingCallWidget;->mDisplayMetrics:Landroid/util/DisplayMetrics;
    invoke-static {v6}, Lcom/android/phone/IncomingCallWidget;->access$600(Lcom/android/phone/IncomingCallWidget;)Landroid/util/DisplayMetrics;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 539
    const/4 v2, 0x0

    .line 540
    .local v2, marginX:I
    iget-object v5, p0, Lcom/android/phone/IncomingCallWidget$Handle;->this$0:Lcom/android/phone/IncomingCallWidget;

    #getter for: Lcom/android/phone/IncomingCallWidget;->mDisplayMetrics:Landroid/util/DisplayMetrics;
    invoke-static {v5}, Lcom/android/phone/IncomingCallWidget;->access$600(Lcom/android/phone/IncomingCallWidget;)Landroid/util/DisplayMetrics;

    move-result-object v5

    iget v5, v5, Landroid/util/DisplayMetrics;->densityDpi:I

    const/16 v6, 0x140

    if-eq v5, v6, :cond_0

    iget-object v5, p0, Lcom/android/phone/IncomingCallWidget$Handle;->this$0:Lcom/android/phone/IncomingCallWidget;

    #getter for: Lcom/android/phone/IncomingCallWidget;->mDisplayMetrics:Landroid/util/DisplayMetrics;
    invoke-static {v5}, Lcom/android/phone/IncomingCallWidget;->access$600(Lcom/android/phone/IncomingCallWidget;)Landroid/util/DisplayMetrics;

    move-result-object v5

    iget v5, v5, Landroid/util/DisplayMetrics;->densityDpi:I

    const/16 v6, 0xf0

    if-ne v5, v6, :cond_3

    .line 542
    :cond_0
    iget-object v5, p0, Lcom/android/phone/IncomingCallWidget$Handle;->mContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v5}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v5

    mul-int/lit8 v5, v5, 0x25

    div-int/lit16 v2, v5, 0x80

    .line 547
    :goto_0
    iget v5, p0, Lcom/android/phone/IncomingCallWidget$Handle;->mHandleType:I

    const/4 v6, 0x1

    if-ne v5, v6, :cond_4

    .line 548
    iget-object v5, p0, Lcom/android/phone/IncomingCallWidget$Handle;->mContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v5}, Landroid/widget/FrameLayout;->getLeft()I

    move-result v5

    sub-int v0, v5, v2

    .line 549
    .local v0, leftHandleLeft:I
    iget-object v5, p0, Lcom/android/phone/IncomingCallWidget$Handle;->mContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v5}, Landroid/widget/FrameLayout;->getTop()I

    move-result v5

    iget-object v6, p0, Lcom/android/phone/IncomingCallWidget$Handle;->mContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v6}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v6

    div-int/lit8 v6, v6, 0xa

    add-int v1, v5, v6

    .line 550
    .local v1, leftHandleTop:I
    iget-object v5, p0, Lcom/android/phone/IncomingCallWidget$Handle;->mContainer:Landroid/widget/FrameLayout;

    iget-object v6, p0, Lcom/android/phone/IncomingCallWidget$Handle;->mContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v6}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v6

    add-int/2addr v6, v0

    iget-object v7, p0, Lcom/android/phone/IncomingCallWidget$Handle;->mContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v7}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v7

    add-int/2addr v7, v1

    invoke-virtual {v5, v0, v1, v6, v7}, Landroid/widget/FrameLayout;->layout(IIII)V

    .line 559
    .end local v0           #leftHandleLeft:I
    .end local v1           #leftHandleTop:I
    :cond_1
    :goto_1
    iget-object v5, p0, Lcom/android/phone/IncomingCallWidget$Handle;->this$0:Lcom/android/phone/IncomingCallWidget;

    #getter for: Lcom/android/phone/IncomingCallWidget;->DBG:Z
    invoke-static {v5}, Lcom/android/phone/IncomingCallWidget;->access$200(Lcom/android/phone/IncomingCallWidget;)Z

    move-result v5

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/android/phone/IncomingCallWidget$Handle;->this$0:Lcom/android/phone/IncomingCallWidget;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "mDisplayMetrics "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/phone/IncomingCallWidget$Handle;->this$0:Lcom/android/phone/IncomingCallWidget;

    #getter for: Lcom/android/phone/IncomingCallWidget;->mDisplayMetrics:Landroid/util/DisplayMetrics;
    invoke-static {v7}, Lcom/android/phone/IncomingCallWidget;->access$600(Lcom/android/phone/IncomingCallWidget;)Landroid/util/DisplayMetrics;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/phone/IncomingCallWidget;->log(Ljava/lang/String;)V

    .line 560
    :cond_2
    return-void

    .line 544
    :cond_3
    iget-object v5, p0, Lcom/android/phone/IncomingCallWidget$Handle;->mContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v5}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v5

    mul-int/lit8 v5, v5, 0x2e

    div-int/lit16 v2, v5, 0x80

    goto :goto_0

    .line 552
    :cond_4
    iget v5, p0, Lcom/android/phone/IncomingCallWidget$Handle;->mHandleType:I

    const/4 v6, 0x2

    if-ne v5, v6, :cond_1

    .line 553
    iget-object v5, p0, Lcom/android/phone/IncomingCallWidget$Handle;->mContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v5}, Landroid/widget/FrameLayout;->getLeft()I

    move-result v5

    add-int v3, v5, v2

    .line 554
    .local v3, rightHandleLeft:I
    iget-object v5, p0, Lcom/android/phone/IncomingCallWidget$Handle;->mContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v5}, Landroid/widget/FrameLayout;->getTop()I

    move-result v5

    iget-object v6, p0, Lcom/android/phone/IncomingCallWidget$Handle;->mContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v6}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v6

    div-int/lit8 v6, v6, 0xa

    add-int v4, v5, v6

    .line 555
    .local v4, rightHandleTop:I
    iget-object v5, p0, Lcom/android/phone/IncomingCallWidget$Handle;->mContainer:Landroid/widget/FrameLayout;

    iget-object v6, p0, Lcom/android/phone/IncomingCallWidget$Handle;->mContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v6}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v6

    add-int/2addr v6, v3

    iget-object v7, p0, Lcom/android/phone/IncomingCallWidget$Handle;->mContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v7}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v7

    add-int/2addr v7, v4

    invoke-virtual {v5, v3, v4, v6, v7}, Landroid/widget/FrameLayout;->layout(IIII)V

    goto :goto_1
.end method

.method public processMoveEvent(Landroid/view/MotionEvent;)V
    .locals 8
    .parameter "motion"

    .prologue
    const/4 v6, 0x0

    .line 681
    iget v4, p0, Lcom/android/phone/IncomingCallWidget$Handle;->mCurrentState:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_0

    .line 682
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    .line 683
    .local v2, x:F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    .line 685
    .local v3, y:F
    iget-object v4, p0, Lcom/android/phone/IncomingCallWidget$Handle;->mTargetCircle:Lcom/android/phone/IncomingCallWidget$Handle$TargetCircle;

    invoke-virtual {v4, v2, v3}, Lcom/android/phone/IncomingCallWidget$Handle$TargetCircle;->isThresholdReached(FF)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 686
    iget-object v4, p0, Lcom/android/phone/IncomingCallWidget$Handle;->mTargetCircle:Lcom/android/phone/IncomingCallWidget$Handle$TargetCircle;

    invoke-virtual {v4}, Lcom/android/phone/IncomingCallWidget$Handle$TargetCircle;->clearAnimation()V

    .line 687
    iget-object v4, p0, Lcom/android/phone/IncomingCallWidget$Handle;->mTabCircle:Lcom/android/phone/IncomingCallWidget$Handle$TabCircle;

    invoke-virtual {v4}, Lcom/android/phone/IncomingCallWidget$Handle$TabCircle;->clearAnimation()V

    .line 688
    iget-object v4, p0, Lcom/android/phone/IncomingCallWidget$Handle;->mTargetCircle:Lcom/android/phone/IncomingCallWidget$Handle$TargetCircle;

    const/16 v5, 0xff

    invoke-virtual {v4, v5}, Lcom/android/phone/IncomingCallWidget$Handle$TargetCircle;->setAlpha(I)V

    .line 689
    iget-object v4, p0, Lcom/android/phone/IncomingCallWidget$Handle;->mTargetCircle:Lcom/android/phone/IncomingCallWidget$Handle$TargetCircle;

    invoke-virtual {v4}, Lcom/android/phone/IncomingCallWidget$Handle$TargetCircle;->invalidate()V

    .line 690
    iget-object v4, p0, Lcom/android/phone/IncomingCallWidget$Handle;->mTabCircle:Lcom/android/phone/IncomingCallWidget$Handle$TabCircle;

    invoke-virtual {v4, v6}, Lcom/android/phone/IncomingCallWidget$Handle$TabCircle;->setAlpha(I)V

    .line 691
    iget-object v4, p0, Lcom/android/phone/IncomingCallWidget$Handle;->mTabCircle:Lcom/android/phone/IncomingCallWidget$Handle$TabCircle;

    invoke-virtual {v4}, Lcom/android/phone/IncomingCallWidget$Handle$TabCircle;->invalidate()V

    .line 692
    iget-object v4, p0, Lcom/android/phone/IncomingCallWidget$Handle;->this$0:Lcom/android/phone/IncomingCallWidget;

    #setter for: Lcom/android/phone/IncomingCallWidget;->mIsTracking:Z
    invoke-static {v4, v6}, Lcom/android/phone/IncomingCallWidget;->access$702(Lcom/android/phone/IncomingCallWidget;Z)Z

    .line 693
    iget-object v4, p0, Lcom/android/phone/IncomingCallWidget$Handle;->this$0:Lcom/android/phone/IncomingCallWidget;

    iget v5, p0, Lcom/android/phone/IncomingCallWidget$Handle;->mHandleType:I

    #calls: Lcom/android/phone/IncomingCallWidget;->dispatchTriggerEvent(I)V
    invoke-static {v4, v5}, Lcom/android/phone/IncomingCallWidget;->access$800(Lcom/android/phone/IncomingCallWidget;I)V

    .line 694
    iget-object v4, p0, Lcom/android/phone/IncomingCallWidget$Handle;->this$0:Lcom/android/phone/IncomingCallWidget;

    #calls: Lcom/android/phone/IncomingCallWidget;->setGrabbedState(I)V
    invoke-static {v4, v6}, Lcom/android/phone/IncomingCallWidget;->access$900(Lcom/android/phone/IncomingCallWidget;I)V

    .line 696
    iget-object v4, p0, Lcom/android/phone/IncomingCallWidget$Handle;->mHandler:Landroid/os/Handler;

    new-instance v5, Lcom/android/phone/IncomingCallWidget$Handle$3;

    invoke-direct {v5, p0}, Lcom/android/phone/IncomingCallWidget$Handle$3;-><init>(Lcom/android/phone/IncomingCallWidget$Handle;)V

    const-wide/16 v6, 0x1f4

    invoke-virtual {v4, v5, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 717
    .end local v2           #x:F
    .end local v3           #y:F
    :cond_0
    :goto_0
    return-void

    .line 704
    .restart local v2       #x:F
    .restart local v3       #y:F
    :cond_1
    iget-object v4, p0, Lcom/android/phone/IncomingCallWidget$Handle;->mTabCircle:Lcom/android/phone/IncomingCallWidget$Handle$TabCircle;

    invoke-virtual {v4, v2, v3}, Lcom/android/phone/IncomingCallWidget$Handle$TabCircle;->isInCircle(FF)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 705
    invoke-direct {p0}, Lcom/android/phone/IncomingCallWidget$Handle;->showArrow()V

    .line 710
    :goto_1
    iget-object v4, p0, Lcom/android/phone/IncomingCallWidget$Handle;->mTargetCircle:Lcom/android/phone/IncomingCallWidget$Handle$TargetCircle;

    invoke-virtual {v4, v2, v3}, Lcom/android/phone/IncomingCallWidget$Handle$TargetCircle;->getTargetProximityRatio(FF)D

    move-result-wide v0

    .line 711
    .local v0, ratio:D
    iget-object v4, p0, Lcom/android/phone/IncomingCallWidget$Handle;->mTabCircle:Lcom/android/phone/IncomingCallWidget$Handle$TabCircle;

    const-wide v5, 0x406fe00000000000L

    mul-double/2addr v5, v0

    double-to-int v5, v5

    rsub-int v5, v5, 0xff

    invoke-virtual {v4, v5}, Lcom/android/phone/IncomingCallWidget$Handle$TabCircle;->setAlpha(I)V

    .line 712
    iget-object v4, p0, Lcom/android/phone/IncomingCallWidget$Handle;->mTargetCircle:Lcom/android/phone/IncomingCallWidget$Handle$TargetCircle;

    const-wide v5, 0x4063c00000000000L

    mul-double/2addr v5, v0

    double-to-int v5, v5

    add-int/lit8 v5, v5, 0x61

    invoke-virtual {v4, v5}, Lcom/android/phone/IncomingCallWidget$Handle$TargetCircle;->setAlpha(I)V

    .line 713
    iget-object v4, p0, Lcom/android/phone/IncomingCallWidget$Handle;->mTargetCircle:Lcom/android/phone/IncomingCallWidget$Handle$TargetCircle;

    invoke-virtual {v4}, Lcom/android/phone/IncomingCallWidget$Handle$TargetCircle;->invalidate()V

    .line 714
    iget-object v4, p0, Lcom/android/phone/IncomingCallWidget$Handle;->mTabCircle:Lcom/android/phone/IncomingCallWidget$Handle$TabCircle;

    invoke-virtual {v4}, Lcom/android/phone/IncomingCallWidget$Handle$TabCircle;->invalidate()V

    goto :goto_0

    .line 707
    .end local v0           #ratio:D
    :cond_2
    invoke-direct {p0}, Lcom/android/phone/IncomingCallWidget$Handle;->hideArrow()V

    goto :goto_1
.end method

.method public setState(I)V
    .locals 2
    .parameter "newState"

    .prologue
    .line 567
    iget v0, p0, Lcom/android/phone/IncomingCallWidget$Handle;->mCurrentState:I

    .line 568
    .local v0, preState:I
    iput p1, p0, Lcom/android/phone/IncomingCallWidget$Handle;->mCurrentState:I

    .line 569
    iget v1, p0, Lcom/android/phone/IncomingCallWidget$Handle;->mCurrentState:I

    packed-switch v1, :pswitch_data_0

    .line 586
    :cond_0
    :goto_0
    return-void

    .line 571
    :pswitch_0
    invoke-direct {p0}, Lcom/android/phone/IncomingCallWidget$Handle;->showTarget()V

    goto :goto_0

    .line 574
    :pswitch_1
    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 575
    invoke-direct {p0}, Lcom/android/phone/IncomingCallWidget$Handle;->reset()V

    goto :goto_0

    .line 576
    :cond_1
    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 577
    invoke-direct {p0}, Lcom/android/phone/IncomingCallWidget$Handle;->setEnable()V

    goto :goto_0

    .line 581
    :pswitch_2
    invoke-direct {p0}, Lcom/android/phone/IncomingCallWidget$Handle;->setDisable()V

    goto :goto_0

    .line 569
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method
