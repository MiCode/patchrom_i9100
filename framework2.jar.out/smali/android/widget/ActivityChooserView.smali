.class public Landroid/widget/ActivityChooserView;
.super Landroid/view/ViewGroup;
.source "ActivityChooserView.java"

# interfaces
.implements Landroid/widget/ActivityChooserModel$ActivityChooserModelClient;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/ActivityChooserView$ActivityChooserViewAdapter;,
        Landroid/widget/ActivityChooserView$Callbacks;
    }
.end annotation


# instance fields
.field private final mActivityChooserContent:Landroid/widget/LinearLayout;

.field private final mActivityChooserContentBackground:Landroid/graphics/drawable/Drawable;

.field private final mAdapter:Landroid/widget/ActivityChooserView$ActivityChooserViewAdapter;

.field private final mCallbacks:Landroid/widget/ActivityChooserView$Callbacks;

.field private mDefaultActionButtonContentDescription:I

.field private final mDefaultActivityButton:Landroid/widget/FrameLayout;

.field private final mDefaultActivityButtonImage:Landroid/widget/ImageView;

.field private final mExpandActivityOverflowButton:Landroid/widget/FrameLayout;

.field private final mExpandActivityOverflowButtonImage:Landroid/widget/ImageView;

.field private mInitialActivityCount:I

.field private mIsAttachedToWindow:Z

.field private mIsParentThemeDeviceDefault:Z

.field private mIsSelectingDefaultActivity:Z

.field private final mListPopupMaxWidth:I

.field private mListPopupWindow:Landroid/widget/ListPopupWindow;

.field private final mModelDataSetOberver:Landroid/database/DataSetObserver;

.field private mOnDismissListener:Landroid/widget/PopupWindow$OnDismissListener;

.field private final mOnGlobalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

.field mProvider:Landroid/view/ActionProvider;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 191
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/widget/ActivityChooserView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 192
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 201
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/widget/ActivityChooserView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 202
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 11
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v10, 0x0

    const v9, 0x102026d

    const/4 v6, 0x5

    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 212
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 121
    new-instance v5, Landroid/widget/ActivityChooserView$1;

    invoke-direct {v5, p0}, Landroid/widget/ActivityChooserView$1;-><init>(Landroid/widget/ActivityChooserView;)V

    iput-object v5, p0, Landroid/widget/ActivityChooserView;->mModelDataSetOberver:Landroid/database/DataSetObserver;

    .line 135
    new-instance v5, Landroid/widget/ActivityChooserView$2;

    invoke-direct {v5, p0}, Landroid/widget/ActivityChooserView$2;-><init>(Landroid/widget/ActivityChooserView;)V

    iput-object v5, p0, Landroid/widget/ActivityChooserView;->mOnGlobalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    .line 169
    iput v6, p0, Landroid/widget/ActivityChooserView;->mInitialActivityCount:I

    .line 214
    sget-object v5, Lcom/android/internal/R$styleable;->ActivityChooserView:[I

    invoke-virtual {p1, p2, v5, p3, v8}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 217
    .local v0, attributesArray:Landroid/content/res/TypedArray;
    invoke-virtual {v0, v8, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    iput v5, p0, Landroid/widget/ActivityChooserView;->mInitialActivityCount:I

    .line 221
    invoke-virtual {v0, v7}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 224
    .local v1, expandActivityOverflowButtonDrawable:Landroid/graphics/drawable/Drawable;
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 226
    iget-object v5, p0, Landroid/widget/ActivityChooserView;->mContext:Landroid/content/Context;

    invoke-static {v5}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    .line 227
    .local v2, inflater:Landroid/view/LayoutInflater;
    const v5, 0x109001e

    invoke-virtual {v2, v5, p0, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 229
    new-instance v5, Landroid/widget/ActivityChooserView$Callbacks;

    invoke-direct {v5, p0, v10}, Landroid/widget/ActivityChooserView$Callbacks;-><init>(Landroid/widget/ActivityChooserView;Landroid/widget/ActivityChooserView$1;)V

    iput-object v5, p0, Landroid/widget/ActivityChooserView;->mCallbacks:Landroid/widget/ActivityChooserView$Callbacks;

    .line 231
    const v5, 0x102026b

    invoke-virtual {p0, v5}, Landroid/widget/ActivityChooserView;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout;

    iput-object v5, p0, Landroid/widget/ActivityChooserView;->mActivityChooserContent:Landroid/widget/LinearLayout;

    .line 232
    iget-object v5, p0, Landroid/widget/ActivityChooserView;->mActivityChooserContent:Landroid/widget/LinearLayout;

    invoke-virtual {v5}, Landroid/widget/LinearLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    iput-object v5, p0, Landroid/widget/ActivityChooserView;->mActivityChooserContentBackground:Landroid/graphics/drawable/Drawable;

    .line 234
    const v5, 0x102026e

    invoke-virtual {p0, v5}, Landroid/widget/ActivityChooserView;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/FrameLayout;

    iput-object v5, p0, Landroid/widget/ActivityChooserView;->mDefaultActivityButton:Landroid/widget/FrameLayout;

    .line 235
    iget-object v5, p0, Landroid/widget/ActivityChooserView;->mDefaultActivityButton:Landroid/widget/FrameLayout;

    iget-object v6, p0, Landroid/widget/ActivityChooserView;->mCallbacks:Landroid/widget/ActivityChooserView$Callbacks;

    invoke-virtual {v5, v6}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 236
    iget-object v5, p0, Landroid/widget/ActivityChooserView;->mDefaultActivityButton:Landroid/widget/FrameLayout;

    iget-object v6, p0, Landroid/widget/ActivityChooserView;->mCallbacks:Landroid/widget/ActivityChooserView$Callbacks;

    invoke-virtual {v5, v6}, Landroid/widget/FrameLayout;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 237
    iget-object v5, p0, Landroid/widget/ActivityChooserView;->mDefaultActivityButton:Landroid/widget/FrameLayout;

    invoke-virtual {v5, v9}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    iput-object v5, p0, Landroid/widget/ActivityChooserView;->mDefaultActivityButtonImage:Landroid/widget/ImageView;

    .line 239
    const v5, 0x102026c

    invoke-virtual {p0, v5}, Landroid/widget/ActivityChooserView;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/FrameLayout;

    iput-object v5, p0, Landroid/widget/ActivityChooserView;->mExpandActivityOverflowButton:Landroid/widget/FrameLayout;

    .line 240
    iget-object v5, p0, Landroid/widget/ActivityChooserView;->mExpandActivityOverflowButton:Landroid/widget/FrameLayout;

    iget-object v6, p0, Landroid/widget/ActivityChooserView;->mCallbacks:Landroid/widget/ActivityChooserView$Callbacks;

    invoke-virtual {v5, v6}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 241
    iget-object v5, p0, Landroid/widget/ActivityChooserView;->mExpandActivityOverflowButton:Landroid/widget/FrameLayout;

    invoke-virtual {v5, v9}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    iput-object v5, p0, Landroid/widget/ActivityChooserView;->mExpandActivityOverflowButtonImage:Landroid/widget/ImageView;

    .line 243
    iget-object v5, p0, Landroid/widget/ActivityChooserView;->mExpandActivityOverflowButtonImage:Landroid/widget/ImageView;

    invoke-virtual {v5, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 245
    new-instance v5, Landroid/widget/ActivityChooserView$ActivityChooserViewAdapter;

    invoke-direct {v5, p0, v10}, Landroid/widget/ActivityChooserView$ActivityChooserViewAdapter;-><init>(Landroid/widget/ActivityChooserView;Landroid/widget/ActivityChooserView$1;)V

    iput-object v5, p0, Landroid/widget/ActivityChooserView;->mAdapter:Landroid/widget/ActivityChooserView$ActivityChooserViewAdapter;

    .line 246
    iget-object v5, p0, Landroid/widget/ActivityChooserView;->mAdapter:Landroid/widget/ActivityChooserView$ActivityChooserViewAdapter;

    new-instance v6, Landroid/widget/ActivityChooserView$3;

    invoke-direct {v6, p0}, Landroid/widget/ActivityChooserView$3;-><init>(Landroid/widget/ActivityChooserView;)V

    invoke-virtual {v5, v6}, Landroid/widget/ActivityChooserView$ActivityChooserViewAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 254
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 255
    .local v4, resources:Landroid/content/res/Resources;
    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    iget v5, v5, Landroid/util/DisplayMetrics;->widthPixels:I

    div-int/lit8 v5, v5, 0x2

    const v6, 0x1050007

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v5

    iput v5, p0, Landroid/widget/ActivityChooserView;->mListPopupMaxWidth:I

    .line 259
    new-instance v3, Landroid/util/TypedValue;

    invoke-direct {v3}, Landroid/util/TypedValue;-><init>()V

    .line 260
    .local v3, outValue:Landroid/util/TypedValue;
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v5

    const v6, 0x10103fd

    invoke-virtual {v5, v6, v3, v7}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 261
    iget v5, v3, Landroid/util/TypedValue;->data:I

    if-eqz v5, :cond_1

    .line 262
    iput-boolean v7, p0, Landroid/widget/ActivityChooserView;->mIsParentThemeDeviceDefault:Z

    .line 267
    :goto_0
    iget-boolean v5, p0, Landroid/widget/ActivityChooserView;->mIsParentThemeDeviceDefault:Z

    if-eqz v5, :cond_0

    .line 268
    iget-object v5, p0, Landroid/widget/ActivityChooserView;->mExpandActivityOverflowButtonImage:Landroid/widget/ImageView;

    invoke-virtual {v5, v7}, Landroid/widget/ImageView;->setHoverPopupType(I)V

    .line 269
    iget-object v5, p0, Landroid/widget/ActivityChooserView;->mExpandActivityOverflowButtonImage:Landroid/widget/ImageView;

    invoke-virtual {v5}, Landroid/widget/ImageView;->getHoverPopupWindow()Landroid/widget/HoverPopupWindow;

    move-result-object v5

    iget-object v6, p0, Landroid/widget/ActivityChooserView;->mExpandActivityOverflowButton:Landroid/widget/FrameLayout;

    invoke-virtual {v5, v6}, Landroid/widget/HoverPopupWindow;->setAnchorView(Landroid/view/View;)V

    .line 271
    iget-object v5, p0, Landroid/widget/ActivityChooserView;->mDefaultActivityButtonImage:Landroid/widget/ImageView;

    invoke-virtual {v5, v7}, Landroid/widget/ImageView;->setHoverPopupType(I)V

    .line 272
    iget-object v5, p0, Landroid/widget/ActivityChooserView;->mDefaultActivityButtonImage:Landroid/widget/ImageView;

    invoke-virtual {v5}, Landroid/widget/ImageView;->getHoverPopupWindow()Landroid/widget/HoverPopupWindow;

    move-result-object v5

    iget-object v6, p0, Landroid/widget/ActivityChooserView;->mDefaultActivityButton:Landroid/widget/FrameLayout;

    invoke-virtual {v5, v6}, Landroid/widget/HoverPopupWindow;->setAnchorView(Landroid/view/View;)V

    .line 275
    :cond_0
    return-void

    .line 264
    :cond_1
    iput-boolean v8, p0, Landroid/widget/ActivityChooserView;->mIsParentThemeDeviceDefault:Z

    goto :goto_0
.end method

.method static synthetic access$000(Landroid/widget/ActivityChooserView;)Landroid/widget/ActivityChooserView$ActivityChooserViewAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    iget-object v0, p0, Landroid/widget/ActivityChooserView;->mAdapter:Landroid/widget/ActivityChooserView$ActivityChooserViewAdapter;

    return-object v0
.end method

.method static synthetic access$100(Landroid/widget/ActivityChooserView;)Landroid/widget/ListPopupWindow;
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    invoke-direct {p0}, Landroid/widget/ActivityChooserView;->getListPopupWindow()Landroid/widget/ListPopupWindow;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1000(Landroid/widget/ActivityChooserView;)Landroid/widget/FrameLayout;
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    iget-object v0, p0, Landroid/widget/ActivityChooserView;->mExpandActivityOverflowButton:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method static synthetic access$1100(Landroid/widget/ActivityChooserView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    iget v0, p0, Landroid/widget/ActivityChooserView;->mInitialActivityCount:I

    return v0
.end method

.method static synthetic access$1200(Landroid/widget/ActivityChooserView;)Landroid/widget/PopupWindow$OnDismissListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    iget-object v0, p0, Landroid/widget/ActivityChooserView;->mOnDismissListener:Landroid/widget/PopupWindow$OnDismissListener;

    return-object v0
.end method

.method static synthetic access$1300(Landroid/widget/ActivityChooserView;)Landroid/database/DataSetObserver;
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    iget-object v0, p0, Landroid/widget/ActivityChooserView;->mModelDataSetOberver:Landroid/database/DataSetObserver;

    return-object v0
.end method

.method static synthetic access$1400(Landroid/widget/ActivityChooserView;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    iget-object v0, p0, Landroid/widget/ActivityChooserView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1500(Landroid/widget/ActivityChooserView;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    iget-object v0, p0, Landroid/widget/ActivityChooserView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$400(Landroid/widget/ActivityChooserView;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 66
    invoke-direct {p0}, Landroid/widget/ActivityChooserView;->updateAppearance()V

    return-void
.end method

.method static synthetic access$500(Landroid/widget/ActivityChooserView;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 66
    invoke-direct {p0, p1}, Landroid/widget/ActivityChooserView;->showPopupUnchecked(I)V

    return-void
.end method

.method static synthetic access$600(Landroid/widget/ActivityChooserView;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    iget-boolean v0, p0, Landroid/widget/ActivityChooserView;->mIsSelectingDefaultActivity:Z

    return v0
.end method

.method static synthetic access$602(Landroid/widget/ActivityChooserView;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 66
    iput-boolean p1, p0, Landroid/widget/ActivityChooserView;->mIsSelectingDefaultActivity:Z

    return p1
.end method

.method static synthetic access$700(Landroid/widget/ActivityChooserView;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    iget-object v0, p0, Landroid/widget/ActivityChooserView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$800(Landroid/widget/ActivityChooserView;)Landroid/widget/FrameLayout;
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    iget-object v0, p0, Landroid/widget/ActivityChooserView;->mDefaultActivityButton:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method static synthetic access$900(Landroid/widget/ActivityChooserView;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    iget-object v0, p0, Landroid/widget/ActivityChooserView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private getListPopupWindow()Landroid/widget/ListPopupWindow;
    .locals 2

    .prologue
    .line 503
    iget-object v0, p0, Landroid/widget/ActivityChooserView;->mListPopupWindow:Landroid/widget/ListPopupWindow;

    if-nez v0, :cond_0

    .line 504
    new-instance v0, Landroid/widget/ListPopupWindow;

    invoke-virtual {p0}, Landroid/widget/ActivityChooserView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/ListPopupWindow;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroid/widget/ActivityChooserView;->mListPopupWindow:Landroid/widget/ListPopupWindow;

    .line 505
    iget-object v0, p0, Landroid/widget/ActivityChooserView;->mListPopupWindow:Landroid/widget/ListPopupWindow;

    iget-object v1, p0, Landroid/widget/ActivityChooserView;->mAdapter:Landroid/widget/ActivityChooserView$ActivityChooserViewAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListPopupWindow;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 506
    iget-object v0, p0, Landroid/widget/ActivityChooserView;->mListPopupWindow:Landroid/widget/ListPopupWindow;

    invoke-virtual {v0, p0}, Landroid/widget/ListPopupWindow;->setAnchorView(Landroid/view/View;)V

    .line 507
    iget-object v0, p0, Landroid/widget/ActivityChooserView;->mListPopupWindow:Landroid/widget/ListPopupWindow;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ListPopupWindow;->setModal(Z)V

    .line 508
    iget-object v0, p0, Landroid/widget/ActivityChooserView;->mListPopupWindow:Landroid/widget/ListPopupWindow;

    iget-object v1, p0, Landroid/widget/ActivityChooserView;->mCallbacks:Landroid/widget/ActivityChooserView$Callbacks;

    invoke-virtual {v0, v1}, Landroid/widget/ListPopupWindow;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 509
    iget-object v0, p0, Landroid/widget/ActivityChooserView;->mListPopupWindow:Landroid/widget/ListPopupWindow;

    iget-object v1, p0, Landroid/widget/ActivityChooserView;->mCallbacks:Landroid/widget/ActivityChooserView$Callbacks;

    invoke-virtual {v0, v1}, Landroid/widget/ListPopupWindow;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    .line 511
    :cond_0
    iget-object v0, p0, Landroid/widget/ActivityChooserView;->mListPopupWindow:Landroid/widget/ListPopupWindow;

    return-object v0
.end method

.method private showPopupUnchecked(I)V
    .locals 9
    .parameter "maxActivityCount"

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 346
    iget-object v7, p0, Landroid/widget/ActivityChooserView;->mAdapter:Landroid/widget/ActivityChooserView$ActivityChooserViewAdapter;

    invoke-virtual {v7}, Landroid/widget/ActivityChooserView$ActivityChooserViewAdapter;->getDataModel()Landroid/widget/ActivityChooserModel;

    move-result-object v7

    if-nez v7, :cond_0

    .line 347
    new-instance v5, Ljava/lang/IllegalStateException;

    const-string v6, "No data model. Did you call #setDataModel?"

    invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 350
    :cond_0
    invoke-virtual {p0}, Landroid/widget/ActivityChooserView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v7

    iget-object v8, p0, Landroid/widget/ActivityChooserView;->mOnGlobalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {v7, v8}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 352
    iget-object v7, p0, Landroid/widget/ActivityChooserView;->mDefaultActivityButton:Landroid/widget/FrameLayout;

    invoke-virtual {v7}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v7

    if-nez v7, :cond_4

    move v2, v5

    .line 355
    .local v2, defaultActivityButtonShown:Z
    :goto_0
    iget-object v7, p0, Landroid/widget/ActivityChooserView;->mAdapter:Landroid/widget/ActivityChooserView$ActivityChooserViewAdapter;

    invoke-virtual {v7}, Landroid/widget/ActivityChooserView$ActivityChooserViewAdapter;->getActivityCount()I

    move-result v0

    .line 356
    .local v0, activityCount:I
    if-eqz v2, :cond_5

    move v3, v5

    .line 357
    .local v3, maxActivityCountOffset:I
    :goto_1
    const v7, 0x7fffffff

    if-eq p1, v7, :cond_6

    add-int v7, p1, v3

    if-le v0, v7, :cond_6

    .line 359
    iget-object v7, p0, Landroid/widget/ActivityChooserView;->mAdapter:Landroid/widget/ActivityChooserView$ActivityChooserViewAdapter;

    invoke-virtual {v7, v5}, Landroid/widget/ActivityChooserView$ActivityChooserViewAdapter;->setShowFooterView(Z)V

    .line 360
    iget-object v7, p0, Landroid/widget/ActivityChooserView;->mAdapter:Landroid/widget/ActivityChooserView$ActivityChooserViewAdapter;

    add-int/lit8 v8, p1, -0x1

    invoke-virtual {v7, v8}, Landroid/widget/ActivityChooserView$ActivityChooserViewAdapter;->setMaxActivityCount(I)V

    .line 366
    :goto_2
    invoke-direct {p0}, Landroid/widget/ActivityChooserView;->getListPopupWindow()Landroid/widget/ListPopupWindow;

    move-result-object v4

    .line 367
    .local v4, popupWindow:Landroid/widget/ListPopupWindow;
    invoke-virtual {v4}, Landroid/widget/ListPopupWindow;->isShowing()Z

    move-result v7

    if-nez v7, :cond_3

    .line 368
    iget-boolean v7, p0, Landroid/widget/ActivityChooserView;->mIsSelectingDefaultActivity:Z

    if-nez v7, :cond_1

    if-nez v2, :cond_7

    .line 369
    :cond_1
    iget-object v6, p0, Landroid/widget/ActivityChooserView;->mAdapter:Landroid/widget/ActivityChooserView$ActivityChooserViewAdapter;

    invoke-virtual {v6, v5, v2}, Landroid/widget/ActivityChooserView$ActivityChooserViewAdapter;->setShowDefaultActivity(ZZ)V

    .line 373
    :goto_3
    iget-object v6, p0, Landroid/widget/ActivityChooserView;->mAdapter:Landroid/widget/ActivityChooserView$ActivityChooserViewAdapter;

    invoke-virtual {v6}, Landroid/widget/ActivityChooserView$ActivityChooserViewAdapter;->measureContentWidth()I

    move-result v6

    iget v7, p0, Landroid/widget/ActivityChooserView;->mListPopupMaxWidth:I

    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 374
    .local v1, contentWidth:I
    invoke-virtual {v4, v1}, Landroid/widget/ListPopupWindow;->setContentWidth(I)V

    .line 375
    invoke-virtual {v4}, Landroid/widget/ListPopupWindow;->show()V

    .line 376
    iget-object v6, p0, Landroid/widget/ActivityChooserView;->mProvider:Landroid/view/ActionProvider;

    if-eqz v6, :cond_2

    .line 377
    iget-object v6, p0, Landroid/widget/ActivityChooserView;->mProvider:Landroid/view/ActionProvider;

    invoke-virtual {v6, v5}, Landroid/view/ActionProvider;->subUiVisibilityChanged(Z)V

    .line 379
    :cond_2
    invoke-virtual {v4}, Landroid/widget/ListPopupWindow;->getListView()Landroid/widget/ListView;

    move-result-object v5

    iget-object v6, p0, Landroid/widget/ActivityChooserView;->mContext:Landroid/content/Context;

    const v7, 0x1040617

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/ListView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 382
    .end local v1           #contentWidth:I
    :cond_3
    return-void

    .end local v0           #activityCount:I
    .end local v2           #defaultActivityButtonShown:Z
    .end local v3           #maxActivityCountOffset:I
    .end local v4           #popupWindow:Landroid/widget/ListPopupWindow;
    :cond_4
    move v2, v6

    .line 352
    goto :goto_0

    .restart local v0       #activityCount:I
    .restart local v2       #defaultActivityButtonShown:Z
    :cond_5
    move v3, v6

    .line 356
    goto :goto_1

    .line 362
    .restart local v3       #maxActivityCountOffset:I
    :cond_6
    iget-object v7, p0, Landroid/widget/ActivityChooserView;->mAdapter:Landroid/widget/ActivityChooserView$ActivityChooserViewAdapter;

    invoke-virtual {v7, v6}, Landroid/widget/ActivityChooserView$ActivityChooserViewAdapter;->setShowFooterView(Z)V

    .line 363
    iget-object v7, p0, Landroid/widget/ActivityChooserView;->mAdapter:Landroid/widget/ActivityChooserView$ActivityChooserViewAdapter;

    invoke-virtual {v7, p1}, Landroid/widget/ActivityChooserView$ActivityChooserViewAdapter;->setMaxActivityCount(I)V

    goto :goto_2

    .line 371
    .restart local v4       #popupWindow:Landroid/widget/ListPopupWindow;
    :cond_7
    iget-object v7, p0, Landroid/widget/ActivityChooserView;->mAdapter:Landroid/widget/ActivityChooserView$ActivityChooserViewAdapter;

    invoke-virtual {v7, v6, v6}, Landroid/widget/ActivityChooserView$ActivityChooserViewAdapter;->setShowDefaultActivity(ZZ)V

    goto :goto_3
.end method

.method private updateAppearance()V
    .locals 10

    .prologue
    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 519
    iget-object v6, p0, Landroid/widget/ActivityChooserView;->mAdapter:Landroid/widget/ActivityChooserView$ActivityChooserViewAdapter;

    invoke-virtual {v6}, Landroid/widget/ActivityChooserView$ActivityChooserViewAdapter;->getCount()I

    move-result v6

    if-lez v6, :cond_1

    .line 520
    iget-object v6, p0, Landroid/widget/ActivityChooserView;->mExpandActivityOverflowButton:Landroid/widget/FrameLayout;

    invoke-virtual {v6, v8}, Landroid/widget/FrameLayout;->setEnabled(Z)V

    .line 525
    :goto_0
    iget-object v6, p0, Landroid/widget/ActivityChooserView;->mAdapter:Landroid/widget/ActivityChooserView$ActivityChooserViewAdapter;

    invoke-virtual {v6}, Landroid/widget/ActivityChooserView$ActivityChooserViewAdapter;->getActivityCount()I

    move-result v1

    .line 526
    .local v1, activityCount:I
    iget-object v6, p0, Landroid/widget/ActivityChooserView;->mAdapter:Landroid/widget/ActivityChooserView$ActivityChooserViewAdapter;

    invoke-virtual {v6}, Landroid/widget/ActivityChooserView$ActivityChooserViewAdapter;->getHistorySize()I

    move-result v3

    .line 527
    .local v3, historySize:I
    if-lez v1, :cond_2

    if-lez v3, :cond_2

    .line 528
    iget-object v6, p0, Landroid/widget/ActivityChooserView;->mDefaultActivityButton:Landroid/widget/FrameLayout;

    invoke-virtual {v6, v9}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 529
    iget-object v6, p0, Landroid/widget/ActivityChooserView;->mAdapter:Landroid/widget/ActivityChooserView$ActivityChooserViewAdapter;

    invoke-virtual {v6}, Landroid/widget/ActivityChooserView$ActivityChooserViewAdapter;->getDefaultActivity()Landroid/content/pm/ResolveInfo;

    move-result-object v0

    .line 530
    .local v0, activity:Landroid/content/pm/ResolveInfo;
    iget-object v6, p0, Landroid/widget/ActivityChooserView;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    .line 531
    .local v5, packageManager:Landroid/content/pm/PackageManager;
    iget-object v6, p0, Landroid/widget/ActivityChooserView;->mDefaultActivityButtonImage:Landroid/widget/ImageView;

    invoke-virtual {v0, v5}, Landroid/content/pm/ResolveInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 532
    iget v6, p0, Landroid/widget/ActivityChooserView;->mDefaultActionButtonContentDescription:I

    if-eqz v6, :cond_0

    .line 533
    invoke-virtual {v0, v5}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v4

    .line 534
    .local v4, label:Ljava/lang/CharSequence;
    iget-object v6, p0, Landroid/widget/ActivityChooserView;->mContext:Landroid/content/Context;

    iget v7, p0, Landroid/widget/ActivityChooserView;->mDefaultActionButtonContentDescription:I

    new-array v8, v8, [Ljava/lang/Object;

    aput-object v4, v8, v9

    invoke-virtual {v6, v7, v8}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 536
    .local v2, contentDescription:Ljava/lang/String;
    iget-object v6, p0, Landroid/widget/ActivityChooserView;->mDefaultActivityButton:Landroid/widget/FrameLayout;

    invoke-virtual {v6, v2}, Landroid/widget/FrameLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 542
    .end local v0           #activity:Landroid/content/pm/ResolveInfo;
    .end local v2           #contentDescription:Ljava/lang/String;
    .end local v4           #label:Ljava/lang/CharSequence;
    .end local v5           #packageManager:Landroid/content/pm/PackageManager;
    :cond_0
    :goto_1
    iget-object v6, p0, Landroid/widget/ActivityChooserView;->mDefaultActivityButton:Landroid/widget/FrameLayout;

    invoke-virtual {v6}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v6

    if-nez v6, :cond_3

    .line 543
    iget-object v6, p0, Landroid/widget/ActivityChooserView;->mActivityChooserContent:Landroid/widget/LinearLayout;

    iget-object v7, p0, Landroid/widget/ActivityChooserView;->mActivityChooserContentBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6, v7}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 547
    :goto_2
    return-void

    .line 522
    .end local v1           #activityCount:I
    .end local v3           #historySize:I
    :cond_1
    iget-object v6, p0, Landroid/widget/ActivityChooserView;->mExpandActivityOverflowButton:Landroid/widget/FrameLayout;

    invoke-virtual {v6, v9}, Landroid/widget/FrameLayout;->setEnabled(Z)V

    goto :goto_0

    .line 539
    .restart local v1       #activityCount:I
    .restart local v3       #historySize:I
    :cond_2
    iget-object v6, p0, Landroid/widget/ActivityChooserView;->mDefaultActivityButton:Landroid/widget/FrameLayout;

    const/16 v7, 0x8

    invoke-virtual {v6, v7}, Landroid/widget/FrameLayout;->setVisibility(I)V

    goto :goto_1

    .line 545
    :cond_3
    iget-object v6, p0, Landroid/widget/ActivityChooserView;->mActivityChooserContent:Landroid/widget/LinearLayout;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_2
.end method


# virtual methods
.method public dismissPopup()Z
    .locals 2

    .prologue
    .line 390
    invoke-virtual {p0}, Landroid/widget/ActivityChooserView;->isShowingPopup()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 391
    invoke-direct {p0}, Landroid/widget/ActivityChooserView;->getListPopupWindow()Landroid/widget/ListPopupWindow;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ListPopupWindow;->dismiss()V

    .line 392
    invoke-virtual {p0}, Landroid/widget/ActivityChooserView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 393
    .local v0, viewTreeObserver:Landroid/view/ViewTreeObserver;
    invoke-virtual {v0}, Landroid/view/ViewTreeObserver;->isAlive()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 394
    iget-object v1, p0, Landroid/widget/ActivityChooserView;->mOnGlobalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 397
    .end local v0           #viewTreeObserver:Landroid/view/ViewTreeObserver;
    :cond_0
    const/4 v1, 0x1

    return v1
.end method

.method public getDataModel()Landroid/widget/ActivityChooserModel;
    .locals 1

    .prologue
    .line 459
    iget-object v0, p0, Landroid/widget/ActivityChooserView;->mAdapter:Landroid/widget/ActivityChooserView$ActivityChooserViewAdapter;

    invoke-virtual {v0}, Landroid/widget/ActivityChooserView$ActivityChooserViewAdapter;->getDataModel()Landroid/widget/ActivityChooserModel;

    move-result-object v0

    return-object v0
.end method

.method public isShowingPopup()Z
    .locals 1

    .prologue
    .line 406
    invoke-direct {p0}, Landroid/widget/ActivityChooserView;->getListPopupWindow()Landroid/widget/ListPopupWindow;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListPopupWindow;->isShowing()Z

    move-result v0

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 2

    .prologue
    .line 411
    invoke-super {p0}, Landroid/view/ViewGroup;->onAttachedToWindow()V

    .line 412
    iget-object v1, p0, Landroid/widget/ActivityChooserView;->mAdapter:Landroid/widget/ActivityChooserView$ActivityChooserViewAdapter;

    invoke-virtual {v1}, Landroid/widget/ActivityChooserView$ActivityChooserViewAdapter;->getDataModel()Landroid/widget/ActivityChooserModel;

    move-result-object v0

    .line 413
    .local v0, dataModel:Landroid/widget/ActivityChooserModel;
    if-eqz v0, :cond_0

    .line 414
    iget-object v1, p0, Landroid/widget/ActivityChooserView;->mModelDataSetOberver:Landroid/database/DataSetObserver;

    invoke-virtual {v0, v1}, Landroid/widget/ActivityChooserModel;->registerObserver(Ljava/lang/Object;)V

    .line 416
    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/widget/ActivityChooserView;->mIsAttachedToWindow:Z

    .line 417
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 3

    .prologue
    .line 421
    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    .line 422
    iget-object v2, p0, Landroid/widget/ActivityChooserView;->mAdapter:Landroid/widget/ActivityChooserView$ActivityChooserViewAdapter;

    invoke-virtual {v2}, Landroid/widget/ActivityChooserView$ActivityChooserViewAdapter;->getDataModel()Landroid/widget/ActivityChooserModel;

    move-result-object v0

    .line 423
    .local v0, dataModel:Landroid/widget/ActivityChooserModel;
    if-eqz v0, :cond_0

    .line 424
    iget-object v2, p0, Landroid/widget/ActivityChooserView;->mModelDataSetOberver:Landroid/database/DataSetObserver;

    invoke-virtual {v0, v2}, Landroid/widget/ActivityChooserModel;->unregisterObserver(Ljava/lang/Object;)V

    .line 426
    :cond_0
    invoke-virtual {p0}, Landroid/widget/ActivityChooserView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    .line 427
    .local v1, viewTreeObserver:Landroid/view/ViewTreeObserver;
    invoke-virtual {v1}, Landroid/view/ViewTreeObserver;->isAlive()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 428
    iget-object v2, p0, Landroid/widget/ActivityChooserView;->mOnGlobalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {v1, v2}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 430
    :cond_1
    invoke-virtual {p0}, Landroid/widget/ActivityChooserView;->isShowingPopup()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 431
    invoke-virtual {p0}, Landroid/widget/ActivityChooserView;->dismissPopup()Z

    .line 433
    :cond_2
    const/4 v2, 0x0

    iput-boolean v2, p0, Landroid/widget/ActivityChooserView;->mIsAttachedToWindow:Z

    .line 434
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 4
    .parameter "changed"
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    const/4 v3, 0x0

    .line 452
    iget-object v0, p0, Landroid/widget/ActivityChooserView;->mActivityChooserContent:Landroid/widget/LinearLayout;

    sub-int v1, p4, p2

    sub-int v2, p5, p3

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/widget/LinearLayout;->layout(IIII)V

    .line 453
    invoke-virtual {p0}, Landroid/widget/ActivityChooserView;->isShowingPopup()Z

    move-result v0

    if-nez v0, :cond_0

    .line 454
    invoke-virtual {p0}, Landroid/widget/ActivityChooserView;->dismissPopup()Z

    .line 456
    :cond_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 3
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 438
    iget-object v0, p0, Landroid/widget/ActivityChooserView;->mActivityChooserContent:Landroid/widget/LinearLayout;

    .line 442
    .local v0, child:Landroid/view/View;
    iget-object v1, p0, Landroid/widget/ActivityChooserView;->mDefaultActivityButton:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_0

    .line 443
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    const/high16 v2, 0x4000

    invoke-static {v1, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    .line 446
    :cond_0
    invoke-virtual {p0, v0, p1, p2}, Landroid/widget/ActivityChooserView;->measureChild(Landroid/view/View;II)V

    .line 447
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getMeasuredWidth()I

    move-result v1

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getMeasuredHeight()I

    move-result v2

    invoke-virtual {p0, v1, v2}, Landroid/widget/ActivityChooserView;->setMeasuredDimension(II)V

    .line 448
    return-void
.end method

.method public setActivityChooserModel(Landroid/widget/ActivityChooserModel;)V
    .locals 1
    .parameter "dataModel"

    .prologue
    .line 281
    iget-object v0, p0, Landroid/widget/ActivityChooserView;->mAdapter:Landroid/widget/ActivityChooserView$ActivityChooserViewAdapter;

    invoke-virtual {v0, p1}, Landroid/widget/ActivityChooserView$ActivityChooserViewAdapter;->setDataModel(Landroid/widget/ActivityChooserModel;)V

    .line 282
    invoke-virtual {p0}, Landroid/widget/ActivityChooserView;->isShowingPopup()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 283
    invoke-virtual {p0}, Landroid/widget/ActivityChooserView;->dismissPopup()Z

    .line 284
    invoke-virtual {p0}, Landroid/widget/ActivityChooserView;->showPopup()Z

    .line 286
    :cond_0
    return-void
.end method

.method public setDefaultActionButtonContentDescription(I)V
    .locals 0
    .parameter "resourceId"

    .prologue
    .line 494
    iput p1, p0, Landroid/widget/ActivityChooserView;->mDefaultActionButtonContentDescription:I

    .line 495
    return-void
.end method

.method public setExpandActivityOverflowButtonContentDescription(I)V
    .locals 2
    .parameter "resourceId"

    .prologue
    .line 314
    iget-object v1, p0, Landroid/widget/ActivityChooserView;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 315
    .local v0, contentDescription:Ljava/lang/CharSequence;
    iget-object v1, p0, Landroid/widget/ActivityChooserView;->mExpandActivityOverflowButtonImage:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 316
    return-void
.end method

.method public setExpandActivityOverflowButtonDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .parameter "drawable"

    .prologue
    .line 300
    iget-object v0, p0, Landroid/widget/ActivityChooserView;->mExpandActivityOverflowButtonImage:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 301
    return-void
.end method

.method public setInitialActivityCount(I)V
    .locals 0
    .parameter "itemCount"

    .prologue
    .line 480
    iput p1, p0, Landroid/widget/ActivityChooserView;->mInitialActivityCount:I

    .line 481
    return-void
.end method

.method public setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 468
    iput-object p1, p0, Landroid/widget/ActivityChooserView;->mOnDismissListener:Landroid/widget/PopupWindow$OnDismissListener;

    .line 469
    return-void
.end method

.method public setProvider(Landroid/view/ActionProvider;)V
    .locals 0
    .parameter "provider"

    .prologue
    .line 323
    iput-object p1, p0, Landroid/widget/ActivityChooserView;->mProvider:Landroid/view/ActionProvider;

    .line 324
    return-void
.end method

.method public showPopup()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 332
    invoke-virtual {p0}, Landroid/widget/ActivityChooserView;->isShowingPopup()Z

    move-result v1

    if-nez v1, :cond_0

    iget-boolean v1, p0, Landroid/widget/ActivityChooserView;->mIsAttachedToWindow:Z

    if-nez v1, :cond_1

    .line 337
    :cond_0
    :goto_0
    return v0

    .line 335
    :cond_1
    iput-boolean v0, p0, Landroid/widget/ActivityChooserView;->mIsSelectingDefaultActivity:Z

    .line 336
    iget v0, p0, Landroid/widget/ActivityChooserView;->mInitialActivityCount:I

    invoke-direct {p0, v0}, Landroid/widget/ActivityChooserView;->showPopupUnchecked(I)V

    .line 337
    const/4 v0, 0x1

    goto :goto_0
.end method
