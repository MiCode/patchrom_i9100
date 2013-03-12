.class public Landroid/widget/TabHost;
.super Landroid/widget/FrameLayout;
.source "TabHost.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnTouchModeChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/TabHost$IntentContentStrategy;,
        Landroid/widget/TabHost$FactoryContentStrategy;,
        Landroid/widget/TabHost$ViewIdContentStrategy;,
        Landroid/widget/TabHost$ViewIndicatorStrategy;,
        Landroid/widget/TabHost$LabelAndIconIndicatorStrategy;,
        Landroid/widget/TabHost$LabelIndicatorStrategy;,
        Landroid/widget/TabHost$ContentStrategy;,
        Landroid/widget/TabHost$IndicatorStrategy;,
        Landroid/widget/TabHost$TabSpec;,
        Landroid/widget/TabHost$TabContentFactory;,
        Landroid/widget/TabHost$OnTabChangeListener;
    }
.end annotation


# instance fields
.field protected mCurrentTab:I

.field private mCurrentView:Landroid/view/View;

.field protected mLocalActivityManager:Landroid/app/LocalActivityManager;

.field private mOnTabChangeListener:Landroid/widget/TabHost$OnTabChangeListener;

.field private mTabContent:Landroid/widget/FrameLayout;

.field private mTabKeyListener:Landroid/view/View$OnKeyListener;

.field private mTabLayoutId:I

.field private mTabSpecs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/widget/TabHost$TabSpec;",
            ">;"
        }
    .end annotation
.end field

.field private mTabWidget:Landroid/widget/TabWidget;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    const/4 v2, 0x0

    .line 71
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 53
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Landroid/widget/TabHost;->mTabSpecs:Ljava/util/List;

    .line 58
    const/4 v0, -0x1

    iput v0, p0, Landroid/widget/TabHost;->mCurrentTab:I

    .line 59
    iput-object v2, p0, Landroid/widget/TabHost;->mCurrentView:Landroid/view/View;

    .line 64
    iput-object v2, p0, Landroid/widget/TabHost;->mLocalActivityManager:Landroid/app/LocalActivityManager;

    .line 72
    invoke-direct {p0}, Landroid/widget/TabHost;->initTabHost()V

    .line 73
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 76
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 53
    new-instance v1, Ljava/util/ArrayList;

    const/4 v2, 0x2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, Landroid/widget/TabHost;->mTabSpecs:Ljava/util/List;

    .line 58
    const/4 v1, -0x1

    iput v1, p0, Landroid/widget/TabHost;->mCurrentTab:I

    .line 59
    iput-object v4, p0, Landroid/widget/TabHost;->mCurrentView:Landroid/view/View;

    .line 64
    iput-object v4, p0, Landroid/widget/TabHost;->mLocalActivityManager:Landroid/app/LocalActivityManager;

    .line 78
    sget-object v1, Lcom/android/internal/R$styleable;->TabWidget:[I

    const v2, 0x1010083

    invoke-virtual {p1, p2, v1, v2, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 82
    .local v0, a:Landroid/content/res/TypedArray;
    const/4 v1, 0x4

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Landroid/widget/TabHost;->mTabLayoutId:I

    .line 83
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 85
    iget v1, p0, Landroid/widget/TabHost;->mTabLayoutId:I

    if-nez v1, :cond_0

    .line 88
    const v1, 0x10900f0

    iput v1, p0, Landroid/widget/TabHost;->mTabLayoutId:I

    .line 91
    :cond_0
    invoke-direct {p0}, Landroid/widget/TabHost;->initTabHost()V

    .line 92
    return-void
.end method

.method static synthetic access$100(Landroid/widget/TabHost;)Landroid/widget/FrameLayout;
    .locals 1
    .parameter "x0"

    .prologue
    .line 49
    iget-object v0, p0, Landroid/widget/TabHost;->mTabContent:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method static synthetic access$1000(Landroid/widget/TabHost;)Landroid/widget/TabWidget;
    .locals 1
    .parameter "x0"

    .prologue
    .line 49
    iget-object v0, p0, Landroid/widget/TabHost;->mTabWidget:Landroid/widget/TabWidget;

    return-object v0
.end method

.method static synthetic access$900(Landroid/widget/TabHost;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 49
    iget v0, p0, Landroid/widget/TabHost;->mTabLayoutId:I

    return v0
.end method

.method private initTabHost()V
    .locals 1

    .prologue
    .line 95
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/widget/TabHost;->setFocusableInTouchMode(Z)V

    .line 96
    const/high16 v0, 0x4

    invoke-virtual {p0, v0}, Landroid/widget/TabHost;->setDescendantFocusability(I)V

    .line 98
    const/4 v0, -0x1

    iput v0, p0, Landroid/widget/TabHost;->mCurrentTab:I

    .line 99
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/widget/TabHost;->mCurrentView:Landroid/view/View;

    .line 100
    return-void
.end method

.method private invokeOnTabChangeListener()V
    .locals 2

    .prologue
    .line 401
    iget-object v0, p0, Landroid/widget/TabHost;->mOnTabChangeListener:Landroid/widget/TabHost$OnTabChangeListener;

    if-eqz v0, :cond_0

    .line 402
    iget-object v0, p0, Landroid/widget/TabHost;->mOnTabChangeListener:Landroid/widget/TabHost$OnTabChangeListener;

    invoke-virtual {p0}, Landroid/widget/TabHost;->getCurrentTabTag()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/widget/TabHost$OnTabChangeListener;->onTabChanged(Ljava/lang/String;)V

    .line 404
    :cond_0
    return-void
.end method


# virtual methods
.method public addTab(Landroid/widget/TabHost$TabSpec;)V
    .locals 4
    .parameter "tabSpec"

    .prologue
    const/4 v3, 0x0

    .line 226
    #getter for: Landroid/widget/TabHost$TabSpec;->mIndicatorStrategy:Landroid/widget/TabHost$IndicatorStrategy;
    invoke-static {p1}, Landroid/widget/TabHost$TabSpec;->access$200(Landroid/widget/TabHost$TabSpec;)Landroid/widget/TabHost$IndicatorStrategy;

    move-result-object v1

    if-nez v1, :cond_0

    .line 227
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "you must specify a way to create the tab indicator."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 230
    :cond_0
    #getter for: Landroid/widget/TabHost$TabSpec;->mContentStrategy:Landroid/widget/TabHost$ContentStrategy;
    invoke-static {p1}, Landroid/widget/TabHost$TabSpec;->access$300(Landroid/widget/TabHost$TabSpec;)Landroid/widget/TabHost$ContentStrategy;

    move-result-object v1

    if-nez v1, :cond_1

    .line 231
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "you must specify a way to create the tab content"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 234
    :cond_1
    #getter for: Landroid/widget/TabHost$TabSpec;->mIndicatorStrategy:Landroid/widget/TabHost$IndicatorStrategy;
    invoke-static {p1}, Landroid/widget/TabHost$TabSpec;->access$200(Landroid/widget/TabHost$TabSpec;)Landroid/widget/TabHost$IndicatorStrategy;

    move-result-object v1

    invoke-interface {v1}, Landroid/widget/TabHost$IndicatorStrategy;->createIndicatorView()Landroid/view/View;

    move-result-object v0

    .line 235
    .local v0, tabIndicator:Landroid/view/View;
    iget-object v1, p0, Landroid/widget/TabHost;->mTabKeyListener:Landroid/view/View$OnKeyListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 239
    #getter for: Landroid/widget/TabHost$TabSpec;->mIndicatorStrategy:Landroid/widget/TabHost$IndicatorStrategy;
    invoke-static {p1}, Landroid/widget/TabHost$TabSpec;->access$200(Landroid/widget/TabHost$TabSpec;)Landroid/widget/TabHost$IndicatorStrategy;

    move-result-object v1

    instance-of v1, v1, Landroid/widget/TabHost$ViewIndicatorStrategy;

    if-eqz v1, :cond_2

    .line 240
    iget-object v1, p0, Landroid/widget/TabHost;->mTabWidget:Landroid/widget/TabWidget;

    invoke-virtual {v1, v3}, Landroid/widget/TabWidget;->setStripEnabled(Z)V

    .line 243
    :cond_2
    iget-object v1, p0, Landroid/widget/TabHost;->mTabWidget:Landroid/widget/TabWidget;

    invoke-virtual {v1, v0}, Landroid/widget/TabWidget;->addView(Landroid/view/View;)V

    .line 244
    iget-object v1, p0, Landroid/widget/TabHost;->mTabSpecs:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 246
    iget v1, p0, Landroid/widget/TabHost;->mCurrentTab:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_3

    .line 247
    invoke-virtual {p0, v3}, Landroid/widget/TabHost;->setCurrentTab(I)V

    .line 249
    :cond_3
    return-void
.end method

.method public clearAllTabs()V
    .locals 1

    .prologue
    .line 256
    iget-object v0, p0, Landroid/widget/TabHost;->mTabWidget:Landroid/widget/TabWidget;

    invoke-virtual {v0}, Landroid/widget/TabWidget;->removeAllViews()V

    .line 257
    invoke-direct {p0}, Landroid/widget/TabHost;->initTabHost()V

    .line 258
    iget-object v0, p0, Landroid/widget/TabHost;->mTabContent:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 259
    iget-object v0, p0, Landroid/widget/TabHost;->mTabSpecs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 260
    invoke-virtual {p0}, Landroid/widget/TabHost;->requestLayout()V

    .line 261
    invoke-virtual {p0}, Landroid/widget/TabHost;->invalidate()V

    .line 262
    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 3
    .parameter "event"

    .prologue
    .line 309
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    .line 313
    .local v0, handled:Z
    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    const/16 v2, 0x13

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Landroid/widget/TabHost;->mCurrentView:Landroid/view/View;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/widget/TabHost;->mCurrentView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->isRootNamespace()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/widget/TabHost;->mCurrentView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->hasFocus()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/widget/TabHost;->mCurrentView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->findFocus()Landroid/view/View;

    move-result-object v1

    const/16 v2, 0x21

    invoke-virtual {v1, v2}, Landroid/view/View;->focusSearch(I)Landroid/view/View;

    move-result-object v1

    if-nez v1, :cond_0

    .line 320
    iget-object v1, p0, Landroid/widget/TabHost;->mTabWidget:Landroid/widget/TabWidget;

    iget v2, p0, Landroid/widget/TabHost;->mCurrentTab:I

    invoke-virtual {v1, v2}, Landroid/widget/TabWidget;->getChildTabViewAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->requestFocus()Z

    .line 321
    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Landroid/widget/TabHost;->playSoundEffect(I)V

    .line 322
    const/4 v0, 0x1

    .line 324
    .end local v0           #handled:Z
    :cond_0
    return v0
.end method

.method public dispatchWindowFocusChanged(Z)V
    .locals 1
    .parameter "hasFocus"

    .prologue
    .line 330
    iget-object v0, p0, Landroid/widget/TabHost;->mCurrentView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 331
    iget-object v0, p0, Landroid/widget/TabHost;->mCurrentView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->dispatchWindowFocusChanged(Z)V

    .line 333
    :cond_0
    return-void
.end method

.method public getCurrentTab()I
    .locals 1

    .prologue
    .line 269
    iget v0, p0, Landroid/widget/TabHost;->mCurrentTab:I

    return v0
.end method

.method public getCurrentTabTag()Ljava/lang/String;
    .locals 2

    .prologue
    .line 273
    iget v0, p0, Landroid/widget/TabHost;->mCurrentTab:I

    if-ltz v0, :cond_0

    iget v0, p0, Landroid/widget/TabHost;->mCurrentTab:I

    iget-object v1, p0, Landroid/widget/TabHost;->mTabSpecs:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 274
    iget-object v0, p0, Landroid/widget/TabHost;->mTabSpecs:Ljava/util/List;

    iget v1, p0, Landroid/widget/TabHost;->mCurrentTab:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TabHost$TabSpec;

    invoke-virtual {v0}, Landroid/widget/TabHost$TabSpec;->getTag()Ljava/lang/String;

    move-result-object v0

    .line 276
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getCurrentTabView()Landroid/view/View;
    .locals 2

    .prologue
    .line 280
    iget v0, p0, Landroid/widget/TabHost;->mCurrentTab:I

    if-ltz v0, :cond_0

    iget v0, p0, Landroid/widget/TabHost;->mCurrentTab:I

    iget-object v1, p0, Landroid/widget/TabHost;->mTabSpecs:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 281
    iget-object v0, p0, Landroid/widget/TabHost;->mTabWidget:Landroid/widget/TabWidget;

    iget v1, p0, Landroid/widget/TabHost;->mCurrentTab:I

    invoke-virtual {v0, v1}, Landroid/widget/TabWidget;->getChildTabViewAt(I)Landroid/view/View;

    move-result-object v0

    .line 283
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getCurrentView()Landroid/view/View;
    .locals 1

    .prologue
    .line 287
    iget-object v0, p0, Landroid/widget/TabHost;->mCurrentView:Landroid/view/View;

    return-object v0
.end method

.method public getTabContentView()Landroid/widget/FrameLayout;
    .locals 1

    .prologue
    .line 304
    iget-object v0, p0, Landroid/widget/TabHost;->mTabContent:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method public getTabWidget()Landroid/widget/TabWidget;
    .locals 1

    .prologue
    .line 265
    iget-object v0, p0, Landroid/widget/TabHost;->mTabWidget:Landroid/widget/TabWidget;

    return-object v0
.end method

.method public newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;
    .locals 2
    .parameter "tag"

    .prologue
    .line 107
    new-instance v0, Landroid/widget/TabHost$TabSpec;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Landroid/widget/TabHost$TabSpec;-><init>(Landroid/widget/TabHost;Ljava/lang/String;Landroid/widget/TabHost$1;)V

    return-object v0
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .prologue
    .line 185
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 186
    invoke-virtual {p0}, Landroid/widget/TabHost;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 187
    .local v0, treeObserver:Landroid/view/ViewTreeObserver;
    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->addOnTouchModeChangeListener(Landroid/view/ViewTreeObserver$OnTouchModeChangeListener;)V

    .line 188
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 192
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 193
    invoke-virtual {p0}, Landroid/widget/TabHost;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 194
    .local v0, treeObserver:Landroid/view/ViewTreeObserver;
    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnTouchModeChangeListener(Landroid/view/ViewTreeObserver$OnTouchModeChangeListener;)V

    .line 195
    return-void
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1
    .parameter "event"

    .prologue
    .line 337
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 338
    const-class v0, Landroid/widget/TabHost;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    .line 339
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 1
    .parameter "info"

    .prologue
    .line 343
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 344
    const-class v0, Landroid/widget/TabHost;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    .line 345
    return-void
.end method

.method public onTouchModeChanged(Z)V
    .locals 2
    .parameter "isInTouchMode"

    .prologue
    .line 201
    if-nez p1, :cond_0

    .line 204
    iget-object v0, p0, Landroid/widget/TabHost;->mCurrentView:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/TabHost;->mCurrentView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->isFocused()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 215
    iget-object v0, p0, Landroid/widget/TabHost;->mTabWidget:Landroid/widget/TabWidget;

    iget v1, p0, Landroid/widget/TabHost;->mCurrentTab:I

    invoke-virtual {v0, v1}, Landroid/widget/TabWidget;->getChildTabViewAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 218
    :cond_0
    return-void
.end method

.method public sendAccessibilityEvent(I)V
    .locals 0
    .parameter "eventType"

    .prologue
    .line 168
    return-void
.end method

.method public setCurrentTab(I)V
    .locals 5
    .parameter "index"

    .prologue
    const/4 v4, -0x1

    .line 348
    if-ltz p1, :cond_0

    iget-object v1, p0, Landroid/widget/TabHost;->mTabSpecs:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lt p1, v1, :cond_1

    .line 388
    :cond_0
    :goto_0
    return-void

    .line 352
    :cond_1
    iget v1, p0, Landroid/widget/TabHost;->mCurrentTab:I

    if-eq p1, v1, :cond_0

    .line 357
    iget v1, p0, Landroid/widget/TabHost;->mCurrentTab:I

    if-eq v1, v4, :cond_2

    .line 358
    iget-object v1, p0, Landroid/widget/TabHost;->mTabSpecs:Ljava/util/List;

    iget v2, p0, Landroid/widget/TabHost;->mCurrentTab:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/TabHost$TabSpec;

    #getter for: Landroid/widget/TabHost$TabSpec;->mContentStrategy:Landroid/widget/TabHost$ContentStrategy;
    invoke-static {v1}, Landroid/widget/TabHost$TabSpec;->access$300(Landroid/widget/TabHost$TabSpec;)Landroid/widget/TabHost$ContentStrategy;

    move-result-object v1

    invoke-interface {v1}, Landroid/widget/TabHost$ContentStrategy;->tabClosed()V

    .line 361
    :cond_2
    iput p1, p0, Landroid/widget/TabHost;->mCurrentTab:I

    .line 362
    iget-object v1, p0, Landroid/widget/TabHost;->mTabSpecs:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TabHost$TabSpec;

    .line 366
    .local v0, spec:Landroid/widget/TabHost$TabSpec;
    iget-object v1, p0, Landroid/widget/TabHost;->mTabWidget:Landroid/widget/TabWidget;

    iget v2, p0, Landroid/widget/TabHost;->mCurrentTab:I

    invoke-virtual {v1, v2}, Landroid/widget/TabWidget;->focusCurrentTab(I)V

    .line 369
    #getter for: Landroid/widget/TabHost$TabSpec;->mContentStrategy:Landroid/widget/TabHost$ContentStrategy;
    invoke-static {v0}, Landroid/widget/TabHost$TabSpec;->access$300(Landroid/widget/TabHost$TabSpec;)Landroid/widget/TabHost$ContentStrategy;

    move-result-object v1

    invoke-interface {v1}, Landroid/widget/TabHost$ContentStrategy;->getContentView()Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Landroid/widget/TabHost;->mCurrentView:Landroid/view/View;

    .line 371
    iget-object v1, p0, Landroid/widget/TabHost;->mCurrentView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-nez v1, :cond_3

    .line 372
    iget-object v1, p0, Landroid/widget/TabHost;->mTabContent:Landroid/widget/FrameLayout;

    iget-object v2, p0, Landroid/widget/TabHost;->mCurrentView:Landroid/view/View;

    new-instance v3, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v3, v4, v4}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 380
    :cond_3
    iget-object v1, p0, Landroid/widget/TabHost;->mTabWidget:Landroid/widget/TabWidget;

    invoke-virtual {v1}, Landroid/widget/TabWidget;->hasFocus()Z

    move-result v1

    if-nez v1, :cond_4

    .line 383
    iget-object v1, p0, Landroid/widget/TabHost;->mCurrentView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->requestFocus()Z

    .line 387
    :cond_4
    invoke-direct {p0}, Landroid/widget/TabHost;->invokeOnTabChangeListener()V

    goto :goto_0
.end method

.method public setCurrentTabByTag(Ljava/lang/String;)V
    .locals 2
    .parameter "tag"

    .prologue
    .line 292
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Landroid/widget/TabHost;->mTabSpecs:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 293
    iget-object v1, p0, Landroid/widget/TabHost;->mTabSpecs:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/TabHost$TabSpec;

    invoke-virtual {v1}, Landroid/widget/TabHost$TabSpec;->getTag()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 294
    invoke-virtual {p0, v0}, Landroid/widget/TabHost;->setCurrentTab(I)V

    .line 298
    :cond_0
    return-void

    .line 292
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public setOnTabChangedListener(Landroid/widget/TabHost$OnTabChangeListener;)V
    .locals 0
    .parameter "l"

    .prologue
    .line 397
    iput-object p1, p0, Landroid/widget/TabHost;->mOnTabChangeListener:Landroid/widget/TabHost$OnTabChangeListener;

    .line 398
    return-void
.end method

.method public setup()V
    .locals 2

    .prologue
    .line 122
    const v0, 0x1020013

    invoke-virtual {p0, v0}, Landroid/widget/TabHost;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TabWidget;

    iput-object v0, p0, Landroid/widget/TabHost;->mTabWidget:Landroid/widget/TabWidget;

    .line 123
    iget-object v0, p0, Landroid/widget/TabHost;->mTabWidget:Landroid/widget/TabWidget;

    if-nez v0, :cond_0

    .line 124
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Your TabHost must have a TabWidget whose id attribute is \'android.R.id.tabs\'"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 130
    :cond_0
    new-instance v0, Landroid/widget/TabHost$1;

    invoke-direct {v0, p0}, Landroid/widget/TabHost$1;-><init>(Landroid/widget/TabHost;)V

    iput-object v0, p0, Landroid/widget/TabHost;->mTabKeyListener:Landroid/view/View$OnKeyListener;

    .line 148
    iget-object v0, p0, Landroid/widget/TabHost;->mTabWidget:Landroid/widget/TabWidget;

    new-instance v1, Landroid/widget/TabHost$2;

    invoke-direct {v1, p0}, Landroid/widget/TabHost$2;-><init>(Landroid/widget/TabHost;)V

    invoke-virtual {v0, v1}, Landroid/widget/TabWidget;->setTabSelectionListener(Landroid/widget/TabWidget$OnTabSelectionChanged;)V

    .line 157
    const v0, 0x1020011

    invoke-virtual {p0, v0}, Landroid/widget/TabHost;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Landroid/widget/TabHost;->mTabContent:Landroid/widget/FrameLayout;

    .line 158
    iget-object v0, p0, Landroid/widget/TabHost;->mTabContent:Landroid/widget/FrameLayout;

    if-nez v0, :cond_1

    .line 159
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Your TabHost must have a FrameLayout whose id attribute is \'android.R.id.tabcontent\'"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 163
    :cond_1
    return-void
.end method

.method public setup(Landroid/app/LocalActivityManager;)V
    .locals 0
    .parameter "activityGroup"

    .prologue
    .line 178
    invoke-virtual {p0}, Landroid/widget/TabHost;->setup()V

    .line 179
    iput-object p1, p0, Landroid/widget/TabHost;->mLocalActivityManager:Landroid/app/LocalActivityManager;

    .line 180
    return-void
.end method
