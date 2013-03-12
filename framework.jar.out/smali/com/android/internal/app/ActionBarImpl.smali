.class public Lcom/android/internal/app/ActionBarImpl;
.super Landroid/app/ActionBar;
.source "ActionBarImpl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/app/ActionBarImpl$TabImpl;,
        Lcom/android/internal/app/ActionBarImpl$ActionModeImpl;
    }
.end annotation


# static fields
.field private static final CONTEXT_DISPLAY_NORMAL:I = 0x0

.field private static final CONTEXT_DISPLAY_SPLIT:I = 0x1

.field private static final INVALID_POSITION:I = -0x1

.field private static final TAG:Ljava/lang/String; = "ActionBarImpl"


# instance fields
.field mActionMode:Lcom/android/internal/app/ActionBarImpl$ActionModeImpl;

.field private mActionView:Lcom/android/internal/widget/ActionBarView;

.field private mActivity:Landroid/app/Activity;

.field private mContainerView:Lcom/android/internal/widget/ActionBarContainer;

.field private mContentView:Landroid/view/View;

.field private mContext:Landroid/content/Context;

.field private mContextDisplayMode:I

.field private mContextView:Lcom/android/internal/widget/ActionBarContextView;

.field private mCurWindowVisibility:I

.field private mCurrentShowAnim:Landroid/animation/Animator;

.field mDeferredDestroyActionMode:Landroid/view/ActionMode;

.field mDeferredModeDestroyCallback:Landroid/view/ActionMode$Callback;

.field private mDialog:Landroid/app/Dialog;

.field private mDisplayHomeAsUpSet:Z

.field final mHandler:Landroid/os/Handler;

.field private mHasEmbeddedTabs:Z

.field private mHiddenByApp:Z

.field private mHiddenBySystem:Z

.field final mHideListener:Landroid/animation/Animator$AnimatorListener;

.field private mLastMenuVisibility:Z

.field private mMenuVisibilityListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/ActionBar$OnMenuVisibilityListener;",
            ">;"
        }
    .end annotation
.end field

.field private mNowShowing:Z

.field private mOverlayLayout:Lcom/android/internal/widget/ActionBarOverlayLayout;

.field private mSavedTabPosition:I

.field private mSelectedTab:Lcom/android/internal/app/ActionBarImpl$TabImpl;

.field private mShowHideAnimationEnabled:Z

.field final mShowListener:Landroid/animation/Animator$AnimatorListener;

.field private mShowingForMode:Z

.field private mSplitView:Lcom/android/internal/widget/ActionBarContainer;

.field private mTabScrollView:Lcom/android/internal/widget/ScrollingTabContainerView;

.field mTabSelector:Ljava/lang/Runnable;

.field private mTabs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/app/ActionBarImpl$TabImpl;",
            ">;"
        }
    .end annotation
.end field

.field private mThemedContext:Landroid/content/Context;

.field private mTopVisibilityView:Landroid/view/ViewGroup;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 4
    .parameter "activity"

    .prologue
    .line 150
    invoke-direct {p0}, Landroid/app/ActionBar;-><init>()V

    .line 85
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/internal/app/ActionBarImpl;->mTabs:Ljava/util/ArrayList;

    .line 88
    const/4 v2, -0x1

    iput v2, p0, Lcom/android/internal/app/ActionBarImpl;->mSavedTabPosition:I

    .line 97
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/internal/app/ActionBarImpl;->mMenuVisibilityListeners:Ljava/util/ArrayList;

    .line 108
    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    iput-object v2, p0, Lcom/android/internal/app/ActionBarImpl;->mHandler:Landroid/os/Handler;

    .line 111
    const/4 v2, 0x0

    iput v2, p0, Lcom/android/internal/app/ActionBarImpl;->mCurWindowVisibility:I

    .line 117
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/internal/app/ActionBarImpl;->mNowShowing:Z

    .line 122
    new-instance v2, Lcom/android/internal/app/ActionBarImpl$1;

    invoke-direct {v2, p0}, Lcom/android/internal/app/ActionBarImpl$1;-><init>(Lcom/android/internal/app/ActionBarImpl;)V

    iput-object v2, p0, Lcom/android/internal/app/ActionBarImpl;->mHideListener:Landroid/animation/Animator$AnimatorListener;

    .line 142
    new-instance v2, Lcom/android/internal/app/ActionBarImpl$2;

    invoke-direct {v2, p0}, Lcom/android/internal/app/ActionBarImpl$2;-><init>(Lcom/android/internal/app/ActionBarImpl;)V

    iput-object v2, p0, Lcom/android/internal/app/ActionBarImpl;->mShowListener:Landroid/animation/Animator$AnimatorListener;

    .line 151
    iput-object p1, p0, Lcom/android/internal/app/ActionBarImpl;->mActivity:Landroid/app/Activity;

    .line 152
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    .line 153
    .local v1, window:Landroid/view/Window;
    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    .line 154
    .local v0, decor:Landroid/view/View;
    invoke-direct {p0, v0}, Lcom/android/internal/app/ActionBarImpl;->init(Landroid/view/View;)V

    .line 155
    iget-object v2, p0, Lcom/android/internal/app/ActionBarImpl;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/16 v3, 0x9

    invoke-virtual {v2, v3}, Landroid/view/Window;->hasFeature(I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 156
    const v2, 0x1020002

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/app/ActionBarImpl;->mContentView:Landroid/view/View;

    .line 158
    :cond_0
    return-void
.end method

.method public constructor <init>(Landroid/app/Dialog;)V
    .locals 1
    .parameter "dialog"

    .prologue
    .line 160
    invoke-direct {p0}, Landroid/app/ActionBar;-><init>()V

    .line 85
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/app/ActionBarImpl;->mTabs:Ljava/util/ArrayList;

    .line 88
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/app/ActionBarImpl;->mSavedTabPosition:I

    .line 97
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/app/ActionBarImpl;->mMenuVisibilityListeners:Ljava/util/ArrayList;

    .line 108
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/internal/app/ActionBarImpl;->mHandler:Landroid/os/Handler;

    .line 111
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/app/ActionBarImpl;->mCurWindowVisibility:I

    .line 117
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/app/ActionBarImpl;->mNowShowing:Z

    .line 122
    new-instance v0, Lcom/android/internal/app/ActionBarImpl$1;

    invoke-direct {v0, p0}, Lcom/android/internal/app/ActionBarImpl$1;-><init>(Lcom/android/internal/app/ActionBarImpl;)V

    iput-object v0, p0, Lcom/android/internal/app/ActionBarImpl;->mHideListener:Landroid/animation/Animator$AnimatorListener;

    .line 142
    new-instance v0, Lcom/android/internal/app/ActionBarImpl$2;

    invoke-direct {v0, p0}, Lcom/android/internal/app/ActionBarImpl$2;-><init>(Lcom/android/internal/app/ActionBarImpl;)V

    iput-object v0, p0, Lcom/android/internal/app/ActionBarImpl;->mShowListener:Landroid/animation/Animator$AnimatorListener;

    .line 161
    iput-object p1, p0, Lcom/android/internal/app/ActionBarImpl;->mDialog:Landroid/app/Dialog;

    .line 162
    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/app/ActionBarImpl;->init(Landroid/view/View;)V

    .line 163
    return-void
.end method

.method static synthetic access$000(Lcom/android/internal/app/ActionBarImpl;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 68
    iget-object v0, p0, Lcom/android/internal/app/ActionBarImpl;->mContentView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/internal/app/ActionBarImpl;)Landroid/view/ViewGroup;
    .locals 1
    .parameter "x0"

    .prologue
    .line 68
    iget-object v0, p0, Lcom/android/internal/app/ActionBarImpl;->mTopVisibilityView:Landroid/view/ViewGroup;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/internal/app/ActionBarImpl;)Lcom/android/internal/widget/ActionBarContextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 68
    iget-object v0, p0, Lcom/android/internal/app/ActionBarImpl;->mContextView:Lcom/android/internal/widget/ActionBarContextView;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/internal/app/ActionBarImpl;)Lcom/android/internal/widget/ActionBarView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 68
    iget-object v0, p0, Lcom/android/internal/app/ActionBarImpl;->mActionView:Lcom/android/internal/widget/ActionBarView;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/internal/app/ActionBarImpl;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 68
    iget-object v0, p0, Lcom/android/internal/app/ActionBarImpl;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/internal/app/ActionBarImpl;)Lcom/android/internal/widget/ScrollingTabContainerView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 68
    iget-object v0, p0, Lcom/android/internal/app/ActionBarImpl;->mTabScrollView:Lcom/android/internal/widget/ScrollingTabContainerView;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/internal/app/ActionBarImpl;)Lcom/android/internal/widget/ActionBarContainer;
    .locals 1
    .parameter "x0"

    .prologue
    .line 68
    iget-object v0, p0, Lcom/android/internal/app/ActionBarImpl;->mSplitView:Lcom/android/internal/widget/ActionBarContainer;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/internal/app/ActionBarImpl;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 68
    iget v0, p0, Lcom/android/internal/app/ActionBarImpl;->mContextDisplayMode:I

    return v0
.end method

.method static synthetic access$400(Lcom/android/internal/app/ActionBarImpl;)Lcom/android/internal/widget/ActionBarContainer;
    .locals 1
    .parameter "x0"

    .prologue
    .line 68
    iget-object v0, p0, Lcom/android/internal/app/ActionBarImpl;->mContainerView:Lcom/android/internal/widget/ActionBarContainer;

    return-object v0
.end method

.method static synthetic access$502(Lcom/android/internal/app/ActionBarImpl;Landroid/animation/Animator;)Landroid/animation/Animator;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 68
    iput-object p1, p0, Lcom/android/internal/app/ActionBarImpl;->mCurrentShowAnim:Landroid/animation/Animator;

    return-object p1
.end method

.method static synthetic access$600(Lcom/android/internal/app/ActionBarImpl;)Lcom/android/internal/widget/ActionBarOverlayLayout;
    .locals 1
    .parameter "x0"

    .prologue
    .line 68
    iget-object v0, p0, Lcom/android/internal/app/ActionBarImpl;->mOverlayLayout:Lcom/android/internal/widget/ActionBarOverlayLayout;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/internal/app/ActionBarImpl;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 68
    iget-boolean v0, p0, Lcom/android/internal/app/ActionBarImpl;->mHiddenByApp:Z

    return v0
.end method

.method static synthetic access$800(Lcom/android/internal/app/ActionBarImpl;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 68
    iget-boolean v0, p0, Lcom/android/internal/app/ActionBarImpl;->mHiddenBySystem:Z

    return v0
.end method

.method static synthetic access$900(ZZZ)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 68
    invoke-static {p0, p1, p2}, Lcom/android/internal/app/ActionBarImpl;->checkShowingFlags(ZZZ)Z

    move-result v0

    return v0
.end method

.method private static checkShowingFlags(ZZZ)Z
    .locals 1
    .parameter "hiddenByApp"
    .parameter "hiddenBySystem"
    .parameter "showingForMode"

    .prologue
    const/4 v0, 0x1

    .line 658
    if-eqz p2, :cond_1

    .line 663
    :cond_0
    :goto_0
    return v0

    .line 660
    :cond_1
    if-nez p0, :cond_2

    if-eqz p1, :cond_0

    .line 661
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private cleanupTabs()V
    .locals 1

    .prologue
    .line 389
    iget-object v0, p0, Lcom/android/internal/app/ActionBarImpl;->mSelectedTab:Lcom/android/internal/app/ActionBarImpl$TabImpl;

    if-eqz v0, :cond_0

    .line 390
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/internal/app/ActionBarImpl;->selectTab(Landroid/app/ActionBar$Tab;)V

    .line 392
    :cond_0
    iget-object v0, p0, Lcom/android/internal/app/ActionBarImpl;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 393
    iget-object v0, p0, Lcom/android/internal/app/ActionBarImpl;->mTabScrollView:Lcom/android/internal/widget/ScrollingTabContainerView;

    if-eqz v0, :cond_1

    .line 394
    iget-object v0, p0, Lcom/android/internal/app/ActionBarImpl;->mTabScrollView:Lcom/android/internal/widget/ScrollingTabContainerView;

    invoke-virtual {v0}, Lcom/android/internal/widget/ScrollingTabContainerView;->removeAllTabs()V

    .line 396
    :cond_1
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/app/ActionBarImpl;->mSavedTabPosition:I

    .line 397
    return-void
.end method

.method private configureTab(Landroid/app/ActionBar$Tab;I)V
    .locals 6
    .parameter "tab"
    .parameter "position"

    .prologue
    .line 484
    move-object v3, p1

    check-cast v3, Lcom/android/internal/app/ActionBarImpl$TabImpl;

    .line 485
    .local v3, tabi:Lcom/android/internal/app/ActionBarImpl$TabImpl;
    invoke-virtual {v3}, Lcom/android/internal/app/ActionBarImpl$TabImpl;->getCallback()Landroid/app/ActionBar$TabListener;

    move-result-object v0

    .line 487
    .local v0, callback:Landroid/app/ActionBar$TabListener;
    if-nez v0, :cond_0

    .line 488
    new-instance v4, Ljava/lang/IllegalStateException;

    const-string v5, "Action Bar Tab must have a Callback"

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 491
    :cond_0
    invoke-virtual {v3, p2}, Lcom/android/internal/app/ActionBarImpl$TabImpl;->setPosition(I)V

    .line 492
    iget-object v4, p0, Lcom/android/internal/app/ActionBarImpl;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v4, p2, v3}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 494
    iget-object v4, p0, Lcom/android/internal/app/ActionBarImpl;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 495
    .local v1, count:I
    add-int/lit8 v2, p2, 0x1

    .local v2, i:I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 496
    iget-object v4, p0, Lcom/android/internal/app/ActionBarImpl;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/app/ActionBarImpl$TabImpl;

    invoke-virtual {v4, v2}, Lcom/android/internal/app/ActionBarImpl$TabImpl;->setPosition(I)V

    .line 495
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 498
    :cond_1
    return-void
.end method

.method private ensureTabsExist()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 256
    iget-object v1, p0, Lcom/android/internal/app/ActionBarImpl;->mTabScrollView:Lcom/android/internal/widget/ScrollingTabContainerView;

    if-eqz v1, :cond_0

    .line 277
    :goto_0
    return-void

    .line 260
    :cond_0
    new-instance v0, Lcom/android/internal/widget/ScrollingTabContainerView;

    iget-object v1, p0, Lcom/android/internal/app/ActionBarImpl;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/internal/widget/ScrollingTabContainerView;-><init>(Landroid/content/Context;)V

    .line 262
    .local v0, tabScroller:Lcom/android/internal/widget/ScrollingTabContainerView;
    iget-boolean v1, p0, Lcom/android/internal/app/ActionBarImpl;->mHasEmbeddedTabs:Z

    if-eqz v1, :cond_1

    .line 263
    invoke-virtual {v0, v3}, Lcom/android/internal/widget/ScrollingTabContainerView;->setVisibility(I)V

    .line 264
    iget-object v1, p0, Lcom/android/internal/app/ActionBarImpl;->mActionView:Lcom/android/internal/widget/ActionBarView;

    invoke-virtual {v1, v0}, Lcom/android/internal/widget/ActionBarView;->setEmbeddedTabView(Lcom/android/internal/widget/ScrollingTabContainerView;)V

    .line 276
    :goto_1
    iput-object v0, p0, Lcom/android/internal/app/ActionBarImpl;->mTabScrollView:Lcom/android/internal/widget/ScrollingTabContainerView;

    goto :goto_0

    .line 266
    :cond_1
    invoke-virtual {p0}, Lcom/android/internal/app/ActionBarImpl;->getNavigationMode()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_3

    .line 267
    invoke-virtual {v0, v3}, Lcom/android/internal/widget/ScrollingTabContainerView;->setVisibility(I)V

    .line 268
    iget-object v1, p0, Lcom/android/internal/app/ActionBarImpl;->mOverlayLayout:Lcom/android/internal/widget/ActionBarOverlayLayout;

    if-eqz v1, :cond_2

    .line 269
    iget-object v1, p0, Lcom/android/internal/app/ActionBarImpl;->mOverlayLayout:Lcom/android/internal/widget/ActionBarOverlayLayout;

    invoke-virtual {v1}, Lcom/android/internal/widget/ActionBarOverlayLayout;->requestFitSystemWindows()V

    .line 274
    :cond_2
    :goto_2
    iget-object v1, p0, Lcom/android/internal/app/ActionBarImpl;->mContainerView:Lcom/android/internal/widget/ActionBarContainer;

    invoke-virtual {v1, v0}, Lcom/android/internal/widget/ActionBarContainer;->setTabContainer(Lcom/android/internal/widget/ScrollingTabContainerView;)V

    goto :goto_1

    .line 272
    :cond_3
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/ScrollingTabContainerView;->setVisibility(I)V

    goto :goto_2
.end method

.method private hideForActionMode()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 640
    iget-boolean v0, p0, Lcom/android/internal/app/ActionBarImpl;->mShowingForMode:Z

    if-eqz v0, :cond_1

    .line 641
    iput-boolean v1, p0, Lcom/android/internal/app/ActionBarImpl;->mShowingForMode:Z

    .line 642
    iget-object v0, p0, Lcom/android/internal/app/ActionBarImpl;->mOverlayLayout:Lcom/android/internal/widget/ActionBarOverlayLayout;

    if-eqz v0, :cond_0

    .line 643
    iget-object v0, p0, Lcom/android/internal/app/ActionBarImpl;->mOverlayLayout:Lcom/android/internal/widget/ActionBarOverlayLayout;

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/ActionBarOverlayLayout;->setShowingForActionMode(Z)V

    .line 645
    :cond_0
    invoke-direct {p0, v1}, Lcom/android/internal/app/ActionBarImpl;->updateVisibility(Z)V

    .line 647
    :cond_1
    return-void
.end method

.method private init(Landroid/view/View;)V
    .locals 7
    .parameter "decor"

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 166
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/app/ActionBarImpl;->mContext:Landroid/content/Context;

    .line 167
    const v3, 0x10203fa

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/internal/widget/ActionBarOverlayLayout;

    iput-object v3, p0, Lcom/android/internal/app/ActionBarImpl;->mOverlayLayout:Lcom/android/internal/widget/ActionBarOverlayLayout;

    .line 169
    iget-object v3, p0, Lcom/android/internal/app/ActionBarImpl;->mOverlayLayout:Lcom/android/internal/widget/ActionBarOverlayLayout;

    if-eqz v3, :cond_0

    .line 170
    iget-object v3, p0, Lcom/android/internal/app/ActionBarImpl;->mOverlayLayout:Lcom/android/internal/widget/ActionBarOverlayLayout;

    invoke-virtual {v3, p0}, Lcom/android/internal/widget/ActionBarOverlayLayout;->setActionBar(Lcom/android/internal/app/ActionBarImpl;)V

    .line 172
    :cond_0
    const v3, 0x10203f7

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/internal/widget/ActionBarView;

    iput-object v3, p0, Lcom/android/internal/app/ActionBarImpl;->mActionView:Lcom/android/internal/widget/ActionBarView;

    .line 173
    const v3, 0x10203f8

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/internal/widget/ActionBarContextView;

    iput-object v3, p0, Lcom/android/internal/app/ActionBarImpl;->mContextView:Lcom/android/internal/widget/ActionBarContextView;

    .line 175
    const v3, 0x10203f6

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/internal/widget/ActionBarContainer;

    iput-object v3, p0, Lcom/android/internal/app/ActionBarImpl;->mContainerView:Lcom/android/internal/widget/ActionBarContainer;

    .line 177
    const v3, 0x10203fb

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    iput-object v3, p0, Lcom/android/internal/app/ActionBarImpl;->mTopVisibilityView:Landroid/view/ViewGroup;

    .line 179
    iget-object v3, p0, Lcom/android/internal/app/ActionBarImpl;->mTopVisibilityView:Landroid/view/ViewGroup;

    if-nez v3, :cond_1

    .line 180
    iget-object v3, p0, Lcom/android/internal/app/ActionBarImpl;->mContainerView:Lcom/android/internal/widget/ActionBarContainer;

    iput-object v3, p0, Lcom/android/internal/app/ActionBarImpl;->mTopVisibilityView:Landroid/view/ViewGroup;

    .line 182
    :cond_1
    const v3, 0x10203f9

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/internal/widget/ActionBarContainer;

    iput-object v3, p0, Lcom/android/internal/app/ActionBarImpl;->mSplitView:Lcom/android/internal/widget/ActionBarContainer;

    .line 185
    iget-object v3, p0, Lcom/android/internal/app/ActionBarImpl;->mActionView:Lcom/android/internal/widget/ActionBarView;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/internal/app/ActionBarImpl;->mContextView:Lcom/android/internal/widget/ActionBarContextView;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/internal/app/ActionBarImpl;->mContainerView:Lcom/android/internal/widget/ActionBarContainer;

    if-nez v3, :cond_3

    .line 186
    :cond_2
    new-instance v3, Ljava/lang/IllegalStateException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " can only be used "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "with a compatible window decor layout"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 190
    :cond_3
    iget-object v3, p0, Lcom/android/internal/app/ActionBarImpl;->mActionView:Lcom/android/internal/widget/ActionBarView;

    iget-object v6, p0, Lcom/android/internal/app/ActionBarImpl;->mContextView:Lcom/android/internal/widget/ActionBarContextView;

    invoke-virtual {v3, v6}, Lcom/android/internal/widget/ActionBarView;->setContextView(Lcom/android/internal/widget/ActionBarContextView;)V

    .line 191
    iget-object v3, p0, Lcom/android/internal/app/ActionBarImpl;->mActionView:Lcom/android/internal/widget/ActionBarView;

    invoke-virtual {v3}, Lcom/android/internal/widget/ActionBarView;->isSplitActionBar()Z

    move-result v3

    if-eqz v3, :cond_7

    move v3, v4

    :goto_0
    iput v3, p0, Lcom/android/internal/app/ActionBarImpl;->mContextDisplayMode:I

    .line 195
    iget-object v3, p0, Lcom/android/internal/app/ActionBarImpl;->mActionView:Lcom/android/internal/widget/ActionBarView;

    invoke-virtual {v3}, Lcom/android/internal/widget/ActionBarView;->getDisplayOptions()I

    move-result v1

    .line 196
    .local v1, current:I
    and-int/lit8 v3, v1, 0x4

    if-eqz v3, :cond_8

    move v2, v4

    .line 197
    .local v2, homeAsUp:Z
    :goto_1
    if-eqz v2, :cond_4

    .line 198
    iput-boolean v4, p0, Lcom/android/internal/app/ActionBarImpl;->mDisplayHomeAsUpSet:Z

    .line 201
    :cond_4
    iget-object v3, p0, Lcom/android/internal/app/ActionBarImpl;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/internal/view/ActionBarPolicy;->get(Landroid/content/Context;)Lcom/android/internal/view/ActionBarPolicy;

    move-result-object v0

    .line 202
    .local v0, abp:Lcom/android/internal/view/ActionBarPolicy;
    invoke-virtual {v0}, Lcom/android/internal/view/ActionBarPolicy;->enableHomeButtonByDefault()Z

    move-result v3

    if-nez v3, :cond_5

    if-eqz v2, :cond_6

    :cond_5
    move v5, v4

    :cond_6
    invoke-virtual {p0, v5}, Lcom/android/internal/app/ActionBarImpl;->setHomeButtonEnabled(Z)V

    .line 203
    invoke-virtual {v0}, Lcom/android/internal/view/ActionBarPolicy;->hasEmbeddedTabs()Z

    move-result v3

    invoke-direct {p0, v3}, Lcom/android/internal/app/ActionBarImpl;->setHasEmbeddedTabs(Z)V

    .line 204
    return-void

    .end local v0           #abp:Lcom/android/internal/view/ActionBarPolicy;
    .end local v1           #current:I
    .end local v2           #homeAsUp:Z
    :cond_7
    move v3, v5

    .line 191
    goto :goto_0

    .restart local v1       #current:I
    :cond_8
    move v2, v5

    .line 196
    goto :goto_1
.end method

.method private setHasEmbeddedTabs(Z)V
    .locals 8
    .parameter "hasEmbeddedTabs"

    .prologue
    const/4 v7, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 212
    iget-boolean v1, p0, Lcom/android/internal/app/ActionBarImpl;->mHasEmbeddedTabs:Z

    .line 215
    .local v1, mOldHasEmbeddedTabs:Z
    new-instance v2, Landroid/util/TypedValue;

    invoke-direct {v2}, Landroid/util/TypedValue;-><init>()V

    .line 216
    .local v2, outValue:Landroid/util/TypedValue;
    iget-object v5, p0, Lcom/android/internal/app/ActionBarImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v5

    const v6, 0x10103b0

    invoke-virtual {v5, v6, v2, v4}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 217
    iget v5, v2, Landroid/util/TypedValue;->data:I

    if-eqz v5, :cond_3

    .line 218
    iput-boolean v4, p0, Lcom/android/internal/app/ActionBarImpl;->mHasEmbeddedTabs:Z

    .line 224
    :goto_0
    iget-object v5, p0, Lcom/android/internal/app/ActionBarImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v5

    const v6, 0x10103fd

    invoke-virtual {v5, v6, v2, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 225
    iget v5, v2, Landroid/util/TypedValue;->data:I

    if-eqz v5, :cond_0

    iget-boolean v5, p0, Lcom/android/internal/app/ActionBarImpl;->mHasEmbeddedTabs:Z

    if-eq v1, v5, :cond_1

    .line 227
    :cond_0
    iget-boolean v5, p0, Lcom/android/internal/app/ActionBarImpl;->mHasEmbeddedTabs:Z

    if-nez v5, :cond_4

    .line 228
    iget-object v5, p0, Lcom/android/internal/app/ActionBarImpl;->mActionView:Lcom/android/internal/widget/ActionBarView;

    invoke-virtual {v5, v7}, Lcom/android/internal/widget/ActionBarView;->setEmbeddedTabView(Lcom/android/internal/widget/ScrollingTabContainerView;)V

    .line 229
    iget-object v5, p0, Lcom/android/internal/app/ActionBarImpl;->mContainerView:Lcom/android/internal/widget/ActionBarContainer;

    iget-object v6, p0, Lcom/android/internal/app/ActionBarImpl;->mTabScrollView:Lcom/android/internal/widget/ScrollingTabContainerView;

    invoke-virtual {v5, v6}, Lcom/android/internal/widget/ActionBarContainer;->setTabContainer(Lcom/android/internal/widget/ScrollingTabContainerView;)V

    .line 237
    :cond_1
    :goto_1
    invoke-virtual {p0}, Lcom/android/internal/app/ActionBarImpl;->getNavigationMode()I

    move-result v5

    const/4 v6, 0x2

    if-ne v5, v6, :cond_5

    move v0, v3

    .line 238
    .local v0, isInTabMode:Z
    :goto_2
    iget-object v5, p0, Lcom/android/internal/app/ActionBarImpl;->mTabScrollView:Lcom/android/internal/widget/ScrollingTabContainerView;

    if-eqz v5, :cond_2

    .line 239
    if-eqz v0, :cond_6

    .line 240
    iget-object v5, p0, Lcom/android/internal/app/ActionBarImpl;->mTabScrollView:Lcom/android/internal/widget/ScrollingTabContainerView;

    invoke-virtual {v5, v4}, Lcom/android/internal/widget/ScrollingTabContainerView;->setVisibility(I)V

    .line 241
    iget-object v5, p0, Lcom/android/internal/app/ActionBarImpl;->mOverlayLayout:Lcom/android/internal/widget/ActionBarOverlayLayout;

    if-eqz v5, :cond_2

    .line 242
    iget-object v5, p0, Lcom/android/internal/app/ActionBarImpl;->mOverlayLayout:Lcom/android/internal/widget/ActionBarOverlayLayout;

    invoke-virtual {v5}, Lcom/android/internal/widget/ActionBarOverlayLayout;->requestFitSystemWindows()V

    .line 248
    :cond_2
    :goto_3
    iget-object v5, p0, Lcom/android/internal/app/ActionBarImpl;->mActionView:Lcom/android/internal/widget/ActionBarView;

    iget-boolean v6, p0, Lcom/android/internal/app/ActionBarImpl;->mHasEmbeddedTabs:Z

    if-nez v6, :cond_7

    if-eqz v0, :cond_7

    :goto_4
    invoke-virtual {v5, v3}, Lcom/android/internal/widget/ActionBarView;->setCollapsable(Z)V

    .line 249
    return-void

    .line 220
    .end local v0           #isInTabMode:Z
    :cond_3
    iput-boolean p1, p0, Lcom/android/internal/app/ActionBarImpl;->mHasEmbeddedTabs:Z

    goto :goto_0

    .line 231
    :cond_4
    iget-object v5, p0, Lcom/android/internal/app/ActionBarImpl;->mContainerView:Lcom/android/internal/widget/ActionBarContainer;

    invoke-virtual {v5, v7}, Lcom/android/internal/widget/ActionBarContainer;->setTabContainer(Lcom/android/internal/widget/ScrollingTabContainerView;)V

    .line 232
    iget-object v5, p0, Lcom/android/internal/app/ActionBarImpl;->mActionView:Lcom/android/internal/widget/ActionBarView;

    iget-object v6, p0, Lcom/android/internal/app/ActionBarImpl;->mTabScrollView:Lcom/android/internal/widget/ScrollingTabContainerView;

    invoke-virtual {v5, v6}, Lcom/android/internal/widget/ActionBarView;->setEmbeddedTabView(Lcom/android/internal/widget/ScrollingTabContainerView;)V

    goto :goto_1

    :cond_5
    move v0, v4

    .line 237
    goto :goto_2

    .line 245
    .restart local v0       #isInTabMode:Z
    :cond_6
    iget-object v5, p0, Lcom/android/internal/app/ActionBarImpl;->mTabScrollView:Lcom/android/internal/widget/ScrollingTabContainerView;

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Lcom/android/internal/widget/ScrollingTabContainerView;->setVisibility(I)V

    goto :goto_3

    :cond_7
    move v3, v4

    .line 248
    goto :goto_4
.end method

.method private showForActionMode()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 615
    iget-boolean v0, p0, Lcom/android/internal/app/ActionBarImpl;->mShowingForMode:Z

    if-nez v0, :cond_1

    .line 616
    iput-boolean v1, p0, Lcom/android/internal/app/ActionBarImpl;->mShowingForMode:Z

    .line 617
    iget-object v0, p0, Lcom/android/internal/app/ActionBarImpl;->mOverlayLayout:Lcom/android/internal/widget/ActionBarOverlayLayout;

    if-eqz v0, :cond_0

    .line 618
    iget-object v0, p0, Lcom/android/internal/app/ActionBarImpl;->mOverlayLayout:Lcom/android/internal/widget/ActionBarOverlayLayout;

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/ActionBarOverlayLayout;->setShowingForActionMode(Z)V

    .line 620
    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/internal/app/ActionBarImpl;->updateVisibility(Z)V

    .line 622
    :cond_1
    return-void
.end method

.method private updateVisibility(Z)V
    .locals 4
    .parameter "fromSystem"

    .prologue
    .line 669
    iget-boolean v1, p0, Lcom/android/internal/app/ActionBarImpl;->mHiddenByApp:Z

    iget-boolean v2, p0, Lcom/android/internal/app/ActionBarImpl;->mHiddenBySystem:Z

    iget-boolean v3, p0, Lcom/android/internal/app/ActionBarImpl;->mShowingForMode:Z

    invoke-static {v1, v2, v3}, Lcom/android/internal/app/ActionBarImpl;->checkShowingFlags(ZZZ)Z

    move-result v0

    .line 672
    .local v0, shown:Z
    if-eqz v0, :cond_1

    .line 673
    iget-boolean v1, p0, Lcom/android/internal/app/ActionBarImpl;->mNowShowing:Z

    if-nez v1, :cond_0

    .line 674
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/internal/app/ActionBarImpl;->mNowShowing:Z

    .line 675
    invoke-virtual {p0, p1}, Lcom/android/internal/app/ActionBarImpl;->doShow(Z)V

    .line 683
    :cond_0
    :goto_0
    return-void

    .line 678
    :cond_1
    iget-boolean v1, p0, Lcom/android/internal/app/ActionBarImpl;->mNowShowing:Z

    if-eqz v1, :cond_0

    .line 679
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/internal/app/ActionBarImpl;->mNowShowing:Z

    .line 680
    invoke-virtual {p0, p1}, Lcom/android/internal/app/ActionBarImpl;->doHide(Z)V

    goto :goto_0
.end method


# virtual methods
.method public addOnMenuVisibilityListener(Landroid/app/ActionBar$OnMenuVisibilityListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 306
    iget-object v0, p0, Lcom/android/internal/app/ActionBarImpl;->mMenuVisibilityListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 307
    return-void
.end method

.method public addTab(Landroid/app/ActionBar$Tab;)V
    .locals 1
    .parameter "tab"

    .prologue
    .line 502
    iget-object v0, p0, Lcom/android/internal/app/ActionBarImpl;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/android/internal/app/ActionBarImpl;->addTab(Landroid/app/ActionBar$Tab;Z)V

    .line 503
    return-void
.end method

.method public addTab(Landroid/app/ActionBar$Tab;I)V
    .locals 1
    .parameter "tab"
    .parameter "position"

    .prologue
    .line 507
    iget-object v0, p0, Lcom/android/internal/app/ActionBarImpl;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/internal/app/ActionBarImpl;->addTab(Landroid/app/ActionBar$Tab;IZ)V

    .line 508
    return-void
.end method

.method public addTab(Landroid/app/ActionBar$Tab;IZ)V
    .locals 1
    .parameter "tab"
    .parameter "position"
    .parameter "setSelected"

    .prologue
    .line 522
    invoke-direct {p0}, Lcom/android/internal/app/ActionBarImpl;->ensureTabsExist()V

    .line 523
    iget-object v0, p0, Lcom/android/internal/app/ActionBarImpl;->mTabScrollView:Lcom/android/internal/widget/ScrollingTabContainerView;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/widget/ScrollingTabContainerView;->addTab(Landroid/app/ActionBar$Tab;IZ)V

    .line 524
    invoke-direct {p0, p1, p2}, Lcom/android/internal/app/ActionBarImpl;->configureTab(Landroid/app/ActionBar$Tab;I)V

    .line 525
    if-eqz p3, :cond_0

    .line 526
    invoke-virtual {p0, p1}, Lcom/android/internal/app/ActionBarImpl;->selectTab(Landroid/app/ActionBar$Tab;)V

    .line 528
    :cond_0
    return-void
.end method

.method public addTab(Landroid/app/ActionBar$Tab;Z)V
    .locals 1
    .parameter "tab"
    .parameter "setSelected"

    .prologue
    .line 512
    invoke-direct {p0}, Lcom/android/internal/app/ActionBarImpl;->ensureTabsExist()V

    .line 513
    iget-object v0, p0, Lcom/android/internal/app/ActionBarImpl;->mTabScrollView:Lcom/android/internal/widget/ScrollingTabContainerView;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/widget/ScrollingTabContainerView;->addTab(Landroid/app/ActionBar$Tab;Z)V

    .line 514
    iget-object v0, p0, Lcom/android/internal/app/ActionBarImpl;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/android/internal/app/ActionBarImpl;->configureTab(Landroid/app/ActionBar$Tab;I)V

    .line 515
    if-eqz p2, :cond_0

    .line 516
    invoke-virtual {p0, p1}, Lcom/android/internal/app/ActionBarImpl;->selectTab(Landroid/app/ActionBar$Tab;)V

    .line 518
    :cond_0
    return-void
.end method

.method animateToMode(Z)V
    .locals 4
    .parameter "toActionMode"

    .prologue
    const/16 v1, 0x8

    const/4 v2, 0x0

    .line 791
    if-eqz p1, :cond_1

    .line 792
    invoke-direct {p0}, Lcom/android/internal/app/ActionBarImpl;->showForActionMode()V

    .line 797
    :goto_0
    iget-object v3, p0, Lcom/android/internal/app/ActionBarImpl;->mActionView:Lcom/android/internal/widget/ActionBarView;

    if-eqz p1, :cond_2

    move v0, v1

    :goto_1
    invoke-virtual {v3, v0}, Lcom/android/internal/widget/ActionBarView;->animateToVisibility(I)V

    .line 798
    iget-object v3, p0, Lcom/android/internal/app/ActionBarImpl;->mContextView:Lcom/android/internal/widget/ActionBarContextView;

    if-eqz p1, :cond_3

    move v0, v2

    :goto_2
    invoke-virtual {v3, v0}, Lcom/android/internal/widget/ActionBarContextView;->animateToVisibility(I)V

    .line 799
    iget-object v0, p0, Lcom/android/internal/app/ActionBarImpl;->mTabScrollView:Lcom/android/internal/widget/ScrollingTabContainerView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/app/ActionBarImpl;->mActionView:Lcom/android/internal/widget/ActionBarView;

    invoke-virtual {v0}, Lcom/android/internal/widget/ActionBarView;->hasEmbeddedTabs()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/app/ActionBarImpl;->mActionView:Lcom/android/internal/widget/ActionBarView;

    invoke-virtual {v0}, Lcom/android/internal/widget/ActionBarView;->isCollapsed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 800
    iget-object v0, p0, Lcom/android/internal/app/ActionBarImpl;->mTabScrollView:Lcom/android/internal/widget/ScrollingTabContainerView;

    if-eqz p1, :cond_4

    :goto_3
    invoke-virtual {v0, v1}, Lcom/android/internal/widget/ScrollingTabContainerView;->animateToVisibility(I)V

    .line 802
    :cond_0
    return-void

    .line 794
    :cond_1
    invoke-direct {p0}, Lcom/android/internal/app/ActionBarImpl;->hideForActionMode()V

    goto :goto_0

    :cond_2
    move v0, v2

    .line 797
    goto :goto_1

    :cond_3
    move v0, v1

    .line 798
    goto :goto_2

    :cond_4
    move v1, v2

    .line 800
    goto :goto_3
.end method

.method completeDeferredDestroyActionMode()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 280
    iget-object v0, p0, Lcom/android/internal/app/ActionBarImpl;->mDeferredModeDestroyCallback:Landroid/view/ActionMode$Callback;

    if-eqz v0, :cond_0

    .line 281
    iget-object v0, p0, Lcom/android/internal/app/ActionBarImpl;->mDeferredModeDestroyCallback:Landroid/view/ActionMode$Callback;

    iget-object v1, p0, Lcom/android/internal/app/ActionBarImpl;->mDeferredDestroyActionMode:Landroid/view/ActionMode;

    invoke-interface {v0, v1}, Landroid/view/ActionMode$Callback;->onDestroyActionMode(Landroid/view/ActionMode;)V

    .line 282
    iput-object v2, p0, Lcom/android/internal/app/ActionBarImpl;->mDeferredDestroyActionMode:Landroid/view/ActionMode;

    .line 283
    iput-object v2, p0, Lcom/android/internal/app/ActionBarImpl;->mDeferredModeDestroyCallback:Landroid/view/ActionMode$Callback;

    .line 285
    :cond_0
    return-void
.end method

.method public dispatchMenuVisibilityChanged(Z)V
    .locals 3
    .parameter "isVisible"

    .prologue
    .line 314
    iget-boolean v2, p0, Lcom/android/internal/app/ActionBarImpl;->mLastMenuVisibility:Z

    if-ne p1, v2, :cond_1

    .line 323
    :cond_0
    return-void

    .line 317
    :cond_1
    iput-boolean p1, p0, Lcom/android/internal/app/ActionBarImpl;->mLastMenuVisibility:Z

    .line 319
    iget-object v2, p0, Lcom/android/internal/app/ActionBarImpl;->mMenuVisibilityListeners:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 320
    .local v0, count:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 321
    iget-object v2, p0, Lcom/android/internal/app/ActionBarImpl;->mMenuVisibilityListeners:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActionBar$OnMenuVisibilityListener;

    invoke-interface {v2, p1}, Landroid/app/ActionBar$OnMenuVisibilityListener;->onMenuVisibilityChanged(Z)V

    .line 320
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public doHide(Z)V
    .locals 11
    .parameter "fromSystem"

    .prologue
    const/4 v7, 0x2

    const/high16 v10, 0x3f80

    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 745
    iget-object v4, p0, Lcom/android/internal/app/ActionBarImpl;->mCurrentShowAnim:Landroid/animation/Animator;

    if-eqz v4, :cond_0

    .line 746
    iget-object v4, p0, Lcom/android/internal/app/ActionBarImpl;->mCurrentShowAnim:Landroid/animation/Animator;

    invoke-virtual {v4}, Landroid/animation/Animator;->end()V

    .line 749
    :cond_0
    iget v4, p0, Lcom/android/internal/app/ActionBarImpl;->mCurWindowVisibility:I

    if-nez v4, :cond_5

    iget-boolean v4, p0, Lcom/android/internal/app/ActionBarImpl;->mShowHideAnimationEnabled:Z

    if-nez v4, :cond_1

    if-eqz p1, :cond_5

    .line 751
    :cond_1
    iget-object v4, p0, Lcom/android/internal/app/ActionBarImpl;->mTopVisibilityView:Landroid/view/ViewGroup;

    invoke-virtual {v4, v10}, Landroid/view/ViewGroup;->setAlpha(F)V

    .line 752
    iget-object v4, p0, Lcom/android/internal/app/ActionBarImpl;->mContainerView:Lcom/android/internal/widget/ActionBarContainer;

    invoke-virtual {v4, v8}, Lcom/android/internal/widget/ActionBarContainer;->setTransitioning(Z)V

    .line 753
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    .line 754
    .local v0, anim:Landroid/animation/AnimatorSet;
    iget-object v4, p0, Lcom/android/internal/app/ActionBarImpl;->mTopVisibilityView:Landroid/view/ViewGroup;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getHeight()I

    move-result v4

    neg-int v4, v4

    int-to-float v2, v4

    .line 755
    .local v2, endingY:F
    if-eqz p1, :cond_2

    .line 756
    new-array v3, v7, [I

    fill-array-data v3, :array_0

    .line 757
    .local v3, topLeft:[I
    iget-object v4, p0, Lcom/android/internal/app/ActionBarImpl;->mTopVisibilityView:Landroid/view/ViewGroup;

    invoke-virtual {v4, v3}, Landroid/view/ViewGroup;->getLocationInWindow([I)V

    .line 758
    aget v4, v3, v8

    int-to-float v4, v4

    sub-float/2addr v2, v4

    .line 760
    .end local v3           #topLeft:[I
    :cond_2
    iget-object v4, p0, Lcom/android/internal/app/ActionBarImpl;->mTopVisibilityView:Landroid/view/ViewGroup;

    const-string/jumbo v5, "translationY"

    new-array v6, v8, [F

    aput v2, v6, v9

    invoke-static {v4, v5, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v1

    .line 762
    .local v1, b:Landroid/animation/AnimatorSet$Builder;
    iget-object v4, p0, Lcom/android/internal/app/ActionBarImpl;->mContentView:Landroid/view/View;

    if-eqz v4, :cond_3

    .line 763
    iget-object v4, p0, Lcom/android/internal/app/ActionBarImpl;->mContentView:Landroid/view/View;

    const-string/jumbo v5, "translationY"

    new-array v6, v7, [F

    const/4 v7, 0x0

    aput v7, v6, v9

    aput v2, v6, v8

    invoke-static {v4, v5, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 766
    :cond_3
    iget-object v4, p0, Lcom/android/internal/app/ActionBarImpl;->mSplitView:Lcom/android/internal/widget/ActionBarContainer;

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/android/internal/app/ActionBarImpl;->mSplitView:Lcom/android/internal/widget/ActionBarContainer;

    invoke-virtual {v4}, Lcom/android/internal/widget/ActionBarContainer;->getVisibility()I

    move-result v4

    if-nez v4, :cond_4

    .line 767
    iget-object v4, p0, Lcom/android/internal/app/ActionBarImpl;->mSplitView:Lcom/android/internal/widget/ActionBarContainer;

    invoke-virtual {v4, v10}, Lcom/android/internal/widget/ActionBarContainer;->setAlpha(F)V

    .line 768
    iget-object v4, p0, Lcom/android/internal/app/ActionBarImpl;->mSplitView:Lcom/android/internal/widget/ActionBarContainer;

    const-string/jumbo v5, "translationY"

    new-array v6, v8, [F

    iget-object v7, p0, Lcom/android/internal/app/ActionBarImpl;->mSplitView:Lcom/android/internal/widget/ActionBarContainer;

    invoke-virtual {v7}, Lcom/android/internal/widget/ActionBarContainer;->getHeight()I

    move-result v7

    int-to-float v7, v7

    aput v7, v6, v9

    invoke-static {v4, v5, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 771
    :cond_4
    iget-object v4, p0, Lcom/android/internal/app/ActionBarImpl;->mContext:Landroid/content/Context;

    const v5, 0x10c0002

    invoke-static {v4, v5}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 773
    const-wide/16 v4, 0xfa

    invoke-virtual {v0, v4, v5}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 774
    iget-object v4, p0, Lcom/android/internal/app/ActionBarImpl;->mHideListener:Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {v0, v4}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 775
    iput-object v0, p0, Lcom/android/internal/app/ActionBarImpl;->mCurrentShowAnim:Landroid/animation/Animator;

    .line 776
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 780
    .end local v0           #anim:Landroid/animation/AnimatorSet;
    .end local v1           #b:Landroid/animation/AnimatorSet$Builder;
    .end local v2           #endingY:F
    :goto_0
    return-void

    .line 778
    :cond_5
    iget-object v4, p0, Lcom/android/internal/app/ActionBarImpl;->mHideListener:Landroid/animation/Animator$AnimatorListener;

    const/4 v5, 0x0

    invoke-interface {v4, v5}, Landroid/animation/Animator$AnimatorListener;->onAnimationEnd(Landroid/animation/Animator;)V

    goto :goto_0

    .line 756
    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public doShow(Z)V
    .locals 11
    .parameter "fromSystem"

    .prologue
    const/4 v10, 0x2

    const/high16 v5, 0x3f80

    const/4 v9, 0x1

    const/4 v8, 0x0

    const/4 v7, 0x0

    .line 686
    iget-object v4, p0, Lcom/android/internal/app/ActionBarImpl;->mCurrentShowAnim:Landroid/animation/Animator;

    if-eqz v4, :cond_0

    .line 687
    iget-object v4, p0, Lcom/android/internal/app/ActionBarImpl;->mCurrentShowAnim:Landroid/animation/Animator;

    invoke-virtual {v4}, Landroid/animation/Animator;->end()V

    .line 689
    :cond_0
    iget-object v4, p0, Lcom/android/internal/app/ActionBarImpl;->mTopVisibilityView:Landroid/view/ViewGroup;

    invoke-virtual {v4, v8}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 691
    iget v4, p0, Lcom/android/internal/app/ActionBarImpl;->mCurWindowVisibility:I

    if-nez v4, :cond_6

    iget-boolean v4, p0, Lcom/android/internal/app/ActionBarImpl;->mShowHideAnimationEnabled:Z

    if-nez v4, :cond_1

    if-eqz p1, :cond_6

    .line 693
    :cond_1
    iget-object v4, p0, Lcom/android/internal/app/ActionBarImpl;->mTopVisibilityView:Landroid/view/ViewGroup;

    invoke-virtual {v4, v7}, Landroid/view/ViewGroup;->setTranslationY(F)V

    .line 694
    iget-object v4, p0, Lcom/android/internal/app/ActionBarImpl;->mTopVisibilityView:Landroid/view/ViewGroup;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getHeight()I

    move-result v4

    neg-int v4, v4

    int-to-float v2, v4

    .line 695
    .local v2, startingY:F
    if-eqz p1, :cond_2

    .line 696
    new-array v3, v10, [I

    fill-array-data v3, :array_0

    .line 697
    .local v3, topLeft:[I
    iget-object v4, p0, Lcom/android/internal/app/ActionBarImpl;->mTopVisibilityView:Landroid/view/ViewGroup;

    invoke-virtual {v4, v3}, Landroid/view/ViewGroup;->getLocationInWindow([I)V

    .line 698
    aget v4, v3, v9

    int-to-float v4, v4

    sub-float/2addr v2, v4

    .line 700
    .end local v3           #topLeft:[I
    :cond_2
    iget-object v4, p0, Lcom/android/internal/app/ActionBarImpl;->mTopVisibilityView:Landroid/view/ViewGroup;

    invoke-virtual {v4, v2}, Landroid/view/ViewGroup;->setTranslationY(F)V

    .line 701
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    .line 702
    .local v0, anim:Landroid/animation/AnimatorSet;
    iget-object v4, p0, Lcom/android/internal/app/ActionBarImpl;->mTopVisibilityView:Landroid/view/ViewGroup;

    const-string/jumbo v5, "translationY"

    new-array v6, v9, [F

    aput v7, v6, v8

    invoke-static {v4, v5, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v1

    .line 704
    .local v1, b:Landroid/animation/AnimatorSet$Builder;
    iget-object v4, p0, Lcom/android/internal/app/ActionBarImpl;->mContentView:Landroid/view/View;

    if-eqz v4, :cond_3

    .line 705
    iget-object v4, p0, Lcom/android/internal/app/ActionBarImpl;->mContentView:Landroid/view/View;

    const-string/jumbo v5, "translationY"

    new-array v6, v10, [F

    aput v2, v6, v8

    aput v7, v6, v9

    invoke-static {v4, v5, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 708
    :cond_3
    iget-object v4, p0, Lcom/android/internal/app/ActionBarImpl;->mSplitView:Lcom/android/internal/widget/ActionBarContainer;

    if-eqz v4, :cond_4

    iget v4, p0, Lcom/android/internal/app/ActionBarImpl;->mContextDisplayMode:I

    if-ne v4, v9, :cond_4

    .line 709
    iget-object v4, p0, Lcom/android/internal/app/ActionBarImpl;->mSplitView:Lcom/android/internal/widget/ActionBarContainer;

    iget-object v5, p0, Lcom/android/internal/app/ActionBarImpl;->mSplitView:Lcom/android/internal/widget/ActionBarContainer;

    invoke-virtual {v5}, Lcom/android/internal/widget/ActionBarContainer;->getHeight()I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {v4, v5}, Lcom/android/internal/widget/ActionBarContainer;->setTranslationY(F)V

    .line 710
    iget-object v4, p0, Lcom/android/internal/app/ActionBarImpl;->mSplitView:Lcom/android/internal/widget/ActionBarContainer;

    invoke-virtual {v4, v8}, Lcom/android/internal/widget/ActionBarContainer;->setVisibility(I)V

    .line 711
    iget-object v4, p0, Lcom/android/internal/app/ActionBarImpl;->mSplitView:Lcom/android/internal/widget/ActionBarContainer;

    const-string/jumbo v5, "translationY"

    new-array v6, v9, [F

    aput v7, v6, v8

    invoke-static {v4, v5, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 713
    :cond_4
    iget-object v4, p0, Lcom/android/internal/app/ActionBarImpl;->mContext:Landroid/content/Context;

    const v5, 0x10c0003

    invoke-static {v4, v5}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 715
    const-wide/16 v4, 0xfa

    invoke-virtual {v0, v4, v5}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 723
    iget-object v4, p0, Lcom/android/internal/app/ActionBarImpl;->mShowListener:Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {v0, v4}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 724
    iput-object v0, p0, Lcom/android/internal/app/ActionBarImpl;->mCurrentShowAnim:Landroid/animation/Animator;

    .line 725
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 739
    .end local v0           #anim:Landroid/animation/AnimatorSet;
    .end local v1           #b:Landroid/animation/AnimatorSet$Builder;
    .end local v2           #startingY:F
    :goto_0
    iget-object v4, p0, Lcom/android/internal/app/ActionBarImpl;->mOverlayLayout:Lcom/android/internal/widget/ActionBarOverlayLayout;

    if-eqz v4, :cond_5

    .line 740
    iget-object v4, p0, Lcom/android/internal/app/ActionBarImpl;->mOverlayLayout:Lcom/android/internal/widget/ActionBarOverlayLayout;

    invoke-virtual {v4}, Lcom/android/internal/widget/ActionBarOverlayLayout;->requestFitSystemWindows()V

    .line 742
    :cond_5
    return-void

    .line 727
    :cond_6
    iget-object v4, p0, Lcom/android/internal/app/ActionBarImpl;->mTopVisibilityView:Landroid/view/ViewGroup;

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->setAlpha(F)V

    .line 728
    iget-object v4, p0, Lcom/android/internal/app/ActionBarImpl;->mTopVisibilityView:Landroid/view/ViewGroup;

    invoke-virtual {v4, v7}, Landroid/view/ViewGroup;->setTranslationY(F)V

    .line 729
    iget-object v4, p0, Lcom/android/internal/app/ActionBarImpl;->mContentView:Landroid/view/View;

    if-eqz v4, :cond_7

    .line 730
    iget-object v4, p0, Lcom/android/internal/app/ActionBarImpl;->mContentView:Landroid/view/View;

    invoke-virtual {v4, v7}, Landroid/view/View;->setTranslationY(F)V

    .line 732
    :cond_7
    iget-object v4, p0, Lcom/android/internal/app/ActionBarImpl;->mSplitView:Lcom/android/internal/widget/ActionBarContainer;

    if-eqz v4, :cond_8

    iget v4, p0, Lcom/android/internal/app/ActionBarImpl;->mContextDisplayMode:I

    if-ne v4, v9, :cond_8

    .line 733
    iget-object v4, p0, Lcom/android/internal/app/ActionBarImpl;->mSplitView:Lcom/android/internal/widget/ActionBarContainer;

    invoke-virtual {v4, v5}, Lcom/android/internal/widget/ActionBarContainer;->setAlpha(F)V

    .line 734
    iget-object v4, p0, Lcom/android/internal/app/ActionBarImpl;->mSplitView:Lcom/android/internal/widget/ActionBarContainer;

    invoke-virtual {v4, v7}, Lcom/android/internal/widget/ActionBarContainer;->setTranslationY(F)V

    .line 735
    iget-object v4, p0, Lcom/android/internal/app/ActionBarImpl;->mSplitView:Lcom/android/internal/widget/ActionBarContainer;

    invoke-virtual {v4, v8}, Lcom/android/internal/widget/ActionBarContainer;->setVisibility(I)V

    .line 737
    :cond_8
    iget-object v4, p0, Lcom/android/internal/app/ActionBarImpl;->mShowListener:Landroid/animation/Animator$AnimatorListener;

    const/4 v5, 0x0

    invoke-interface {v4, v5}, Landroid/animation/Animator$AnimatorListener;->onAnimationEnd(Landroid/animation/Animator;)V

    goto :goto_0

    .line 696
    nop

    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public getCustomView()Landroid/view/View;
    .locals 1

    .prologue
    .line 437
    iget-object v0, p0, Lcom/android/internal/app/ActionBarImpl;->mActionView:Lcom/android/internal/widget/ActionBarView;

    invoke-virtual {v0}, Lcom/android/internal/widget/ActionBarView;->getCustomNavigationView()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getDisplayOptions()I
    .locals 1

    .prologue
    .line 453
    iget-object v0, p0, Lcom/android/internal/app/ActionBarImpl;->mActionView:Lcom/android/internal/widget/ActionBarView;

    invoke-virtual {v0}, Lcom/android/internal/widget/ActionBarView;->getDisplayOptions()I

    move-result v0

    return v0
.end method

.method public getHeight()I
    .locals 1

    .prologue
    .line 603
    iget-object v0, p0, Lcom/android/internal/app/ActionBarImpl;->mContainerView:Lcom/android/internal/widget/ActionBarContainer;

    invoke-virtual {v0}, Lcom/android/internal/widget/ActionBarContainer;->getHeight()I

    move-result v0

    return v0
.end method

.method public getNavigationItemCount()I
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 1138
    iget-object v2, p0, Lcom/android/internal/app/ActionBarImpl;->mActionView:Lcom/android/internal/widget/ActionBarView;

    invoke-virtual {v2}, Lcom/android/internal/widget/ActionBarView;->getNavigationMode()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 1145
    :cond_0
    :goto_0
    return v1

    .line 1140
    :pswitch_0
    iget-object v1, p0, Lcom/android/internal/app/ActionBarImpl;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    goto :goto_0

    .line 1142
    :pswitch_1
    iget-object v2, p0, Lcom/android/internal/app/ActionBarImpl;->mActionView:Lcom/android/internal/widget/ActionBarView;

    invoke-virtual {v2}, Lcom/android/internal/widget/ActionBarView;->getDropdownAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v0

    .line 1143
    .local v0, adapter:Landroid/widget/SpinnerAdapter;
    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/widget/SpinnerAdapter;->getCount()I

    move-result v1

    goto :goto_0

    .line 1138
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getNavigationMode()I
    .locals 1

    .prologue
    .line 449
    iget-object v0, p0, Lcom/android/internal/app/ActionBarImpl;->mActionView:Lcom/android/internal/widget/ActionBarView;

    invoke-virtual {v0}, Lcom/android/internal/widget/ActionBarView;->getNavigationMode()I

    move-result v0

    return v0
.end method

.method public getSelectedNavigationIndex()I
    .locals 2

    .prologue
    const/4 v0, -0x1

    .line 1126
    iget-object v1, p0, Lcom/android/internal/app/ActionBarImpl;->mActionView:Lcom/android/internal/widget/ActionBarView;

    invoke-virtual {v1}, Lcom/android/internal/widget/ActionBarView;->getNavigationMode()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 1132
    :cond_0
    :goto_0
    return v0

    .line 1128
    :pswitch_0
    iget-object v1, p0, Lcom/android/internal/app/ActionBarImpl;->mSelectedTab:Lcom/android/internal/app/ActionBarImpl$TabImpl;

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/android/internal/app/ActionBarImpl;->mSelectedTab:Lcom/android/internal/app/ActionBarImpl$TabImpl;

    invoke-virtual {v0}, Lcom/android/internal/app/ActionBarImpl$TabImpl;->getPosition()I

    move-result v0

    goto :goto_0

    .line 1130
    :pswitch_1
    iget-object v0, p0, Lcom/android/internal/app/ActionBarImpl;->mActionView:Lcom/android/internal/widget/ActionBarView;

    invoke-virtual {v0}, Lcom/android/internal/widget/ActionBarView;->getDropdownSelectedPosition()I

    move-result v0

    goto :goto_0

    .line 1126
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getSelectedTab()Landroid/app/ActionBar$Tab;
    .locals 1

    .prologue
    .line 598
    iget-object v0, p0, Lcom/android/internal/app/ActionBarImpl;->mSelectedTab:Lcom/android/internal/app/ActionBarImpl$TabImpl;

    return-object v0
.end method

.method public getSubtitle()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 445
    iget-object v0, p0, Lcom/android/internal/app/ActionBarImpl;->mActionView:Lcom/android/internal/widget/ActionBarView;

    invoke-virtual {v0}, Lcom/android/internal/widget/ActionBarView;->getSubtitle()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public getTabAt(I)Landroid/app/ActionBar$Tab;
    .locals 1
    .parameter "index"

    .prologue
    .line 1185
    iget-object v0, p0, Lcom/android/internal/app/ActionBarImpl;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActionBar$Tab;

    return-object v0
.end method

.method public getTabCount()I
    .locals 1

    .prologue
    .line 1151
    iget-object v0, p0, Lcom/android/internal/app/ActionBarImpl;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getThemedContext()Landroid/content/Context;
    .locals 5

    .prologue
    .line 805
    iget-object v3, p0, Lcom/android/internal/app/ActionBarImpl;->mThemedContext:Landroid/content/Context;

    if-nez v3, :cond_0

    .line 806
    new-instance v1, Landroid/util/TypedValue;

    invoke-direct {v1}, Landroid/util/TypedValue;-><init>()V

    .line 807
    .local v1, outValue:Landroid/util/TypedValue;
    iget-object v3, p0, Lcom/android/internal/app/ActionBarImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    .line 808
    .local v0, currentTheme:Landroid/content/res/Resources$Theme;
    const v3, 0x1010397

    const/4 v4, 0x1

    invoke-virtual {v0, v3, v1, v4}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 810
    iget v2, v1, Landroid/util/TypedValue;->resourceId:I

    .line 812
    .local v2, targetThemeRes:I
    if-eqz v2, :cond_1

    iget-object v3, p0, Lcom/android/internal/app/ActionBarImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getThemeResId()I

    move-result v3

    if-eq v3, v2, :cond_1

    .line 813
    new-instance v3, Landroid/view/ContextThemeWrapper;

    iget-object v4, p0, Lcom/android/internal/app/ActionBarImpl;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4, v2}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    iput-object v3, p0, Lcom/android/internal/app/ActionBarImpl;->mThemedContext:Landroid/content/Context;

    .line 818
    .end local v0           #currentTheme:Landroid/content/res/Resources$Theme;
    .end local v1           #outValue:Landroid/util/TypedValue;
    .end local v2           #targetThemeRes:I
    :cond_0
    :goto_0
    iget-object v3, p0, Lcom/android/internal/app/ActionBarImpl;->mThemedContext:Landroid/content/Context;

    return-object v3

    .line 815
    .restart local v0       #currentTheme:Landroid/content/res/Resources$Theme;
    .restart local v1       #outValue:Landroid/util/TypedValue;
    .restart local v2       #targetThemeRes:I
    :cond_1
    iget-object v3, p0, Lcom/android/internal/app/ActionBarImpl;->mContext:Landroid/content/Context;

    iput-object v3, p0, Lcom/android/internal/app/ActionBarImpl;->mThemedContext:Landroid/content/Context;

    goto :goto_0
.end method

.method public getTitle()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 441
    iget-object v0, p0, Lcom/android/internal/app/ActionBarImpl;->mActionView:Lcom/android/internal/widget/ActionBarView;

    invoke-virtual {v0}, Lcom/android/internal/widget/ActionBarView;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public hasNonEmbeddedTabs()Z
    .locals 2

    .prologue
    .line 252
    iget-boolean v0, p0, Lcom/android/internal/app/ActionBarImpl;->mHasEmbeddedTabs:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/internal/app/ActionBarImpl;->getNavigationMode()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hide()V
    .locals 1

    .prologue
    .line 633
    iget-boolean v0, p0, Lcom/android/internal/app/ActionBarImpl;->mHiddenByApp:Z

    if-nez v0, :cond_0

    .line 634
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/app/ActionBarImpl;->mHiddenByApp:Z

    .line 635
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/internal/app/ActionBarImpl;->updateVisibility(Z)V

    .line 637
    :cond_0
    return-void
.end method

.method public hideForSystem()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 650
    iget-boolean v0, p0, Lcom/android/internal/app/ActionBarImpl;->mHiddenBySystem:Z

    if-nez v0, :cond_0

    .line 651
    iput-boolean v1, p0, Lcom/android/internal/app/ActionBarImpl;->mHiddenBySystem:Z

    .line 652
    invoke-direct {p0, v1}, Lcom/android/internal/app/ActionBarImpl;->updateVisibility(Z)V

    .line 654
    :cond_0
    return-void
.end method

.method public isShowing()Z
    .locals 1

    .prologue
    .line 783
    iget-boolean v0, p0, Lcom/android/internal/app/ActionBarImpl;->mNowShowing:Z

    return v0
.end method

.method public isSystemShowing()Z
    .locals 1

    .prologue
    .line 787
    iget-boolean v0, p0, Lcom/android/internal/app/ActionBarImpl;->mHiddenBySystem:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public newTab()Landroid/app/ActionBar$Tab;
    .locals 1

    .prologue
    .line 532
    new-instance v0, Lcom/android/internal/app/ActionBarImpl$TabImpl;

    invoke-direct {v0, p0}, Lcom/android/internal/app/ActionBarImpl$TabImpl;-><init>(Lcom/android/internal/app/ActionBarImpl;)V

    return-object v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .parameter "newConfig"

    .prologue
    .line 207
    iget-object v0, p0, Lcom/android/internal/app/ActionBarImpl;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/internal/view/ActionBarPolicy;->get(Landroid/content/Context;)Lcom/android/internal/view/ActionBarPolicy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/view/ActionBarPolicy;->hasEmbeddedTabs()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/internal/app/ActionBarImpl;->setHasEmbeddedTabs(Z)V

    .line 208
    return-void
.end method

.method public removeAllTabs()V
    .locals 0

    .prologue
    .line 385
    invoke-direct {p0}, Lcom/android/internal/app/ActionBarImpl;->cleanupTabs()V

    .line 386
    return-void
.end method

.method public removeOnMenuVisibilityListener(Landroid/app/ActionBar$OnMenuVisibilityListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 310
    iget-object v0, p0, Lcom/android/internal/app/ActionBarImpl;->mMenuVisibilityListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 311
    return-void
.end method

.method public removeTab(Landroid/app/ActionBar$Tab;)V
    .locals 1
    .parameter "tab"

    .prologue
    .line 537
    invoke-virtual {p1}, Landroid/app/ActionBar$Tab;->getPosition()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/internal/app/ActionBarImpl;->removeTabAt(I)V

    .line 538
    return-void
.end method

.method public removeTabAt(I)V
    .locals 7
    .parameter "position"

    .prologue
    .line 542
    iget-object v4, p0, Lcom/android/internal/app/ActionBarImpl;->mTabScrollView:Lcom/android/internal/widget/ScrollingTabContainerView;

    if-nez v4, :cond_1

    .line 563
    :cond_0
    :goto_0
    return-void

    .line 547
    :cond_1
    iget-object v4, p0, Lcom/android/internal/app/ActionBarImpl;->mSelectedTab:Lcom/android/internal/app/ActionBarImpl$TabImpl;

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/android/internal/app/ActionBarImpl;->mSelectedTab:Lcom/android/internal/app/ActionBarImpl$TabImpl;

    invoke-virtual {v4}, Lcom/android/internal/app/ActionBarImpl$TabImpl;->getPosition()I

    move-result v3

    .line 549
    .local v3, selectedTabPosition:I
    :goto_1
    iget-object v4, p0, Lcom/android/internal/app/ActionBarImpl;->mTabScrollView:Lcom/android/internal/widget/ScrollingTabContainerView;

    invoke-virtual {v4, p1}, Lcom/android/internal/widget/ScrollingTabContainerView;->removeTabAt(I)V

    .line 550
    iget-object v4, p0, Lcom/android/internal/app/ActionBarImpl;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/app/ActionBarImpl$TabImpl;

    .line 551
    .local v2, removedTab:Lcom/android/internal/app/ActionBarImpl$TabImpl;
    if-eqz v2, :cond_2

    .line 552
    const/4 v4, -0x1

    invoke-virtual {v2, v4}, Lcom/android/internal/app/ActionBarImpl$TabImpl;->setPosition(I)V

    .line 555
    :cond_2
    iget-object v4, p0, Lcom/android/internal/app/ActionBarImpl;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 556
    .local v1, newTabCount:I
    move v0, p1

    .local v0, i:I
    :goto_2
    if-ge v0, v1, :cond_4

    .line 557
    iget-object v4, p0, Lcom/android/internal/app/ActionBarImpl;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/app/ActionBarImpl$TabImpl;

    invoke-virtual {v4, v0}, Lcom/android/internal/app/ActionBarImpl$TabImpl;->setPosition(I)V

    .line 556
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 547
    .end local v0           #i:I
    .end local v1           #newTabCount:I
    .end local v2           #removedTab:Lcom/android/internal/app/ActionBarImpl$TabImpl;
    .end local v3           #selectedTabPosition:I
    :cond_3
    iget v3, p0, Lcom/android/internal/app/ActionBarImpl;->mSavedTabPosition:I

    goto :goto_1

    .line 560
    .restart local v0       #i:I
    .restart local v1       #newTabCount:I
    .restart local v2       #removedTab:Lcom/android/internal/app/ActionBarImpl$TabImpl;
    .restart local v3       #selectedTabPosition:I
    :cond_4
    if-ne v3, p1, :cond_0

    .line 561
    iget-object v4, p0, Lcom/android/internal/app/ActionBarImpl;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_5

    const/4 v4, 0x0

    :goto_3
    invoke-virtual {p0, v4}, Lcom/android/internal/app/ActionBarImpl;->selectTab(Landroid/app/ActionBar$Tab;)V

    goto :goto_0

    :cond_5
    iget-object v4, p0, Lcom/android/internal/app/ActionBarImpl;->mTabs:Ljava/util/ArrayList;

    const/4 v5, 0x0

    add-int/lit8 v6, p1, -0x1

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/app/ActionBarImpl$TabImpl;

    goto :goto_3
.end method

.method public selectTab(Landroid/app/ActionBar$Tab;)V
    .locals 4
    .parameter "tab"

    .prologue
    const/4 v1, -0x1

    .line 567
    invoke-virtual {p0}, Lcom/android/internal/app/ActionBarImpl;->getNavigationMode()I

    move-result v2

    const/4 v3, 0x2

    if-eq v2, v3, :cond_2

    .line 568
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/app/ActionBar$Tab;->getPosition()I

    move-result v1

    :cond_0
    iput v1, p0, Lcom/android/internal/app/ActionBarImpl;->mSavedTabPosition:I

    .line 594
    .end local p1
    :cond_1
    :goto_0
    return-void

    .line 572
    .restart local p1
    :cond_2
    iget-object v2, p0, Lcom/android/internal/app/ActionBarImpl;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/FragmentTransaction;->disallowAddToBackStack()Landroid/app/FragmentTransaction;

    move-result-object v0

    .line 575
    .local v0, trans:Landroid/app/FragmentTransaction;
    iget-object v2, p0, Lcom/android/internal/app/ActionBarImpl;->mSelectedTab:Lcom/android/internal/app/ActionBarImpl$TabImpl;

    if-ne v2, p1, :cond_4

    .line 576
    iget-object v1, p0, Lcom/android/internal/app/ActionBarImpl;->mSelectedTab:Lcom/android/internal/app/ActionBarImpl$TabImpl;

    if-eqz v1, :cond_3

    .line 577
    iget-object v1, p0, Lcom/android/internal/app/ActionBarImpl;->mSelectedTab:Lcom/android/internal/app/ActionBarImpl$TabImpl;

    invoke-virtual {v1}, Lcom/android/internal/app/ActionBarImpl$TabImpl;->getCallback()Landroid/app/ActionBar$TabListener;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/app/ActionBarImpl;->mSelectedTab:Lcom/android/internal/app/ActionBarImpl$TabImpl;

    invoke-interface {v1, v2, v0}, Landroid/app/ActionBar$TabListener;->onTabReselected(Landroid/app/ActionBar$Tab;Landroid/app/FragmentTransaction;)V

    .line 578
    iget-object v1, p0, Lcom/android/internal/app/ActionBarImpl;->mTabScrollView:Lcom/android/internal/widget/ScrollingTabContainerView;

    invoke-virtual {p1}, Landroid/app/ActionBar$Tab;->getPosition()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/internal/widget/ScrollingTabContainerView;->animateToTab(I)V

    .line 591
    .end local p1
    :cond_3
    :goto_1
    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 592
    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commit()I

    goto :goto_0

    .line 581
    .restart local p1
    :cond_4
    iget-object v2, p0, Lcom/android/internal/app/ActionBarImpl;->mTabScrollView:Lcom/android/internal/widget/ScrollingTabContainerView;

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Landroid/app/ActionBar$Tab;->getPosition()I

    move-result v1

    :cond_5
    invoke-virtual {v2, v1}, Lcom/android/internal/widget/ScrollingTabContainerView;->setTabSelected(I)V

    .line 582
    iget-object v1, p0, Lcom/android/internal/app/ActionBarImpl;->mSelectedTab:Lcom/android/internal/app/ActionBarImpl$TabImpl;

    if-eqz v1, :cond_6

    .line 583
    iget-object v1, p0, Lcom/android/internal/app/ActionBarImpl;->mSelectedTab:Lcom/android/internal/app/ActionBarImpl$TabImpl;

    invoke-virtual {v1}, Lcom/android/internal/app/ActionBarImpl$TabImpl;->getCallback()Landroid/app/ActionBar$TabListener;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/app/ActionBarImpl;->mSelectedTab:Lcom/android/internal/app/ActionBarImpl$TabImpl;

    invoke-interface {v1, v2, v0}, Landroid/app/ActionBar$TabListener;->onTabUnselected(Landroid/app/ActionBar$Tab;Landroid/app/FragmentTransaction;)V

    .line 585
    :cond_6
    check-cast p1, Lcom/android/internal/app/ActionBarImpl$TabImpl;

    .end local p1
    iput-object p1, p0, Lcom/android/internal/app/ActionBarImpl;->mSelectedTab:Lcom/android/internal/app/ActionBarImpl$TabImpl;

    .line 586
    iget-object v1, p0, Lcom/android/internal/app/ActionBarImpl;->mSelectedTab:Lcom/android/internal/app/ActionBarImpl$TabImpl;

    if-eqz v1, :cond_3

    .line 587
    iget-object v1, p0, Lcom/android/internal/app/ActionBarImpl;->mSelectedTab:Lcom/android/internal/app/ActionBarImpl$TabImpl;

    invoke-virtual {v1}, Lcom/android/internal/app/ActionBarImpl$TabImpl;->getCallback()Landroid/app/ActionBar$TabListener;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/app/ActionBarImpl;->mSelectedTab:Lcom/android/internal/app/ActionBarImpl$TabImpl;

    invoke-interface {v1, v2, v0}, Landroid/app/ActionBar$TabListener;->onTabSelected(Landroid/app/ActionBar$Tab;Landroid/app/FragmentTransaction;)V

    goto :goto_1
.end method

.method public setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .parameter "d"

    .prologue
    .line 423
    iget-object v0, p0, Lcom/android/internal/app/ActionBarImpl;->mContainerView:Lcom/android/internal/widget/ActionBarContainer;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/ActionBarContainer;->setPrimaryBackground(Landroid/graphics/drawable/Drawable;)V

    .line 424
    return-void
.end method

.method public setCustomView(I)V
    .locals 3
    .parameter "resId"

    .prologue
    .line 327
    invoke-virtual {p0}, Lcom/android/internal/app/ActionBarImpl;->getThemedContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/app/ActionBarImpl;->mActionView:Lcom/android/internal/widget/ActionBarView;

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/app/ActionBarImpl;->setCustomView(Landroid/view/View;)V

    .line 328
    return-void
.end method

.method public setCustomView(Landroid/view/View;)V
    .locals 1
    .parameter "view"

    .prologue
    .line 1109
    iget-object v0, p0, Lcom/android/internal/app/ActionBarImpl;->mActionView:Lcom/android/internal/widget/ActionBarView;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/ActionBarView;->setCustomNavigationView(Landroid/view/View;)V

    .line 1110
    return-void
.end method

.method public setCustomView(Landroid/view/View;Landroid/app/ActionBar$LayoutParams;)V
    .locals 1
    .parameter "view"
    .parameter "layoutParams"

    .prologue
    .line 1114
    invoke-virtual {p1, p2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1115
    iget-object v0, p0, Lcom/android/internal/app/ActionBarImpl;->mActionView:Lcom/android/internal/widget/ActionBarView;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/ActionBarView;->setCustomNavigationView(Landroid/view/View;)V

    .line 1116
    return-void
.end method

.method public setDefaultDisplayHomeAsUpEnabled(Z)V
    .locals 1
    .parameter "enable"

    .prologue
    .line 1210
    iget-boolean v0, p0, Lcom/android/internal/app/ActionBarImpl;->mDisplayHomeAsUpSet:Z

    if-nez v0, :cond_0

    .line 1211
    invoke-virtual {p0, p1}, Lcom/android/internal/app/ActionBarImpl;->setDisplayHomeAsUpEnabled(Z)V

    .line 1213
    :cond_0
    return-void
.end method

.method public setDisplayHomeAsUpEnabled(Z)V
    .locals 2
    .parameter "showHomeAsUp"

    .prologue
    const/4 v1, 0x4

    .line 342
    if-eqz p1, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {p0, v0, v1}, Lcom/android/internal/app/ActionBarImpl;->setDisplayOptions(II)V

    .line 343
    return-void

    .line 342
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setDisplayOptions(I)V
    .locals 1
    .parameter "options"

    .prologue
    .line 408
    and-int/lit8 v0, p1, 0x4

    if-eqz v0, :cond_0

    .line 409
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/app/ActionBarImpl;->mDisplayHomeAsUpSet:Z

    .line 411
    :cond_0
    iget-object v0, p0, Lcom/android/internal/app/ActionBarImpl;->mActionView:Lcom/android/internal/widget/ActionBarView;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/ActionBarView;->setDisplayOptions(I)V

    .line 412
    return-void
.end method

.method public setDisplayOptions(II)V
    .locals 4
    .parameter "options"
    .parameter "mask"

    .prologue
    .line 415
    iget-object v1, p0, Lcom/android/internal/app/ActionBarImpl;->mActionView:Lcom/android/internal/widget/ActionBarView;

    invoke-virtual {v1}, Lcom/android/internal/widget/ActionBarView;->getDisplayOptions()I

    move-result v0

    .line 416
    .local v0, current:I
    and-int/lit8 v1, p2, 0x4

    if-eqz v1, :cond_0

    .line 417
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/internal/app/ActionBarImpl;->mDisplayHomeAsUpSet:Z

    .line 419
    :cond_0
    iget-object v1, p0, Lcom/android/internal/app/ActionBarImpl;->mActionView:Lcom/android/internal/widget/ActionBarView;

    and-int v2, p1, p2

    xor-int/lit8 v3, p2, -0x1

    and-int/2addr v3, v0

    or-int/2addr v2, v3

    invoke-virtual {v1, v2}, Lcom/android/internal/widget/ActionBarView;->setDisplayOptions(I)V

    .line 420
    return-void
.end method

.method public setDisplayShowCustomEnabled(Z)V
    .locals 2
    .parameter "showCustom"

    .prologue
    const/16 v1, 0x10

    .line 352
    if-eqz p1, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {p0, v0, v1}, Lcom/android/internal/app/ActionBarImpl;->setDisplayOptions(II)V

    .line 353
    return-void

    .line 352
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setDisplayShowHomeEnabled(Z)V
    .locals 2
    .parameter "showHome"

    .prologue
    const/4 v1, 0x2

    .line 337
    if-eqz p1, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {p0, v0, v1}, Lcom/android/internal/app/ActionBarImpl;->setDisplayOptions(II)V

    .line 338
    return-void

    .line 337
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setDisplayShowTitleEnabled(Z)V
    .locals 2
    .parameter "showTitle"

    .prologue
    const/16 v1, 0x8

    .line 347
    if-eqz p1, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {p0, v0, v1}, Lcom/android/internal/app/ActionBarImpl;->setDisplayOptions(II)V

    .line 348
    return-void

    .line 347
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setDisplayUseLogoEnabled(Z)V
    .locals 2
    .parameter "useLogo"

    .prologue
    const/4 v1, 0x1

    .line 332
    if-eqz p1, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {p0, v0, v1}, Lcom/android/internal/app/ActionBarImpl;->setDisplayOptions(II)V

    .line 333
    return-void

    .line 332
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setHomeButtonEnabled(Z)V
    .locals 1
    .parameter "enable"

    .prologue
    .line 357
    iget-object v0, p0, Lcom/android/internal/app/ActionBarImpl;->mActionView:Lcom/android/internal/widget/ActionBarView;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/ActionBarView;->setHomeButtonEnabled(Z)V

    .line 358
    return-void
.end method

.method public setIcon(I)V
    .locals 1
    .parameter "resId"

    .prologue
    .line 1191
    iget-object v0, p0, Lcom/android/internal/app/ActionBarImpl;->mActionView:Lcom/android/internal/widget/ActionBarView;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/ActionBarView;->setIcon(I)V

    .line 1192
    return-void
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .parameter "icon"

    .prologue
    .line 1196
    iget-object v0, p0, Lcom/android/internal/app/ActionBarImpl;->mActionView:Lcom/android/internal/widget/ActionBarView;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/ActionBarView;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 1197
    return-void
.end method

.method public setListNavigationCallbacks(Landroid/widget/SpinnerAdapter;Landroid/app/ActionBar$OnNavigationListener;)V
    .locals 1
    .parameter "adapter"
    .parameter "callback"

    .prologue
    .line 1120
    iget-object v0, p0, Lcom/android/internal/app/ActionBarImpl;->mActionView:Lcom/android/internal/widget/ActionBarView;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/ActionBarView;->setDropdownAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 1121
    iget-object v0, p0, Lcom/android/internal/app/ActionBarImpl;->mActionView:Lcom/android/internal/widget/ActionBarView;

    invoke-virtual {v0, p2}, Lcom/android/internal/widget/ActionBarView;->setCallback(Landroid/app/ActionBar$OnNavigationListener;)V

    .line 1122
    return-void
.end method

.method public setLogo(I)V
    .locals 1
    .parameter "resId"

    .prologue
    .line 1201
    iget-object v0, p0, Lcom/android/internal/app/ActionBarImpl;->mActionView:Lcom/android/internal/widget/ActionBarView;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/ActionBarView;->setLogo(I)V

    .line 1202
    return-void
.end method

.method public setLogo(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .parameter "logo"

    .prologue
    .line 1206
    iget-object v0, p0, Lcom/android/internal/app/ActionBarImpl;->mActionView:Lcom/android/internal/widget/ActionBarView;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/ActionBarView;->setLogo(Landroid/graphics/drawable/Drawable;)V

    .line 1207
    return-void
.end method

.method public setNavigationMode(I)V
    .locals 5
    .parameter "mode"

    .prologue
    const/4 v1, 0x0

    const/4 v4, -0x1

    .line 1156
    iget-object v2, p0, Lcom/android/internal/app/ActionBarImpl;->mActionView:Lcom/android/internal/widget/ActionBarView;

    invoke-virtual {v2}, Lcom/android/internal/widget/ActionBarView;->getNavigationMode()I

    move-result v0

    .line 1157
    .local v0, oldMode:I
    packed-switch v0, :pswitch_data_0

    .line 1164
    :goto_0
    if-eq v0, p1, :cond_0

    iget-boolean v2, p0, Lcom/android/internal/app/ActionBarImpl;->mHasEmbeddedTabs:Z

    if-nez v2, :cond_0

    .line 1165
    iget-object v2, p0, Lcom/android/internal/app/ActionBarImpl;->mOverlayLayout:Lcom/android/internal/widget/ActionBarOverlayLayout;

    if-eqz v2, :cond_0

    .line 1166
    iget-object v2, p0, Lcom/android/internal/app/ActionBarImpl;->mOverlayLayout:Lcom/android/internal/widget/ActionBarOverlayLayout;

    invoke-virtual {v2}, Lcom/android/internal/widget/ActionBarOverlayLayout;->requestFitSystemWindows()V

    .line 1169
    :cond_0
    iget-object v2, p0, Lcom/android/internal/app/ActionBarImpl;->mActionView:Lcom/android/internal/widget/ActionBarView;

    invoke-virtual {v2, p1}, Lcom/android/internal/widget/ActionBarView;->setNavigationMode(I)V

    .line 1170
    packed-switch p1, :pswitch_data_1

    .line 1180
    :cond_1
    :goto_1
    iget-object v2, p0, Lcom/android/internal/app/ActionBarImpl;->mActionView:Lcom/android/internal/widget/ActionBarView;

    const/4 v3, 0x2

    if-ne p1, v3, :cond_2

    iget-boolean v3, p0, Lcom/android/internal/app/ActionBarImpl;->mHasEmbeddedTabs:Z

    if-nez v3, :cond_2

    const/4 v1, 0x1

    :cond_2
    invoke-virtual {v2, v1}, Lcom/android/internal/widget/ActionBarView;->setCollapsable(Z)V

    .line 1181
    return-void

    .line 1159
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/internal/app/ActionBarImpl;->getSelectedNavigationIndex()I

    move-result v2

    iput v2, p0, Lcom/android/internal/app/ActionBarImpl;->mSavedTabPosition:I

    .line 1160
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/android/internal/app/ActionBarImpl;->selectTab(Landroid/app/ActionBar$Tab;)V

    .line 1161
    iget-object v2, p0, Lcom/android/internal/app/ActionBarImpl;->mTabScrollView:Lcom/android/internal/widget/ScrollingTabContainerView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Lcom/android/internal/widget/ScrollingTabContainerView;->setVisibility(I)V

    goto :goto_0

    .line 1172
    :pswitch_1
    invoke-direct {p0}, Lcom/android/internal/app/ActionBarImpl;->ensureTabsExist()V

    .line 1173
    iget-object v2, p0, Lcom/android/internal/app/ActionBarImpl;->mTabScrollView:Lcom/android/internal/widget/ScrollingTabContainerView;

    invoke-virtual {v2, v1}, Lcom/android/internal/widget/ScrollingTabContainerView;->setVisibility(I)V

    .line 1174
    iget v2, p0, Lcom/android/internal/app/ActionBarImpl;->mSavedTabPosition:I

    if-eq v2, v4, :cond_1

    .line 1175
    iget v2, p0, Lcom/android/internal/app/ActionBarImpl;->mSavedTabPosition:I

    invoke-virtual {p0, v2}, Lcom/android/internal/app/ActionBarImpl;->setSelectedNavigationItem(I)V

    .line 1176
    iput v4, p0, Lcom/android/internal/app/ActionBarImpl;->mSavedTabPosition:I

    goto :goto_1

    .line 1157
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch

    .line 1170
    :pswitch_data_1
    .packed-switch 0x2
        :pswitch_1
    .end packed-switch
.end method

.method public setSelectedNavigationItem(I)V
    .locals 2
    .parameter "position"

    .prologue
    .line 371
    iget-object v0, p0, Lcom/android/internal/app/ActionBarImpl;->mActionView:Lcom/android/internal/widget/ActionBarView;

    invoke-virtual {v0}, Lcom/android/internal/widget/ActionBarView;->getNavigationMode()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 379
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "setSelectedNavigationIndex not valid for current navigation mode"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 373
    :pswitch_0
    iget-object v0, p0, Lcom/android/internal/app/ActionBarImpl;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActionBar$Tab;

    invoke-virtual {p0, v0}, Lcom/android/internal/app/ActionBarImpl;->selectTab(Landroid/app/ActionBar$Tab;)V

    .line 382
    :goto_0
    return-void

    .line 376
    :pswitch_1
    iget-object v0, p0, Lcom/android/internal/app/ActionBarImpl;->mActionView:Lcom/android/internal/widget/ActionBarView;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/ActionBarView;->setDropdownSelectedPosition(I)V

    goto :goto_0

    .line 371
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setShowHideAnimationEnabled(Z)V
    .locals 1
    .parameter "enabled"

    .prologue
    .line 299
    iput-boolean p1, p0, Lcom/android/internal/app/ActionBarImpl;->mShowHideAnimationEnabled:Z

    .line 300
    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/android/internal/app/ActionBarImpl;->mCurrentShowAnim:Landroid/animation/Animator;

    if-eqz v0, :cond_0

    .line 301
    iget-object v0, p0, Lcom/android/internal/app/ActionBarImpl;->mCurrentShowAnim:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->end()V

    .line 303
    :cond_0
    return-void
.end method

.method public setSplitBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .parameter "d"

    .prologue
    .line 431
    iget-object v0, p0, Lcom/android/internal/app/ActionBarImpl;->mSplitView:Lcom/android/internal/widget/ActionBarContainer;

    if-eqz v0, :cond_0

    .line 432
    iget-object v0, p0, Lcom/android/internal/app/ActionBarImpl;->mSplitView:Lcom/android/internal/widget/ActionBarContainer;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/ActionBarContainer;->setSplitBackground(Landroid/graphics/drawable/Drawable;)V

    .line 434
    :cond_0
    return-void
.end method

.method public setStackedBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .parameter "d"

    .prologue
    .line 427
    iget-object v0, p0, Lcom/android/internal/app/ActionBarImpl;->mContainerView:Lcom/android/internal/widget/ActionBarContainer;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/ActionBarContainer;->setStackedBackground(Landroid/graphics/drawable/Drawable;)V

    .line 428
    return-void
.end method

.method public setSubtitle(I)V
    .locals 1
    .parameter "resId"

    .prologue
    .line 367
    iget-object v0, p0, Lcom/android/internal/app/ActionBarImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/app/ActionBarImpl;->setSubtitle(Ljava/lang/CharSequence;)V

    .line 368
    return-void
.end method

.method public setSubtitle(Ljava/lang/CharSequence;)V
    .locals 1
    .parameter "subtitle"

    .prologue
    .line 404
    iget-object v0, p0, Lcom/android/internal/app/ActionBarImpl;->mActionView:Lcom/android/internal/widget/ActionBarView;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/ActionBarView;->setSubtitle(Ljava/lang/CharSequence;)V

    .line 405
    return-void
.end method

.method public setTitle(I)V
    .locals 1
    .parameter "resId"

    .prologue
    .line 362
    iget-object v0, p0, Lcom/android/internal/app/ActionBarImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/app/ActionBarImpl;->setTitle(Ljava/lang/CharSequence;)V

    .line 363
    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 1
    .parameter "title"

    .prologue
    .line 400
    iget-object v0, p0, Lcom/android/internal/app/ActionBarImpl;->mActionView:Lcom/android/internal/widget/ActionBarView;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/ActionBarView;->setTitle(Ljava/lang/CharSequence;)V

    .line 401
    return-void
.end method

.method public setWindowVisibility(I)V
    .locals 0
    .parameter "visibility"

    .prologue
    .line 288
    iput p1, p0, Lcom/android/internal/app/ActionBarImpl;->mCurWindowVisibility:I

    .line 289
    return-void
.end method

.method public show()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 608
    iget-boolean v0, p0, Lcom/android/internal/app/ActionBarImpl;->mHiddenByApp:Z

    if-eqz v0, :cond_0

    .line 609
    iput-boolean v1, p0, Lcom/android/internal/app/ActionBarImpl;->mHiddenByApp:Z

    .line 610
    invoke-direct {p0, v1}, Lcom/android/internal/app/ActionBarImpl;->updateVisibility(Z)V

    .line 612
    :cond_0
    return-void
.end method

.method public showForSystem()V
    .locals 1

    .prologue
    .line 625
    iget-boolean v0, p0, Lcom/android/internal/app/ActionBarImpl;->mHiddenBySystem:Z

    if-eqz v0, :cond_0

    .line 626
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/app/ActionBarImpl;->mHiddenBySystem:Z

    .line 627
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/internal/app/ActionBarImpl;->updateVisibility(Z)V

    .line 629
    :cond_0
    return-void
.end method

.method public startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;
    .locals 3
    .parameter "callback"

    .prologue
    const/4 v2, 0x1

    .line 457
    iget-object v1, p0, Lcom/android/internal/app/ActionBarImpl;->mActionMode:Lcom/android/internal/app/ActionBarImpl$ActionModeImpl;

    if-eqz v1, :cond_0

    .line 458
    iget-object v1, p0, Lcom/android/internal/app/ActionBarImpl;->mActionMode:Lcom/android/internal/app/ActionBarImpl$ActionModeImpl;

    invoke-virtual {v1}, Lcom/android/internal/app/ActionBarImpl$ActionModeImpl;->finish()V

    .line 461
    :cond_0
    iget-object v1, p0, Lcom/android/internal/app/ActionBarImpl;->mContextView:Lcom/android/internal/widget/ActionBarContextView;

    invoke-virtual {v1}, Lcom/android/internal/widget/ActionBarContextView;->killMode()V

    .line 462
    new-instance v0, Lcom/android/internal/app/ActionBarImpl$ActionModeImpl;

    invoke-direct {v0, p0, p1}, Lcom/android/internal/app/ActionBarImpl$ActionModeImpl;-><init>(Lcom/android/internal/app/ActionBarImpl;Landroid/view/ActionMode$Callback;)V

    .line 463
    .local v0, mode:Lcom/android/internal/app/ActionBarImpl$ActionModeImpl;
    invoke-virtual {v0}, Lcom/android/internal/app/ActionBarImpl$ActionModeImpl;->dispatchOnCreate()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 464
    invoke-virtual {v0}, Lcom/android/internal/app/ActionBarImpl$ActionModeImpl;->invalidate()V

    .line 465
    iget-object v1, p0, Lcom/android/internal/app/ActionBarImpl;->mContextView:Lcom/android/internal/widget/ActionBarContextView;

    invoke-virtual {v1, v0}, Lcom/android/internal/widget/ActionBarContextView;->initForMode(Landroid/view/ActionMode;)V

    .line 466
    invoke-virtual {p0, v2}, Lcom/android/internal/app/ActionBarImpl;->animateToMode(Z)V

    .line 467
    iget-object v1, p0, Lcom/android/internal/app/ActionBarImpl;->mSplitView:Lcom/android/internal/widget/ActionBarContainer;

    if-eqz v1, :cond_1

    iget v1, p0, Lcom/android/internal/app/ActionBarImpl;->mContextDisplayMode:I

    if-ne v1, v2, :cond_1

    .line 469
    iget-object v1, p0, Lcom/android/internal/app/ActionBarImpl;->mSplitView:Lcom/android/internal/widget/ActionBarContainer;

    invoke-virtual {v1}, Lcom/android/internal/widget/ActionBarContainer;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_1

    .line 470
    iget-object v1, p0, Lcom/android/internal/app/ActionBarImpl;->mSplitView:Lcom/android/internal/widget/ActionBarContainer;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/internal/widget/ActionBarContainer;->setVisibility(I)V

    .line 471
    iget-object v1, p0, Lcom/android/internal/app/ActionBarImpl;->mOverlayLayout:Lcom/android/internal/widget/ActionBarOverlayLayout;

    if-eqz v1, :cond_1

    .line 472
    iget-object v1, p0, Lcom/android/internal/app/ActionBarImpl;->mOverlayLayout:Lcom/android/internal/widget/ActionBarOverlayLayout;

    invoke-virtual {v1}, Lcom/android/internal/widget/ActionBarOverlayLayout;->requestFitSystemWindows()V

    .line 476
    :cond_1
    iget-object v1, p0, Lcom/android/internal/app/ActionBarImpl;->mContextView:Lcom/android/internal/widget/ActionBarContextView;

    const/16 v2, 0x20

    invoke-virtual {v1, v2}, Lcom/android/internal/widget/ActionBarContextView;->sendAccessibilityEvent(I)V

    .line 477
    iput-object v0, p0, Lcom/android/internal/app/ActionBarImpl;->mActionMode:Lcom/android/internal/app/ActionBarImpl$ActionModeImpl;

    .line 480
    .end local v0           #mode:Lcom/android/internal/app/ActionBarImpl$ActionModeImpl;
    :goto_0
    return-object v0

    .restart local v0       #mode:Lcom/android/internal/app/ActionBarImpl$ActionModeImpl;
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method
