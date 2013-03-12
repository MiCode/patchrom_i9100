.class public Lcom/android/internal/widget/ActionBarView;
.super Lcom/android/internal/widget/AbsActionBarView;
.source "ActionBarView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/widget/ActionBarView$MultiWindowMenuButton;,
        Lcom/android/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;,
        Lcom/android/internal/widget/ActionBarView$HomeView;,
        Lcom/android/internal/widget/ActionBarView$SavedState;
    }
.end annotation


# static fields
.field private static final DEFAULT_CUSTOM_GRAVITY:I = 0x13

.field public static final DISPLAY_DEFAULT:I = 0x0

.field private static final DISPLAY_FORCED_RESERVE_OVERFLOW:I = 0x20

.field private static final DISPLAY_RELAYOUT_MASK:I = 0x1f

.field private static final MAX_HOME_SLOP:I = 0x20

.field private static final TAG:Ljava/lang/String; = "ActionBarView"


# instance fields
.field private mCallback:Landroid/app/ActionBar$OnNavigationListener;

.field private mContextView:Lcom/android/internal/widget/ActionBarContextView;

.field private mCustomNavView:Landroid/view/View;

.field private mDisplayOptions:I

.field mExpandedActionView:Landroid/view/View;

.field private final mExpandedActionViewUpListener:Landroid/view/View$OnClickListener;

.field private mExpandedHomeLayout:Lcom/android/internal/widget/ActionBarView$HomeView;

.field private mExpandedMenuPresenter:Lcom/android/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;

.field private mForcedReserveOverflow:Z

.field private mHomeLayout:Lcom/android/internal/widget/ActionBarView$HomeView;

.field private mHomeLayoutRes:I

.field private mIcon:Landroid/graphics/drawable/Drawable;

.field private mIncludeTabs:Z

.field private mIndeterminateProgressStyle:I

.field private mIndeterminateProgressView:Landroid/widget/ProgressBar;

.field private mIsCollapsable:Z

.field private mIsCollapsed:Z

.field private mIsParentThemeDeviceDefault:Z

.field private mItemPadding:I

.field private mListNavLayout:Landroid/widget/LinearLayout;

.field private mLogo:Landroid/graphics/drawable/Drawable;

.field private mLogoNavItem:Lcom/android/internal/view/menu/ActionMenuItem;

.field private mMaxHomeSlop:I

.field private mMultiWindowMenuButton:Landroid/view/View;

.field private final mNavItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

.field private mNavigationMode:I

.field private mOptionsMenu:Lcom/android/internal/view/menu/MenuBuilder;

.field private mProgressBarPadding:I

.field private mProgressStyle:I

.field private mProgressView:Landroid/widget/ProgressBar;

.field private mReserveMultiWindow:Z

.field private mSpinner:Landroid/widget/Spinner;

.field private mSpinnerAdapter:Landroid/widget/SpinnerAdapter;

.field private mSubtitle:Ljava/lang/CharSequence;

.field private mSubtitleStyleRes:I

.field private mSubtitleView:Landroid/widget/TextView;

.field private mTabScrollView:Lcom/android/internal/widget/ScrollingTabContainerView;

.field private mTabSelector:Ljava/lang/Runnable;

.field private final mTempRect:Landroid/graphics/Rect;

.field private mTitle:Ljava/lang/CharSequence;

.field private mTitleLayout:Landroid/widget/LinearLayout;

.field private mTitleStyleRes:I

.field private mTitleUpView:Landroid/view/View;

.field private mTitleView:Landroid/widget/TextView;

.field private final mUpClickListener:Landroid/view/View$OnClickListener;

.field private mUpMargin:I

.field private mUserTitle:Z

.field mWindowCallback:Landroid/view/Window$Callback;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 17
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 206
    invoke-direct/range {p0 .. p2}, Lcom/android/internal/widget/AbsActionBarView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 109
    const/4 v2, -0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/widget/ActionBarView;->mDisplayOptions:I

    .line 173
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/widget/ActionBarView;->mTempRect:Landroid/graphics/Rect;

    .line 177
    new-instance v2, Lcom/android/internal/widget/ActionBarView$1;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/android/internal/widget/ActionBarView$1;-><init>(Lcom/android/internal/widget/ActionBarView;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/widget/ActionBarView;->mNavItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    .line 189
    new-instance v2, Lcom/android/internal/widget/ActionBarView$2;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/android/internal/widget/ActionBarView$2;-><init>(Lcom/android/internal/widget/ActionBarView;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/widget/ActionBarView;->mExpandedActionViewUpListener:Landroid/view/View$OnClickListener;

    .line 199
    new-instance v2, Lcom/android/internal/widget/ActionBarView$3;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/android/internal/widget/ActionBarView$3;-><init>(Lcom/android/internal/widget/ActionBarView;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/widget/ActionBarView;->mUpClickListener:Landroid/view/View$OnClickListener;

    .line 209
    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/widget/ActionBarView;->setBackgroundResource(I)V

    .line 212
    new-instance v15, Landroid/util/TypedValue;

    invoke-direct {v15}, Landroid/util/TypedValue;-><init>()V

    .line 213
    .local v15, outValue:Landroid/util/TypedValue;
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    const v3, 0x10103fd

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v15, v4}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 214
    iget v2, v15, Landroid/util/TypedValue;->data:I

    if-eqz v2, :cond_0

    .line 215
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/internal/widget/ActionBarView;->mIsParentThemeDeviceDefault:Z

    .line 219
    :cond_0
    sget-object v2, Lcom/android/internal/R$styleable;->ActionBar:[I

    const v3, 0x10102ce

    const/4 v4, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v9

    .line 222
    .local v9, a:Landroid/content/res/TypedArray;
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v10

    .line 223
    .local v10, appInfo:Landroid/content/pm/ApplicationInfo;
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v16

    .line 224
    .local v16, pm:Landroid/content/pm/PackageManager;
    const/4 v2, 0x7

    const/4 v3, 0x0

    invoke-virtual {v9, v2, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/widget/ActionBarView;->mNavigationMode:I

    .line 226
    const/4 v2, 0x5

    invoke-virtual {v9, v2}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/widget/ActionBarView;->mTitle:Ljava/lang/CharSequence;

    .line 227
    const/16 v2, 0x9

    invoke-virtual {v9, v2}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/widget/ActionBarView;->mSubtitle:Ljava/lang/CharSequence;

    .line 229
    const/4 v2, 0x6

    invoke-virtual {v9, v2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/widget/ActionBarView;->mLogo:Landroid/graphics/drawable/Drawable;

    .line 230
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/widget/ActionBarView;->mLogo:Landroid/graphics/drawable/Drawable;

    if-nez v2, :cond_2

    .line 231
    move-object/from16 v0, p1

    instance-of v2, v0, Landroid/app/Activity;

    if-eqz v2, :cond_1

    .line 233
    :try_start_0
    move-object/from16 v0, p1

    check-cast v0, Landroid/app/Activity;

    move-object v2, v0

    invoke-virtual {v2}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v2

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Landroid/content/pm/PackageManager;->getActivityLogo(Landroid/content/ComponentName;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/widget/ActionBarView;->mLogo:Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 238
    :cond_1
    :goto_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/widget/ActionBarView;->mLogo:Landroid/graphics/drawable/Drawable;

    if-nez v2, :cond_2

    .line 239
    move-object/from16 v0, v16

    invoke-virtual {v10, v0}, Landroid/content/pm/ApplicationInfo;->loadLogo(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/widget/ActionBarView;->mLogo:Landroid/graphics/drawable/Drawable;

    .line 243
    :cond_2
    const/4 v2, 0x0

    invoke-virtual {v9, v2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/widget/ActionBarView;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 244
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/widget/ActionBarView;->mIcon:Landroid/graphics/drawable/Drawable;

    if-nez v2, :cond_4

    .line 245
    move-object/from16 v0, p1

    instance-of v2, v0, Landroid/app/Activity;

    if-eqz v2, :cond_3

    .line 247
    :try_start_1
    move-object/from16 v0, p1

    check-cast v0, Landroid/app/Activity;

    move-object v2, v0

    invoke-virtual {v2}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v2

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Landroid/content/pm/PackageManager;->getActivityIcon(Landroid/content/ComponentName;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/widget/ActionBarView;->mIcon:Landroid/graphics/drawable/Drawable;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    .line 252
    :cond_3
    :goto_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/widget/ActionBarView;->mIcon:Landroid/graphics/drawable/Drawable;

    if-nez v2, :cond_4

    .line 253
    move-object/from16 v0, v16

    invoke-virtual {v10, v0}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/widget/ActionBarView;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 257
    :cond_4
    invoke-static/range {p1 .. p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v14

    .line 259
    .local v14, inflater:Landroid/view/LayoutInflater;
    const/16 v2, 0xf

    const v3, 0x1090018

    invoke-virtual {v9, v2, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v13

    .line 264
    .local v13, homeResId:I
    move-object/from16 v0, p0

    iput v13, v0, Lcom/android/internal/widget/ActionBarView;->mHomeLayoutRes:I

    .line 267
    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v14, v13, v0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/internal/widget/ActionBarView$HomeView;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/widget/ActionBarView;->mHomeLayout:Lcom/android/internal/widget/ActionBarView$HomeView;

    .line 269
    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v14, v13, v0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/internal/widget/ActionBarView$HomeView;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/widget/ActionBarView;->mExpandedHomeLayout:Lcom/android/internal/widget/ActionBarView$HomeView;

    .line 270
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/widget/ActionBarView;->mExpandedHomeLayout:Lcom/android/internal/widget/ActionBarView$HomeView;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/android/internal/widget/ActionBarView$HomeView;->setUp(Z)V

    .line 271
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/widget/ActionBarView;->mExpandedHomeLayout:Lcom/android/internal/widget/ActionBarView$HomeView;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/widget/ActionBarView;->mExpandedActionViewUpListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Lcom/android/internal/widget/ActionBarView$HomeView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 272
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/widget/ActionBarView;->mExpandedHomeLayout:Lcom/android/internal/widget/ActionBarView$HomeView;

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/ActionBarView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x1040628

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/internal/widget/ActionBarView$HomeView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 275
    const/16 v2, 0xb

    const/4 v3, 0x0

    invoke-virtual {v9, v2, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/widget/ActionBarView;->mTitleStyleRes:I

    .line 276
    const/16 v2, 0xc

    const/4 v3, 0x0

    invoke-virtual {v9, v2, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/widget/ActionBarView;->mSubtitleStyleRes:I

    .line 277
    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {v9, v2, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/widget/ActionBarView;->mProgressStyle:I

    .line 278
    const/16 v2, 0xd

    const/4 v3, 0x0

    invoke-virtual {v9, v2, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/widget/ActionBarView;->mIndeterminateProgressStyle:I

    .line 281
    const/16 v2, 0xe

    const/4 v3, 0x0

    invoke-virtual {v9, v2, v3}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/widget/ActionBarView;->mProgressBarPadding:I

    .line 282
    const/16 v2, 0x10

    const/4 v3, 0x0

    invoke-virtual {v9, v2, v3}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/widget/ActionBarView;->mItemPadding:I

    .line 285
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x1050084

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/widget/ActionBarView;->mUpMargin:I

    .line 288
    const/16 v2, 0x8

    const/4 v3, 0x0

    invoke-virtual {v9, v2, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/widget/ActionBarView;->setDisplayOptions(I)V

    .line 290
    const/16 v2, 0xa

    const/4 v3, 0x0

    invoke-virtual {v9, v2, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v11

    .line 291
    .local v11, customNavId:I
    if-eqz v11, :cond_5

    .line 292
    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v14, v11, v0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/widget/ActionBarView;->mCustomNavView:Landroid/view/View;

    .line 293
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/widget/ActionBarView;->mNavigationMode:I

    .line 294
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/widget/ActionBarView;->mDisplayOptions:I

    or-int/lit8 v2, v2, 0x10

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/widget/ActionBarView;->setDisplayOptions(I)V

    .line 297
    :cond_5
    const/4 v2, 0x4

    const/4 v3, 0x0

    invoke-virtual {v9, v2, v3}, Landroid/content/res/TypedArray;->getLayoutDimension(II)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/widget/AbsActionBarView;->mContentHeight:I

    .line 299
    invoke-virtual {v9}, Landroid/content/res/TypedArray;->recycle()V

    .line 301
    new-instance v2, Lcom/android/internal/view/menu/ActionMenuItem;

    const/4 v4, 0x0

    const v5, 0x102002c

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/internal/widget/ActionBarView;->mTitle:Ljava/lang/CharSequence;

    move-object/from16 v3, p1

    invoke-direct/range {v2 .. v8}, Lcom/android/internal/view/menu/ActionMenuItem;-><init>(Landroid/content/Context;IIIILjava/lang/CharSequence;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/widget/ActionBarView;->mLogoNavItem:Lcom/android/internal/view/menu/ActionMenuItem;

    .line 302
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/widget/ActionBarView;->mHomeLayout:Lcom/android/internal/widget/ActionBarView$HomeView;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/widget/ActionBarView;->mUpClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Lcom/android/internal/widget/ActionBarView$HomeView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 303
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/widget/ActionBarView;->mHomeLayout:Lcom/android/internal/widget/ActionBarView$HomeView;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/android/internal/widget/ActionBarView$HomeView;->setClickable(Z)V

    .line 304
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/widget/ActionBarView;->mHomeLayout:Lcom/android/internal/widget/ActionBarView$HomeView;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/android/internal/widget/ActionBarView$HomeView;->setFocusable(Z)V

    .line 306
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/ActionBarView;->getImportantForAccessibility()I

    move-result v2

    if-nez v2, :cond_6

    .line 307
    const/4 v2, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/widget/ActionBarView;->setImportantForAccessibility(I)V

    .line 310
    :cond_6
    const/high16 v2, 0x4200

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v3, v3, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v2, v3

    const/high16 v3, 0x3f00

    add-float/2addr v2, v3

    float-to-int v2, v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/widget/ActionBarView;->mMaxHomeSlop:I

    .line 314
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/widget/ActionBarView;->mExpandedHomeLayout:Lcom/android/internal/widget/ActionBarView$HomeView;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/android/internal/widget/ActionBarView$HomeView;->setFocusable(Z)V

    .line 316
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/widget/ActionBarView;->initMultiWindowMode()V

    .line 318
    return-void

    .line 234
    .end local v11           #customNavId:I
    .end local v13           #homeResId:I
    .end local v14           #inflater:Landroid/view/LayoutInflater;
    :catch_0
    move-exception v12

    .line 235
    .local v12, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v2, "ActionBarView"

    const-string v3, "Activity component name not found!"

    invoke-static {v2, v3, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 248
    .end local v12           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    :catch_1
    move-exception v12

    .line 249
    .restart local v12       #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v2, "ActionBarView"

    const-string v3, "Activity component name not found!"

    invoke-static {v2, v3, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_1
.end method

.method static synthetic access$000(Lcom/android/internal/widget/ActionBarView;)Landroid/app/ActionBar$OnNavigationListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 88
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mCallback:Landroid/app/ActionBar$OnNavigationListener;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/internal/widget/ActionBarView;)Lcom/android/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 88
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mExpandedMenuPresenter:Lcom/android/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/internal/widget/ActionBarView;)Landroid/widget/Spinner;
    .locals 1
    .parameter "x0"

    .prologue
    .line 88
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mSpinner:Landroid/widget/Spinner;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/internal/widget/ActionBarView;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 88
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mCustomNavView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/internal/widget/ActionBarView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 88
    iget v0, p0, Lcom/android/internal/widget/ActionBarView;->mDisplayOptions:I

    return v0
.end method

.method static synthetic access$1300(Lcom/android/internal/widget/ActionBarView;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 88
    invoke-direct {p0}, Lcom/android/internal/widget/ActionBarView;->initTitle()V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/internal/widget/ActionBarView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 88
    iget v0, p0, Lcom/android/internal/widget/ActionBarView;->mNavigationMode:I

    return v0
.end method

.method static synthetic access$1500(Lcom/android/internal/widget/ActionBarView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 88
    invoke-direct {p0}, Lcom/android/internal/widget/ActionBarView;->getWindowMode()I

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/android/internal/widget/ActionBarView;)Lcom/android/internal/view/menu/ActionMenuItem;
    .locals 1
    .parameter "x0"

    .prologue
    .line 88
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mLogoNavItem:Lcom/android/internal/view/menu/ActionMenuItem;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/internal/widget/ActionBarView;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 88
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mIcon:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/internal/widget/ActionBarView;)Lcom/android/internal/widget/ActionBarView$HomeView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 88
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mExpandedHomeLayout:Lcom/android/internal/widget/ActionBarView$HomeView;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/internal/widget/ActionBarView;)Lcom/android/internal/widget/ActionBarView$HomeView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 88
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mHomeLayout:Lcom/android/internal/widget/ActionBarView$HomeView;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/internal/widget/ActionBarView;)Landroid/widget/LinearLayout;
    .locals 1
    .parameter "x0"

    .prologue
    .line 88
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mTitleLayout:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/internal/widget/ActionBarView;)Lcom/android/internal/widget/ScrollingTabContainerView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 88
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mTabScrollView:Lcom/android/internal/widget/ScrollingTabContainerView;

    return-object v0
.end method

.method private configPresenters(Lcom/android/internal/view/menu/MenuBuilder;)V
    .locals 4
    .parameter "builder"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 533
    if-eqz p1, :cond_0

    .line 534
    iget-object v0, p0, Lcom/android/internal/widget/AbsActionBarView;->mActionMenuPresenter:Lcom/android/internal/view/menu/ActionMenuPresenter;

    invoke-virtual {p1, v0}, Lcom/android/internal/view/menu/MenuBuilder;->addMenuPresenter(Lcom/android/internal/view/menu/MenuPresenter;)V

    .line 535
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mExpandedMenuPresenter:Lcom/android/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;

    invoke-virtual {p1, v0}, Lcom/android/internal/view/menu/MenuBuilder;->addMenuPresenter(Lcom/android/internal/view/menu/MenuPresenter;)V

    .line 542
    :goto_0
    return-void

    .line 537
    :cond_0
    iget-object v0, p0, Lcom/android/internal/widget/AbsActionBarView;->mActionMenuPresenter:Lcom/android/internal/view/menu/ActionMenuPresenter;

    iget-object v1, p0, Lcom/android/internal/widget/ActionBarView;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1, v3}, Lcom/android/internal/view/menu/ActionMenuPresenter;->initForMenu(Landroid/content/Context;Lcom/android/internal/view/menu/MenuBuilder;)V

    .line 538
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mExpandedMenuPresenter:Lcom/android/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;

    iget-object v1, p0, Lcom/android/internal/widget/ActionBarView;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1, v3}, Lcom/android/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->initForMenu(Landroid/content/Context;Lcom/android/internal/view/menu/MenuBuilder;)V

    .line 539
    iget-object v0, p0, Lcom/android/internal/widget/AbsActionBarView;->mActionMenuPresenter:Lcom/android/internal/view/menu/ActionMenuPresenter;

    invoke-virtual {v0, v2}, Lcom/android/internal/view/menu/ActionMenuPresenter;->updateMenuView(Z)V

    .line 540
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mExpandedMenuPresenter:Lcom/android/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;

    invoke-virtual {v0, v2}, Lcom/android/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->updateMenuView(Z)V

    goto :goto_0
.end method

.method private getWindowMode()I
    .locals 1

    .prologue
    .line 961
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mContext:Landroid/content/Context;

    instance-of v0, v0, Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 962
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindowMode()I

    move-result v0

    .line 964
    :goto_0
    return v0

    :cond_0
    const/high16 v0, 0x100

    goto :goto_0
.end method

.method private initMultiWindowMode()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 994
    iget-boolean v1, p0, Lcom/android/internal/widget/ActionBarView;->mIsParentThemeDeviceDefault:Z

    if-nez v1, :cond_1

    .line 1017
    :cond_0
    :goto_0
    return-void

    .line 998
    :cond_1
    invoke-direct {p0}, Lcom/android/internal/widget/ActionBarView;->getWindowMode()I

    move-result v0

    .line 1001
    .local v0, windowMode:I
    const/high16 v1, 0x20

    and-int/2addr v1, v0

    if-eqz v1, :cond_0

    .line 1006
    const/high16 v1, 0x1

    and-int/2addr v1, v0

    if-nez v1, :cond_0

    .line 1010
    iput-boolean v3, p0, Lcom/android/internal/widget/ActionBarView;->mReserveMultiWindow:Z

    .line 1012
    new-instance v1, Lcom/android/internal/widget/ActionBarView$MultiWindowMenuButton;

    iget-object v2, p0, Lcom/android/internal/widget/ActionBarView;->mContext:Landroid/content/Context;

    invoke-direct {v1, p0, v2}, Lcom/android/internal/widget/ActionBarView$MultiWindowMenuButton;-><init>(Lcom/android/internal/widget/ActionBarView;Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/internal/widget/ActionBarView;->mMultiWindowMenuButton:Landroid/view/View;

    .line 1013
    iget-object v1, p0, Lcom/android/internal/widget/ActionBarView;->mMultiWindowMenuButton:Landroid/view/View;

    const v2, 0x102042f

    invoke-virtual {v1, v2}, Landroid/view/View;->setId(I)V

    .line 1014
    iget-object v1, p0, Lcom/android/internal/widget/ActionBarView;->mMultiWindowMenuButton:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setHoverPopupType(I)V

    .line 1016
    iget-object v1, p0, Lcom/android/internal/widget/ActionBarView;->mMultiWindowMenuButton:Landroid/view/View;

    invoke-virtual {p0, v1}, Lcom/android/internal/widget/ActionBarView;->addView(Landroid/view/View;)V

    goto :goto_0
.end method

.method private initTitle()V
    .locals 13

    .prologue
    const/16 v10, 0x8

    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 878
    iget-object v7, p0, Lcom/android/internal/widget/ActionBarView;->mTitleLayout:Landroid/widget/LinearLayout;

    if-nez v7, :cond_5

    .line 879
    invoke-virtual {p0}, Lcom/android/internal/widget/ActionBarView;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 881
    .local v1, inflater:Landroid/view/LayoutInflater;
    iget-boolean v7, p0, Lcom/android/internal/widget/ActionBarView;->mIsParentThemeDeviceDefault:Z

    if-eqz v7, :cond_8

    .line 882
    const v7, 0x10900ff

    invoke-virtual {v1, v7, p0, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/LinearLayout;

    iput-object v7, p0, Lcom/android/internal/widget/ActionBarView;->mTitleLayout:Landroid/widget/LinearLayout;

    .line 891
    :goto_0
    iget-object v7, p0, Lcom/android/internal/widget/ActionBarView;->mTitleLayout:Landroid/widget/LinearLayout;

    const v11, 0x1020268

    invoke-virtual {v7, v11}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    iput-object v7, p0, Lcom/android/internal/widget/ActionBarView;->mTitleView:Landroid/widget/TextView;

    .line 892
    iget-object v7, p0, Lcom/android/internal/widget/ActionBarView;->mTitleLayout:Landroid/widget/LinearLayout;

    const v11, 0x1020269

    invoke-virtual {v7, v11}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    iput-object v7, p0, Lcom/android/internal/widget/ActionBarView;->mSubtitleView:Landroid/widget/TextView;

    .line 893
    iget-object v7, p0, Lcom/android/internal/widget/ActionBarView;->mTitleLayout:Landroid/widget/LinearLayout;

    const v11, 0x1020255

    invoke-virtual {v7, v11}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v7

    iput-object v7, p0, Lcom/android/internal/widget/ActionBarView;->mTitleUpView:Landroid/view/View;

    .line 895
    iget-object v7, p0, Lcom/android/internal/widget/ActionBarView;->mTitleLayout:Landroid/widget/LinearLayout;

    iget-object v11, p0, Lcom/android/internal/widget/ActionBarView;->mUpClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v7, v11}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 897
    iget v7, p0, Lcom/android/internal/widget/ActionBarView;->mTitleStyleRes:I

    if-eqz v7, :cond_0

    .line 898
    iget-object v7, p0, Lcom/android/internal/widget/ActionBarView;->mTitleView:Landroid/widget/TextView;

    iget-object v11, p0, Lcom/android/internal/widget/ActionBarView;->mContext:Landroid/content/Context;

    iget v12, p0, Lcom/android/internal/widget/ActionBarView;->mTitleStyleRes:I

    invoke-virtual {v7, v11, v12}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 900
    :cond_0
    iget-object v7, p0, Lcom/android/internal/widget/ActionBarView;->mTitle:Ljava/lang/CharSequence;

    if-eqz v7, :cond_1

    .line 901
    iget-object v7, p0, Lcom/android/internal/widget/ActionBarView;->mTitleView:Landroid/widget/TextView;

    iget-object v11, p0, Lcom/android/internal/widget/ActionBarView;->mTitle:Ljava/lang/CharSequence;

    invoke-virtual {v7, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 904
    :cond_1
    iget v7, p0, Lcom/android/internal/widget/ActionBarView;->mSubtitleStyleRes:I

    if-eqz v7, :cond_2

    .line 905
    iget-object v7, p0, Lcom/android/internal/widget/ActionBarView;->mSubtitleView:Landroid/widget/TextView;

    iget-object v11, p0, Lcom/android/internal/widget/ActionBarView;->mContext:Landroid/content/Context;

    iget v12, p0, Lcom/android/internal/widget/ActionBarView;->mSubtitleStyleRes:I

    invoke-virtual {v7, v11, v12}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 907
    :cond_2
    iget-object v7, p0, Lcom/android/internal/widget/ActionBarView;->mSubtitle:Ljava/lang/CharSequence;

    if-eqz v7, :cond_3

    .line 908
    iget-object v7, p0, Lcom/android/internal/widget/ActionBarView;->mSubtitleView:Landroid/widget/TextView;

    iget-object v11, p0, Lcom/android/internal/widget/ActionBarView;->mSubtitle:Ljava/lang/CharSequence;

    invoke-virtual {v7, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 909
    iget-object v7, p0, Lcom/android/internal/widget/ActionBarView;->mSubtitleView:Landroid/widget/TextView;

    invoke-virtual {v7, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 912
    :cond_3
    iget v7, p0, Lcom/android/internal/widget/ActionBarView;->mDisplayOptions:I

    and-int/lit8 v7, v7, 0x4

    if-eqz v7, :cond_9

    move v0, v8

    .line 913
    .local v0, homeAsUp:Z
    :goto_1
    iget v7, p0, Lcom/android/internal/widget/ActionBarView;->mDisplayOptions:I

    and-int/lit8 v7, v7, 0x2

    if-eqz v7, :cond_a

    move v2, v8

    .line 914
    .local v2, showHome:Z
    :goto_2
    if-nez v2, :cond_b

    move v3, v8

    .line 915
    .local v3, showTitleUp:Z
    :goto_3
    iget-object v11, p0, Lcom/android/internal/widget/ActionBarView;->mTitleUpView:Landroid/view/View;

    if-eqz v3, :cond_d

    if-eqz v0, :cond_c

    move v7, v9

    :goto_4
    invoke-virtual {v11, v7}, Landroid/view/View;->setVisibility(I)V

    .line 918
    iget-object v7, p0, Lcom/android/internal/widget/ActionBarView;->mTitleUpView:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 919
    .local v6, titleUpLp:Landroid/view/ViewGroup$MarginLayoutParams;
    iget-object v7, p0, Lcom/android/internal/widget/ActionBarView;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 920
    .local v5, titleLp:Landroid/view/ViewGroup$MarginLayoutParams;
    iget-object v7, p0, Lcom/android/internal/widget/ActionBarView;->mSubtitleView:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 922
    .local v4, subTitleLp:Landroid/view/ViewGroup$MarginLayoutParams;
    iget-boolean v7, p0, Lcom/android/internal/widget/ActionBarView;->mIsParentThemeDeviceDefault:Z

    if-eqz v7, :cond_4

    .line 923
    if-eqz v2, :cond_e

    .line 924
    iput v9, v6, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    iput v9, v6, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 925
    iput v9, v5, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 926
    iput v9, v4, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 944
    :cond_4
    :goto_5
    iget-object v11, p0, Lcom/android/internal/widget/ActionBarView;->mTitleLayout:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_10

    if-eqz v3, :cond_10

    move v7, v8

    :goto_6
    invoke-virtual {v11, v7}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    .line 945
    iget-object v11, p0, Lcom/android/internal/widget/ActionBarView;->mTitleLayout:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_11

    if-eqz v3, :cond_11

    move v7, v8

    :goto_7
    invoke-virtual {v11, v7}, Landroid/widget/LinearLayout;->setClickable(Z)V

    .line 947
    iget-object v7, p0, Lcom/android/internal/widget/ActionBarView;->mTitleLayout:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_12

    if-nez v2, :cond_12

    :goto_8
    invoke-virtual {v7, v8}, Landroid/widget/LinearLayout;->setFocusable(Z)V

    .line 951
    .end local v0           #homeAsUp:Z
    .end local v1           #inflater:Landroid/view/LayoutInflater;
    .end local v2           #showHome:Z
    .end local v3           #showTitleUp:Z
    .end local v4           #subTitleLp:Landroid/view/ViewGroup$MarginLayoutParams;
    .end local v5           #titleLp:Landroid/view/ViewGroup$MarginLayoutParams;
    .end local v6           #titleUpLp:Landroid/view/ViewGroup$MarginLayoutParams;
    :cond_5
    iget-object v7, p0, Lcom/android/internal/widget/ActionBarView;->mTitleLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v7}, Lcom/android/internal/widget/ActionBarView;->addView(Landroid/view/View;)V

    .line 952
    iget-object v7, p0, Lcom/android/internal/widget/ActionBarView;->mExpandedActionView:Landroid/view/View;

    if-nez v7, :cond_6

    iget-object v7, p0, Lcom/android/internal/widget/ActionBarView;->mTitle:Ljava/lang/CharSequence;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_7

    iget-object v7, p0, Lcom/android/internal/widget/ActionBarView;->mSubtitle:Ljava/lang/CharSequence;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 955
    :cond_6
    iget-object v7, p0, Lcom/android/internal/widget/ActionBarView;->mTitleLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v7, v10}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 957
    :cond_7
    return-void

    .line 886
    .restart local v1       #inflater:Landroid/view/LayoutInflater;
    :cond_8
    const v7, 0x1090019

    invoke-virtual {v1, v7, p0, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/LinearLayout;

    iput-object v7, p0, Lcom/android/internal/widget/ActionBarView;->mTitleLayout:Landroid/widget/LinearLayout;

    goto/16 :goto_0

    :cond_9
    move v0, v9

    .line 912
    goto/16 :goto_1

    .restart local v0       #homeAsUp:Z
    :cond_a
    move v2, v9

    .line 913
    goto :goto_2

    .restart local v2       #showHome:Z
    :cond_b
    move v3, v9

    .line 914
    goto :goto_3

    .line 915
    .restart local v3       #showTitleUp:Z
    :cond_c
    const/4 v7, 0x4

    goto :goto_4

    :cond_d
    move v7, v10

    goto :goto_4

    .line 929
    .restart local v4       #subTitleLp:Landroid/view/ViewGroup$MarginLayoutParams;
    .restart local v5       #titleLp:Landroid/view/ViewGroup$MarginLayoutParams;
    .restart local v6       #titleUpLp:Landroid/view/ViewGroup$MarginLayoutParams;
    :cond_e
    if-eqz v0, :cond_f

    .line 930
    iget v7, p0, Lcom/android/internal/widget/ActionBarView;->mUpMargin:I

    iput v7, v6, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    iput v7, v6, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 931
    iput v9, v5, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 932
    iput v9, v4, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    goto :goto_5

    .line 935
    :cond_f
    iget-object v7, p0, Lcom/android/internal/widget/ActionBarView;->mTitleUpView:Landroid/view/View;

    invoke-virtual {v7, v10}, Landroid/view/View;->setVisibility(I)V

    .line 936
    iput v9, v6, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    iput v9, v6, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 937
    iget v7, p0, Lcom/android/internal/widget/ActionBarView;->mUpMargin:I

    mul-int/lit8 v7, v7, 0x2

    iput v7, v5, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 938
    iget v7, p0, Lcom/android/internal/widget/ActionBarView;->mUpMargin:I

    mul-int/lit8 v7, v7, 0x2

    iput v7, v4, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    goto :goto_5

    :cond_10
    move v7, v9

    .line 944
    goto :goto_6

    :cond_11
    move v7, v9

    .line 945
    goto :goto_7

    :cond_12
    move v8, v9

    .line 947
    goto :goto_8
.end method

.method private setTitleImpl(Ljava/lang/CharSequence;)V
    .locals 3
    .parameter "title"

    .prologue
    const/4 v1, 0x0

    .line 596
    iput-object p1, p0, Lcom/android/internal/widget/ActionBarView;->mTitle:Ljava/lang/CharSequence;

    .line 597
    iget-object v2, p0, Lcom/android/internal/widget/ActionBarView;->mTitleView:Landroid/widget/TextView;

    if-eqz v2, :cond_1

    .line 598
    iget-object v2, p0, Lcom/android/internal/widget/ActionBarView;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 599
    iget-object v2, p0, Lcom/android/internal/widget/ActionBarView;->mExpandedActionView:Landroid/view/View;

    if-nez v2, :cond_3

    iget v2, p0, Lcom/android/internal/widget/ActionBarView;->mDisplayOptions:I

    and-int/lit8 v2, v2, 0x8

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/internal/widget/ActionBarView;->mTitle:Ljava/lang/CharSequence;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/internal/widget/ActionBarView;->mSubtitle:Ljava/lang/CharSequence;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    :cond_0
    const/4 v0, 0x1

    .line 602
    .local v0, visible:Z
    :goto_0
    iget-object v2, p0, Lcom/android/internal/widget/ActionBarView;->mTitleLayout:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_4

    :goto_1
    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 604
    .end local v0           #visible:Z
    :cond_1
    iget-object v1, p0, Lcom/android/internal/widget/ActionBarView;->mLogoNavItem:Lcom/android/internal/view/menu/ActionMenuItem;

    if-eqz v1, :cond_2

    .line 605
    iget-object v1, p0, Lcom/android/internal/widget/ActionBarView;->mLogoNavItem:Lcom/android/internal/view/menu/ActionMenuItem;

    invoke-virtual {v1, p1}, Lcom/android/internal/view/menu/ActionMenuItem;->setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 607
    :cond_2
    return-void

    :cond_3
    move v0, v1

    .line 599
    goto :goto_0

    .line 602
    .restart local v0       #visible:Z
    :cond_4
    const/16 v1, 0x8

    goto :goto_1
.end method

.method private updateHomeImageLayout()V
    .locals 13

    .prologue
    const/4 v12, 0x0

    .line 1034
    const/4 v1, 0x0

    .line 1035
    .local v1, homeResId:I
    iget v8, p0, Lcom/android/internal/widget/ActionBarView;->mHomeLayoutRes:I

    if-eqz v8, :cond_0

    .line 1036
    iget v1, p0, Lcom/android/internal/widget/ActionBarView;->mHomeLayoutRes:I

    .line 1046
    :goto_0
    invoke-virtual {p0}, Lcom/android/internal/widget/ActionBarView;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-static {v8}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    .line 1048
    .local v2, inflater:Landroid/view/LayoutInflater;
    invoke-virtual {v2, v1, p0, v12}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/android/internal/widget/ActionBarView$HomeView;

    .line 1049
    .local v6, tempHomeLayout:Lcom/android/internal/widget/ActionBarView$HomeView;
    const v8, 0x102002c

    invoke-virtual {v6, v8}, Lcom/android/internal/widget/ActionBarView$HomeView;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ImageView;

    .line 1051
    .local v7, tempiconView:Landroid/widget/ImageView;
    invoke-virtual {v7}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 1052
    .local v3, lp:Landroid/view/ViewGroup$MarginLayoutParams;
    iget-object v8, p0, Lcom/android/internal/widget/ActionBarView;->mHomeLayout:Lcom/android/internal/widget/ActionBarView$HomeView;

    iget-object v8, v8, Lcom/android/internal/widget/ActionBarView$HomeView;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v8}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 1055
    .local v4, oldLp:Landroid/view/ViewGroup$MarginLayoutParams;
    iget-object v8, p0, Lcom/android/internal/widget/ActionBarView;->mExpandedHomeLayout:Lcom/android/internal/widget/ActionBarView$HomeView;

    iget-object v8, v8, Lcom/android/internal/widget/ActionBarView$HomeView;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v8}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 1058
    .local v5, oldLp_e:Landroid/view/ViewGroup$MarginLayoutParams;
    iget v8, v3, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iput v8, v4, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 1059
    iget v8, v3, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    iput v8, v4, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 1062
    iget v8, v3, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iput v8, v5, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 1063
    iget v8, v3, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    iput v8, v5, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 1065
    return-void

    .line 1039
    .end local v2           #inflater:Landroid/view/LayoutInflater;
    .end local v3           #lp:Landroid/view/ViewGroup$MarginLayoutParams;
    .end local v4           #oldLp:Landroid/view/ViewGroup$MarginLayoutParams;
    .end local v5           #oldLp_e:Landroid/view/ViewGroup$MarginLayoutParams;
    .end local v6           #tempHomeLayout:Lcom/android/internal/widget/ActionBarView$HomeView;
    .end local v7           #tempiconView:Landroid/widget/ImageView;
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/widget/ActionBarView;->getContext()Landroid/content/Context;

    move-result-object v8

    const/4 v9, 0x0

    sget-object v10, Lcom/android/internal/R$styleable;->ActionBar:[I

    const v11, 0x10102ce

    invoke-virtual {v8, v9, v10, v11, v12}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 1042
    .local v0, a:Landroid/content/res/TypedArray;
    const/16 v8, 0xf

    const v9, 0x1090018

    invoke-virtual {v0, v8, v9}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    goto :goto_0
.end method

.method private updateMultiWindow()V
    .locals 7

    .prologue
    .line 1020
    iget-object v2, p0, Lcom/android/internal/widget/ActionBarView;->mMultiWindowMenuButton:Landroid/view/View;

    if-eqz v2, :cond_0

    .line 1023
    iget-object v2, p0, Lcom/android/internal/widget/ActionBarView;->mContext:Landroid/content/Context;

    const/4 v3, 0x0

    sget-object v4, Lcom/android/internal/R$styleable;->View:[I

    const v5, 0x10103c9

    const/4 v6, 0x0

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 1025
    .local v0, a:Landroid/content/res/TypedArray;
    const/16 v2, 0x29

    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    .line 1026
    .local v1, contentDescription:Ljava/lang/CharSequence;
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 1028
    iget-object v2, p0, Lcom/android/internal/widget/ActionBarView;->mMultiWindowMenuButton:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 1030
    .end local v0           #a:Landroid/content/res/TypedArray;
    .end local v1           #contentDescription:Ljava/lang/CharSequence;
    :cond_0
    return-void
.end method


# virtual methods
.method public collapseActionView()V
    .locals 2

    .prologue
    .line 550
    iget-object v1, p0, Lcom/android/internal/widget/ActionBarView;->mExpandedMenuPresenter:Lcom/android/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;

    if-nez v1, :cond_1

    const/4 v0, 0x0

    .line 552
    .local v0, item:Lcom/android/internal/view/menu/MenuItemImpl;
    :goto_0
    if-eqz v0, :cond_0

    .line 553
    invoke-virtual {v0}, Lcom/android/internal/view/menu/MenuItemImpl;->collapseActionView()Z

    .line 555
    :cond_0
    return-void

    .line 550
    .end local v0           #item:Lcom/android/internal/view/menu/MenuItemImpl;
    :cond_1
    iget-object v1, p0, Lcom/android/internal/widget/ActionBarView;->mExpandedMenuPresenter:Lcom/android/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;

    iget-object v0, v1, Lcom/android/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->mCurrentExpandedItem:Lcom/android/internal/view/menu/MenuItemImpl;

    goto :goto_0
.end method

.method protected generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 2

    .prologue
    .line 857
    new-instance v0, Landroid/app/ActionBar$LayoutParams;

    const/16 v1, 0x13

    invoke-direct {v0, v1}, Landroid/app/ActionBar$LayoutParams;-><init>(I)V

    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 2
    .parameter "attrs"

    .prologue
    .line 1467
    new-instance v0, Landroid/app/ActionBar$LayoutParams;

    invoke-virtual {p0}, Lcom/android/internal/widget/ActionBarView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/app/ActionBar$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method public generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 0
    .parameter "lp"

    .prologue
    .line 1472
    if-nez p1, :cond_0

    .line 1473
    invoke-virtual {p0}, Lcom/android/internal/widget/ActionBarView;->generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    .line 1475
    :cond_0
    return-object p1
.end method

.method public getCustomNavigationView()Landroid/view/View;
    .locals 1

    .prologue
    .line 842
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mCustomNavView:Landroid/view/View;

    return-object v0
.end method

.method public getDisplayOptions()I
    .locals 1

    .prologue
    .line 850
    iget v0, p0, Lcom/android/internal/widget/ActionBarView;->mDisplayOptions:I

    return v0
.end method

.method public getDropdownAdapter()Landroid/widget/SpinnerAdapter;
    .locals 1

    .prologue
    .line 830
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mSpinnerAdapter:Landroid/widget/SpinnerAdapter;

    return-object v0
.end method

.method public getDropdownSelectedPosition()I
    .locals 1

    .prologue
    .line 838
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v0

    return v0
.end method

.method public getNavigationMode()I
    .locals 1

    .prologue
    .line 846
    iget v0, p0, Lcom/android/internal/widget/ActionBarView;->mNavigationMode:I

    return v0
.end method

.method public getSubtitle()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 610
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mSubtitle:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getTitle()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 569
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mTitle:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public hasEmbeddedTabs()Z
    .locals 1

    .prologue
    .line 437
    iget-boolean v0, p0, Lcom/android/internal/widget/ActionBarView;->mIncludeTabs:Z

    return v0
.end method

.method public hasExpandedActionView()Z
    .locals 1

    .prologue
    .line 545
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mExpandedMenuPresenter:Lcom/android/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mExpandedMenuPresenter:Lcom/android/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;

    iget-object v0, v0, Lcom/android/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->mCurrentExpandedItem:Lcom/android/internal/view/menu/MenuItemImpl;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public initIndeterminateProgress()V
    .locals 5

    .prologue
    .line 384
    new-instance v0, Landroid/widget/ProgressBar;

    iget-object v1, p0, Lcom/android/internal/widget/ActionBarView;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    const/4 v3, 0x0

    iget v4, p0, Lcom/android/internal/widget/ActionBarView;->mIndeterminateProgressStyle:I

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    iput-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mIndeterminateProgressView:Landroid/widget/ProgressBar;

    .line 386
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mIndeterminateProgressView:Landroid/widget/ProgressBar;

    const v1, 0x10203f4

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setId(I)V

    .line 387
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mIndeterminateProgressView:Landroid/widget/ProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 388
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mIndeterminateProgressView:Landroid/widget/ProgressBar;

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/ActionBarView;->addView(Landroid/view/View;)V

    .line 389
    return-void
.end method

.method public initProgress()V
    .locals 5

    .prologue
    .line 376
    new-instance v0, Landroid/widget/ProgressBar;

    iget-object v1, p0, Lcom/android/internal/widget/ActionBarView;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    const/4 v3, 0x0

    iget v4, p0, Lcom/android/internal/widget/ActionBarView;->mProgressStyle:I

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    iput-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mProgressView:Landroid/widget/ProgressBar;

    .line 377
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mProgressView:Landroid/widget/ProgressBar;

    const v1, 0x10203f5

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setId(I)V

    .line 378
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mProgressView:Landroid/widget/ProgressBar;

    const/16 v1, 0x2710

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 379
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mProgressView:Landroid/widget/ProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 380
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mProgressView:Landroid/widget/ProgressBar;

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/ActionBarView;->addView(Landroid/view/View;)V

    .line 381
    return-void
.end method

.method public isCollapsed()Z
    .locals 1

    .prologue
    .line 1077
    iget-boolean v0, p0, Lcom/android/internal/widget/ActionBarView;->mIsCollapsed:Z

    return v0
.end method

.method public isMultiWindowReserved()Z
    .locals 1

    .prologue
    .line 968
    iget-boolean v0, p0, Lcom/android/internal/widget/ActionBarView;->mReserveMultiWindow:Z

    return v0
.end method

.method public isSplitActionBar()Z
    .locals 1

    .prologue
    .line 433
    iget-boolean v0, p0, Lcom/android/internal/widget/AbsActionBarView;->mSplitActionBar:Z

    return v0
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3
    .parameter "newConfig"

    .prologue
    const/4 v2, 0x0

    .line 322
    invoke-super {p0, p1}, Lcom/android/internal/widget/AbsActionBarView;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 324
    iput-object v2, p0, Lcom/android/internal/widget/ActionBarView;->mTitleView:Landroid/widget/TextView;

    .line 325
    iput-object v2, p0, Lcom/android/internal/widget/ActionBarView;->mSubtitleView:Landroid/widget/TextView;

    .line 326
    iput-object v2, p0, Lcom/android/internal/widget/ActionBarView;->mTitleUpView:Landroid/view/View;

    .line 327
    iget-object v1, p0, Lcom/android/internal/widget/ActionBarView;->mTitleLayout:Landroid/widget/LinearLayout;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/widget/ActionBarView;->mTitleLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-ne v1, p0, :cond_0

    .line 328
    iget-object v1, p0, Lcom/android/internal/widget/ActionBarView;->mTitleLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v1}, Lcom/android/internal/widget/ActionBarView;->removeView(Landroid/view/View;)V

    .line 330
    :cond_0
    iput-object v2, p0, Lcom/android/internal/widget/ActionBarView;->mTitleLayout:Landroid/widget/LinearLayout;

    .line 331
    iget v1, p0, Lcom/android/internal/widget/ActionBarView;->mDisplayOptions:I

    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_1

    .line 332
    invoke-direct {p0}, Lcom/android/internal/widget/ActionBarView;->initTitle()V

    .line 336
    :cond_1
    invoke-direct {p0}, Lcom/android/internal/widget/ActionBarView;->updateHomeImageLayout()V

    .line 339
    invoke-direct {p0}, Lcom/android/internal/widget/ActionBarView;->updateMultiWindow()V

    .line 342
    iget-object v1, p0, Lcom/android/internal/widget/ActionBarView;->mTabScrollView:Lcom/android/internal/widget/ScrollingTabContainerView;

    if-eqz v1, :cond_3

    iget-boolean v1, p0, Lcom/android/internal/widget/ActionBarView;->mIncludeTabs:Z

    if-eqz v1, :cond_3

    .line 343
    iget-object v1, p0, Lcom/android/internal/widget/ActionBarView;->mTabScrollView:Lcom/android/internal/widget/ScrollingTabContainerView;

    invoke-virtual {v1}, Lcom/android/internal/widget/ScrollingTabContainerView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 344
    .local v0, lp:Landroid/view/ViewGroup$LayoutParams;
    if-eqz v0, :cond_2

    .line 345
    const/4 v1, -0x2

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 346
    const/4 v1, -0x1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 348
    :cond_2
    iget-object v1, p0, Lcom/android/internal/widget/ActionBarView;->mTabScrollView:Lcom/android/internal/widget/ScrollingTabContainerView;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/internal/widget/ScrollingTabContainerView;->setAllowCollapse(Z)V

    .line 350
    .end local v0           #lp:Landroid/view/ViewGroup$LayoutParams;
    :cond_3
    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 362
    invoke-super {p0}, Lcom/android/internal/widget/AbsActionBarView;->onDetachedFromWindow()V

    .line 363
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mTabSelector:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/ActionBarView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 364
    iget-object v0, p0, Lcom/android/internal/widget/AbsActionBarView;->mActionMenuPresenter:Lcom/android/internal/view/menu/ActionMenuPresenter;

    if-eqz v0, :cond_0

    .line 365
    iget-object v0, p0, Lcom/android/internal/widget/AbsActionBarView;->mActionMenuPresenter:Lcom/android/internal/view/menu/ActionMenuPresenter;

    invoke-virtual {v0}, Lcom/android/internal/view/menu/ActionMenuPresenter;->hideOverflowMenu()Z

    .line 366
    iget-object v0, p0, Lcom/android/internal/widget/AbsActionBarView;->mActionMenuPresenter:Lcom/android/internal/view/menu/ActionMenuPresenter;

    invoke-virtual {v0}, Lcom/android/internal/view/menu/ActionMenuPresenter;->hideSubMenus()Z

    .line 368
    :cond_0
    return-void
.end method

.method protected onFinishInflate()V
    .locals 2

    .prologue
    .line 862
    invoke-super {p0}, Lcom/android/internal/widget/AbsActionBarView;->onFinishInflate()V

    .line 864
    iget-object v1, p0, Lcom/android/internal/widget/ActionBarView;->mHomeLayout:Lcom/android/internal/widget/ActionBarView$HomeView;

    invoke-virtual {p0, v1}, Lcom/android/internal/widget/ActionBarView;->addView(Landroid/view/View;)V

    .line 866
    iget-object v1, p0, Lcom/android/internal/widget/ActionBarView;->mCustomNavView:Landroid/view/View;

    if-eqz v1, :cond_1

    iget v1, p0, Lcom/android/internal/widget/ActionBarView;->mDisplayOptions:I

    and-int/lit8 v1, v1, 0x10

    if-eqz v1, :cond_1

    .line 867
    iget-object v1, p0, Lcom/android/internal/widget/ActionBarView;->mCustomNavView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 868
    .local v0, parent:Landroid/view/ViewParent;
    if-eq v0, p0, :cond_1

    .line 869
    instance-of v1, v0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_0

    .line 870
    check-cast v0, Landroid/view/ViewGroup;

    .end local v0           #parent:Landroid/view/ViewParent;
    iget-object v1, p0, Lcom/android/internal/widget/ActionBarView;->mCustomNavView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 872
    :cond_0
    iget-object v1, p0, Lcom/android/internal/widget/ActionBarView;->mCustomNavView:Landroid/view/View;

    invoke-virtual {p0, v1}, Lcom/android/internal/widget/ActionBarView;->addView(Landroid/view/View;)V

    .line 875
    :cond_1
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 35
    .parameter "changed"
    .parameter "l"
    .parameter "t"
    .parameter "r"
    .parameter "b"

    .prologue
    .line 1291
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/ActionBarView;->getPaddingLeft()I

    move-result v26

    .line 1292
    .local v26, x:I
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/ActionBarView;->getPaddingTop()I

    move-result v28

    .line 1293
    .local v28, y:I
    sub-int v30, p5, p3

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/ActionBarView;->getPaddingTop()I

    move-result v31

    sub-int v30, v30, v31

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/ActionBarView;->getPaddingBottom()I

    move-result v31

    sub-int v7, v30, v31

    .line 1295
    .local v7, contentHeight:I
    if-gtz v7, :cond_0

    .line 1463
    :goto_0
    return-void

    .line 1300
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/ActionBarView;->mExpandedActionView:Landroid/view/View;

    move-object/from16 v30, v0

    if-eqz v30, :cond_d

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/widget/ActionBarView;->mExpandedHomeLayout:Lcom/android/internal/widget/ActionBarView$HomeView;

    .line 1301
    .local v13, homeLayout:Lcom/android/internal/widget/ActionBarView$HomeView;
    :goto_1
    const/16 v20, 0x0

    .line 1302
    .local v20, needsTouchDelegate:Z
    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/internal/widget/ActionBarView;->mMaxHomeSlop:I

    .line 1303
    .local v15, homeSlop:I
    const/4 v14, 0x0

    .line 1304
    .local v14, homeRight:I
    invoke-virtual {v13}, Lcom/android/internal/widget/ActionBarView$HomeView;->getVisibility()I

    move-result v30

    const/16 v31, 0x8

    move/from16 v0, v30

    move/from16 v1, v31

    if-eq v0, v1, :cond_1

    .line 1305
    invoke-virtual {v13}, Lcom/android/internal/widget/ActionBarView$HomeView;->getLeftOffset()I

    move-result v16

    .line 1306
    .local v16, leftOffset:I
    add-int v30, v26, v16

    move-object/from16 v0, p0

    move/from16 v1, v30

    move/from16 v2, v28

    invoke-virtual {v0, v13, v1, v2, v7}, Lcom/android/internal/widget/ActionBarView;->positionChild(Landroid/view/View;III)I

    move-result v30

    add-int v30, v30, v16

    add-int v26, v26, v30

    .line 1307
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/ActionBarView;->mHomeLayout:Lcom/android/internal/widget/ActionBarView$HomeView;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    if-ne v13, v0, :cond_e

    const/16 v20, 0x1

    .line 1308
    :goto_2
    move/from16 v14, v26

    .line 1311
    .end local v16           #leftOffset:I
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/ActionBarView;->mExpandedActionView:Landroid/view/View;

    move-object/from16 v30, v0

    if-nez v30, :cond_3

    .line 1312
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/ActionBarView;->mTitleLayout:Landroid/widget/LinearLayout;

    move-object/from16 v30, v0

    if-eqz v30, :cond_f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/ActionBarView;->mTitleLayout:Landroid/widget/LinearLayout;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v30

    const/16 v31, 0x8

    move/from16 v0, v30

    move/from16 v1, v31

    if-eq v0, v1, :cond_f

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/ActionBarView;->mDisplayOptions:I

    move/from16 v30, v0

    and-int/lit8 v30, v30, 0x8

    if-eqz v30, :cond_f

    const/16 v23, 0x1

    .line 1314
    .local v23, showTitle:Z
    :goto_3
    if-eqz v23, :cond_2

    .line 1315
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/ActionBarView;->mTitleLayout:Landroid/widget/LinearLayout;

    move-object/from16 v30, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    move/from16 v2, v26

    move/from16 v3, v28

    invoke-virtual {v0, v1, v2, v3, v7}, Lcom/android/internal/widget/ActionBarView;->positionChild(Landroid/view/View;III)I

    move-result v30

    add-int v26, v26, v30

    .line 1318
    :cond_2
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/ActionBarView;->mNavigationMode:I

    move/from16 v30, v0

    packed-switch v30, :pswitch_data_0

    .line 1338
    .end local v23           #showTitle:Z
    :cond_3
    :goto_4
    :pswitch_0
    sub-int v30, p4, p2

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/ActionBarView;->getPaddingRight()I

    move-result v31

    sub-int v18, v30, v31

    .line 1341
    .local v18, menuLeft:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/ActionBarView;->mMultiWindowMenuButton:Landroid/view/View;

    move-object/from16 v30, v0

    if-eqz v30, :cond_12

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/ActionBarView;->mMultiWindowMenuButton:Landroid/view/View;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Landroid/view/View;->getVisibility()I

    move-result v30

    const/16 v31, 0x8

    move/from16 v0, v30

    move/from16 v1, v31

    if-eq v0, v1, :cond_12

    invoke-direct/range {p0 .. p0}, Lcom/android/internal/widget/ActionBarView;->getWindowMode()I

    move-result v30

    invoke-static/range {v30 .. v30}, Landroid/sec/multiwindow/impl/MultiWindowManager;->isNormalWindow(I)Z

    move-result v30

    if-eqz v30, :cond_12

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/widget/ActionBarView;->mReserveMultiWindow:Z

    move/from16 v30, v0

    if-eqz v30, :cond_12

    .line 1343
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/ActionBarView;->mMultiWindowMenuButton:Landroid/view/View;

    move-object/from16 v30, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    move/from16 v2, v18

    move/from16 v3, v28

    invoke-virtual {v0, v1, v2, v3, v7}, Lcom/android/internal/widget/ActionBarView;->positionChildInverse(Landroid/view/View;III)I

    .line 1344
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/ActionBarView;->mMultiWindowMenuButton:Landroid/view/View;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Landroid/view/View;->getMeasuredWidth()I

    move-result v30

    sub-int v18, v18, v30

    .line 1351
    :cond_4
    :goto_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/AbsActionBarView;->mMenuView:Lcom/android/internal/view/menu/ActionMenuView;

    move-object/from16 v30, v0

    if-eqz v30, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/AbsActionBarView;->mMenuView:Lcom/android/internal/view/menu/ActionMenuView;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Lcom/android/internal/view/menu/ActionMenuView;->getParent()Landroid/view/ViewParent;

    move-result-object v30

    move-object/from16 v0, v30

    move-object/from16 v1, p0

    if-ne v0, v1, :cond_5

    .line 1352
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/AbsActionBarView;->mMenuView:Lcom/android/internal/view/menu/ActionMenuView;

    move-object/from16 v30, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    move/from16 v2, v18

    move/from16 v3, v28

    invoke-virtual {v0, v1, v2, v3, v7}, Lcom/android/internal/widget/ActionBarView;->positionChildInverse(Landroid/view/View;III)I

    .line 1353
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/AbsActionBarView;->mMenuView:Lcom/android/internal/view/menu/ActionMenuView;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Lcom/android/internal/view/menu/ActionMenuView;->getMeasuredWidth()I

    move-result v30

    sub-int v18, v18, v30

    .line 1356
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/ActionBarView;->mIndeterminateProgressView:Landroid/widget/ProgressBar;

    move-object/from16 v30, v0

    if-eqz v30, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/ActionBarView;->mIndeterminateProgressView:Landroid/widget/ProgressBar;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Landroid/widget/ProgressBar;->getVisibility()I

    move-result v30

    const/16 v31, 0x8

    move/from16 v0, v30

    move/from16 v1, v31

    if-eq v0, v1, :cond_6

    .line 1358
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/ActionBarView;->mIndeterminateProgressView:Landroid/widget/ProgressBar;

    move-object/from16 v30, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    move/from16 v2, v18

    move/from16 v3, v28

    invoke-virtual {v0, v1, v2, v3, v7}, Lcom/android/internal/widget/ActionBarView;->positionChildInverse(Landroid/view/View;III)I

    .line 1359
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/ActionBarView;->mIndeterminateProgressView:Landroid/widget/ProgressBar;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Landroid/widget/ProgressBar;->getMeasuredWidth()I

    move-result v30

    sub-int v18, v18, v30

    .line 1362
    :cond_6
    const/4 v8, 0x0

    .line 1363
    .local v8, customView:Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/ActionBarView;->mExpandedActionView:Landroid/view/View;

    move-object/from16 v30, v0

    if-eqz v30, :cond_13

    .line 1364
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/internal/widget/ActionBarView;->mExpandedActionView:Landroid/view/View;

    .line 1369
    :cond_7
    :goto_6
    if-eqz v8, :cond_b

    .line 1370
    invoke-virtual {v8}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v17

    .line 1371
    .local v17, lp:Landroid/view/ViewGroup$LayoutParams;
    move-object/from16 v0, v17

    instance-of v0, v0, Landroid/app/ActionBar$LayoutParams;

    move/from16 v30, v0

    if-eqz v30, :cond_14

    check-cast v17, Landroid/app/ActionBar$LayoutParams;

    .end local v17           #lp:Landroid/view/ViewGroup$LayoutParams;
    move-object/from16 v4, v17

    .line 1374
    .local v4, ablp:Landroid/app/ActionBar$LayoutParams;
    :goto_7
    if-eqz v4, :cond_15

    iget v10, v4, Landroid/app/ActionBar$LayoutParams;->gravity:I

    .line 1375
    .local v10, gravity:I
    :goto_8
    invoke-virtual {v8}, Landroid/view/View;->getMeasuredWidth()I

    move-result v19

    .line 1377
    .local v19, navWidth:I
    const/16 v24, 0x0

    .line 1378
    .local v24, topMargin:I
    const/4 v5, 0x0

    .line 1379
    .local v5, bottomMargin:I
    if-eqz v4, :cond_8

    .line 1380
    iget v0, v4, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    move/from16 v30, v0

    add-int v26, v26, v30

    .line 1381
    iget v0, v4, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    move/from16 v30, v0

    sub-int v18, v18, v30

    .line 1382
    iget v0, v4, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    move/from16 v24, v0

    .line 1383
    iget v5, v4, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 1386
    :cond_8
    and-int/lit8 v12, v10, 0x7

    .line 1388
    .local v12, hgravity:I
    const/16 v30, 0x1

    move/from16 v0, v30

    if-ne v12, v0, :cond_17

    .line 1389
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/ActionBarView;->mRight:I

    move/from16 v30, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/ActionBarView;->mLeft:I

    move/from16 v31, v0

    sub-int v30, v30, v31

    sub-int v30, v30, v19

    div-int/lit8 v6, v30, 0x2

    .line 1390
    .local v6, centeredLeft:I
    move/from16 v0, v26

    if-ge v6, v0, :cond_16

    .line 1391
    const/4 v12, 0x3

    .line 1399
    .end local v6           #centeredLeft:I
    :cond_9
    :goto_9
    const/16 v27, 0x0

    .line 1400
    .local v27, xpos:I
    packed-switch v12, :pswitch_data_1

    .line 1412
    :goto_a
    :pswitch_1
    and-int/lit8 v25, v10, 0x70

    .line 1414
    .local v25, vgravity:I
    const/16 v30, -0x1

    move/from16 v0, v30

    if-ne v10, v0, :cond_a

    .line 1415
    const/16 v25, 0x10

    .line 1418
    :cond_a
    const/16 v29, 0x0

    .line 1419
    .local v29, ypos:I
    sparse-switch v25, :sswitch_data_0

    .line 1433
    :goto_b
    invoke-virtual {v8}, Landroid/view/View;->getMeasuredWidth()I

    move-result v9

    .line 1434
    .local v9, customWidth:I
    add-int v30, v27, v9

    invoke-virtual {v8}, Landroid/view/View;->getMeasuredHeight()I

    move-result v31

    add-int v31, v31, v29

    move/from16 v0, v27

    move/from16 v1, v29

    move/from16 v2, v30

    move/from16 v3, v31

    invoke-virtual {v8, v0, v1, v2, v3}, Landroid/view/View;->layout(IIII)V

    .line 1436
    sub-int v30, v27, v14

    const/16 v31, 0x0

    invoke-static/range {v30 .. v31}, Ljava/lang/Math;->max(II)I

    move-result v30

    move/from16 v0, v30

    invoke-static {v15, v0}, Ljava/lang/Math;->min(II)I

    move-result v15

    .line 1437
    add-int v26, v26, v9

    .line 1440
    .end local v4           #ablp:Landroid/app/ActionBar$LayoutParams;
    .end local v5           #bottomMargin:I
    .end local v9           #customWidth:I
    .end local v10           #gravity:I
    .end local v12           #hgravity:I
    .end local v19           #navWidth:I
    .end local v24           #topMargin:I
    .end local v25           #vgravity:I
    .end local v27           #xpos:I
    .end local v29           #ypos:I
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/ActionBarView;->mProgressView:Landroid/widget/ProgressBar;

    move-object/from16 v30, v0

    if-eqz v30, :cond_c

    .line 1441
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/ActionBarView;->mProgressView:Landroid/widget/ProgressBar;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Landroid/widget/ProgressBar;->bringToFront()V

    .line 1442
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/ActionBarView;->mProgressView:Landroid/widget/ProgressBar;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Landroid/widget/ProgressBar;->getMeasuredHeight()I

    move-result v30

    div-int/lit8 v11, v30, 0x2

    .line 1445
    .local v11, halfProgressHeight:I
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/widget/ActionBarView;->mIsParentThemeDeviceDefault:Z

    move/from16 v30, v0

    if-eqz v30, :cond_18

    .line 1446
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/ActionBarView;->mProgressView:Landroid/widget/ProgressBar;

    move-object/from16 v30, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/ActionBarView;->mProgressBarPadding:I

    move/from16 v31, v0

    sub-int v32, v7, v11

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/ActionBarView;->mProgressBarPadding:I

    move/from16 v33, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/ActionBarView;->mProgressView:Landroid/widget/ProgressBar;

    move-object/from16 v34, v0

    invoke-virtual/range {v34 .. v34}, Landroid/widget/ProgressBar;->getMeasuredWidth()I

    move-result v34

    add-int v33, v33, v34

    add-int v34, v7, v11

    invoke-virtual/range {v30 .. v34}, Landroid/widget/ProgressBar;->layout(IIII)V

    .line 1456
    .end local v11           #halfProgressHeight:I
    :cond_c
    :goto_c
    if-eqz v20, :cond_19

    .line 1457
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/ActionBarView;->mTempRect:Landroid/graphics/Rect;

    move-object/from16 v30, v0

    invoke-virtual {v13}, Lcom/android/internal/widget/ActionBarView$HomeView;->getLeft()I

    move-result v31

    invoke-virtual {v13}, Lcom/android/internal/widget/ActionBarView$HomeView;->getTop()I

    move-result v32

    invoke-virtual {v13}, Lcom/android/internal/widget/ActionBarView$HomeView;->getRight()I

    move-result v33

    add-int v33, v33, v15

    invoke-virtual {v13}, Lcom/android/internal/widget/ActionBarView$HomeView;->getBottom()I

    move-result v34

    invoke-virtual/range {v30 .. v34}, Landroid/graphics/Rect;->set(IIII)V

    .line 1459
    new-instance v30, Landroid/view/TouchDelegate;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/ActionBarView;->mTempRect:Landroid/graphics/Rect;

    move-object/from16 v31, v0

    move-object/from16 v0, v30

    move-object/from16 v1, v31

    invoke-direct {v0, v1, v13}, Landroid/view/TouchDelegate;-><init>(Landroid/graphics/Rect;Landroid/view/View;)V

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/ActionBarView;->setTouchDelegate(Landroid/view/TouchDelegate;)V

    goto/16 :goto_0

    .line 1300
    .end local v8           #customView:Landroid/view/View;
    .end local v13           #homeLayout:Lcom/android/internal/widget/ActionBarView$HomeView;
    .end local v14           #homeRight:I
    .end local v15           #homeSlop:I
    .end local v18           #menuLeft:I
    .end local v20           #needsTouchDelegate:Z
    :cond_d
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/widget/ActionBarView;->mHomeLayout:Lcom/android/internal/widget/ActionBarView$HomeView;

    goto/16 :goto_1

    .line 1307
    .restart local v13       #homeLayout:Lcom/android/internal/widget/ActionBarView$HomeView;
    .restart local v14       #homeRight:I
    .restart local v15       #homeSlop:I
    .restart local v16       #leftOffset:I
    .restart local v20       #needsTouchDelegate:Z
    :cond_e
    const/16 v20, 0x0

    goto/16 :goto_2

    .line 1312
    .end local v16           #leftOffset:I
    :cond_f
    const/16 v23, 0x0

    goto/16 :goto_3

    .line 1322
    .restart local v23       #showTitle:Z
    :pswitch_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/ActionBarView;->mListNavLayout:Landroid/widget/LinearLayout;

    move-object/from16 v30, v0

    if-eqz v30, :cond_3

    .line 1323
    if-eqz v23, :cond_10

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/ActionBarView;->mItemPadding:I

    move/from16 v30, v0

    add-int v26, v26, v30

    .line 1324
    :cond_10
    sub-int v30, v26, v14

    const/16 v31, 0x0

    invoke-static/range {v30 .. v31}, Ljava/lang/Math;->max(II)I

    move-result v30

    move/from16 v0, v30

    invoke-static {v15, v0}, Ljava/lang/Math;->min(II)I

    move-result v15

    .line 1325
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/ActionBarView;->mListNavLayout:Landroid/widget/LinearLayout;

    move-object/from16 v30, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    move/from16 v2, v26

    move/from16 v3, v28

    invoke-virtual {v0, v1, v2, v3, v7}, Lcom/android/internal/widget/ActionBarView;->positionChild(Landroid/view/View;III)I

    move-result v30

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/ActionBarView;->mItemPadding:I

    move/from16 v31, v0

    add-int v30, v30, v31

    add-int v26, v26, v30

    goto/16 :goto_4

    .line 1329
    :pswitch_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/ActionBarView;->mTabScrollView:Lcom/android/internal/widget/ScrollingTabContainerView;

    move-object/from16 v30, v0

    if-eqz v30, :cond_3

    .line 1330
    if-eqz v23, :cond_11

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/ActionBarView;->mItemPadding:I

    move/from16 v30, v0

    add-int v26, v26, v30

    .line 1331
    :cond_11
    sub-int v30, v26, v14

    const/16 v31, 0x0

    invoke-static/range {v30 .. v31}, Ljava/lang/Math;->max(II)I

    move-result v30

    move/from16 v0, v30

    invoke-static {v15, v0}, Ljava/lang/Math;->min(II)I

    move-result v15

    .line 1332
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/ActionBarView;->mTabScrollView:Lcom/android/internal/widget/ScrollingTabContainerView;

    move-object/from16 v30, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    move/from16 v2, v26

    move/from16 v3, v28

    invoke-virtual {v0, v1, v2, v3, v7}, Lcom/android/internal/widget/ActionBarView;->positionChild(Landroid/view/View;III)I

    move-result v30

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/ActionBarView;->mItemPadding:I

    move/from16 v31, v0

    add-int v30, v30, v31

    add-int v26, v26, v30

    goto/16 :goto_4

    .line 1346
    .end local v23           #showTitle:Z
    .restart local v18       #menuLeft:I
    :cond_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/ActionBarView;->mMultiWindowMenuButton:Landroid/view/View;

    move-object/from16 v30, v0

    if-eqz v30, :cond_4

    .line 1347
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/ActionBarView;->mMultiWindowMenuButton:Landroid/view/View;

    move-object/from16 v30, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    move/from16 v2, v18

    move/from16 v3, v28

    invoke-virtual {v0, v1, v2, v3, v7}, Lcom/android/internal/widget/ActionBarView;->positionChild(Landroid/view/View;III)I

    goto/16 :goto_5

    .line 1365
    .restart local v8       #customView:Landroid/view/View;
    :cond_13
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/ActionBarView;->mDisplayOptions:I

    move/from16 v30, v0

    and-int/lit8 v30, v30, 0x10

    if-eqz v30, :cond_7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/ActionBarView;->mCustomNavView:Landroid/view/View;

    move-object/from16 v30, v0

    if-eqz v30, :cond_7

    .line 1367
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/internal/widget/ActionBarView;->mCustomNavView:Landroid/view/View;

    goto/16 :goto_6

    .line 1371
    .restart local v17       #lp:Landroid/view/ViewGroup$LayoutParams;
    :cond_14
    const/4 v4, 0x0

    goto/16 :goto_7

    .line 1374
    .end local v17           #lp:Landroid/view/ViewGroup$LayoutParams;
    .restart local v4       #ablp:Landroid/app/ActionBar$LayoutParams;
    :cond_15
    const/16 v10, 0x13

    goto/16 :goto_8

    .line 1392
    .restart local v5       #bottomMargin:I
    .restart local v6       #centeredLeft:I
    .restart local v10       #gravity:I
    .restart local v12       #hgravity:I
    .restart local v19       #navWidth:I
    .restart local v24       #topMargin:I
    :cond_16
    add-int v30, v6, v19

    move/from16 v0, v30

    move/from16 v1, v18

    if-le v0, v1, :cond_9

    .line 1393
    const/4 v12, 0x5

    goto/16 :goto_9

    .line 1395
    .end local v6           #centeredLeft:I
    :cond_17
    const/16 v30, -0x1

    move/from16 v0, v30

    if-ne v10, v0, :cond_9

    .line 1396
    const/4 v12, 0x3

    goto/16 :goto_9

    .line 1402
    .restart local v27       #xpos:I
    :pswitch_4
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/ActionBarView;->mRight:I

    move/from16 v30, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/ActionBarView;->mLeft:I

    move/from16 v31, v0

    sub-int v30, v30, v31

    sub-int v30, v30, v19

    div-int/lit8 v27, v30, 0x2

    .line 1403
    goto/16 :goto_a

    .line 1405
    :pswitch_5
    move/from16 v27, v26

    .line 1406
    goto/16 :goto_a

    .line 1408
    :pswitch_6
    sub-int v27, v18, v19

    goto/16 :goto_a

    .line 1421
    .restart local v25       #vgravity:I
    .restart local v29       #ypos:I
    :sswitch_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/ActionBarView;->getPaddingTop()I

    move-result v22

    .line 1422
    .local v22, paddedTop:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/ActionBarView;->mBottom:I

    move/from16 v30, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/ActionBarView;->mTop:I

    move/from16 v31, v0

    sub-int v30, v30, v31

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/ActionBarView;->getPaddingBottom()I

    move-result v31

    sub-int v21, v30, v31

    .line 1423
    .local v21, paddedBottom:I
    sub-int v30, v21, v22

    invoke-virtual {v8}, Landroid/view/View;->getMeasuredHeight()I

    move-result v31

    sub-int v30, v30, v31

    div-int/lit8 v29, v30, 0x2

    .line 1424
    goto/16 :goto_b

    .line 1426
    .end local v21           #paddedBottom:I
    .end local v22           #paddedTop:I
    :sswitch_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/ActionBarView;->getPaddingTop()I

    move-result v30

    add-int v29, v30, v24

    .line 1427
    goto/16 :goto_b

    .line 1429
    :sswitch_2
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/ActionBarView;->getHeight()I

    move-result v30

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/ActionBarView;->getPaddingBottom()I

    move-result v31

    sub-int v30, v30, v31

    invoke-virtual {v8}, Landroid/view/View;->getMeasuredHeight()I

    move-result v31

    sub-int v30, v30, v31

    sub-int v29, v30, v5

    goto/16 :goto_b

    .line 1450
    .end local v4           #ablp:Landroid/app/ActionBar$LayoutParams;
    .end local v5           #bottomMargin:I
    .end local v10           #gravity:I
    .end local v12           #hgravity:I
    .end local v19           #navWidth:I
    .end local v24           #topMargin:I
    .end local v25           #vgravity:I
    .end local v27           #xpos:I
    .end local v29           #ypos:I
    .restart local v11       #halfProgressHeight:I
    :cond_18
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/ActionBarView;->mProgressView:Landroid/widget/ProgressBar;

    move-object/from16 v30, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/ActionBarView;->mProgressBarPadding:I

    move/from16 v31, v0

    neg-int v0, v11

    move/from16 v32, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/ActionBarView;->mProgressBarPadding:I

    move/from16 v33, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/ActionBarView;->mProgressView:Landroid/widget/ProgressBar;

    move-object/from16 v34, v0

    invoke-virtual/range {v34 .. v34}, Landroid/widget/ProgressBar;->getMeasuredWidth()I

    move-result v34

    add-int v33, v33, v34

    move-object/from16 v0, v30

    move/from16 v1, v31

    move/from16 v2, v32

    move/from16 v3, v33

    invoke-virtual {v0, v1, v2, v3, v11}, Landroid/widget/ProgressBar;->layout(IIII)V

    goto/16 :goto_c

    .line 1461
    .end local v11           #halfProgressHeight:I
    :cond_19
    const/16 v30, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/ActionBarView;->setTouchDelegate(Landroid/view/TouchDelegate;)V

    goto/16 :goto_0

    .line 1318
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_3
    .end packed-switch

    .line 1400
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_4
        :pswitch_1
        :pswitch_5
        :pswitch_1
        :pswitch_6
    .end packed-switch

    .line 1419
    :sswitch_data_0
    .sparse-switch
        0x10 -> :sswitch_0
        0x30 -> :sswitch_1
        0x50 -> :sswitch_2
    .end sparse-switch
.end method

.method protected onMeasure(II)V
    .locals 44
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 1082
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/ActionBarView;->getChildCount()I

    move-result v7

    .line 1083
    .local v7, childCount:I
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/widget/ActionBarView;->mIsCollapsable:Z

    move/from16 v40, v0

    if-eqz v40, :cond_4

    .line 1084
    const/16 v38, 0x0

    .line 1085
    .local v38, visibleChildren:I
    const/16 v22, 0x0

    .local v22, i:I
    :goto_0
    move/from16 v0, v22

    if-ge v0, v7, :cond_2

    .line 1086
    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/ActionBarView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 1087
    .local v6, child:Landroid/view/View;
    invoke-virtual {v6}, Landroid/view/View;->getVisibility()I

    move-result v40

    const/16 v41, 0x8

    move/from16 v0, v40

    move/from16 v1, v41

    if-eq v0, v1, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/AbsActionBarView;->mMenuView:Lcom/android/internal/view/menu/ActionMenuView;

    move-object/from16 v40, v0

    move-object/from16 v0, v40

    if-ne v6, v0, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/AbsActionBarView;->mMenuView:Lcom/android/internal/view/menu/ActionMenuView;

    move-object/from16 v40, v0

    invoke-virtual/range {v40 .. v40}, Lcom/android/internal/view/menu/ActionMenuView;->getChildCount()I

    move-result v40

    if-eqz v40, :cond_1

    .line 1089
    :cond_0
    add-int/lit8 v38, v38, 0x1

    .line 1085
    :cond_1
    add-int/lit8 v22, v22, 0x1

    goto :goto_0

    .line 1093
    .end local v6           #child:Landroid/view/View;
    :cond_2
    if-nez v38, :cond_4

    .line 1095
    const/16 v40, 0x0

    const/16 v41, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v40

    move/from16 v2, v41

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/widget/ActionBarView;->setMeasuredDimension(II)V

    .line 1096
    const/16 v40, 0x1

    move/from16 v0, v40

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/widget/ActionBarView;->mIsCollapsed:Z

    .line 1287
    .end local v22           #i:I
    .end local v38           #visibleChildren:I
    :cond_3
    :goto_1
    return-void

    .line 1100
    :cond_4
    const/16 v40, 0x0

    move/from16 v0, v40

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/widget/ActionBarView;->mIsCollapsed:Z

    .line 1102
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v39

    .line 1103
    .local v39, widthMode:I
    const/high16 v40, 0x4000

    move/from16 v0, v39

    move/from16 v1, v40

    if-eq v0, v1, :cond_5

    .line 1104
    new-instance v40, Ljava/lang/IllegalStateException;

    new-instance v41, Ljava/lang/StringBuilder;

    invoke-direct/range {v41 .. v41}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v42

    invoke-virtual/range {v42 .. v42}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v42

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    const-string v42, " can only be used "

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    const-string v42, "with android:layout_width=\"match_parent\" (or fill_parent)"

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    invoke-virtual/range {v41 .. v41}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v41

    invoke-direct/range {v40 .. v41}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v40

    .line 1108
    :cond_5
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v16

    .line 1109
    .local v16, heightMode:I
    const/high16 v40, -0x8000

    move/from16 v0, v16

    move/from16 v1, v40

    if-eq v0, v1, :cond_6

    .line 1110
    new-instance v40, Ljava/lang/IllegalStateException;

    new-instance v41, Ljava/lang/StringBuilder;

    invoke-direct/range {v41 .. v41}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v42

    invoke-virtual/range {v42 .. v42}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v42

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    const-string v42, " can only be used "

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    const-string v42, "with android:layout_height=\"wrap_content\""

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    invoke-virtual/range {v41 .. v41}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v41

    invoke-direct/range {v40 .. v41}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v40

    .line 1114
    :cond_6
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v9

    .line 1116
    .local v9, contentWidth:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/AbsActionBarView;->mContentHeight:I

    move/from16 v40, v0

    if-lez v40, :cond_13

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/AbsActionBarView;->mContentHeight:I

    move/from16 v27, v0

    .line 1119
    .local v27, maxHeight:I
    :goto_2
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/ActionBarView;->getPaddingTop()I

    move-result v40

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/ActionBarView;->getPaddingBottom()I

    move-result v41

    add-int v37, v40, v41

    .line 1120
    .local v37, verticalPadding:I
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/ActionBarView;->getPaddingLeft()I

    move-result v30

    .line 1121
    .local v30, paddingLeft:I
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/ActionBarView;->getPaddingRight()I

    move-result v31

    .line 1122
    .local v31, paddingRight:I
    sub-int v15, v27, v37

    .line 1123
    .local v15, height:I
    const/high16 v40, -0x8000

    move/from16 v0, v40

    invoke-static {v15, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v8

    .line 1125
    .local v8, childSpecHeight:I
    sub-int v40, v9, v30

    sub-int v5, v40, v31

    .line 1126
    .local v5, availableWidth:I
    div-int/lit8 v24, v5, 0x2

    .line 1127
    .local v24, leftOfCenter:I
    move/from16 v32, v24

    .line 1129
    .local v32, rightOfCenter:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/ActionBarView;->mExpandedActionView:Landroid/view/View;

    move-object/from16 v40, v0

    if-eqz v40, :cond_14

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/ActionBarView;->mExpandedHomeLayout:Lcom/android/internal/widget/ActionBarView$HomeView;

    move-object/from16 v18, v0

    .line 1131
    .local v18, homeLayout:Lcom/android/internal/widget/ActionBarView$HomeView;
    :goto_3
    invoke-virtual/range {v18 .. v18}, Lcom/android/internal/widget/ActionBarView$HomeView;->getVisibility()I

    move-result v40

    const/16 v41, 0x8

    move/from16 v0, v40

    move/from16 v1, v41

    if-eq v0, v1, :cond_7

    .line 1132
    invoke-virtual/range {v18 .. v18}, Lcom/android/internal/widget/ActionBarView$HomeView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v26

    .line 1134
    .local v26, lp:Landroid/view/ViewGroup$LayoutParams;
    move-object/from16 v0, v26

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    move/from16 v40, v0

    if-gez v40, :cond_15

    .line 1135
    const/high16 v40, -0x8000

    move/from16 v0, v40

    invoke-static {v5, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v20

    .line 1139
    .local v20, homeWidthSpec:I
    :goto_4
    const/high16 v40, 0x4000

    move/from16 v0, v40

    invoke-static {v15, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v40

    move-object/from16 v0, v18

    move/from16 v1, v20

    move/from16 v2, v40

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/widget/ActionBarView$HomeView;->measure(II)V

    .line 1141
    invoke-virtual/range {v18 .. v18}, Lcom/android/internal/widget/ActionBarView$HomeView;->getMeasuredWidth()I

    move-result v40

    invoke-virtual/range {v18 .. v18}, Lcom/android/internal/widget/ActionBarView$HomeView;->getLeftOffset()I

    move-result v41

    add-int v19, v40, v41

    .line 1142
    .local v19, homeWidth:I
    const/16 v40, 0x0

    sub-int v41, v5, v19

    invoke-static/range {v40 .. v41}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 1143
    const/16 v40, 0x0

    sub-int v41, v5, v19

    invoke-static/range {v40 .. v41}, Ljava/lang/Math;->max(II)I

    move-result v24

    .line 1147
    .end local v19           #homeWidth:I
    .end local v20           #homeWidthSpec:I
    .end local v26           #lp:Landroid/view/ViewGroup$LayoutParams;
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/ActionBarView;->mMultiWindowMenuButton:Landroid/view/View;

    move-object/from16 v40, v0

    if-eqz v40, :cond_16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/ActionBarView;->mMultiWindowMenuButton:Landroid/view/View;

    move-object/from16 v40, v0

    invoke-virtual/range {v40 .. v40}, Landroid/view/View;->getVisibility()I

    move-result v40

    const/16 v41, 0x8

    move/from16 v0, v40

    move/from16 v1, v41

    if-eq v0, v1, :cond_16

    invoke-direct/range {p0 .. p0}, Lcom/android/internal/widget/ActionBarView;->getWindowMode()I

    move-result v40

    invoke-static/range {v40 .. v40}, Landroid/sec/multiwindow/impl/MultiWindowManager;->isNormalWindow(I)Z

    move-result v40

    if-eqz v40, :cond_16

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/widget/ActionBarView;->mReserveMultiWindow:Z

    move/from16 v40, v0

    if-eqz v40, :cond_16

    .line 1149
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/ActionBarView;->mMultiWindowMenuButton:Landroid/view/View;

    move-object/from16 v40, v0

    const/16 v41, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v40

    move/from16 v2, v41

    invoke-virtual {v0, v1, v5, v8, v2}, Lcom/android/internal/widget/ActionBarView;->measureChildView(Landroid/view/View;III)I

    move-result v5

    .line 1151
    const/16 v40, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/ActionBarView;->mMultiWindowMenuButton:Landroid/view/View;

    move-object/from16 v41, v0

    invoke-virtual/range {v41 .. v41}, Landroid/view/View;->getMeasuredWidth()I

    move-result v41

    sub-int v41, v32, v41

    invoke-static/range {v40 .. v41}, Ljava/lang/Math;->max(II)I

    move-result v32

    .line 1158
    :cond_8
    :goto_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/AbsActionBarView;->mMenuView:Lcom/android/internal/view/menu/ActionMenuView;

    move-object/from16 v40, v0

    if-eqz v40, :cond_9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/AbsActionBarView;->mMenuView:Lcom/android/internal/view/menu/ActionMenuView;

    move-object/from16 v40, v0

    invoke-virtual/range {v40 .. v40}, Lcom/android/internal/view/menu/ActionMenuView;->getParent()Landroid/view/ViewParent;

    move-result-object v40

    move-object/from16 v0, v40

    move-object/from16 v1, p0

    if-ne v0, v1, :cond_9

    .line 1159
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/AbsActionBarView;->mMenuView:Lcom/android/internal/view/menu/ActionMenuView;

    move-object/from16 v40, v0

    const/16 v41, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v40

    move/from16 v2, v41

    invoke-virtual {v0, v1, v5, v8, v2}, Lcom/android/internal/widget/ActionBarView;->measureChildView(Landroid/view/View;III)I

    move-result v5

    .line 1161
    const/16 v40, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/AbsActionBarView;->mMenuView:Lcom/android/internal/view/menu/ActionMenuView;

    move-object/from16 v41, v0

    invoke-virtual/range {v41 .. v41}, Lcom/android/internal/view/menu/ActionMenuView;->getMeasuredWidth()I

    move-result v41

    sub-int v41, v32, v41

    invoke-static/range {v40 .. v41}, Ljava/lang/Math;->max(II)I

    move-result v32

    .line 1164
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/ActionBarView;->mIndeterminateProgressView:Landroid/widget/ProgressBar;

    move-object/from16 v40, v0

    if-eqz v40, :cond_a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/ActionBarView;->mIndeterminateProgressView:Landroid/widget/ProgressBar;

    move-object/from16 v40, v0

    invoke-virtual/range {v40 .. v40}, Landroid/widget/ProgressBar;->getVisibility()I

    move-result v40

    const/16 v41, 0x8

    move/from16 v0, v40

    move/from16 v1, v41

    if-eq v0, v1, :cond_a

    .line 1166
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/ActionBarView;->mIndeterminateProgressView:Landroid/widget/ProgressBar;

    move-object/from16 v40, v0

    const/16 v41, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v40

    move/from16 v2, v41

    invoke-virtual {v0, v1, v5, v8, v2}, Lcom/android/internal/widget/ActionBarView;->measureChildView(Landroid/view/View;III)I

    move-result v5

    .line 1168
    const/16 v40, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/ActionBarView;->mIndeterminateProgressView:Landroid/widget/ProgressBar;

    move-object/from16 v41, v0

    invoke-virtual/range {v41 .. v41}, Landroid/widget/ProgressBar;->getMeasuredWidth()I

    move-result v41

    sub-int v41, v32, v41

    invoke-static/range {v40 .. v41}, Ljava/lang/Math;->max(II)I

    move-result v32

    .line 1172
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/ActionBarView;->mTitleLayout:Landroid/widget/LinearLayout;

    move-object/from16 v40, v0

    if-eqz v40, :cond_17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/ActionBarView;->mTitleLayout:Landroid/widget/LinearLayout;

    move-object/from16 v40, v0

    invoke-virtual/range {v40 .. v40}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v40

    const/16 v41, 0x8

    move/from16 v0, v40

    move/from16 v1, v41

    if-eq v0, v1, :cond_17

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/ActionBarView;->mDisplayOptions:I

    move/from16 v40, v0

    and-int/lit8 v40, v40, 0x8

    if-eqz v40, :cond_17

    const/16 v33, 0x1

    .line 1175
    .local v33, showTitle:Z
    :goto_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/ActionBarView;->mExpandedActionView:Landroid/view/View;

    move-object/from16 v40, v0

    if-nez v40, :cond_b

    .line 1176
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/ActionBarView;->mNavigationMode:I

    move/from16 v40, v0

    packed-switch v40, :pswitch_data_0

    .line 1206
    :cond_b
    :goto_7
    const/4 v14, 0x0

    .line 1207
    .local v14, customView:Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/ActionBarView;->mExpandedActionView:Landroid/view/View;

    move-object/from16 v40, v0

    if-eqz v40, :cond_1a

    .line 1208
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/widget/ActionBarView;->mExpandedActionView:Landroid/view/View;

    .line 1214
    :cond_c
    :goto_8
    if-eqz v14, :cond_10

    .line 1215
    invoke-virtual {v14}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v40

    move-object/from16 v0, p0

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/ActionBarView;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;

    move-result-object v26

    .line 1216
    .restart local v26       #lp:Landroid/view/ViewGroup$LayoutParams;
    move-object/from16 v0, v26

    instance-of v0, v0, Landroid/app/ActionBar$LayoutParams;

    move/from16 v40, v0

    if-eqz v40, :cond_1b

    move-object/from16 v40, v26

    check-cast v40, Landroid/app/ActionBar$LayoutParams;

    move-object/from16 v4, v40

    .line 1219
    .local v4, ablp:Landroid/app/ActionBar$LayoutParams;
    :goto_9
    const/16 v21, 0x0

    .line 1220
    .local v21, horizontalMargin:I
    const/16 v36, 0x0

    .line 1221
    .local v36, verticalMargin:I
    if-eqz v4, :cond_d

    .line 1222
    iget v0, v4, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    move/from16 v40, v0

    iget v0, v4, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    move/from16 v41, v0

    add-int v21, v40, v41

    .line 1223
    iget v0, v4, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    move/from16 v40, v0

    iget v0, v4, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    move/from16 v41, v0

    add-int v36, v40, v41

    .line 1229
    :cond_d
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/AbsActionBarView;->mContentHeight:I

    move/from16 v40, v0

    if-gtz v40, :cond_1c

    .line 1230
    const/high16 v11, -0x8000

    .line 1235
    .local v11, customNavHeightMode:I
    :goto_a
    const/16 v40, 0x0

    move-object/from16 v0, v26

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    move/from16 v41, v0

    if-ltz v41, :cond_e

    move-object/from16 v0, v26

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    move/from16 v41, v0

    move/from16 v0, v41

    invoke-static {v0, v15}, Ljava/lang/Math;->min(II)I

    move-result v15

    .end local v15           #height:I
    :cond_e
    sub-int v41, v15, v36

    invoke-static/range {v40 .. v41}, Ljava/lang/Math;->max(II)I

    move-result v10

    .line 1238
    .local v10, customNavHeight:I
    move-object/from16 v0, v26

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    move/from16 v40, v0

    const/16 v41, -0x2

    move/from16 v0, v40

    move/from16 v1, v41

    if-eq v0, v1, :cond_1e

    const/high16 v13, 0x4000

    .line 1240
    .local v13, customNavWidthMode:I
    :goto_b
    const/16 v41, 0x0

    move-object/from16 v0, v26

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    move/from16 v40, v0

    if-ltz v40, :cond_1f

    move-object/from16 v0, v26

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    move/from16 v40, v0

    move/from16 v0, v40

    invoke-static {v0, v5}, Ljava/lang/Math;->min(II)I

    move-result v40

    :goto_c
    sub-int v40, v40, v21

    move/from16 v0, v41

    move/from16 v1, v40

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v12

    .line 1243
    .local v12, customNavWidth:I
    if-eqz v4, :cond_20

    iget v0, v4, Landroid/app/ActionBar$LayoutParams;->gravity:I

    move/from16 v40, v0

    :goto_d
    and-int/lit8 v17, v40, 0x7

    .line 1248
    .local v17, hgrav:I
    const/16 v40, 0x1

    move/from16 v0, v17

    move/from16 v1, v40

    if-ne v0, v1, :cond_f

    move-object/from16 v0, v26

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    move/from16 v40, v0

    const/16 v41, -0x1

    move/from16 v0, v40

    move/from16 v1, v41

    if-ne v0, v1, :cond_f

    .line 1249
    move/from16 v0, v24

    move/from16 v1, v32

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v40

    mul-int/lit8 v12, v40, 0x2

    .line 1252
    :cond_f
    invoke-static {v12, v13}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v40

    invoke-static {v10, v11}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v41

    move/from16 v0, v40

    move/from16 v1, v41

    invoke-virtual {v14, v0, v1}, Landroid/view/View;->measure(II)V

    .line 1255
    invoke-virtual {v14}, Landroid/view/View;->getMeasuredWidth()I

    move-result v40

    add-int v40, v40, v21

    sub-int v5, v5, v40

    .line 1258
    .end local v4           #ablp:Landroid/app/ActionBar$LayoutParams;
    .end local v10           #customNavHeight:I
    .end local v11           #customNavHeightMode:I
    .end local v12           #customNavWidth:I
    .end local v13           #customNavWidthMode:I
    .end local v17           #hgrav:I
    .end local v21           #horizontalMargin:I
    .end local v26           #lp:Landroid/view/ViewGroup$LayoutParams;
    .end local v36           #verticalMargin:I
    :cond_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/ActionBarView;->mExpandedActionView:Landroid/view/View;

    move-object/from16 v40, v0

    if-nez v40, :cond_11

    if-eqz v33, :cond_11

    .line 1259
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/ActionBarView;->mTitleLayout:Landroid/widget/LinearLayout;

    move-object/from16 v40, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/AbsActionBarView;->mContentHeight:I

    move/from16 v41, v0

    const/high16 v42, 0x4000

    invoke-static/range {v41 .. v42}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v41

    const/16 v42, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v40

    move/from16 v2, v41

    move/from16 v3, v42

    invoke-virtual {v0, v1, v5, v2, v3}, Lcom/android/internal/widget/ActionBarView;->measureChildView(Landroid/view/View;III)I

    move-result v5

    .line 1261
    const/16 v40, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/ActionBarView;->mTitleLayout:Landroid/widget/LinearLayout;

    move-object/from16 v41, v0

    invoke-virtual/range {v41 .. v41}, Landroid/widget/LinearLayout;->getMeasuredWidth()I

    move-result v41

    sub-int v41, v24, v41

    invoke-static/range {v40 .. v41}, Ljava/lang/Math;->max(II)I

    move-result v24

    .line 1264
    :cond_11
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/AbsActionBarView;->mContentHeight:I

    move/from16 v40, v0

    if-gtz v40, :cond_23

    .line 1265
    const/16 v28, 0x0

    .line 1266
    .local v28, measuredHeight:I
    const/16 v22, 0x0

    .restart local v22       #i:I
    :goto_e
    move/from16 v0, v22

    if-ge v0, v7, :cond_21

    .line 1267
    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/ActionBarView;->getChildAt(I)Landroid/view/View;

    move-result-object v35

    .line 1268
    .local v35, v:Landroid/view/View;
    invoke-virtual/range {v35 .. v35}, Landroid/view/View;->getMeasuredHeight()I

    move-result v40

    add-int v29, v40, v37

    .line 1269
    .local v29, paddedViewHeight:I
    move/from16 v0, v29

    move/from16 v1, v28

    if-le v0, v1, :cond_12

    .line 1270
    move/from16 v28, v29

    .line 1266
    :cond_12
    add-int/lit8 v22, v22, 0x1

    goto :goto_e

    .line 1116
    .end local v5           #availableWidth:I
    .end local v8           #childSpecHeight:I
    .end local v14           #customView:Landroid/view/View;
    .end local v18           #homeLayout:Lcom/android/internal/widget/ActionBarView$HomeView;
    .end local v22           #i:I
    .end local v24           #leftOfCenter:I
    .end local v27           #maxHeight:I
    .end local v28           #measuredHeight:I
    .end local v29           #paddedViewHeight:I
    .end local v30           #paddingLeft:I
    .end local v31           #paddingRight:I
    .end local v32           #rightOfCenter:I
    .end local v33           #showTitle:Z
    .end local v35           #v:Landroid/view/View;
    .end local v37           #verticalPadding:I
    :cond_13
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v27

    goto/16 :goto_2

    .line 1129
    .restart local v5       #availableWidth:I
    .restart local v8       #childSpecHeight:I
    .restart local v15       #height:I
    .restart local v24       #leftOfCenter:I
    .restart local v27       #maxHeight:I
    .restart local v30       #paddingLeft:I
    .restart local v31       #paddingRight:I
    .restart local v32       #rightOfCenter:I
    .restart local v37       #verticalPadding:I
    :cond_14
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/ActionBarView;->mHomeLayout:Lcom/android/internal/widget/ActionBarView$HomeView;

    move-object/from16 v18, v0

    goto/16 :goto_3

    .line 1137
    .restart local v18       #homeLayout:Lcom/android/internal/widget/ActionBarView$HomeView;
    .restart local v26       #lp:Landroid/view/ViewGroup$LayoutParams;
    :cond_15
    move-object/from16 v0, v26

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    move/from16 v40, v0

    const/high16 v41, 0x4000

    invoke-static/range {v40 .. v41}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v20

    .restart local v20       #homeWidthSpec:I
    goto/16 :goto_4

    .line 1153
    .end local v20           #homeWidthSpec:I
    .end local v26           #lp:Landroid/view/ViewGroup$LayoutParams;
    :cond_16
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/ActionBarView;->mMultiWindowMenuButton:Landroid/view/View;

    move-object/from16 v40, v0

    if-eqz v40, :cond_8

    .line 1154
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/ActionBarView;->mMultiWindowMenuButton:Landroid/view/View;

    move-object/from16 v40, v0

    const/16 v41, 0x0

    const/16 v42, 0x0

    invoke-virtual/range {v40 .. v42}, Landroid/view/View;->measure(II)V

    goto/16 :goto_5

    .line 1172
    :cond_17
    const/16 v33, 0x0

    goto/16 :goto_6

    .line 1178
    .restart local v33       #showTitle:Z
    :pswitch_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/ActionBarView;->mListNavLayout:Landroid/widget/LinearLayout;

    move-object/from16 v40, v0

    if-eqz v40, :cond_b

    .line 1179
    if-eqz v33, :cond_18

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/ActionBarView;->mItemPadding:I

    move/from16 v40, v0

    mul-int/lit8 v23, v40, 0x2

    .line 1180
    .local v23, itemPaddingSize:I
    :goto_f
    const/16 v40, 0x0

    sub-int v41, v5, v23

    invoke-static/range {v40 .. v41}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 1181
    const/16 v40, 0x0

    sub-int v41, v24, v23

    invoke-static/range {v40 .. v41}, Ljava/lang/Math;->max(II)I

    move-result v24

    .line 1182
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/ActionBarView;->mListNavLayout:Landroid/widget/LinearLayout;

    move-object/from16 v40, v0

    const/high16 v41, -0x8000

    move/from16 v0, v41

    invoke-static {v5, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v41

    const/high16 v42, 0x4000

    move/from16 v0, v42

    invoke-static {v15, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v42

    invoke-virtual/range {v40 .. v42}, Landroid/widget/LinearLayout;->measure(II)V

    .line 1185
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/ActionBarView;->mListNavLayout:Landroid/widget/LinearLayout;

    move-object/from16 v40, v0

    invoke-virtual/range {v40 .. v40}, Landroid/widget/LinearLayout;->getMeasuredWidth()I

    move-result v25

    .line 1186
    .local v25, listNavWidth:I
    const/16 v40, 0x0

    sub-int v41, v5, v25

    invoke-static/range {v40 .. v41}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 1187
    const/16 v40, 0x0

    sub-int v41, v24, v25

    invoke-static/range {v40 .. v41}, Ljava/lang/Math;->max(II)I

    move-result v24

    .line 1188
    goto/16 :goto_7

    .line 1179
    .end local v23           #itemPaddingSize:I
    .end local v25           #listNavWidth:I
    :cond_18
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/ActionBarView;->mItemPadding:I

    move/from16 v23, v0

    goto :goto_f

    .line 1191
    :pswitch_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/ActionBarView;->mTabScrollView:Lcom/android/internal/widget/ScrollingTabContainerView;

    move-object/from16 v40, v0

    if-eqz v40, :cond_b

    .line 1192
    if-eqz v33, :cond_19

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/ActionBarView;->mItemPadding:I

    move/from16 v40, v0

    mul-int/lit8 v23, v40, 0x2

    .line 1193
    .restart local v23       #itemPaddingSize:I
    :goto_10
    const/16 v40, 0x0

    sub-int v41, v5, v23

    invoke-static/range {v40 .. v41}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 1194
    const/16 v40, 0x0

    sub-int v41, v24, v23

    invoke-static/range {v40 .. v41}, Ljava/lang/Math;->max(II)I

    move-result v24

    .line 1195
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/ActionBarView;->mTabScrollView:Lcom/android/internal/widget/ScrollingTabContainerView;

    move-object/from16 v40, v0

    const/high16 v41, -0x8000

    move/from16 v0, v41

    invoke-static {v5, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v41

    const/high16 v42, 0x4000

    move/from16 v0, v42

    invoke-static {v15, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v42

    invoke-virtual/range {v40 .. v42}, Lcom/android/internal/widget/ScrollingTabContainerView;->measure(II)V

    .line 1198
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/ActionBarView;->mTabScrollView:Lcom/android/internal/widget/ScrollingTabContainerView;

    move-object/from16 v40, v0

    invoke-virtual/range {v40 .. v40}, Lcom/android/internal/widget/ScrollingTabContainerView;->getMeasuredWidth()I

    move-result v34

    .line 1199
    .local v34, tabWidth:I
    const/16 v40, 0x0

    sub-int v41, v5, v34

    invoke-static/range {v40 .. v41}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 1200
    const/16 v40, 0x0

    sub-int v41, v24, v34

    invoke-static/range {v40 .. v41}, Ljava/lang/Math;->max(II)I

    move-result v24

    goto/16 :goto_7

    .line 1192
    .end local v23           #itemPaddingSize:I
    .end local v34           #tabWidth:I
    :cond_19
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/ActionBarView;->mItemPadding:I

    move/from16 v23, v0

    goto :goto_10

    .line 1209
    .restart local v14       #customView:Landroid/view/View;
    :cond_1a
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/ActionBarView;->mDisplayOptions:I

    move/from16 v40, v0

    and-int/lit8 v40, v40, 0x10

    if-eqz v40, :cond_c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/ActionBarView;->mCustomNavView:Landroid/view/View;

    move-object/from16 v40, v0

    if-eqz v40, :cond_c

    .line 1211
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/widget/ActionBarView;->mCustomNavView:Landroid/view/View;

    goto/16 :goto_8

    .line 1216
    .restart local v26       #lp:Landroid/view/ViewGroup$LayoutParams;
    :cond_1b
    const/4 v4, 0x0

    goto/16 :goto_9

    .line 1232
    .restart local v4       #ablp:Landroid/app/ActionBar$LayoutParams;
    .restart local v21       #horizontalMargin:I
    .restart local v36       #verticalMargin:I
    :cond_1c
    move-object/from16 v0, v26

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    move/from16 v40, v0

    const/16 v41, -0x2

    move/from16 v0, v40

    move/from16 v1, v41

    if-eq v0, v1, :cond_1d

    const/high16 v11, 0x4000

    .restart local v11       #customNavHeightMode:I
    :goto_11
    goto/16 :goto_a

    .end local v11           #customNavHeightMode:I
    :cond_1d
    const/high16 v11, -0x8000

    goto :goto_11

    .line 1238
    .end local v15           #height:I
    .restart local v10       #customNavHeight:I
    .restart local v11       #customNavHeightMode:I
    :cond_1e
    const/high16 v13, -0x8000

    goto/16 :goto_b

    .restart local v13       #customNavWidthMode:I
    :cond_1f
    move/from16 v40, v5

    .line 1240
    goto/16 :goto_c

    .line 1243
    .restart local v12       #customNavWidth:I
    :cond_20
    const/16 v40, 0x13

    goto/16 :goto_d

    .line 1273
    .end local v4           #ablp:Landroid/app/ActionBar$LayoutParams;
    .end local v10           #customNavHeight:I
    .end local v11           #customNavHeightMode:I
    .end local v12           #customNavWidth:I
    .end local v13           #customNavWidthMode:I
    .end local v21           #horizontalMargin:I
    .end local v26           #lp:Landroid/view/ViewGroup$LayoutParams;
    .end local v36           #verticalMargin:I
    .restart local v22       #i:I
    .restart local v28       #measuredHeight:I
    :cond_21
    move-object/from16 v0, p0

    move/from16 v1, v28

    invoke-virtual {v0, v9, v1}, Lcom/android/internal/widget/ActionBarView;->setMeasuredDimension(II)V

    .line 1278
    .end local v22           #i:I
    .end local v28           #measuredHeight:I
    :goto_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/ActionBarView;->mContextView:Lcom/android/internal/widget/ActionBarContextView;

    move-object/from16 v40, v0

    if-eqz v40, :cond_22

    .line 1279
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/ActionBarView;->mContextView:Lcom/android/internal/widget/ActionBarContextView;

    move-object/from16 v40, v0

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/ActionBarView;->getMeasuredHeight()I

    move-result v41

    invoke-virtual/range {v40 .. v41}, Lcom/android/internal/widget/ActionBarContextView;->setContentHeight(I)V

    .line 1282
    :cond_22
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/ActionBarView;->mProgressView:Landroid/widget/ProgressBar;

    move-object/from16 v40, v0

    if-eqz v40, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/ActionBarView;->mProgressView:Landroid/widget/ProgressBar;

    move-object/from16 v40, v0

    invoke-virtual/range {v40 .. v40}, Landroid/widget/ProgressBar;->getVisibility()I

    move-result v40

    const/16 v41, 0x8

    move/from16 v0, v40

    move/from16 v1, v41

    if-eq v0, v1, :cond_3

    .line 1283
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/ActionBarView;->mProgressView:Landroid/widget/ProgressBar;

    move-object/from16 v40, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/ActionBarView;->mProgressBarPadding:I

    move/from16 v41, v0

    mul-int/lit8 v41, v41, 0x2

    sub-int v41, v9, v41

    const/high16 v42, 0x4000

    invoke-static/range {v41 .. v42}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v41

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/ActionBarView;->getMeasuredHeight()I

    move-result v42

    const/high16 v43, -0x8000

    invoke-static/range {v42 .. v43}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v42

    invoke-virtual/range {v40 .. v42}, Landroid/widget/ProgressBar;->measure(II)V

    goto/16 :goto_1

    .line 1275
    :cond_23
    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-virtual {v0, v9, v1}, Lcom/android/internal/widget/ActionBarView;->setMeasuredDimension(II)V

    goto :goto_12

    .line 1176
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 4
    .parameter "p"

    .prologue
    .line 1494
    move-object v1, p1

    check-cast v1, Lcom/android/internal/widget/ActionBarView$SavedState;

    .line 1496
    .local v1, state:Lcom/android/internal/widget/ActionBarView$SavedState;
    invoke-virtual {v1}, Lcom/android/internal/widget/ActionBarView$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v2

    invoke-super {p0, v2}, Lcom/android/internal/widget/AbsActionBarView;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 1498
    iget v2, v1, Lcom/android/internal/widget/ActionBarView$SavedState;->expandedMenuItemId:I

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/internal/widget/ActionBarView;->mExpandedMenuPresenter:Lcom/android/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/internal/widget/ActionBarView;->mOptionsMenu:Lcom/android/internal/view/menu/MenuBuilder;

    if-eqz v2, :cond_0

    .line 1500
    iget-object v2, p0, Lcom/android/internal/widget/ActionBarView;->mOptionsMenu:Lcom/android/internal/view/menu/MenuBuilder;

    iget v3, v1, Lcom/android/internal/widget/ActionBarView$SavedState;->expandedMenuItemId:I

    invoke-virtual {v2, v3}, Lcom/android/internal/view/menu/MenuBuilder;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 1501
    .local v0, item:Landroid/view/MenuItem;
    if-eqz v0, :cond_0

    .line 1502
    invoke-interface {v0}, Landroid/view/MenuItem;->expandActionView()Z

    .line 1506
    .end local v0           #item:Landroid/view/MenuItem;
    :cond_0
    iget-boolean v2, v1, Lcom/android/internal/widget/ActionBarView$SavedState;->isOverflowOpen:Z

    if-eqz v2, :cond_1

    .line 1507
    invoke-virtual {p0}, Lcom/android/internal/widget/ActionBarView;->postShowOverflowMenu()V

    .line 1509
    :cond_1
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    .prologue
    .line 1480
    invoke-super {p0}, Lcom/android/internal/widget/AbsActionBarView;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    .line 1481
    .local v1, superState:Landroid/os/Parcelable;
    new-instance v0, Lcom/android/internal/widget/ActionBarView$SavedState;

    invoke-direct {v0, v1}, Lcom/android/internal/widget/ActionBarView$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 1483
    .local v0, state:Lcom/android/internal/widget/ActionBarView$SavedState;
    iget-object v2, p0, Lcom/android/internal/widget/ActionBarView;->mExpandedMenuPresenter:Lcom/android/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/internal/widget/ActionBarView;->mExpandedMenuPresenter:Lcom/android/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;

    iget-object v2, v2, Lcom/android/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->mCurrentExpandedItem:Lcom/android/internal/view/menu/MenuItemImpl;

    if-eqz v2, :cond_0

    .line 1484
    iget-object v2, p0, Lcom/android/internal/widget/ActionBarView;->mExpandedMenuPresenter:Lcom/android/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;

    iget-object v2, v2, Lcom/android/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->mCurrentExpandedItem:Lcom/android/internal/view/menu/MenuItemImpl;

    invoke-virtual {v2}, Lcom/android/internal/view/menu/MenuItemImpl;->getItemId()I

    move-result v2

    iput v2, v0, Lcom/android/internal/widget/ActionBarView$SavedState;->expandedMenuItemId:I

    .line 1487
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/widget/ActionBarView;->isOverflowMenuShowing()Z

    move-result v2

    iput-boolean v2, v0, Lcom/android/internal/widget/ActionBarView$SavedState;->isOverflowOpen:Z

    .line 1489
    return-object v0
.end method

.method public setCallback(Landroid/app/ActionBar$OnNavigationListener;)V
    .locals 0
    .parameter "callback"

    .prologue
    .line 456
    iput-object p1, p0, Lcom/android/internal/widget/ActionBarView;->mCallback:Landroid/app/ActionBar$OnNavigationListener;

    .line 457
    return-void
.end method

.method public setCollapsable(Z)V
    .locals 0
    .parameter "collapsable"

    .prologue
    .line 1073
    iput-boolean p1, p0, Lcom/android/internal/widget/ActionBarView;->mIsCollapsable:Z

    .line 1074
    return-void
.end method

.method public setContextView(Lcom/android/internal/widget/ActionBarContextView;)V
    .locals 0
    .parameter "view"

    .prologue
    .line 1069
    iput-object p1, p0, Lcom/android/internal/widget/ActionBarView;->mContextView:Lcom/android/internal/widget/ActionBarContextView;

    .line 1070
    return-void
.end method

.method public setCustomNavigationView(Landroid/view/View;)V
    .locals 2
    .parameter "view"

    .prologue
    .line 558
    iget v1, p0, Lcom/android/internal/widget/ActionBarView;->mDisplayOptions:I

    and-int/lit8 v1, v1, 0x10

    if-eqz v1, :cond_2

    const/4 v0, 0x1

    .line 559
    .local v0, showCustom:Z
    :goto_0
    iget-object v1, p0, Lcom/android/internal/widget/ActionBarView;->mCustomNavView:Landroid/view/View;

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 560
    iget-object v1, p0, Lcom/android/internal/widget/ActionBarView;->mCustomNavView:Landroid/view/View;

    invoke-virtual {p0, v1}, Lcom/android/internal/widget/ActionBarView;->removeView(Landroid/view/View;)V

    .line 562
    :cond_0
    iput-object p1, p0, Lcom/android/internal/widget/ActionBarView;->mCustomNavView:Landroid/view/View;

    .line 563
    iget-object v1, p0, Lcom/android/internal/widget/ActionBarView;->mCustomNavView:Landroid/view/View;

    if-eqz v1, :cond_1

    if-eqz v0, :cond_1

    .line 564
    iget-object v1, p0, Lcom/android/internal/widget/ActionBarView;->mCustomNavView:Landroid/view/View;

    invoke-virtual {p0, v1}, Lcom/android/internal/widget/ActionBarView;->addView(Landroid/view/View;)V

    .line 566
    :cond_1
    return-void

    .line 558
    .end local v0           #showCustom:Z
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setDisplayOptions(I)V
    .locals 14
    .parameter "options"

    .prologue
    const/4 v0, -0x1

    const/16 v10, 0x8

    const/4 v11, 0x1

    const/4 v9, 0x0

    .line 641
    iget v12, p0, Lcom/android/internal/widget/ActionBarView;->mDisplayOptions:I

    if-ne v12, v0, :cond_6

    .line 642
    .local v0, flagsChanged:I
    :goto_0
    iput p1, p0, Lcom/android/internal/widget/ActionBarView;->mDisplayOptions:I

    .line 658
    and-int/lit8 v12, v0, 0x1f

    if-eqz v12, :cond_16

    .line 659
    and-int/lit8 v12, p1, 0x2

    if-eqz v12, :cond_7

    move v4, v11

    .line 660
    .local v4, showHome:Z
    :goto_1
    if-eqz v4, :cond_8

    iget-object v12, p0, Lcom/android/internal/widget/ActionBarView;->mExpandedActionView:Landroid/view/View;

    if-nez v12, :cond_8

    move v8, v9

    .line 661
    .local v8, vis:I
    :goto_2
    iget-object v12, p0, Lcom/android/internal/widget/ActionBarView;->mHomeLayout:Lcom/android/internal/widget/ActionBarView$HomeView;

    invoke-virtual {v12, v8}, Lcom/android/internal/widget/ActionBarView$HomeView;->setVisibility(I)V

    .line 663
    and-int/lit8 v12, v0, 0x4

    if-eqz v12, :cond_0

    .line 664
    and-int/lit8 v12, p1, 0x4

    if-eqz v12, :cond_9

    move v3, v11

    .line 665
    .local v3, setUp:Z
    :goto_3
    iget-object v12, p0, Lcom/android/internal/widget/ActionBarView;->mHomeLayout:Lcom/android/internal/widget/ActionBarView$HomeView;

    invoke-virtual {v12, v3}, Lcom/android/internal/widget/ActionBarView$HomeView;->setUp(Z)V

    .line 671
    if-eqz v3, :cond_0

    .line 672
    invoke-virtual {p0, v11}, Lcom/android/internal/widget/ActionBarView;->setHomeButtonEnabled(Z)V

    .line 676
    .end local v3           #setUp:Z
    :cond_0
    and-int/lit8 v12, v0, 0x1

    if-eqz v12, :cond_1

    .line 677
    iget-object v12, p0, Lcom/android/internal/widget/ActionBarView;->mLogo:Landroid/graphics/drawable/Drawable;

    if-eqz v12, :cond_a

    and-int/lit8 v12, p1, 0x1

    if-eqz v12, :cond_a

    move v2, v11

    .line 678
    .local v2, logoVis:Z
    :goto_4
    iget-object v13, p0, Lcom/android/internal/widget/ActionBarView;->mHomeLayout:Lcom/android/internal/widget/ActionBarView$HomeView;

    if-eqz v2, :cond_b

    iget-object v12, p0, Lcom/android/internal/widget/ActionBarView;->mLogo:Landroid/graphics/drawable/Drawable;

    :goto_5
    invoke-virtual {v13, v12}, Lcom/android/internal/widget/ActionBarView$HomeView;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 681
    .end local v2           #logoVis:Z
    :cond_1
    and-int/lit8 v12, v0, 0x8

    if-eqz v12, :cond_2

    .line 682
    and-int/lit8 v12, p1, 0x8

    if-eqz v12, :cond_c

    .line 683
    invoke-direct {p0}, Lcom/android/internal/widget/ActionBarView;->initTitle()V

    .line 689
    :cond_2
    :goto_6
    iget-object v12, p0, Lcom/android/internal/widget/ActionBarView;->mTitleLayout:Landroid/widget/LinearLayout;

    if-eqz v12, :cond_4

    and-int/lit8 v12, v0, 0x6

    if-eqz v12, :cond_4

    .line 691
    iget v12, p0, Lcom/android/internal/widget/ActionBarView;->mDisplayOptions:I

    and-int/lit8 v12, v12, 0x4

    if-eqz v12, :cond_d

    move v1, v11

    .line 692
    .local v1, homeAsUp:Z
    :goto_7
    iget-object v13, p0, Lcom/android/internal/widget/ActionBarView;->mTitleUpView:Landroid/view/View;

    if-nez v4, :cond_f

    if-eqz v1, :cond_e

    move v12, v9

    :goto_8
    invoke-virtual {v13, v12}, Landroid/view/View;->setVisibility(I)V

    .line 695
    iget-boolean v12, p0, Lcom/android/internal/widget/ActionBarView;->mIsParentThemeDeviceDefault:Z

    if-eqz v12, :cond_3

    .line 696
    iget-object v12, p0, Lcom/android/internal/widget/ActionBarView;->mTitleUpView:Landroid/view/View;

    invoke-virtual {v12}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    check-cast v7, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 697
    .local v7, titleUpLp:Landroid/view/ViewGroup$MarginLayoutParams;
    iget-object v12, p0, Lcom/android/internal/widget/ActionBarView;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {v12}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 698
    .local v6, titleLp:Landroid/view/ViewGroup$MarginLayoutParams;
    iget-object v12, p0, Lcom/android/internal/widget/ActionBarView;->mSubtitleView:Landroid/widget/TextView;

    invoke-virtual {v12}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 699
    .local v5, subTitleLp:Landroid/view/ViewGroup$MarginLayoutParams;
    if-eqz v4, :cond_10

    .line 700
    iput v9, v7, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    iput v9, v7, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 701
    iput v9, v6, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 702
    iput v9, v5, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 720
    .end local v5           #subTitleLp:Landroid/view/ViewGroup$MarginLayoutParams;
    .end local v6           #titleLp:Landroid/view/ViewGroup$MarginLayoutParams;
    .end local v7           #titleUpLp:Landroid/view/ViewGroup$MarginLayoutParams;
    :cond_3
    :goto_9
    iget-object v12, p0, Lcom/android/internal/widget/ActionBarView;->mTitleLayout:Landroid/widget/LinearLayout;

    if-nez v4, :cond_12

    if-eqz v1, :cond_12

    move v10, v11

    :goto_a
    invoke-virtual {v12, v10}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    .line 721
    iget-object v12, p0, Lcom/android/internal/widget/ActionBarView;->mTitleLayout:Landroid/widget/LinearLayout;

    if-nez v4, :cond_13

    if-eqz v1, :cond_13

    move v10, v11

    :goto_b
    invoke-virtual {v12, v10}, Landroid/widget/LinearLayout;->setClickable(Z)V

    .line 723
    iget-object v10, p0, Lcom/android/internal/widget/ActionBarView;->mTitleLayout:Landroid/widget/LinearLayout;

    if-nez v4, :cond_14

    if-eqz v1, :cond_14

    :goto_c
    invoke-virtual {v10, v11}, Landroid/widget/LinearLayout;->setFocusable(Z)V

    .line 727
    .end local v1           #homeAsUp:Z
    :cond_4
    and-int/lit8 v9, v0, 0x10

    if-eqz v9, :cond_5

    iget-object v9, p0, Lcom/android/internal/widget/ActionBarView;->mCustomNavView:Landroid/view/View;

    if-eqz v9, :cond_5

    .line 728
    and-int/lit8 v9, p1, 0x10

    if-eqz v9, :cond_15

    .line 729
    iget-object v9, p0, Lcom/android/internal/widget/ActionBarView;->mCustomNavView:Landroid/view/View;

    invoke-virtual {p0, v9}, Lcom/android/internal/widget/ActionBarView;->addView(Landroid/view/View;)V

    .line 735
    :cond_5
    :goto_d
    invoke-virtual {p0}, Lcom/android/internal/widget/ActionBarView;->requestLayout()V

    .line 741
    .end local v4           #showHome:Z
    .end local v8           #vis:I
    :goto_e
    iget-object v9, p0, Lcom/android/internal/widget/ActionBarView;->mHomeLayout:Lcom/android/internal/widget/ActionBarView$HomeView;

    invoke-virtual {v9}, Lcom/android/internal/widget/ActionBarView$HomeView;->isEnabled()Z

    move-result v9

    if-nez v9, :cond_17

    .line 742
    iget-object v9, p0, Lcom/android/internal/widget/ActionBarView;->mHomeLayout:Lcom/android/internal/widget/ActionBarView$HomeView;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Lcom/android/internal/widget/ActionBarView$HomeView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 750
    :goto_f
    return-void

    .line 641
    .end local v0           #flagsChanged:I
    :cond_6
    iget v12, p0, Lcom/android/internal/widget/ActionBarView;->mDisplayOptions:I

    xor-int v0, p1, v12

    goto/16 :goto_0

    .restart local v0       #flagsChanged:I
    :cond_7
    move v4, v9

    .line 659
    goto/16 :goto_1

    .restart local v4       #showHome:Z
    :cond_8
    move v8, v10

    .line 660
    goto/16 :goto_2

    .restart local v8       #vis:I
    :cond_9
    move v3, v9

    .line 664
    goto/16 :goto_3

    :cond_a
    move v2, v9

    .line 677
    goto/16 :goto_4

    .line 678
    .restart local v2       #logoVis:Z
    :cond_b
    iget-object v12, p0, Lcom/android/internal/widget/ActionBarView;->mIcon:Landroid/graphics/drawable/Drawable;

    goto/16 :goto_5

    .line 685
    .end local v2           #logoVis:Z
    :cond_c
    iget-object v12, p0, Lcom/android/internal/widget/ActionBarView;->mTitleLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v12}, Lcom/android/internal/widget/ActionBarView;->removeView(Landroid/view/View;)V

    goto/16 :goto_6

    :cond_d
    move v1, v9

    .line 691
    goto/16 :goto_7

    .line 692
    .restart local v1       #homeAsUp:Z
    :cond_e
    const/4 v12, 0x4

    goto/16 :goto_8

    :cond_f
    move v12, v10

    goto/16 :goto_8

    .line 705
    .restart local v5       #subTitleLp:Landroid/view/ViewGroup$MarginLayoutParams;
    .restart local v6       #titleLp:Landroid/view/ViewGroup$MarginLayoutParams;
    .restart local v7       #titleUpLp:Landroid/view/ViewGroup$MarginLayoutParams;
    :cond_10
    if-eqz v1, :cond_11

    .line 706
    iget v10, p0, Lcom/android/internal/widget/ActionBarView;->mUpMargin:I

    iput v10, v7, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    iput v10, v7, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 707
    iput v9, v6, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 708
    iput v9, v5, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    goto :goto_9

    .line 711
    :cond_11
    iget-object v12, p0, Lcom/android/internal/widget/ActionBarView;->mTitleUpView:Landroid/view/View;

    invoke-virtual {v12, v10}, Landroid/view/View;->setVisibility(I)V

    .line 712
    iput v9, v7, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    iput v9, v7, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 713
    iget v10, p0, Lcom/android/internal/widget/ActionBarView;->mUpMargin:I

    mul-int/lit8 v10, v10, 0x2

    iput v10, v6, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 714
    iget v10, p0, Lcom/android/internal/widget/ActionBarView;->mUpMargin:I

    mul-int/lit8 v10, v10, 0x2

    iput v10, v5, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    goto/16 :goto_9

    .end local v5           #subTitleLp:Landroid/view/ViewGroup$MarginLayoutParams;
    .end local v6           #titleLp:Landroid/view/ViewGroup$MarginLayoutParams;
    .end local v7           #titleUpLp:Landroid/view/ViewGroup$MarginLayoutParams;
    :cond_12
    move v10, v9

    .line 720
    goto/16 :goto_a

    :cond_13
    move v10, v9

    .line 721
    goto :goto_b

    :cond_14
    move v11, v9

    .line 723
    goto :goto_c

    .line 731
    .end local v1           #homeAsUp:Z
    :cond_15
    iget-object v9, p0, Lcom/android/internal/widget/ActionBarView;->mCustomNavView:Landroid/view/View;

    invoke-virtual {p0, v9}, Lcom/android/internal/widget/ActionBarView;->removeView(Landroid/view/View;)V

    goto :goto_d

    .line 737
    .end local v4           #showHome:Z
    .end local v8           #vis:I
    :cond_16
    invoke-virtual {p0}, Lcom/android/internal/widget/ActionBarView;->invalidate()V

    goto :goto_e

    .line 743
    :cond_17
    and-int/lit8 v9, p1, 0x4

    if-eqz v9, :cond_18

    .line 744
    iget-object v9, p0, Lcom/android/internal/widget/ActionBarView;->mHomeLayout:Lcom/android/internal/widget/ActionBarView$HomeView;

    iget-object v10, p0, Lcom/android/internal/widget/ActionBarView;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x1040628

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/android/internal/widget/ActionBarView$HomeView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_f

    .line 747
    :cond_18
    iget-object v9, p0, Lcom/android/internal/widget/ActionBarView;->mHomeLayout:Lcom/android/internal/widget/ActionBarView$HomeView;

    iget-object v10, p0, Lcom/android/internal/widget/ActionBarView;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x1040627

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/android/internal/widget/ActionBarView$HomeView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto/16 :goto_f
.end method

.method public setDropdownAdapter(Landroid/widget/SpinnerAdapter;)V
    .locals 1
    .parameter "adapter"

    .prologue
    .line 823
    iput-object p1, p0, Lcom/android/internal/widget/ActionBarView;->mSpinnerAdapter:Landroid/widget/SpinnerAdapter;

    .line 824
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mSpinner:Landroid/widget/Spinner;

    if-eqz v0, :cond_0

    .line 825
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0, p1}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 827
    :cond_0
    return-void
.end method

.method public setDropdownSelectedPosition(I)V
    .locals 1
    .parameter "position"

    .prologue
    .line 834
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0, p1}, Landroid/widget/Spinner;->setSelection(I)V

    .line 835
    return-void
.end method

.method public setEmbeddedTabView(Lcom/android/internal/widget/ScrollingTabContainerView;)V
    .locals 4
    .parameter "tabs"

    .prologue
    const/4 v2, 0x1

    .line 441
    iget-object v1, p0, Lcom/android/internal/widget/ActionBarView;->mTabScrollView:Lcom/android/internal/widget/ScrollingTabContainerView;

    if-eqz v1, :cond_0

    .line 442
    iget-object v1, p0, Lcom/android/internal/widget/ActionBarView;->mTabScrollView:Lcom/android/internal/widget/ScrollingTabContainerView;

    invoke-virtual {p0, v1}, Lcom/android/internal/widget/ActionBarView;->removeView(Landroid/view/View;)V

    .line 444
    :cond_0
    iput-object p1, p0, Lcom/android/internal/widget/ActionBarView;->mTabScrollView:Lcom/android/internal/widget/ScrollingTabContainerView;

    .line 445
    if-eqz p1, :cond_2

    move v1, v2

    :goto_0
    iput-boolean v1, p0, Lcom/android/internal/widget/ActionBarView;->mIncludeTabs:Z

    .line 446
    iget-boolean v1, p0, Lcom/android/internal/widget/ActionBarView;->mIncludeTabs:Z

    if-eqz v1, :cond_1

    iget v1, p0, Lcom/android/internal/widget/ActionBarView;->mNavigationMode:I

    const/4 v3, 0x2

    if-ne v1, v3, :cond_1

    .line 447
    iget-object v1, p0, Lcom/android/internal/widget/ActionBarView;->mTabScrollView:Lcom/android/internal/widget/ScrollingTabContainerView;

    invoke-virtual {p0, v1}, Lcom/android/internal/widget/ActionBarView;->addView(Landroid/view/View;)V

    .line 448
    iget-object v1, p0, Lcom/android/internal/widget/ActionBarView;->mTabScrollView:Lcom/android/internal/widget/ScrollingTabContainerView;

    invoke-virtual {v1}, Lcom/android/internal/widget/ScrollingTabContainerView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 449
    .local v0, lp:Landroid/view/ViewGroup$LayoutParams;
    const/4 v1, -0x2

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 450
    const/4 v1, -0x1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 451
    invoke-virtual {p1, v2}, Lcom/android/internal/widget/ScrollingTabContainerView;->setAllowCollapse(Z)V

    .line 453
    .end local v0           #lp:Landroid/view/ViewGroup$LayoutParams;
    :cond_1
    return-void

    .line 445
    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setHomeButtonEnabled(Z)V
    .locals 3
    .parameter "enable"

    .prologue
    .line 626
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mHomeLayout:Lcom/android/internal/widget/ActionBarView$HomeView;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/ActionBarView$HomeView;->setEnabled(Z)V

    .line 627
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mHomeLayout:Lcom/android/internal/widget/ActionBarView$HomeView;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/ActionBarView$HomeView;->setFocusable(Z)V

    .line 629
    if-nez p1, :cond_0

    .line 630
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mHomeLayout:Lcom/android/internal/widget/ActionBarView$HomeView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/ActionBarView$HomeView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 638
    :goto_0
    return-void

    .line 631
    :cond_0
    iget v0, p0, Lcom/android/internal/widget/ActionBarView;->mDisplayOptions:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_1

    .line 632
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mHomeLayout:Lcom/android/internal/widget/ActionBarView$HomeView;

    iget-object v1, p0, Lcom/android/internal/widget/ActionBarView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1040628

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/ActionBarView$HomeView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 635
    :cond_1
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mHomeLayout:Lcom/android/internal/widget/ActionBarView$HomeView;

    iget-object v1, p0, Lcom/android/internal/widget/ActionBarView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1040627

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/ActionBarView$HomeView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public setIcon(I)V
    .locals 1
    .parameter "resId"

    .prologue
    .line 764
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/ActionBarView;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 765
    return-void
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 3
    .parameter "icon"

    .prologue
    .line 753
    iput-object p1, p0, Lcom/android/internal/widget/ActionBarView;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 754
    if-eqz p1, :cond_1

    iget v0, p0, Lcom/android/internal/widget/ActionBarView;->mDisplayOptions:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mLogo:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_1

    .line 756
    :cond_0
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mHomeLayout:Lcom/android/internal/widget/ActionBarView$HomeView;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/ActionBarView$HomeView;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 758
    :cond_1
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mExpandedActionView:Landroid/view/View;

    if-eqz v0, :cond_2

    .line 759
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mExpandedHomeLayout:Lcom/android/internal/widget/ActionBarView$HomeView;

    iget-object v1, p0, Lcom/android/internal/widget/ActionBarView;->mIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/internal/widget/ActionBarView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/ActionBarView$HomeView;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 761
    :cond_2
    return-void
.end method

.method public setLogo(I)V
    .locals 1
    .parameter "resId"

    .prologue
    .line 775
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/ActionBarView;->setLogo(Landroid/graphics/drawable/Drawable;)V

    .line 776
    return-void
.end method

.method public setLogo(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .parameter "logo"

    .prologue
    .line 768
    iput-object p1, p0, Lcom/android/internal/widget/ActionBarView;->mLogo:Landroid/graphics/drawable/Drawable;

    .line 769
    if-eqz p1, :cond_0

    iget v0, p0, Lcom/android/internal/widget/ActionBarView;->mDisplayOptions:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 770
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mHomeLayout:Lcom/android/internal/widget/ActionBarView$HomeView;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/ActionBarView$HomeView;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 772
    :cond_0
    return-void
.end method

.method public setMenu(Landroid/view/Menu;Lcom/android/internal/view/menu/MenuPresenter$Callback;)V
    .locals 8
    .parameter "menu"
    .parameter "cb"

    .prologue
    const/4 v7, -0x1

    .line 460
    iget-object v4, p0, Lcom/android/internal/widget/ActionBarView;->mOptionsMenu:Lcom/android/internal/view/menu/MenuBuilder;

    if-ne p1, v4, :cond_0

    .line 530
    :goto_0
    return-void

    .line 462
    :cond_0
    iget-object v4, p0, Lcom/android/internal/widget/ActionBarView;->mOptionsMenu:Lcom/android/internal/view/menu/MenuBuilder;

    if-eqz v4, :cond_1

    .line 463
    iget-object v4, p0, Lcom/android/internal/widget/ActionBarView;->mOptionsMenu:Lcom/android/internal/view/menu/MenuBuilder;

    iget-object v5, p0, Lcom/android/internal/widget/AbsActionBarView;->mActionMenuPresenter:Lcom/android/internal/view/menu/ActionMenuPresenter;

    invoke-virtual {v4, v5}, Lcom/android/internal/view/menu/MenuBuilder;->removeMenuPresenter(Lcom/android/internal/view/menu/MenuPresenter;)V

    .line 464
    iget-object v4, p0, Lcom/android/internal/widget/ActionBarView;->mOptionsMenu:Lcom/android/internal/view/menu/MenuBuilder;

    iget-object v5, p0, Lcom/android/internal/widget/ActionBarView;->mExpandedMenuPresenter:Lcom/android/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;

    invoke-virtual {v4, v5}, Lcom/android/internal/view/menu/MenuBuilder;->removeMenuPresenter(Lcom/android/internal/view/menu/MenuPresenter;)V

    :cond_1
    move-object v0, p1

    .line 467
    check-cast v0, Lcom/android/internal/view/menu/MenuBuilder;

    .line 468
    .local v0, builder:Lcom/android/internal/view/menu/MenuBuilder;
    iput-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mOptionsMenu:Lcom/android/internal/view/menu/MenuBuilder;

    .line 469
    iget-object v4, p0, Lcom/android/internal/widget/AbsActionBarView;->mMenuView:Lcom/android/internal/view/menu/ActionMenuView;

    if-eqz v4, :cond_2

    .line 470
    iget-object v4, p0, Lcom/android/internal/widget/AbsActionBarView;->mMenuView:Lcom/android/internal/view/menu/ActionMenuView;

    invoke-virtual {v4}, Lcom/android/internal/view/menu/ActionMenuView;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    .line 471
    .local v3, oldParent:Landroid/view/ViewGroup;
    if-eqz v3, :cond_2

    .line 472
    iget-object v4, p0, Lcom/android/internal/widget/AbsActionBarView;->mMenuView:Lcom/android/internal/view/menu/ActionMenuView;

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 475
    .end local v3           #oldParent:Landroid/view/ViewGroup;
    :cond_2
    iget-object v4, p0, Lcom/android/internal/widget/AbsActionBarView;->mActionMenuPresenter:Lcom/android/internal/view/menu/ActionMenuPresenter;

    if-nez v4, :cond_3

    .line 476
    new-instance v4, Lcom/android/internal/view/menu/ActionMenuPresenter;

    iget-object v5, p0, Lcom/android/internal/widget/ActionBarView;->mContext:Landroid/content/Context;

    invoke-direct {v4, v5}, Lcom/android/internal/view/menu/ActionMenuPresenter;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/android/internal/widget/AbsActionBarView;->mActionMenuPresenter:Lcom/android/internal/view/menu/ActionMenuPresenter;

    .line 487
    iget-object v4, p0, Lcom/android/internal/widget/AbsActionBarView;->mActionMenuPresenter:Lcom/android/internal/view/menu/ActionMenuPresenter;

    invoke-virtual {v4, p2}, Lcom/android/internal/view/menu/ActionMenuPresenter;->setCallback(Lcom/android/internal/view/menu/MenuPresenter$Callback;)V

    .line 488
    iget-object v4, p0, Lcom/android/internal/widget/AbsActionBarView;->mActionMenuPresenter:Lcom/android/internal/view/menu/ActionMenuPresenter;

    const v5, 0x1020259

    invoke-virtual {v4, v5}, Lcom/android/internal/view/menu/ActionMenuPresenter;->setId(I)V

    .line 489
    new-instance v4, Lcom/android/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;

    const/4 v5, 0x0

    invoke-direct {v4, p0, v5}, Lcom/android/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;-><init>(Lcom/android/internal/widget/ActionBarView;Lcom/android/internal/widget/ActionBarView$1;)V

    iput-object v4, p0, Lcom/android/internal/widget/ActionBarView;->mExpandedMenuPresenter:Lcom/android/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;

    .line 493
    :cond_3
    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    const/4 v4, -0x2

    invoke-direct {v1, v4, v7}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 495
    .local v1, layoutParams:Landroid/view/ViewGroup$LayoutParams;
    iget-boolean v4, p0, Lcom/android/internal/widget/AbsActionBarView;->mSplitActionBar:Z

    if-nez v4, :cond_5

    .line 496
    iget-object v4, p0, Lcom/android/internal/widget/AbsActionBarView;->mActionMenuPresenter:Lcom/android/internal/view/menu/ActionMenuPresenter;

    invoke-virtual {p0}, Lcom/android/internal/widget/ActionBarView;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x1110005

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v5

    invoke-virtual {v4, v5}, Lcom/android/internal/view/menu/ActionMenuPresenter;->setExpandedActionViewsExclusive(Z)V

    .line 499
    invoke-direct {p0, v0}, Lcom/android/internal/widget/ActionBarView;->configPresenters(Lcom/android/internal/view/menu/MenuBuilder;)V

    .line 500
    iget-object v4, p0, Lcom/android/internal/widget/AbsActionBarView;->mActionMenuPresenter:Lcom/android/internal/view/menu/ActionMenuPresenter;

    invoke-virtual {v4, p0}, Lcom/android/internal/view/menu/ActionMenuPresenter;->getMenuView(Landroid/view/ViewGroup;)Lcom/android/internal/view/menu/MenuView;

    move-result-object v2

    check-cast v2, Lcom/android/internal/view/menu/ActionMenuView;

    .line 501
    .local v2, menuView:Lcom/android/internal/view/menu/ActionMenuView;
    invoke-virtual {v2}, Lcom/android/internal/view/menu/ActionMenuView;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    .line 502
    .restart local v3       #oldParent:Landroid/view/ViewGroup;
    if-eqz v3, :cond_4

    if-eq v3, p0, :cond_4

    .line 503
    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 505
    :cond_4
    invoke-virtual {p0, v2, v1}, Lcom/android/internal/widget/ActionBarView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 529
    .end local v3           #oldParent:Landroid/view/ViewGroup;
    :goto_1
    iput-object v2, p0, Lcom/android/internal/widget/AbsActionBarView;->mMenuView:Lcom/android/internal/view/menu/ActionMenuView;

    goto/16 :goto_0

    .line 507
    .end local v2           #menuView:Lcom/android/internal/view/menu/ActionMenuView;
    :cond_5
    iget-object v4, p0, Lcom/android/internal/widget/AbsActionBarView;->mActionMenuPresenter:Lcom/android/internal/view/menu/ActionMenuPresenter;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/android/internal/view/menu/ActionMenuPresenter;->setExpandedActionViewsExclusive(Z)V

    .line 509
    iget-object v4, p0, Lcom/android/internal/widget/AbsActionBarView;->mActionMenuPresenter:Lcom/android/internal/view/menu/ActionMenuPresenter;

    invoke-virtual {p0}, Lcom/android/internal/widget/ActionBarView;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    iget v5, v5, Landroid/util/DisplayMetrics;->widthPixels:I

    const/4 v6, 0x1

    invoke-virtual {v4, v5, v6}, Lcom/android/internal/view/menu/ActionMenuPresenter;->setWidthLimit(IZ)V

    .line 512
    iget-object v4, p0, Lcom/android/internal/widget/AbsActionBarView;->mActionMenuPresenter:Lcom/android/internal/view/menu/ActionMenuPresenter;

    const v5, 0x7fffffff

    invoke-virtual {v4, v5}, Lcom/android/internal/view/menu/ActionMenuPresenter;->setItemLimit(I)V

    .line 514
    iput v7, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 515
    invoke-direct {p0, v0}, Lcom/android/internal/widget/ActionBarView;->configPresenters(Lcom/android/internal/view/menu/MenuBuilder;)V

    .line 516
    iget-object v4, p0, Lcom/android/internal/widget/AbsActionBarView;->mActionMenuPresenter:Lcom/android/internal/view/menu/ActionMenuPresenter;

    invoke-virtual {v4, p0}, Lcom/android/internal/view/menu/ActionMenuPresenter;->getMenuView(Landroid/view/ViewGroup;)Lcom/android/internal/view/menu/MenuView;

    move-result-object v2

    check-cast v2, Lcom/android/internal/view/menu/ActionMenuView;

    .line 517
    .restart local v2       #menuView:Lcom/android/internal/view/menu/ActionMenuView;
    iget-object v4, p0, Lcom/android/internal/widget/AbsActionBarView;->mSplitView:Lcom/android/internal/widget/ActionBarContainer;

    if-eqz v4, :cond_7

    .line 518
    invoke-virtual {v2}, Lcom/android/internal/view/menu/ActionMenuView;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    .line 519
    .restart local v3       #oldParent:Landroid/view/ViewGroup;
    if-eqz v3, :cond_6

    iget-object v4, p0, Lcom/android/internal/widget/AbsActionBarView;->mSplitView:Lcom/android/internal/widget/ActionBarContainer;

    if-eq v3, v4, :cond_6

    .line 520
    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 522
    :cond_6
    invoke-virtual {p0}, Lcom/android/internal/widget/ActionBarView;->getAnimatedVisibility()I

    move-result v4

    invoke-virtual {v2, v4}, Lcom/android/internal/view/menu/ActionMenuView;->setVisibility(I)V

    .line 523
    iget-object v4, p0, Lcom/android/internal/widget/AbsActionBarView;->mSplitView:Lcom/android/internal/widget/ActionBarContainer;

    invoke-virtual {v4, v2, v1}, Lcom/android/internal/widget/ActionBarContainer;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_1

    .line 526
    .end local v3           #oldParent:Landroid/view/ViewGroup;
    :cond_7
    invoke-virtual {v2, v1}, Lcom/android/internal/view/menu/ActionMenuView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_1
.end method

.method public setMultiWindowReserved(Z)V
    .locals 2
    .parameter "reserveMultiWindow"

    .prologue
    .line 972
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mMultiWindowMenuButton:Landroid/view/View;

    if-nez v0, :cond_1

    .line 973
    iput-boolean p1, p0, Lcom/android/internal/widget/ActionBarView;->mReserveMultiWindow:Z

    .line 991
    :cond_0
    :goto_0
    return-void

    .line 976
    :cond_1
    iget-boolean v0, p0, Lcom/android/internal/widget/ActionBarView;->mReserveMultiWindow:Z

    if-eq v0, p1, :cond_0

    .line 980
    if-eqz p1, :cond_2

    .line 981
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mMultiWindowMenuButton:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 982
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mMultiWindowMenuButton:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/ActionBarView;->addView(Landroid/view/View;)V

    .line 989
    :goto_1
    iput-boolean p1, p0, Lcom/android/internal/widget/ActionBarView;->mReserveMultiWindow:Z

    .line 990
    invoke-virtual {p0}, Lcom/android/internal/widget/ActionBarView;->requestLayout()V

    goto :goto_0

    .line 985
    :cond_2
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mMultiWindowMenuButton:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 986
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mMultiWindowMenuButton:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/ActionBarView;->removeView(Landroid/view/View;)V

    goto :goto_1
.end method

.method public setNavigationMode(I)V
    .locals 6
    .parameter "mode"

    .prologue
    const/4 v5, 0x0

    .line 779
    iget v0, p0, Lcom/android/internal/widget/ActionBarView;->mNavigationMode:I

    .line 780
    .local v0, oldMode:I
    if-eq p1, v0, :cond_2

    .line 781
    packed-switch v0, :pswitch_data_0

    .line 793
    :cond_0
    :goto_0
    packed-switch p1, :pswitch_data_1

    .line 817
    :cond_1
    :goto_1
    iput p1, p0, Lcom/android/internal/widget/ActionBarView;->mNavigationMode:I

    .line 818
    invoke-virtual {p0}, Lcom/android/internal/widget/ActionBarView;->requestLayout()V

    .line 820
    :cond_2
    return-void

    .line 783
    :pswitch_0
    iget-object v2, p0, Lcom/android/internal/widget/ActionBarView;->mListNavLayout:Landroid/widget/LinearLayout;

    if-eqz v2, :cond_0

    .line 784
    iget-object v2, p0, Lcom/android/internal/widget/ActionBarView;->mListNavLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v2}, Lcom/android/internal/widget/ActionBarView;->removeView(Landroid/view/View;)V

    goto :goto_0

    .line 788
    :pswitch_1
    iget-object v2, p0, Lcom/android/internal/widget/ActionBarView;->mTabScrollView:Lcom/android/internal/widget/ScrollingTabContainerView;

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lcom/android/internal/widget/ActionBarView;->mIncludeTabs:Z

    if-eqz v2, :cond_0

    .line 789
    iget-object v2, p0, Lcom/android/internal/widget/ActionBarView;->mTabScrollView:Lcom/android/internal/widget/ScrollingTabContainerView;

    invoke-virtual {p0, v2}, Lcom/android/internal/widget/ActionBarView;->removeView(Landroid/view/View;)V

    goto :goto_0

    .line 795
    :pswitch_2
    iget-object v2, p0, Lcom/android/internal/widget/ActionBarView;->mSpinner:Landroid/widget/Spinner;

    if-nez v2, :cond_3

    .line 796
    new-instance v2, Landroid/widget/Spinner;

    iget-object v3, p0, Lcom/android/internal/widget/ActionBarView;->mContext:Landroid/content/Context;

    const v4, 0x10102d7

    invoke-direct {v2, v3, v5, v4}, Landroid/widget/Spinner;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v2, p0, Lcom/android/internal/widget/ActionBarView;->mSpinner:Landroid/widget/Spinner;

    .line 798
    new-instance v2, Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/android/internal/widget/ActionBarView;->mContext:Landroid/content/Context;

    const v4, 0x10102f4

    invoke-direct {v2, v3, v5, v4}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v2, p0, Lcom/android/internal/widget/ActionBarView;->mListNavLayout:Landroid/widget/LinearLayout;

    .line 800
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x2

    const/4 v3, -0x1

    invoke-direct {v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 802
    .local v1, params:Landroid/widget/LinearLayout$LayoutParams;
    const/16 v2, 0x11

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 803
    iget-object v2, p0, Lcom/android/internal/widget/ActionBarView;->mListNavLayout:Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/android/internal/widget/ActionBarView;->mSpinner:Landroid/widget/Spinner;

    invoke-virtual {v2, v3, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 805
    .end local v1           #params:Landroid/widget/LinearLayout$LayoutParams;
    :cond_3
    iget-object v2, p0, Lcom/android/internal/widget/ActionBarView;->mSpinner:Landroid/widget/Spinner;

    invoke-virtual {v2}, Landroid/widget/Spinner;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/widget/ActionBarView;->mSpinnerAdapter:Landroid/widget/SpinnerAdapter;

    if-eq v2, v3, :cond_4

    .line 806
    iget-object v2, p0, Lcom/android/internal/widget/ActionBarView;->mSpinner:Landroid/widget/Spinner;

    iget-object v3, p0, Lcom/android/internal/widget/ActionBarView;->mSpinnerAdapter:Landroid/widget/SpinnerAdapter;

    invoke-virtual {v2, v3}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 808
    :cond_4
    iget-object v2, p0, Lcom/android/internal/widget/ActionBarView;->mSpinner:Landroid/widget/Spinner;

    iget-object v3, p0, Lcom/android/internal/widget/ActionBarView;->mNavItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    invoke-virtual {v2, v3}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 809
    iget-object v2, p0, Lcom/android/internal/widget/ActionBarView;->mListNavLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v2}, Lcom/android/internal/widget/ActionBarView;->addView(Landroid/view/View;)V

    goto :goto_1

    .line 812
    :pswitch_3
    iget-object v2, p0, Lcom/android/internal/widget/ActionBarView;->mTabScrollView:Lcom/android/internal/widget/ScrollingTabContainerView;

    if-eqz v2, :cond_1

    iget-boolean v2, p0, Lcom/android/internal/widget/ActionBarView;->mIncludeTabs:Z

    if-eqz v2, :cond_1

    .line 813
    iget-object v2, p0, Lcom/android/internal/widget/ActionBarView;->mTabScrollView:Lcom/android/internal/widget/ScrollingTabContainerView;

    invoke-virtual {p0, v2}, Lcom/android/internal/widget/ActionBarView;->addView(Landroid/view/View;)V

    goto :goto_1

    .line 781
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 793
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public setSplitActionBar(Z)V
    .locals 4
    .parameter "splitActionBar"

    .prologue
    const/4 v2, 0x0

    .line 393
    iget-boolean v1, p0, Lcom/android/internal/widget/AbsActionBarView;->mSplitActionBar:Z

    if-eq v1, p1, :cond_5

    .line 394
    iget-object v1, p0, Lcom/android/internal/widget/AbsActionBarView;->mMenuView:Lcom/android/internal/view/menu/ActionMenuView;

    if-eqz v1, :cond_2

    .line 395
    iget-object v1, p0, Lcom/android/internal/widget/AbsActionBarView;->mMenuView:Lcom/android/internal/view/menu/ActionMenuView;

    invoke-virtual {v1}, Lcom/android/internal/view/menu/ActionMenuView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 396
    .local v0, oldParent:Landroid/view/ViewGroup;
    if-eqz v0, :cond_0

    .line 397
    iget-object v1, p0, Lcom/android/internal/widget/AbsActionBarView;->mMenuView:Lcom/android/internal/view/menu/ActionMenuView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 399
    :cond_0
    if-eqz p1, :cond_6

    .line 400
    iget-object v1, p0, Lcom/android/internal/widget/AbsActionBarView;->mSplitView:Lcom/android/internal/widget/ActionBarContainer;

    if-eqz v1, :cond_1

    .line 401
    iget-object v1, p0, Lcom/android/internal/widget/AbsActionBarView;->mSplitView:Lcom/android/internal/widget/ActionBarContainer;

    iget-object v3, p0, Lcom/android/internal/widget/AbsActionBarView;->mMenuView:Lcom/android/internal/view/menu/ActionMenuView;

    invoke-virtual {v1, v3}, Lcom/android/internal/widget/ActionBarContainer;->addView(Landroid/view/View;)V

    .line 403
    :cond_1
    iget-object v1, p0, Lcom/android/internal/widget/AbsActionBarView;->mMenuView:Lcom/android/internal/view/menu/ActionMenuView;

    invoke-virtual {v1}, Lcom/android/internal/view/menu/ActionMenuView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    const/4 v3, -0x1

    iput v3, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 408
    :goto_0
    iget-object v1, p0, Lcom/android/internal/widget/AbsActionBarView;->mMenuView:Lcom/android/internal/view/menu/ActionMenuView;

    invoke-virtual {v1}, Lcom/android/internal/view/menu/ActionMenuView;->requestLayout()V

    .line 410
    .end local v0           #oldParent:Landroid/view/ViewGroup;
    :cond_2
    iget-object v1, p0, Lcom/android/internal/widget/AbsActionBarView;->mSplitView:Lcom/android/internal/widget/ActionBarContainer;

    if-eqz v1, :cond_3

    .line 411
    iget-object v3, p0, Lcom/android/internal/widget/AbsActionBarView;->mSplitView:Lcom/android/internal/widget/ActionBarContainer;

    if-eqz p1, :cond_7

    move v1, v2

    :goto_1
    invoke-virtual {v3, v1}, Lcom/android/internal/widget/ActionBarContainer;->setVisibility(I)V

    .line 414
    :cond_3
    iget-object v1, p0, Lcom/android/internal/widget/AbsActionBarView;->mActionMenuPresenter:Lcom/android/internal/view/menu/ActionMenuPresenter;

    if-eqz v1, :cond_4

    .line 415
    if-nez p1, :cond_8

    .line 416
    iget-object v1, p0, Lcom/android/internal/widget/AbsActionBarView;->mActionMenuPresenter:Lcom/android/internal/view/menu/ActionMenuPresenter;

    invoke-virtual {p0}, Lcom/android/internal/widget/ActionBarView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x1110005

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/internal/view/menu/ActionMenuPresenter;->setExpandedActionViewsExclusive(Z)V

    .line 428
    :cond_4
    :goto_2
    invoke-super {p0, p1}, Lcom/android/internal/widget/AbsActionBarView;->setSplitActionBar(Z)V

    .line 430
    :cond_5
    return-void

    .line 405
    .restart local v0       #oldParent:Landroid/view/ViewGroup;
    :cond_6
    iget-object v1, p0, Lcom/android/internal/widget/AbsActionBarView;->mMenuView:Lcom/android/internal/view/menu/ActionMenuView;

    invoke-virtual {p0, v1}, Lcom/android/internal/widget/ActionBarView;->addView(Landroid/view/View;)V

    .line 406
    iget-object v1, p0, Lcom/android/internal/widget/AbsActionBarView;->mMenuView:Lcom/android/internal/view/menu/ActionMenuView;

    invoke-virtual {v1}, Lcom/android/internal/view/menu/ActionMenuView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    const/4 v3, -0x2

    iput v3, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    goto :goto_0

    .line 411
    .end local v0           #oldParent:Landroid/view/ViewGroup;
    :cond_7
    const/16 v1, 0x8

    goto :goto_1

    .line 420
    :cond_8
    iget-object v1, p0, Lcom/android/internal/widget/AbsActionBarView;->mActionMenuPresenter:Lcom/android/internal/view/menu/ActionMenuPresenter;

    invoke-virtual {v1, v2}, Lcom/android/internal/view/menu/ActionMenuPresenter;->setExpandedActionViewsExclusive(Z)V

    .line 422
    iget-object v1, p0, Lcom/android/internal/widget/AbsActionBarView;->mActionMenuPresenter:Lcom/android/internal/view/menu/ActionMenuPresenter;

    invoke-virtual {p0}, Lcom/android/internal/widget/ActionBarView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lcom/android/internal/view/menu/ActionMenuPresenter;->setWidthLimit(IZ)V

    .line 425
    iget-object v1, p0, Lcom/android/internal/widget/AbsActionBarView;->mActionMenuPresenter:Lcom/android/internal/view/menu/ActionMenuPresenter;

    const v2, 0x7fffffff

    invoke-virtual {v1, v2}, Lcom/android/internal/view/menu/ActionMenuPresenter;->setItemLimit(I)V

    goto :goto_2
.end method

.method public setSubtitle(Ljava/lang/CharSequence;)V
    .locals 5
    .parameter "subtitle"

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 614
    iput-object p1, p0, Lcom/android/internal/widget/ActionBarView;->mSubtitle:Ljava/lang/CharSequence;

    .line 615
    iget-object v1, p0, Lcom/android/internal/widget/ActionBarView;->mSubtitleView:Landroid/widget/TextView;

    if-eqz v1, :cond_1

    .line 616
    iget-object v1, p0, Lcom/android/internal/widget/ActionBarView;->mSubtitleView:Landroid/widget/TextView;

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 617
    iget-object v4, p0, Lcom/android/internal/widget/ActionBarView;->mSubtitleView:Landroid/widget/TextView;

    if-eqz p1, :cond_2

    move v1, v2

    :goto_0
    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 618
    iget-object v1, p0, Lcom/android/internal/widget/ActionBarView;->mExpandedActionView:Landroid/view/View;

    if-nez v1, :cond_3

    iget v1, p0, Lcom/android/internal/widget/ActionBarView;->mDisplayOptions:I

    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/internal/widget/ActionBarView;->mTitle:Ljava/lang/CharSequence;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/widget/ActionBarView;->mSubtitle:Ljava/lang/CharSequence;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    :cond_0
    const/4 v0, 0x1

    .line 621
    .local v0, visible:Z
    :goto_1
    iget-object v1, p0, Lcom/android/internal/widget/ActionBarView;->mTitleLayout:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_4

    :goto_2
    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 623
    .end local v0           #visible:Z
    :cond_1
    return-void

    :cond_2
    move v1, v3

    .line 617
    goto :goto_0

    :cond_3
    move v0, v2

    .line 618
    goto :goto_1

    .restart local v0       #visible:Z
    :cond_4
    move v2, v3

    .line 621
    goto :goto_2
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 1
    .parameter "title"

    .prologue
    .line 579
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/widget/ActionBarView;->mUserTitle:Z

    .line 580
    invoke-direct {p0, p1}, Lcom/android/internal/widget/ActionBarView;->setTitleImpl(Ljava/lang/CharSequence;)V

    .line 581
    return-void
.end method

.method public setWindowCallback(Landroid/view/Window$Callback;)V
    .locals 0
    .parameter "cb"

    .prologue
    .line 357
    iput-object p1, p0, Lcom/android/internal/widget/ActionBarView;->mWindowCallback:Landroid/view/Window$Callback;

    .line 358
    return-void
.end method

.method public setWindowTitle(Ljava/lang/CharSequence;)V
    .locals 1
    .parameter "title"

    .prologue
    .line 590
    iget-boolean v0, p0, Lcom/android/internal/widget/ActionBarView;->mUserTitle:Z

    if-nez v0, :cond_0

    .line 591
    invoke-direct {p0, p1}, Lcom/android/internal/widget/ActionBarView;->setTitleImpl(Ljava/lang/CharSequence;)V

    .line 593
    :cond_0
    return-void
.end method

.method public shouldDelayChildPressedState()Z
    .locals 1

    .prologue
    .line 372
    const/4 v0, 0x0

    return v0
.end method
