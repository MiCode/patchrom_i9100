.class public Lcom/android/internal/widget/ActionBarContextView;
.super Lcom/android/internal/widget/AbsActionBarView;
.source "ActionBarContextView.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# static fields
.field private static final ANIMATE_IDLE:I = 0x0

.field private static final ANIMATE_IN:I = 0x1

.field private static final ANIMATE_OUT:I = 0x2

.field private static final TAG:Ljava/lang/String; = "ActionBarContextView"


# instance fields
.field private mActionMode:Landroid/view/ActionMode;

.field private mAnimateInOnLayout:Z

.field private mAnimationMode:I

.field private mClose:Landroid/view/View;

.field private mCurrentAnimation:Landroid/animation/Animator;

.field private mCustomView:Landroid/view/View;

.field private mIsParentThemeDeviceDefault:Z

.field private mOldActionMenuPresenter:Lcom/android/internal/view/menu/ActionMenuPresenter;

.field private mOldContentWidth:I

.field private mSplitBackground:Landroid/graphics/drawable/Drawable;

.field private mSubtitle:Ljava/lang/CharSequence;

.field private mSubtitleStyleRes:I

.field private mSubtitleView:Landroid/widget/TextView;

.field private mTitle:Ljava/lang/CharSequence;

.field private mTitleLayout:Landroid/widget/LinearLayout;

.field private mTitleOptional:Z

.field private mTitleStyleRes:I

.field private mTitleView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 97
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/internal/widget/ActionBarContextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 98
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 101
    const v0, 0x1010394

    invoke-direct {p0, p1, p2, v0}, Lcom/android/internal/widget/ActionBarContextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 102
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 5
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 105
    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/widget/AbsActionBarView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 89
    const/4 v2, -0x1

    iput v2, p0, Lcom/android/internal/widget/ActionBarContextView;->mOldContentWidth:I

    .line 107
    sget-object v2, Lcom/android/internal/R$styleable;->ActionMode:[I

    invoke-virtual {p1, p2, v2, p3, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 108
    .local v0, a:Landroid/content/res/TypedArray;
    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/widget/ActionBarContextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 110
    const/4 v2, 0x2

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    iput v2, p0, Lcom/android/internal/widget/ActionBarContextView;->mTitleStyleRes:I

    .line 112
    const/4 v2, 0x3

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    iput v2, p0, Lcom/android/internal/widget/ActionBarContextView;->mSubtitleStyleRes:I

    .line 115
    invoke-virtual {v0, v4, v3}, Landroid/content/res/TypedArray;->getLayoutDimension(II)I

    move-result v2

    iput v2, p0, Lcom/android/internal/widget/AbsActionBarView;->mContentHeight:I

    .line 118
    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/widget/ActionBarContextView;->mSplitBackground:Landroid/graphics/drawable/Drawable;

    .line 121
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 124
    new-instance v1, Landroid/util/TypedValue;

    invoke-direct {v1}, Landroid/util/TypedValue;-><init>()V

    .line 125
    .local v1, outValue:Landroid/util/TypedValue;
    invoke-virtual {p0}, Lcom/android/internal/widget/ActionBarContextView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    const v3, 0x10103fd

    invoke-virtual {v2, v3, v1, v4}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 126
    iget v2, v1, Landroid/util/TypedValue;->data:I

    if-eqz v2, :cond_0

    .line 127
    iput-boolean v4, p0, Lcom/android/internal/widget/ActionBarContextView;->mIsParentThemeDeviceDefault:Z

    .line 130
    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/android/internal/widget/ActionBarContextView;)Landroid/view/ActionMode;
    .locals 1
    .parameter "x0"

    .prologue
    .line 63
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarContextView;->mActionMode:Landroid/view/ActionMode;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/internal/widget/ActionBarContextView;Landroid/view/View;Landroid/graphics/Rect;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 63
    invoke-direct {p0, p1, p2}, Lcom/android/internal/widget/ActionBarContextView;->getVisibleDisplayRect(Landroid/view/View;Landroid/graphics/Rect;)V

    return-void
.end method

.method private finishAnimation()V
    .locals 2

    .prologue
    .line 453
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarContextView;->mCurrentAnimation:Landroid/animation/Animator;

    .line 454
    .local v0, a:Landroid/animation/Animator;
    if-eqz v0, :cond_0

    .line 455
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/internal/widget/ActionBarContextView;->mCurrentAnimation:Landroid/animation/Animator;

    .line 456
    invoke-virtual {v0}, Landroid/animation/Animator;->end()V

    .line 458
    :cond_0
    return-void
.end method

.method private getVisibleDisplayRect(Landroid/view/View;Landroid/graphics/Rect;)V
    .locals 12
    .parameter "anchor"
    .parameter "outRect"

    .prologue
    const/4 v9, 0x1

    const/4 v10, 0x0

    .line 750
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 789
    :cond_0
    :goto_0
    return-void

    .line 754
    :cond_1
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 755
    .local v0, displayFrame:Landroid/graphics/Rect;
    invoke-virtual {p1, v0}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 757
    invoke-virtual {p1}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v2

    .line 759
    .local v2, root:Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    .line 760
    .local v6, vlp:Landroid/view/ViewGroup$LayoutParams;
    const/4 v7, 0x0

    .line 762
    .local v7, wlp:Landroid/view/WindowManager$LayoutParams;
    instance-of v8, v6, Landroid/view/WindowManager$LayoutParams;

    if-eqz v8, :cond_2

    move-object v7, v6

    .line 763
    check-cast v7, Landroid/view/WindowManager$LayoutParams;

    .line 766
    :cond_2
    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    .line 767
    .local v5, visibleDisplayFrame:Landroid/graphics/Rect;
    const/4 v3, 0x0

    .line 769
    .local v3, statusBarHeight:I
    iget-object v8, p0, Lcom/android/internal/widget/ActionBarContextView;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    .line 772
    .local v1, dm:Landroid/util/DisplayMetrics;
    if-eqz v7, :cond_3

    .line 773
    iget v8, v7, Landroid/view/WindowManager$LayoutParams;->systemUiVisibility:I

    iget v11, v7, Landroid/view/WindowManager$LayoutParams;->subtreeSystemUiVisibility:I

    or-int v4, v8, v11

    .line 774
    .local v4, systemUiVisibility:I
    invoke-static {}, Landroid/util/GeneralUtil;->isPhone()Z

    move-result v8

    if-eqz v8, :cond_3

    and-int/lit16 v8, v4, 0x404

    if-nez v8, :cond_3

    .line 776
    iget-object v8, p0, Lcom/android/internal/widget/ActionBarContextView;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v11, 0x105000a

    invoke-virtual {v8, v11}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 779
    .end local v4           #systemUiVisibility:I
    :cond_3
    iput v10, v5, Landroid/graphics/Rect;->left:I

    .line 780
    iput v3, v5, Landroid/graphics/Rect;->top:I

    .line 781
    iget v8, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v8, v5, Landroid/graphics/Rect;->right:I

    .line 782
    iget v8, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v8, v5, Landroid/graphics/Rect;->bottom:I

    .line 784
    iget v8, v0, Landroid/graphics/Rect;->left:I

    if-gez v8, :cond_5

    move v8, v9

    :goto_1
    iget v11, v0, Landroid/graphics/Rect;->top:I

    if-gez v11, :cond_6

    :goto_2
    or-int/2addr v8, v9

    if-eqz v8, :cond_4

    .line 785
    invoke-virtual {v0, v5}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 788
    :cond_4
    invoke-virtual {p2, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto :goto_0

    :cond_5
    move v8, v10

    .line 784
    goto :goto_1

    :cond_6
    move v9, v10

    goto :goto_2
.end method

.method private initClose()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 261
    iget-object v3, p0, Lcom/android/internal/widget/ActionBarContextView;->mClose:Landroid/view/View;

    if-nez v3, :cond_5

    .line 262
    iget-object v3, p0, Lcom/android/internal/widget/ActionBarContextView;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    .line 264
    .local v2, inflater:Landroid/view/LayoutInflater;
    iget-boolean v3, p0, Lcom/android/internal/widget/ActionBarContextView;->mIsParentThemeDeviceDefault:Z

    if-eqz v3, :cond_4

    .line 265
    const v3, 0x1090102

    invoke-virtual {v2, v3, p0, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/widget/ActionBarContextView;->mClose:Landroid/view/View;

    .line 271
    :goto_0
    iget-object v3, p0, Lcom/android/internal/widget/ActionBarContextView;->mClose:Landroid/view/View;

    invoke-virtual {p0, v3}, Lcom/android/internal/widget/ActionBarContextView;->addView(Landroid/view/View;)V

    .line 277
    .end local v2           #inflater:Landroid/view/LayoutInflater;
    :cond_0
    :goto_1
    iget-boolean v3, p0, Lcom/android/internal/widget/ActionBarContextView;->mIsParentThemeDeviceDefault:Z

    if-eqz v3, :cond_1

    .line 278
    iget-object v3, p0, Lcom/android/internal/widget/ActionBarContextView;->mClose:Landroid/view/View;

    invoke-virtual {v3, v5}, Landroid/view/View;->setHoverPopupType(I)V

    .line 282
    :cond_1
    iget-object v3, p0, Lcom/android/internal/widget/ActionBarContextView;->mClose:Landroid/view/View;

    const v4, 0x102026a

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 284
    .local v1, closeButton:Landroid/view/View;
    iget-object v3, p0, Lcom/android/internal/widget/ActionBarContextView;->mActionMode:Landroid/view/ActionMode;

    if-eqz v3, :cond_2

    .line 285
    new-instance v3, Lcom/android/internal/widget/ActionBarContextView$1;

    invoke-direct {v3, p0}, Lcom/android/internal/widget/ActionBarContextView$1;-><init>(Lcom/android/internal/widget/ActionBarContextView;)V

    invoke-virtual {v1, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 293
    :cond_2
    iget-boolean v3, p0, Lcom/android/internal/widget/ActionBarContextView;->mIsParentThemeDeviceDefault:Z

    if-eqz v3, :cond_3

    move-object v3, v1

    .line 294
    check-cast v3, Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    .line 295
    .local v0, childCount:I
    if-gt v0, v5, :cond_3

    .line 297
    new-instance v3, Lcom/android/internal/widget/ActionBarContextView$2;

    invoke-direct {v3, p0}, Lcom/android/internal/widget/ActionBarContextView$2;-><init>(Lcom/android/internal/widget/ActionBarContextView;)V

    invoke-virtual {v1, v3}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 333
    .end local v0           #childCount:I
    :cond_3
    return-void

    .line 268
    .end local v1           #closeButton:Landroid/view/View;
    .restart local v2       #inflater:Landroid/view/LayoutInflater;
    :cond_4
    const v3, 0x109001d

    invoke-virtual {v2, v3, p0, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/widget/ActionBarContextView;->mClose:Landroid/view/View;

    goto :goto_0

    .line 272
    .end local v2           #inflater:Landroid/view/LayoutInflater;
    :cond_5
    iget-object v3, p0, Lcom/android/internal/widget/ActionBarContextView;->mClose:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    if-nez v3, :cond_0

    .line 273
    iget-object v3, p0, Lcom/android/internal/widget/ActionBarContextView;->mClose:Landroid/view/View;

    invoke-virtual {p0, v3}, Lcom/android/internal/widget/ActionBarContextView;->addView(Landroid/view/View;)V

    goto :goto_1
.end method

.method private initTitle()V
    .locals 9

    .prologue
    const/16 v6, 0x8

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 233
    iget-object v3, p0, Lcom/android/internal/widget/ActionBarContextView;->mTitleLayout:Landroid/widget/LinearLayout;

    if-nez v3, :cond_1

    .line 234
    invoke-virtual {p0}, Lcom/android/internal/widget/ActionBarContextView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    .line 235
    .local v2, inflater:Landroid/view/LayoutInflater;
    const v3, 0x1090019

    invoke-virtual {v2, v3, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 236
    invoke-virtual {p0}, Lcom/android/internal/widget/ActionBarContextView;->getChildCount()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {p0, v3}, Lcom/android/internal/widget/ActionBarContextView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    iput-object v3, p0, Lcom/android/internal/widget/ActionBarContextView;->mTitleLayout:Landroid/widget/LinearLayout;

    .line 237
    iget-object v3, p0, Lcom/android/internal/widget/ActionBarContextView;->mTitleLayout:Landroid/widget/LinearLayout;

    const v7, 0x1020268

    invoke-virtual {v3, v7}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/internal/widget/ActionBarContextView;->mTitleView:Landroid/widget/TextView;

    .line 238
    iget-object v3, p0, Lcom/android/internal/widget/ActionBarContextView;->mTitleLayout:Landroid/widget/LinearLayout;

    const v7, 0x1020269

    invoke-virtual {v3, v7}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/internal/widget/ActionBarContextView;->mSubtitleView:Landroid/widget/TextView;

    .line 239
    iget v3, p0, Lcom/android/internal/widget/ActionBarContextView;->mTitleStyleRes:I

    if-eqz v3, :cond_0

    .line 240
    iget-object v3, p0, Lcom/android/internal/widget/ActionBarContextView;->mTitleView:Landroid/widget/TextView;

    iget-object v7, p0, Lcom/android/internal/widget/ActionBarContextView;->mContext:Landroid/content/Context;

    iget v8, p0, Lcom/android/internal/widget/ActionBarContextView;->mTitleStyleRes:I

    invoke-virtual {v3, v7, v8}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 242
    :cond_0
    iget v3, p0, Lcom/android/internal/widget/ActionBarContextView;->mSubtitleStyleRes:I

    if-eqz v3, :cond_1

    .line 243
    iget-object v3, p0, Lcom/android/internal/widget/ActionBarContextView;->mSubtitleView:Landroid/widget/TextView;

    iget-object v7, p0, Lcom/android/internal/widget/ActionBarContextView;->mContext:Landroid/content/Context;

    iget v8, p0, Lcom/android/internal/widget/ActionBarContextView;->mSubtitleStyleRes:I

    invoke-virtual {v3, v7, v8}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 247
    .end local v2           #inflater:Landroid/view/LayoutInflater;
    :cond_1
    iget-object v3, p0, Lcom/android/internal/widget/ActionBarContextView;->mTitleView:Landroid/widget/TextView;

    iget-object v7, p0, Lcom/android/internal/widget/ActionBarContextView;->mTitle:Ljava/lang/CharSequence;

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 248
    iget-object v3, p0, Lcom/android/internal/widget/ActionBarContextView;->mSubtitleView:Landroid/widget/TextView;

    iget-object v7, p0, Lcom/android/internal/widget/ActionBarContextView;->mSubtitle:Ljava/lang/CharSequence;

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 250
    iget-object v3, p0, Lcom/android/internal/widget/ActionBarContextView;->mTitle:Ljava/lang/CharSequence;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_5

    move v1, v4

    .line 251
    .local v1, hasTitle:Z
    :goto_0
    iget-object v3, p0, Lcom/android/internal/widget/ActionBarContextView;->mSubtitle:Ljava/lang/CharSequence;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_6

    move v0, v4

    .line 252
    .local v0, hasSubtitle:Z
    :goto_1
    iget-object v4, p0, Lcom/android/internal/widget/ActionBarContextView;->mSubtitleView:Landroid/widget/TextView;

    if-eqz v0, :cond_7

    move v3, v5

    :goto_2
    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 253
    iget-object v3, p0, Lcom/android/internal/widget/ActionBarContextView;->mTitleLayout:Landroid/widget/LinearLayout;

    if-nez v1, :cond_2

    if-eqz v0, :cond_3

    :cond_2
    move v6, v5

    :cond_3
    invoke-virtual {v3, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 254
    iget-object v3, p0, Lcom/android/internal/widget/ActionBarContextView;->mTitleLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    if-nez v3, :cond_4

    .line 255
    iget-object v3, p0, Lcom/android/internal/widget/ActionBarContextView;->mTitleLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v3}, Lcom/android/internal/widget/ActionBarContextView;->addView(Landroid/view/View;)V

    .line 257
    :cond_4
    return-void

    .end local v0           #hasSubtitle:Z
    .end local v1           #hasTitle:Z
    :cond_5
    move v1, v5

    .line 250
    goto :goto_0

    .restart local v1       #hasTitle:Z
    :cond_6
    move v0, v5

    .line 251
    goto :goto_1

    .restart local v0       #hasSubtitle:Z
    :cond_7
    move v3, v6

    .line 252
    goto :goto_2
.end method

.method private makeInAnimation()Landroid/animation/Animator;
    .locals 13

    .prologue
    const/4 v12, 0x0

    .line 612
    iget-object v9, p0, Lcom/android/internal/widget/ActionBarContextView;->mClose:Landroid/view/View;

    iget-object v8, p0, Lcom/android/internal/widget/ActionBarContextView;->mClose:Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->getWidth()I

    move-result v8

    neg-int v10, v8

    iget-object v8, p0, Lcom/android/internal/widget/ActionBarContextView;->mClose:Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    check-cast v8, Landroid/view/ViewGroup$MarginLayoutParams;

    iget v8, v8, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    sub-int v8, v10, v8

    int-to-float v8, v8

    invoke-virtual {v9, v8}, Landroid/view/View;->setTranslationX(F)V

    .line 614
    iget-object v8, p0, Lcom/android/internal/widget/ActionBarContextView;->mClose:Landroid/view/View;

    const-string v9, "translationX"

    const/4 v10, 0x1

    new-array v10, v10, [F

    const/4 v11, 0x0

    aput v12, v10, v11

    invoke-static {v8, v9, v10}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .line 615
    .local v2, buttonAnimator:Landroid/animation/ObjectAnimator;
    const-wide/16 v8, 0xc8

    invoke-virtual {v2, v8, v9}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 616
    invoke-virtual {v2, p0}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 617
    new-instance v8, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v8}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v2, v8}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 619
    new-instance v7, Landroid/animation/AnimatorSet;

    invoke-direct {v7}, Landroid/animation/AnimatorSet;-><init>()V

    .line 620
    .local v7, set:Landroid/animation/AnimatorSet;
    invoke-virtual {v7, v2}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v1

    .line 622
    .local v1, b:Landroid/animation/AnimatorSet$Builder;
    iget-object v8, p0, Lcom/android/internal/widget/AbsActionBarView;->mMenuView:Lcom/android/internal/view/menu/ActionMenuView;

    if-eqz v8, :cond_0

    .line 623
    iget-object v8, p0, Lcom/android/internal/widget/AbsActionBarView;->mMenuView:Lcom/android/internal/view/menu/ActionMenuView;

    invoke-virtual {v8}, Lcom/android/internal/view/menu/ActionMenuView;->getChildCount()I

    move-result v4

    .line 624
    .local v4, count:I
    if-lez v4, :cond_0

    .line 625
    add-int/lit8 v5, v4, -0x1

    .local v5, i:I
    const/4 v6, 0x0

    .local v6, j:I
    :goto_0
    if-ltz v5, :cond_0

    .line 626
    iget-object v8, p0, Lcom/android/internal/widget/AbsActionBarView;->mMenuView:Lcom/android/internal/view/menu/ActionMenuView;

    invoke-virtual {v8, v5}, Lcom/android/internal/view/menu/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 627
    .local v3, child:Landroid/view/View;
    invoke-virtual {v3, v12}, Landroid/view/View;->setScaleY(F)V

    .line 628
    const-string v8, "scaleY"

    const/4 v9, 0x2

    new-array v9, v9, [F

    fill-array-data v9, :array_0

    invoke-static {v3, v8, v9}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 629
    .local v0, a:Landroid/animation/ObjectAnimator;
    const-wide/16 v8, 0x32

    invoke-virtual {v0, v8, v9}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 630
    invoke-virtual {v1, v0}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 625
    add-int/lit8 v5, v5, -0x1

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 635
    .end local v0           #a:Landroid/animation/ObjectAnimator;
    .end local v3           #child:Landroid/view/View;
    .end local v4           #count:I
    .end local v5           #i:I
    .end local v6           #j:I
    :cond_0
    return-object v7

    .line 628
    nop

    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
    .end array-data
.end method

.method private makeOutAnimation()Landroid/animation/Animator;
    .locals 15

    .prologue
    const/4 v14, 0x1

    const/4 v13, 0x0

    const/4 v12, 0x0

    .line 639
    iget-object v8, p0, Lcom/android/internal/widget/ActionBarContextView;->mClose:Landroid/view/View;

    const-string v9, "translationX"

    new-array v10, v14, [F

    iget-object v7, p0, Lcom/android/internal/widget/ActionBarContextView;->mClose:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getWidth()I

    move-result v7

    neg-int v11, v7

    iget-object v7, p0, Lcom/android/internal/widget/ActionBarContextView;->mClose:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    check-cast v7, Landroid/view/ViewGroup$MarginLayoutParams;

    iget v7, v7, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    sub-int v7, v11, v7

    int-to-float v7, v7

    aput v7, v10, v13

    invoke-static {v8, v9, v10}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .line 641
    .local v2, buttonAnimator:Landroid/animation/ObjectAnimator;
    const-wide/16 v7, 0xc8

    invoke-virtual {v2, v7, v8}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 642
    invoke-virtual {v2, p0}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 643
    new-instance v7, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v7}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v2, v7}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 645
    new-instance v6, Landroid/animation/AnimatorSet;

    invoke-direct {v6}, Landroid/animation/AnimatorSet;-><init>()V

    .line 646
    .local v6, set:Landroid/animation/AnimatorSet;
    invoke-virtual {v6, v2}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v1

    .line 648
    .local v1, b:Landroid/animation/AnimatorSet$Builder;
    iget-object v7, p0, Lcom/android/internal/widget/AbsActionBarView;->mMenuView:Lcom/android/internal/view/menu/ActionMenuView;

    if-eqz v7, :cond_0

    .line 649
    iget-object v7, p0, Lcom/android/internal/widget/AbsActionBarView;->mMenuView:Lcom/android/internal/view/menu/ActionMenuView;

    invoke-virtual {v7}, Lcom/android/internal/view/menu/ActionMenuView;->getChildCount()I

    move-result v4

    .line 650
    .local v4, count:I
    if-lez v4, :cond_0

    .line 651
    const/4 v5, 0x0

    .local v5, i:I
    :goto_0
    if-gez v5, :cond_0

    .line 652
    iget-object v7, p0, Lcom/android/internal/widget/AbsActionBarView;->mMenuView:Lcom/android/internal/view/menu/ActionMenuView;

    invoke-virtual {v7, v5}, Lcom/android/internal/view/menu/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 653
    .local v3, child:Landroid/view/View;
    invoke-virtual {v3, v12}, Landroid/view/View;->setScaleY(F)V

    .line 654
    const-string v7, "scaleY"

    new-array v8, v14, [F

    aput v12, v8, v13

    invoke-static {v3, v7, v8}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 655
    .local v0, a:Landroid/animation/ObjectAnimator;
    const-wide/16 v7, 0x12c

    invoke-virtual {v0, v7, v8}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 656
    invoke-virtual {v1, v0}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 651
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 661
    .end local v0           #a:Landroid/animation/ObjectAnimator;
    .end local v3           #child:Landroid/view/View;
    .end local v4           #count:I
    .end local v5           #i:I
    :cond_0
    return-object v6
.end method


# virtual methods
.method public closeMode()V
    .locals 2

    .prologue
    const/4 v1, 0x2

    .line 437
    iget v0, p0, Lcom/android/internal/widget/ActionBarContextView;->mAnimationMode:I

    if-ne v0, v1, :cond_0

    .line 450
    :goto_0
    return-void

    .line 441
    :cond_0
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarContextView;->mClose:Landroid/view/View;

    if-nez v0, :cond_1

    .line 442
    invoke-virtual {p0}, Lcom/android/internal/widget/ActionBarContextView;->killMode()V

    goto :goto_0

    .line 446
    :cond_1
    invoke-direct {p0}, Lcom/android/internal/widget/ActionBarContextView;->finishAnimation()V

    .line 447
    iput v1, p0, Lcom/android/internal/widget/ActionBarContextView;->mAnimationMode:I

    .line 448
    invoke-direct {p0}, Lcom/android/internal/widget/ActionBarContextView;->makeOutAnimation()Landroid/animation/Animator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/widget/ActionBarContextView;->mCurrentAnimation:Landroid/animation/Animator;

    .line 449
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarContextView;->mCurrentAnimation:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    goto :goto_0
.end method

.method protected generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 3

    .prologue
    .line 499
    new-instance v0, Landroid/view/ViewGroup$MarginLayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 2
    .parameter "attrs"

    .prologue
    .line 504
    new-instance v0, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-virtual {p0}, Lcom/android/internal/widget/ActionBarContextView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method public getSubtitle()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 229
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarContextView;->mSubtitle:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getTitle()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 225
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarContextView;->mTitle:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public hideOverflowMenu()Z
    .locals 1

    .prologue
    .line 481
    iget-object v0, p0, Lcom/android/internal/widget/AbsActionBarView;->mActionMenuPresenter:Lcom/android/internal/view/menu/ActionMenuPresenter;

    if-eqz v0, :cond_0

    .line 482
    iget-object v0, p0, Lcom/android/internal/widget/AbsActionBarView;->mActionMenuPresenter:Lcom/android/internal/view/menu/ActionMenuPresenter;

    invoke-virtual {v0}, Lcom/android/internal/view/menu/ActionMenuPresenter;->hideOverflowMenu()Z

    move-result v0

    .line 484
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public initForMode(Landroid/view/ActionMode;)V
    .locals 13
    .parameter "mode"

    .prologue
    const/4 v12, 0x0

    const/4 v11, -0x1

    const/4 v10, 0x0

    const/4 v9, 0x1

    .line 337
    iget-object v6, p0, Lcom/android/internal/widget/ActionBarContextView;->mClose:Landroid/view/View;

    if-nez v6, :cond_5

    .line 338
    iget-object v6, p0, Lcom/android/internal/widget/ActionBarContextView;->mContext:Landroid/content/Context;

    invoke-static {v6}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    .line 340
    .local v3, inflater:Landroid/view/LayoutInflater;
    iget-boolean v6, p0, Lcom/android/internal/widget/ActionBarContextView;->mIsParentThemeDeviceDefault:Z

    if-eqz v6, :cond_4

    .line 341
    const v6, 0x1090102

    invoke-virtual {v3, v6, p0, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v6

    iput-object v6, p0, Lcom/android/internal/widget/ActionBarContextView;->mClose:Landroid/view/View;

    .line 347
    :goto_0
    iget-object v6, p0, Lcom/android/internal/widget/ActionBarContextView;->mClose:Landroid/view/View;

    invoke-virtual {p0, v6}, Lcom/android/internal/widget/ActionBarContextView;->addView(Landroid/view/View;)V

    .line 353
    .end local v3           #inflater:Landroid/view/LayoutInflater;
    :cond_0
    :goto_1
    iget-boolean v6, p0, Lcom/android/internal/widget/ActionBarContextView;->mIsParentThemeDeviceDefault:Z

    if-eqz v6, :cond_1

    .line 354
    iget-object v6, p0, Lcom/android/internal/widget/ActionBarContextView;->mClose:Landroid/view/View;

    invoke-virtual {v6, v9}, Landroid/view/View;->setHoverPopupType(I)V

    .line 359
    :cond_1
    iput-object p1, p0, Lcom/android/internal/widget/ActionBarContextView;->mActionMode:Landroid/view/ActionMode;

    .line 362
    iget-object v6, p0, Lcom/android/internal/widget/ActionBarContextView;->mClose:Landroid/view/View;

    const v7, 0x102026a

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 363
    .local v2, closeButton:Landroid/view/View;
    new-instance v6, Lcom/android/internal/widget/ActionBarContextView$3;

    invoke-direct {v6, p0, p1}, Lcom/android/internal/widget/ActionBarContextView$3;-><init>(Lcom/android/internal/widget/ActionBarContextView;Landroid/view/ActionMode;)V

    invoke-virtual {v2, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 370
    iget-boolean v6, p0, Lcom/android/internal/widget/ActionBarContextView;->mIsParentThemeDeviceDefault:Z

    if-eqz v6, :cond_2

    move-object v6, v2

    .line 371
    check-cast v6, Landroid/widget/LinearLayout;

    invoke-virtual {v6}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v1

    .line 372
    .local v1, childCount:I
    if-gt v1, v9, :cond_2

    .line 374
    new-instance v6, Lcom/android/internal/widget/ActionBarContextView$4;

    invoke-direct {v6, p0}, Lcom/android/internal/widget/ActionBarContextView$4;-><init>(Lcom/android/internal/widget/ActionBarContextView;)V

    invoke-virtual {v2, v6}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 399
    .end local v1           #childCount:I
    :cond_2
    iget-object v6, p0, Lcom/android/internal/widget/ActionBarContextView;->mContext:Landroid/content/Context;

    sget-object v7, Lcom/android/internal/R$styleable;->ActionMode:[I

    const v8, 0x1010394

    invoke-virtual {v6, v12, v7, v8, v10}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 400
    .local v0, a:Landroid/content/res/TypedArray;
    invoke-virtual {v0, v9, v10}, Landroid/content/res/TypedArray;->getLayoutDimension(II)I

    move-result v6

    iput v6, p0, Lcom/android/internal/widget/AbsActionBarView;->mContentHeight:I

    .line 401
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 404
    invoke-virtual {p1}, Landroid/view/ActionMode;->getMenu()Landroid/view/Menu;

    move-result-object v5

    check-cast v5, Lcom/android/internal/view/menu/MenuBuilder;

    .line 405
    .local v5, menu:Lcom/android/internal/view/menu/MenuBuilder;
    iget-object v6, p0, Lcom/android/internal/widget/AbsActionBarView;->mActionMenuPresenter:Lcom/android/internal/view/menu/ActionMenuPresenter;

    if-eqz v6, :cond_3

    .line 406
    iget-object v6, p0, Lcom/android/internal/widget/AbsActionBarView;->mActionMenuPresenter:Lcom/android/internal/view/menu/ActionMenuPresenter;

    invoke-virtual {v6}, Lcom/android/internal/view/menu/ActionMenuPresenter;->dismissPopupMenus()Z

    .line 408
    :cond_3
    new-instance v6, Lcom/android/internal/view/menu/ActionMenuPresenter;

    iget-object v7, p0, Lcom/android/internal/widget/ActionBarContextView;->mContext:Landroid/content/Context;

    invoke-direct {v6, v7}, Lcom/android/internal/view/menu/ActionMenuPresenter;-><init>(Landroid/content/Context;)V

    iput-object v6, p0, Lcom/android/internal/widget/AbsActionBarView;->mActionMenuPresenter:Lcom/android/internal/view/menu/ActionMenuPresenter;

    .line 409
    iget-object v6, p0, Lcom/android/internal/widget/AbsActionBarView;->mActionMenuPresenter:Lcom/android/internal/view/menu/ActionMenuPresenter;

    invoke-virtual {v6, v9}, Lcom/android/internal/view/menu/ActionMenuPresenter;->setReserveOverflow(Z)V

    .line 411
    new-instance v4, Landroid/view/ViewGroup$LayoutParams;

    const/4 v6, -0x2

    invoke-direct {v4, v6, v11}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 413
    .local v4, layoutParams:Landroid/view/ViewGroup$LayoutParams;
    iget-boolean v6, p0, Lcom/android/internal/widget/AbsActionBarView;->mSplitActionBar:Z

    if-nez v6, :cond_6

    .line 414
    iget-object v6, p0, Lcom/android/internal/widget/AbsActionBarView;->mActionMenuPresenter:Lcom/android/internal/view/menu/ActionMenuPresenter;

    invoke-virtual {v5, v6}, Lcom/android/internal/view/menu/MenuBuilder;->addMenuPresenter(Lcom/android/internal/view/menu/MenuPresenter;)V

    .line 415
    iget-object v6, p0, Lcom/android/internal/widget/AbsActionBarView;->mActionMenuPresenter:Lcom/android/internal/view/menu/ActionMenuPresenter;

    invoke-virtual {v6, p0}, Lcom/android/internal/view/menu/ActionMenuPresenter;->getMenuView(Landroid/view/ViewGroup;)Lcom/android/internal/view/menu/MenuView;

    move-result-object v6

    check-cast v6, Lcom/android/internal/view/menu/ActionMenuView;

    iput-object v6, p0, Lcom/android/internal/widget/AbsActionBarView;->mMenuView:Lcom/android/internal/view/menu/ActionMenuView;

    .line 416
    iget-object v6, p0, Lcom/android/internal/widget/AbsActionBarView;->mMenuView:Lcom/android/internal/view/menu/ActionMenuView;

    invoke-virtual {v6, v12}, Lcom/android/internal/view/menu/ActionMenuView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 417
    iget-object v6, p0, Lcom/android/internal/widget/AbsActionBarView;->mMenuView:Lcom/android/internal/view/menu/ActionMenuView;

    invoke-virtual {p0, v6, v4}, Lcom/android/internal/widget/ActionBarContextView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 433
    :goto_2
    iput-boolean v9, p0, Lcom/android/internal/widget/ActionBarContextView;->mAnimateInOnLayout:Z

    .line 434
    return-void

    .line 344
    .end local v0           #a:Landroid/content/res/TypedArray;
    .end local v2           #closeButton:Landroid/view/View;
    .end local v4           #layoutParams:Landroid/view/ViewGroup$LayoutParams;
    .end local v5           #menu:Lcom/android/internal/view/menu/MenuBuilder;
    .restart local v3       #inflater:Landroid/view/LayoutInflater;
    :cond_4
    const v6, 0x109001d

    invoke-virtual {v3, v6, p0, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v6

    iput-object v6, p0, Lcom/android/internal/widget/ActionBarContextView;->mClose:Landroid/view/View;

    goto/16 :goto_0

    .line 348
    .end local v3           #inflater:Landroid/view/LayoutInflater;
    :cond_5
    iget-object v6, p0, Lcom/android/internal/widget/ActionBarContextView;->mClose:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v6

    if-nez v6, :cond_0

    .line 349
    iget-object v6, p0, Lcom/android/internal/widget/ActionBarContextView;->mClose:Landroid/view/View;

    invoke-virtual {p0, v6}, Lcom/android/internal/widget/ActionBarContextView;->addView(Landroid/view/View;)V

    goto/16 :goto_1

    .line 420
    .restart local v0       #a:Landroid/content/res/TypedArray;
    .restart local v2       #closeButton:Landroid/view/View;
    .restart local v4       #layoutParams:Landroid/view/ViewGroup$LayoutParams;
    .restart local v5       #menu:Lcom/android/internal/view/menu/MenuBuilder;
    :cond_6
    iget-object v6, p0, Lcom/android/internal/widget/AbsActionBarView;->mActionMenuPresenter:Lcom/android/internal/view/menu/ActionMenuPresenter;

    invoke-virtual {p0}, Lcom/android/internal/widget/ActionBarContextView;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v7

    iget v7, v7, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-virtual {v6, v7, v9}, Lcom/android/internal/view/menu/ActionMenuPresenter;->setWidthLimit(IZ)V

    .line 423
    iget-object v6, p0, Lcom/android/internal/widget/AbsActionBarView;->mActionMenuPresenter:Lcom/android/internal/view/menu/ActionMenuPresenter;

    const v7, 0x7fffffff

    invoke-virtual {v6, v7}, Lcom/android/internal/view/menu/ActionMenuPresenter;->setItemLimit(I)V

    .line 425
    iput v11, v4, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 426
    iget v6, p0, Lcom/android/internal/widget/AbsActionBarView;->mContentHeight:I

    iput v6, v4, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 427
    iget-object v6, p0, Lcom/android/internal/widget/AbsActionBarView;->mActionMenuPresenter:Lcom/android/internal/view/menu/ActionMenuPresenter;

    invoke-virtual {v5, v6}, Lcom/android/internal/view/menu/MenuBuilder;->addMenuPresenter(Lcom/android/internal/view/menu/MenuPresenter;)V

    .line 428
    iget-object v6, p0, Lcom/android/internal/widget/AbsActionBarView;->mActionMenuPresenter:Lcom/android/internal/view/menu/ActionMenuPresenter;

    invoke-virtual {v6, p0}, Lcom/android/internal/view/menu/ActionMenuPresenter;->getMenuView(Landroid/view/ViewGroup;)Lcom/android/internal/view/menu/MenuView;

    move-result-object v6

    check-cast v6, Lcom/android/internal/view/menu/ActionMenuView;

    iput-object v6, p0, Lcom/android/internal/widget/AbsActionBarView;->mMenuView:Lcom/android/internal/view/menu/ActionMenuView;

    .line 429
    iget-object v6, p0, Lcom/android/internal/widget/AbsActionBarView;->mMenuView:Lcom/android/internal/view/menu/ActionMenuView;

    iget-object v7, p0, Lcom/android/internal/widget/ActionBarContextView;->mSplitBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6, v7}, Lcom/android/internal/view/menu/ActionMenuView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 430
    iget-object v6, p0, Lcom/android/internal/widget/AbsActionBarView;->mSplitView:Lcom/android/internal/widget/ActionBarContainer;

    iget-object v7, p0, Lcom/android/internal/widget/AbsActionBarView;->mMenuView:Lcom/android/internal/view/menu/ActionMenuView;

    invoke-virtual {v6, v7, v4}, Lcom/android/internal/widget/ActionBarContainer;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_2
.end method

.method public isOverflowMenuShowing()Z
    .locals 1

    .prologue
    .line 489
    iget-object v0, p0, Lcom/android/internal/widget/AbsActionBarView;->mActionMenuPresenter:Lcom/android/internal/view/menu/ActionMenuPresenter;

    if-eqz v0, :cond_0

    .line 490
    iget-object v0, p0, Lcom/android/internal/widget/AbsActionBarView;->mActionMenuPresenter:Lcom/android/internal/view/menu/ActionMenuPresenter;

    invoke-virtual {v0}, Lcom/android/internal/view/menu/ActionMenuPresenter;->isOverflowMenuShowing()Z

    move-result v0

    .line 492
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isTitleOptional()Z
    .locals 1

    .prologue
    .line 745
    iget-boolean v0, p0, Lcom/android/internal/widget/ActionBarContextView;->mTitleOptional:Z

    return v0
.end method

.method public killMode()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 461
    invoke-direct {p0}, Lcom/android/internal/widget/ActionBarContextView;->finishAnimation()V

    .line 462
    invoke-virtual {p0}, Lcom/android/internal/widget/ActionBarContextView;->removeAllViews()V

    .line 463
    iget-object v0, p0, Lcom/android/internal/widget/AbsActionBarView;->mSplitView:Lcom/android/internal/widget/ActionBarContainer;

    if-eqz v0, :cond_0

    .line 464
    iget-object v0, p0, Lcom/android/internal/widget/AbsActionBarView;->mSplitView:Lcom/android/internal/widget/ActionBarContainer;

    iget-object v1, p0, Lcom/android/internal/widget/AbsActionBarView;->mMenuView:Lcom/android/internal/view/menu/ActionMenuView;

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/ActionBarContainer;->removeView(Landroid/view/View;)V

    .line 466
    :cond_0
    iput-object v2, p0, Lcom/android/internal/widget/ActionBarContextView;->mCustomView:Landroid/view/View;

    .line 467
    iput-object v2, p0, Lcom/android/internal/widget/AbsActionBarView;->mMenuView:Lcom/android/internal/view/menu/ActionMenuView;

    .line 468
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/widget/ActionBarContextView;->mAnimateInOnLayout:Z

    .line 469
    return-void
.end method

.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 713
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .parameter "animation"

    .prologue
    .line 705
    iget v0, p0, Lcom/android/internal/widget/ActionBarContextView;->mAnimationMode:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 706
    invoke-virtual {p0}, Lcom/android/internal/widget/ActionBarContextView;->killMode()V

    .line 708
    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/widget/ActionBarContextView;->mAnimationMode:I

    .line 709
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 717
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 701
    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .parameter "newConfig"

    .prologue
    .line 135
    invoke-super {p0, p1}, Lcom/android/internal/widget/AbsActionBarView;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 137
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarContextView;->mClose:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/widget/ActionBarContextView;->mClose:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-ne v0, p0, :cond_0

    .line 138
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarContextView;->mClose:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/ActionBarContextView;->removeView(Landroid/view/View;)V

    .line 140
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/widget/ActionBarContextView;->mClose:Landroid/view/View;

    .line 142
    invoke-direct {p0}, Lcom/android/internal/widget/ActionBarContextView;->initClose()V

    .line 143
    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 148
    invoke-super {p0}, Lcom/android/internal/widget/AbsActionBarView;->onDetachedFromWindow()V

    .line 149
    iget-object v0, p0, Lcom/android/internal/widget/AbsActionBarView;->mActionMenuPresenter:Lcom/android/internal/view/menu/ActionMenuPresenter;

    if-eqz v0, :cond_0

    .line 150
    iget-object v0, p0, Lcom/android/internal/widget/AbsActionBarView;->mActionMenuPresenter:Lcom/android/internal/view/menu/ActionMenuPresenter;

    invoke-virtual {v0}, Lcom/android/internal/view/menu/ActionMenuPresenter;->hideOverflowMenu()Z

    .line 151
    iget-object v0, p0, Lcom/android/internal/widget/AbsActionBarView;->mActionMenuPresenter:Lcom/android/internal/view/menu/ActionMenuPresenter;

    invoke-virtual {v0}, Lcom/android/internal/view/menu/ActionMenuPresenter;->hideSubMenus()Z

    .line 155
    :cond_0
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarContextView;->mClose:Landroid/view/View;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/widget/ActionBarContextView;->mClose:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-ne v0, p0, :cond_1

    .line 156
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarContextView;->mClose:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/ActionBarContextView;->removeView(Landroid/view/View;)V

    .line 158
    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/widget/ActionBarContextView;->mClose:Landroid/view/View;

    .line 160
    return-void
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 2
    .parameter "event"

    .prologue
    .line 726
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    move-result v0

    const/16 v1, 0x20

    if-ne v0, v1, :cond_0

    .line 728
    invoke-virtual {p1, p0}, Landroid/view/accessibility/AccessibilityEvent;->setSource(Landroid/view/View;)V

    .line 729
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    .line 730
    invoke-virtual {p0}, Lcom/android/internal/widget/ActionBarContextView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setPackageName(Ljava/lang/CharSequence;)V

    .line 731
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarContextView;->mTitle:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 735
    :goto_0
    return-void

    .line 733
    :cond_0
    invoke-super {p0, p1}, Lcom/android/internal/widget/AbsActionBarView;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    goto :goto_0
.end method

.method protected onLayout(ZIIII)V
    .locals 7
    .parameter "changed"
    .parameter "l"
    .parameter "t"
    .parameter "r"
    .parameter "b"

    .prologue
    const/16 v6, 0x8

    .line 666
    invoke-virtual {p0}, Lcom/android/internal/widget/ActionBarContextView;->getPaddingLeft()I

    move-result v2

    .line 667
    .local v2, x:I
    invoke-virtual {p0}, Lcom/android/internal/widget/ActionBarContextView;->getPaddingTop()I

    move-result v3

    .line 668
    .local v3, y:I
    sub-int v4, p5, p3

    invoke-virtual {p0}, Lcom/android/internal/widget/ActionBarContextView;->getPaddingTop()I

    move-result v5

    sub-int/2addr v4, v5

    invoke-virtual {p0}, Lcom/android/internal/widget/ActionBarContextView;->getPaddingBottom()I

    move-result v5

    sub-int v0, v4, v5

    .line 670
    .local v0, contentHeight:I
    iget-object v4, p0, Lcom/android/internal/widget/ActionBarContextView;->mClose:Landroid/view/View;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/internal/widget/ActionBarContextView;->mClose:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-eq v4, v6, :cond_0

    .line 671
    iget-object v4, p0, Lcom/android/internal/widget/ActionBarContextView;->mClose:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 672
    .local v1, lp:Landroid/view/ViewGroup$MarginLayoutParams;
    iget v4, v1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int/2addr v2, v4

    .line 673
    iget-object v4, p0, Lcom/android/internal/widget/ActionBarContextView;->mClose:Landroid/view/View;

    invoke-virtual {p0, v4, v2, v3, v0}, Lcom/android/internal/widget/ActionBarContextView;->positionChild(Landroid/view/View;III)I

    move-result v4

    add-int/2addr v2, v4

    .line 674
    iget v4, v1, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v2, v4

    .line 676
    iget-boolean v4, p0, Lcom/android/internal/widget/ActionBarContextView;->mAnimateInOnLayout:Z

    if-eqz v4, :cond_0

    .line 677
    const/4 v4, 0x1

    iput v4, p0, Lcom/android/internal/widget/ActionBarContextView;->mAnimationMode:I

    .line 678
    invoke-direct {p0}, Lcom/android/internal/widget/ActionBarContextView;->makeInAnimation()Landroid/animation/Animator;

    move-result-object v4

    iput-object v4, p0, Lcom/android/internal/widget/ActionBarContextView;->mCurrentAnimation:Landroid/animation/Animator;

    .line 679
    iget-object v4, p0, Lcom/android/internal/widget/ActionBarContextView;->mCurrentAnimation:Landroid/animation/Animator;

    invoke-virtual {v4}, Landroid/animation/Animator;->start()V

    .line 680
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/android/internal/widget/ActionBarContextView;->mAnimateInOnLayout:Z

    .line 684
    .end local v1           #lp:Landroid/view/ViewGroup$MarginLayoutParams;
    :cond_0
    iget-object v4, p0, Lcom/android/internal/widget/ActionBarContextView;->mTitleLayout:Landroid/widget/LinearLayout;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/android/internal/widget/ActionBarContextView;->mCustomView:Landroid/view/View;

    if-nez v4, :cond_1

    iget-object v4, p0, Lcom/android/internal/widget/ActionBarContextView;->mTitleLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v4}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v4

    if-eq v4, v6, :cond_1

    .line 685
    iget-object v4, p0, Lcom/android/internal/widget/ActionBarContextView;->mTitleLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v4, v2, v3, v0}, Lcom/android/internal/widget/ActionBarContextView;->positionChild(Landroid/view/View;III)I

    move-result v4

    add-int/2addr v2, v4

    .line 688
    :cond_1
    iget-object v4, p0, Lcom/android/internal/widget/ActionBarContextView;->mCustomView:Landroid/view/View;

    if-eqz v4, :cond_2

    .line 689
    iget-object v4, p0, Lcom/android/internal/widget/ActionBarContextView;->mCustomView:Landroid/view/View;

    invoke-virtual {p0, v4, v2, v3, v0}, Lcom/android/internal/widget/ActionBarContextView;->positionChild(Landroid/view/View;III)I

    move-result v4

    add-int/2addr v2, v4

    .line 692
    :cond_2
    sub-int v4, p4, p2

    invoke-virtual {p0}, Lcom/android/internal/widget/ActionBarContextView;->getPaddingRight()I

    move-result v5

    sub-int v2, v4, v5

    .line 694
    iget-object v4, p0, Lcom/android/internal/widget/AbsActionBarView;->mMenuView:Lcom/android/internal/view/menu/ActionMenuView;

    if-eqz v4, :cond_3

    .line 695
    iget-object v4, p0, Lcom/android/internal/widget/AbsActionBarView;->mMenuView:Lcom/android/internal/view/menu/ActionMenuView;

    invoke-virtual {p0, v4, v2, v3, v0}, Lcom/android/internal/widget/ActionBarContextView;->positionChildInverse(Landroid/view/View;III)I

    move-result v4

    sub-int/2addr v2, v4

    .line 697
    :cond_3
    return-void
.end method

.method protected onMeasure(II)V
    .locals 27
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 517
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v23

    .line 518
    .local v23, widthMode:I
    const/high16 v24, 0x4000

    move/from16 v0, v23

    move/from16 v1, v24

    if-eq v0, v1, :cond_0

    .line 519
    new-instance v24, Ljava/lang/IllegalStateException;

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, " can only be used "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, "with android:layout_width=\"match_parent\" (or fill_parent)"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-direct/range {v24 .. v25}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v24

    .line 523
    :cond_0
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v12

    .line 524
    .local v12, heightMode:I
    if-nez v12, :cond_1

    .line 525
    new-instance v24, Ljava/lang/IllegalStateException;

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, " can only be used "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, "with android:layout_height=\"wrap_content\""

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-direct/range {v24 .. v25}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v24

    .line 529
    :cond_1
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v5

    .line 532
    .local v5, contentWidth:I
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/widget/AbsActionBarView;->mSplitActionBar:Z

    move/from16 v24, v0

    if-nez v24, :cond_3

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/widget/ActionBarContextView;->mIsParentThemeDeviceDefault:Z

    move/from16 v24, v0

    if-eqz v24, :cond_3

    .line 533
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/ActionBarContextView;->mOldActionMenuPresenter:Lcom/android/internal/view/menu/ActionMenuPresenter;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/AbsActionBarView;->mActionMenuPresenter:Lcom/android/internal/view/menu/ActionMenuPresenter;

    move-object/from16 v25, v0

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    if-ne v0, v1, :cond_2

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/ActionBarContextView;->mOldContentWidth:I

    move/from16 v24, v0

    move/from16 v0, v24

    if-eq v0, v5, :cond_3

    .line 534
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/AbsActionBarView;->mActionMenuPresenter:Lcom/android/internal/view/menu/ActionMenuPresenter;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/widget/ActionBarContextView;->mOldActionMenuPresenter:Lcom/android/internal/view/menu/ActionMenuPresenter;

    .line 535
    move-object/from16 v0, p0

    iput v5, v0, Lcom/android/internal/widget/ActionBarContextView;->mOldContentWidth:I

    .line 536
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/AbsActionBarView;->mActionMenuPresenter:Lcom/android/internal/view/menu/ActionMenuPresenter;

    move-object/from16 v24, v0

    div-int/lit8 v25, v5, 0x2

    const/16 v26, 0x0

    invoke-virtual/range {v24 .. v26}, Lcom/android/internal/view/menu/ActionMenuPresenter;->updateWidthLimit(IZ)V

    .line 541
    :cond_3
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/AbsActionBarView;->mContentHeight:I

    move/from16 v24, v0

    if-lez v24, :cond_b

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/internal/widget/AbsActionBarView;->mContentHeight:I

    .line 544
    .local v15, maxHeight:I
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/ActionBarContextView;->getPaddingTop()I

    move-result v24

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/ActionBarContextView;->getPaddingBottom()I

    move-result v25

    add-int v22, v24, v25

    .line 545
    .local v22, verticalPadding:I
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/ActionBarContextView;->getPaddingLeft()I

    move-result v24

    sub-int v24, v5, v24

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/ActionBarContextView;->getPaddingRight()I

    move-result v25

    sub-int v3, v24, v25

    .line 546
    .local v3, availableWidth:I
    sub-int v11, v15, v22

    .line 547
    .local v11, height:I
    const/high16 v24, -0x8000

    move/from16 v0, v24

    invoke-static {v11, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    .line 549
    .local v4, childSpecHeight:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/ActionBarContextView;->mClose:Landroid/view/View;

    move-object/from16 v24, v0

    if-eqz v24, :cond_4

    .line 550
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/ActionBarContextView;->mClose:Landroid/view/View;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    move/from16 v2, v25

    invoke-virtual {v0, v1, v3, v4, v2}, Lcom/android/internal/widget/ActionBarContextView;->measureChildView(Landroid/view/View;III)I

    move-result v3

    .line 551
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/ActionBarContextView;->mClose:Landroid/view/View;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v14

    check-cast v14, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 552
    .local v14, lp:Landroid/view/ViewGroup$MarginLayoutParams;
    iget v0, v14, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    move/from16 v24, v0

    iget v0, v14, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    move/from16 v25, v0

    add-int v24, v24, v25

    sub-int v3, v3, v24

    .line 556
    .end local v14           #lp:Landroid/view/ViewGroup$MarginLayoutParams;
    :cond_4
    if-gez v3, :cond_5

    .line 557
    const/4 v3, 0x0

    .line 561
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/AbsActionBarView;->mMenuView:Lcom/android/internal/view/menu/ActionMenuView;

    move-object/from16 v24, v0

    if-eqz v24, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/AbsActionBarView;->mMenuView:Lcom/android/internal/view/menu/ActionMenuView;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/android/internal/view/menu/ActionMenuView;->getParent()Landroid/view/ViewParent;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    if-ne v0, v1, :cond_6

    .line 562
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/AbsActionBarView;->mMenuView:Lcom/android/internal/view/menu/ActionMenuView;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    move/from16 v2, v25

    invoke-virtual {v0, v1, v3, v4, v2}, Lcom/android/internal/widget/ActionBarContextView;->measureChildView(Landroid/view/View;III)I

    move-result v3

    .line 566
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/ActionBarContextView;->mTitleLayout:Landroid/widget/LinearLayout;

    move-object/from16 v24, v0

    if-eqz v24, :cond_8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/ActionBarContextView;->mCustomView:Landroid/view/View;

    move-object/from16 v24, v0

    if-nez v24, :cond_8

    .line 567
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/widget/ActionBarContextView;->mTitleOptional:Z

    move/from16 v24, v0

    if-eqz v24, :cond_e

    .line 568
    const/16 v24, 0x0

    const/16 v25, 0x0

    invoke-static/range {v24 .. v25}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v20

    .line 569
    .local v20, titleWidthSpec:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/ActionBarContextView;->mTitleLayout:Landroid/widget/LinearLayout;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move/from16 v1, v20

    invoke-virtual {v0, v1, v4}, Landroid/widget/LinearLayout;->measure(II)V

    .line 570
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/ActionBarContextView;->mTitleLayout:Landroid/widget/LinearLayout;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/widget/LinearLayout;->getMeasuredWidth()I

    move-result v19

    .line 571
    .local v19, titleWidth:I
    move/from16 v0, v19

    if-gt v0, v3, :cond_c

    const/16 v18, 0x1

    .line 572
    .local v18, titleFits:Z
    :goto_1
    if-eqz v18, :cond_7

    .line 573
    sub-int v3, v3, v19

    .line 575
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/ActionBarContextView;->mTitleLayout:Landroid/widget/LinearLayout;

    move-object/from16 v25, v0

    if-eqz v18, :cond_d

    const/16 v24, 0x0

    :goto_2
    move-object/from16 v0, v25

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 581
    .end local v18           #titleFits:Z
    .end local v19           #titleWidth:I
    .end local v20           #titleWidthSpec:I
    :cond_8
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/ActionBarContextView;->mCustomView:Landroid/view/View;

    move-object/from16 v24, v0

    if-eqz v24, :cond_9

    .line 582
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/ActionBarContextView;->mCustomView:Landroid/view/View;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v14

    .line 583
    .local v14, lp:Landroid/view/ViewGroup$LayoutParams;
    iget v0, v14, Landroid/view/ViewGroup$LayoutParams;->width:I

    move/from16 v24, v0

    const/16 v25, -0x2

    move/from16 v0, v24

    move/from16 v1, v25

    if-eq v0, v1, :cond_f

    const/high16 v10, 0x4000

    .line 585
    .local v10, customWidthMode:I
    :goto_4
    iget v0, v14, Landroid/view/ViewGroup$LayoutParams;->width:I

    move/from16 v24, v0

    if-ltz v24, :cond_10

    iget v0, v14, Landroid/view/ViewGroup$LayoutParams;->width:I

    move/from16 v24, v0

    move/from16 v0, v24

    invoke-static {v0, v3}, Ljava/lang/Math;->min(II)I

    move-result v9

    .line 587
    .local v9, customWidth:I
    :goto_5
    iget v0, v14, Landroid/view/ViewGroup$LayoutParams;->height:I

    move/from16 v24, v0

    const/16 v25, -0x2

    move/from16 v0, v24

    move/from16 v1, v25

    if-eq v0, v1, :cond_11

    const/high16 v8, 0x4000

    .line 589
    .local v8, customHeightMode:I
    :goto_6
    iget v0, v14, Landroid/view/ViewGroup$LayoutParams;->height:I

    move/from16 v24, v0

    if-ltz v24, :cond_12

    iget v0, v14, Landroid/view/ViewGroup$LayoutParams;->height:I

    move/from16 v24, v0

    move/from16 v0, v24

    invoke-static {v0, v11}, Ljava/lang/Math;->min(II)I

    move-result v7

    .line 591
    .local v7, customHeight:I
    :goto_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/ActionBarContextView;->mCustomView:Landroid/view/View;

    move-object/from16 v24, v0

    invoke-static {v9, v10}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v25

    invoke-static {v7, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v26

    invoke-virtual/range {v24 .. v26}, Landroid/view/View;->measure(II)V

    .line 595
    .end local v7           #customHeight:I
    .end local v8           #customHeightMode:I
    .end local v9           #customWidth:I
    .end local v10           #customWidthMode:I
    .end local v14           #lp:Landroid/view/ViewGroup$LayoutParams;
    :cond_9
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/AbsActionBarView;->mContentHeight:I

    move/from16 v24, v0

    if-gtz v24, :cond_14

    .line 596
    const/16 v16, 0x0

    .line 597
    .local v16, measuredHeight:I
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/ActionBarContextView;->getChildCount()I

    move-result v6

    .line 598
    .local v6, count:I
    const/4 v13, 0x0

    .local v13, i:I
    :goto_8
    if-ge v13, v6, :cond_13

    .line 599
    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/internal/widget/ActionBarContextView;->getChildAt(I)Landroid/view/View;

    move-result-object v21

    .line 600
    .local v21, v:Landroid/view/View;
    invoke-virtual/range {v21 .. v21}, Landroid/view/View;->getMeasuredHeight()I

    move-result v24

    add-int v17, v24, v22

    .line 601
    .local v17, paddedViewHeight:I
    move/from16 v0, v17

    move/from16 v1, v16

    if-le v0, v1, :cond_a

    .line 602
    move/from16 v16, v17

    .line 598
    :cond_a
    add-int/lit8 v13, v13, 0x1

    goto :goto_8

    .line 541
    .end local v3           #availableWidth:I
    .end local v4           #childSpecHeight:I
    .end local v6           #count:I
    .end local v11           #height:I
    .end local v13           #i:I
    .end local v15           #maxHeight:I
    .end local v16           #measuredHeight:I
    .end local v17           #paddedViewHeight:I
    .end local v21           #v:Landroid/view/View;
    .end local v22           #verticalPadding:I
    :cond_b
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v15

    goto/16 :goto_0

    .line 571
    .restart local v3       #availableWidth:I
    .restart local v4       #childSpecHeight:I
    .restart local v11       #height:I
    .restart local v15       #maxHeight:I
    .restart local v19       #titleWidth:I
    .restart local v20       #titleWidthSpec:I
    .restart local v22       #verticalPadding:I
    :cond_c
    const/16 v18, 0x0

    goto/16 :goto_1

    .line 575
    .restart local v18       #titleFits:Z
    :cond_d
    const/16 v24, 0x8

    goto/16 :goto_2

    .line 577
    .end local v18           #titleFits:Z
    .end local v19           #titleWidth:I
    .end local v20           #titleWidthSpec:I
    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/ActionBarContextView;->mTitleLayout:Landroid/widget/LinearLayout;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    move/from16 v2, v25

    invoke-virtual {v0, v1, v3, v4, v2}, Lcom/android/internal/widget/ActionBarContextView;->measureChildView(Landroid/view/View;III)I

    move-result v3

    goto/16 :goto_3

    .line 583
    .restart local v14       #lp:Landroid/view/ViewGroup$LayoutParams;
    :cond_f
    const/high16 v10, -0x8000

    goto/16 :goto_4

    .restart local v10       #customWidthMode:I
    :cond_10
    move v9, v3

    .line 585
    goto :goto_5

    .line 587
    .restart local v9       #customWidth:I
    :cond_11
    const/high16 v8, -0x8000

    goto :goto_6

    .restart local v8       #customHeightMode:I
    :cond_12
    move v7, v11

    .line 589
    goto :goto_7

    .line 605
    .end local v8           #customHeightMode:I
    .end local v9           #customWidth:I
    .end local v10           #customWidthMode:I
    .end local v14           #lp:Landroid/view/ViewGroup$LayoutParams;
    .restart local v6       #count:I
    .restart local v13       #i:I
    .restart local v16       #measuredHeight:I
    :cond_13
    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v5, v1}, Lcom/android/internal/widget/ActionBarContextView;->setMeasuredDimension(II)V

    .line 609
    .end local v6           #count:I
    .end local v13           #i:I
    .end local v16           #measuredHeight:I
    :goto_9
    return-void

    .line 607
    :cond_14
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v15}, Lcom/android/internal/widget/ActionBarContextView;->setMeasuredDimension(II)V

    goto :goto_9
.end method

.method public setContentHeight(I)V
    .locals 0
    .parameter "height"

    .prologue
    .line 196
    iput p1, p0, Lcom/android/internal/widget/AbsActionBarView;->mContentHeight:I

    .line 197
    return-void
.end method

.method public setCustomView(Landroid/view/View;)V
    .locals 1
    .parameter "view"

    .prologue
    .line 200
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarContextView;->mCustomView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 201
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarContextView;->mCustomView:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/ActionBarContextView;->removeView(Landroid/view/View;)V

    .line 203
    :cond_0
    iput-object p1, p0, Lcom/android/internal/widget/ActionBarContextView;->mCustomView:Landroid/view/View;

    .line 204
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarContextView;->mTitleLayout:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_1

    .line 205
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarContextView;->mTitleLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/ActionBarContextView;->removeView(Landroid/view/View;)V

    .line 206
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/widget/ActionBarContextView;->mTitleLayout:Landroid/widget/LinearLayout;

    .line 208
    :cond_1
    if-eqz p1, :cond_2

    .line 209
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/ActionBarContextView;->addView(Landroid/view/View;)V

    .line 211
    :cond_2
    invoke-virtual {p0}, Lcom/android/internal/widget/ActionBarContextView;->requestLayout()V

    .line 212
    return-void
.end method

.method public setSplitActionBar(Z)V
    .locals 6
    .parameter "split"

    .prologue
    const/4 v5, -0x1

    .line 164
    iget-boolean v2, p0, Lcom/android/internal/widget/AbsActionBarView;->mSplitActionBar:Z

    if-eq v2, p1, :cond_2

    .line 165
    iget-object v2, p0, Lcom/android/internal/widget/AbsActionBarView;->mActionMenuPresenter:Lcom/android/internal/view/menu/ActionMenuPresenter;

    if-eqz v2, :cond_1

    .line 167
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    const/4 v2, -0x2

    invoke-direct {v0, v2, v5}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 169
    .local v0, layoutParams:Landroid/view/ViewGroup$LayoutParams;
    if-nez p1, :cond_3

    .line 170
    iget-object v2, p0, Lcom/android/internal/widget/AbsActionBarView;->mActionMenuPresenter:Lcom/android/internal/view/menu/ActionMenuPresenter;

    invoke-virtual {v2, p0}, Lcom/android/internal/view/menu/ActionMenuPresenter;->getMenuView(Landroid/view/ViewGroup;)Lcom/android/internal/view/menu/MenuView;

    move-result-object v2

    check-cast v2, Lcom/android/internal/view/menu/ActionMenuView;

    iput-object v2, p0, Lcom/android/internal/widget/AbsActionBarView;->mMenuView:Lcom/android/internal/view/menu/ActionMenuView;

    .line 171
    iget-object v2, p0, Lcom/android/internal/widget/AbsActionBarView;->mMenuView:Lcom/android/internal/view/menu/ActionMenuView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/internal/view/menu/ActionMenuView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 172
    iget-object v2, p0, Lcom/android/internal/widget/AbsActionBarView;->mMenuView:Lcom/android/internal/view/menu/ActionMenuView;

    invoke-virtual {v2}, Lcom/android/internal/view/menu/ActionMenuView;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 173
    .local v1, oldParent:Landroid/view/ViewGroup;
    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/android/internal/widget/AbsActionBarView;->mMenuView:Lcom/android/internal/view/menu/ActionMenuView;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 174
    :cond_0
    iget-object v2, p0, Lcom/android/internal/widget/AbsActionBarView;->mMenuView:Lcom/android/internal/view/menu/ActionMenuView;

    invoke-virtual {p0, v2, v0}, Lcom/android/internal/widget/ActionBarContextView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 191
    .end local v0           #layoutParams:Landroid/view/ViewGroup$LayoutParams;
    .end local v1           #oldParent:Landroid/view/ViewGroup;
    :cond_1
    :goto_0
    invoke-super {p0, p1}, Lcom/android/internal/widget/AbsActionBarView;->setSplitActionBar(Z)V

    .line 193
    :cond_2
    return-void

    .line 177
    .restart local v0       #layoutParams:Landroid/view/ViewGroup$LayoutParams;
    :cond_3
    iget-object v2, p0, Lcom/android/internal/widget/AbsActionBarView;->mActionMenuPresenter:Lcom/android/internal/view/menu/ActionMenuPresenter;

    invoke-virtual {p0}, Lcom/android/internal/widget/ActionBarContextView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v3, v3, Landroid/util/DisplayMetrics;->widthPixels:I

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Lcom/android/internal/view/menu/ActionMenuPresenter;->setWidthLimit(IZ)V

    .line 180
    iget-object v2, p0, Lcom/android/internal/widget/AbsActionBarView;->mActionMenuPresenter:Lcom/android/internal/view/menu/ActionMenuPresenter;

    const v3, 0x7fffffff

    invoke-virtual {v2, v3}, Lcom/android/internal/view/menu/ActionMenuPresenter;->setItemLimit(I)V

    .line 182
    iput v5, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 183
    iget v2, p0, Lcom/android/internal/widget/AbsActionBarView;->mContentHeight:I

    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 184
    iget-object v2, p0, Lcom/android/internal/widget/AbsActionBarView;->mActionMenuPresenter:Lcom/android/internal/view/menu/ActionMenuPresenter;

    invoke-virtual {v2, p0}, Lcom/android/internal/view/menu/ActionMenuPresenter;->getMenuView(Landroid/view/ViewGroup;)Lcom/android/internal/view/menu/MenuView;

    move-result-object v2

    check-cast v2, Lcom/android/internal/view/menu/ActionMenuView;

    iput-object v2, p0, Lcom/android/internal/widget/AbsActionBarView;->mMenuView:Lcom/android/internal/view/menu/ActionMenuView;

    .line 185
    iget-object v2, p0, Lcom/android/internal/widget/AbsActionBarView;->mMenuView:Lcom/android/internal/view/menu/ActionMenuView;

    iget-object v3, p0, Lcom/android/internal/widget/ActionBarContextView;->mSplitBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v3}, Lcom/android/internal/view/menu/ActionMenuView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 186
    iget-object v2, p0, Lcom/android/internal/widget/AbsActionBarView;->mMenuView:Lcom/android/internal/view/menu/ActionMenuView;

    invoke-virtual {v2}, Lcom/android/internal/view/menu/ActionMenuView;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 187
    .restart local v1       #oldParent:Landroid/view/ViewGroup;
    if-eqz v1, :cond_4

    iget-object v2, p0, Lcom/android/internal/widget/AbsActionBarView;->mMenuView:Lcom/android/internal/view/menu/ActionMenuView;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 188
    :cond_4
    iget-object v2, p0, Lcom/android/internal/widget/AbsActionBarView;->mSplitView:Lcom/android/internal/widget/ActionBarContainer;

    iget-object v3, p0, Lcom/android/internal/widget/AbsActionBarView;->mMenuView:Lcom/android/internal/view/menu/ActionMenuView;

    invoke-virtual {v2, v3, v0}, Lcom/android/internal/widget/ActionBarContainer;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method

.method public setSubtitle(Ljava/lang/CharSequence;)V
    .locals 0
    .parameter "subtitle"

    .prologue
    .line 220
    iput-object p1, p0, Lcom/android/internal/widget/ActionBarContextView;->mSubtitle:Ljava/lang/CharSequence;

    .line 221
    invoke-direct {p0}, Lcom/android/internal/widget/ActionBarContextView;->initTitle()V

    .line 222
    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 0
    .parameter "title"

    .prologue
    .line 215
    iput-object p1, p0, Lcom/android/internal/widget/ActionBarContextView;->mTitle:Ljava/lang/CharSequence;

    .line 216
    invoke-direct {p0}, Lcom/android/internal/widget/ActionBarContextView;->initTitle()V

    .line 217
    return-void
.end method

.method public setTitleOptional(Z)V
    .locals 1
    .parameter "titleOptional"

    .prologue
    .line 738
    iget-boolean v0, p0, Lcom/android/internal/widget/ActionBarContextView;->mTitleOptional:Z

    if-eq p1, v0, :cond_0

    .line 739
    invoke-virtual {p0}, Lcom/android/internal/widget/ActionBarContextView;->requestLayout()V

    .line 741
    :cond_0
    iput-boolean p1, p0, Lcom/android/internal/widget/ActionBarContextView;->mTitleOptional:Z

    .line 742
    return-void
.end method

.method public shouldDelayChildPressedState()Z
    .locals 1

    .prologue
    .line 721
    const/4 v0, 0x0

    return v0
.end method

.method public showOverflowMenu()Z
    .locals 1

    .prologue
    .line 473
    iget-object v0, p0, Lcom/android/internal/widget/AbsActionBarView;->mActionMenuPresenter:Lcom/android/internal/view/menu/ActionMenuPresenter;

    if-eqz v0, :cond_0

    .line 474
    iget-object v0, p0, Lcom/android/internal/widget/AbsActionBarView;->mActionMenuPresenter:Lcom/android/internal/view/menu/ActionMenuPresenter;

    invoke-virtual {v0}, Lcom/android/internal/view/menu/ActionMenuPresenter;->showOverflowMenu()Z

    move-result v0

    .line 476
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public startActionModeForChild(Landroid/view/View;Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;
    .locals 1
    .parameter "child"
    .parameter "callback"

    .prologue
    .line 511
    const/4 v0, 0x0

    return-object v0
.end method
