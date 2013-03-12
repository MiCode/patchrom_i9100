.class public Lcom/android/internal/widget/ActionBarOverlayLayout;
.super Landroid/widget/FrameLayout;
.source "ActionBarOverlayLayout.java"


# static fields
.field static final mActionBarSizeAttr:[I


# instance fields
.field private mActionBar:Lcom/android/internal/app/ActionBarImpl;

.field private mActionBarBottom:Landroid/view/View;

.field private mActionBarHeight:I

.field private mActionBarTop:Landroid/view/View;

.field private mActionView:Lcom/android/internal/widget/ActionBarView;

.field private mContainerView:Lcom/android/internal/widget/ActionBarContainer;

.field private mContent:Landroid/view/View;

.field private mLastSystemUiVisibility:I

.field private mWindowVisibility:I

.field private final mZeroRect:Landroid/graphics/Rect;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 46
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x10102eb

    aput v2, v0, v1

    sput-object v0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mActionBarSizeAttr:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    const/4 v1, 0x0

    .line 51
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 37
    iput v1, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mWindowVisibility:I

    .line 44
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, v1, v1, v1, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v0, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mZeroRect:Landroid/graphics/Rect;

    .line 52
    invoke-direct {p0, p1}, Lcom/android/internal/widget/ActionBarOverlayLayout;->init(Landroid/content/Context;)V

    .line 53
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v1, 0x0

    .line 56
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 37
    iput v1, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mWindowVisibility:I

    .line 44
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, v1, v1, v1, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v0, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mZeroRect:Landroid/graphics/Rect;

    .line 57
    invoke-direct {p0, p1}, Lcom/android/internal/widget/ActionBarOverlayLayout;->init(Landroid/content/Context;)V

    .line 58
    return-void
.end method

.method private applyInsets(Landroid/view/View;Landroid/graphics/Rect;ZZZZ)Z
    .locals 4
    .parameter "view"
    .parameter "insets"
    .parameter "left"
    .parameter "top"
    .parameter "bottom"
    .parameter "right"

    .prologue
    .line 130
    const/4 v0, 0x0

    .line 131
    .local v0, changed:Z
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    .line 132
    .local v1, lp:Landroid/widget/FrameLayout$LayoutParams;
    if-eqz p3, :cond_0

    iget v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iget v3, p2, Landroid/graphics/Rect;->left:I

    if-eq v2, v3, :cond_0

    .line 133
    const/4 v0, 0x1

    .line 134
    iget v2, p2, Landroid/graphics/Rect;->left:I

    iput v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 136
    :cond_0
    if-eqz p4, :cond_1

    iget v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget v3, p2, Landroid/graphics/Rect;->top:I

    if-eq v2, v3, :cond_1

    .line 137
    const/4 v0, 0x1

    .line 138
    iget v2, p2, Landroid/graphics/Rect;->top:I

    iput v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 140
    :cond_1
    if-eqz p6, :cond_2

    iget v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    iget v3, p2, Landroid/graphics/Rect;->right:I

    if-eq v2, v3, :cond_2

    .line 141
    const/4 v0, 0x1

    .line 142
    iget v2, p2, Landroid/graphics/Rect;->right:I

    iput v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 144
    :cond_2
    if-eqz p5, :cond_3

    iget v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    iget v3, p2, Landroid/graphics/Rect;->bottom:I

    if-eq v2, v3, :cond_3

    .line 145
    const/4 v0, 0x1

    .line 146
    iget v2, p2, Landroid/graphics/Rect;->bottom:I

    iput v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 148
    :cond_3
    return v0
.end method

.method private init(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    const/4 v3, 0x0

    .line 61
    invoke-virtual {p0}, Lcom/android/internal/widget/ActionBarOverlayLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    sget-object v2, Lcom/android/internal/widget/ActionBarOverlayLayout;->mActionBarSizeAttr:[I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 62
    .local v0, ta:Landroid/content/res/TypedArray;
    invoke-virtual {v0, v3, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mActionBarHeight:I

    .line 63
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 64
    return-void
.end method


# virtual methods
.method protected fitSystemWindows(Landroid/graphics/Rect;)Z
    .locals 11
    .parameter "insets"

    .prologue
    .line 153
    invoke-virtual {p0}, Lcom/android/internal/widget/ActionBarOverlayLayout;->pullChildren()V

    .line 155
    invoke-virtual {p0}, Lcom/android/internal/widget/ActionBarOverlayLayout;->getWindowSystemUiVisibility()I

    move-result v10

    .line 156
    .local v10, vis:I
    and-int/lit16 v0, v10, 0x100

    if-eqz v0, :cond_8

    const/4 v8, 0x1

    .line 159
    .local v8, stable:Z
    :goto_0
    iget-object v1, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mActionBarTop:Landroid/view/View;

    const/4 v3, 0x1

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x1

    move-object v0, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v6}, Lcom/android/internal/widget/ActionBarOverlayLayout;->applyInsets(Landroid/view/View;Landroid/graphics/Rect;ZZZZ)Z

    move-result v7

    .line 160
    .local v7, changed:Z
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mActionBarBottom:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 161
    iget-object v1, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mActionBarBottom:Landroid/view/View;

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x1

    move-object v0, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v6}, Lcom/android/internal/widget/ActionBarOverlayLayout;->applyInsets(Landroid/view/View;Landroid/graphics/Rect;ZZZZ)Z

    move-result v0

    or-int/2addr v7, v0

    .line 168
    :cond_0
    and-int/lit16 v0, v10, 0x600

    if-nez v0, :cond_9

    .line 169
    iget-object v1, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mContent:Landroid/view/View;

    const/4 v3, 0x1

    const/4 v4, 0x1

    const/4 v5, 0x1

    const/4 v6, 0x1

    move-object v0, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v6}, Lcom/android/internal/widget/ActionBarOverlayLayout;->applyInsets(Landroid/view/View;Landroid/graphics/Rect;ZZZZ)Z

    move-result v0

    or-int/2addr v7, v0

    .line 171
    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Rect;->set(IIII)V

    .line 177
    :goto_1
    if-nez v8, :cond_1

    iget-object v0, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mActionBarTop:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_2

    .line 179
    :cond_1
    iget v0, p1, Landroid/graphics/Rect;->top:I

    iget v1, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mActionBarHeight:I

    add-int/2addr v0, v1

    iput v0, p1, Landroid/graphics/Rect;->top:I

    .line 182
    :cond_2
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mActionBar:Lcom/android/internal/app/ActionBarImpl;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mActionBar:Lcom/android/internal/app/ActionBarImpl;

    invoke-virtual {v0}, Lcom/android/internal/app/ActionBarImpl;->hasNonEmbeddedTabs()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 183
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mContainerView:Lcom/android/internal/widget/ActionBarContainer;

    invoke-virtual {v0}, Lcom/android/internal/widget/ActionBarContainer;->getTabContainer()Landroid/view/View;

    move-result-object v9

    .line 184
    .local v9, tabs:Landroid/view/View;
    if-nez v8, :cond_3

    if-eqz v9, :cond_4

    invoke-virtual {v9}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_4

    .line 186
    :cond_3
    iget v0, p1, Landroid/graphics/Rect;->top:I

    iget v1, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mActionBarHeight:I

    add-int/2addr v0, v1

    iput v0, p1, Landroid/graphics/Rect;->top:I

    .line 190
    .end local v9           #tabs:Landroid/view/View;
    :cond_4
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mActionView:Lcom/android/internal/widget/ActionBarView;

    invoke-virtual {v0}, Lcom/android/internal/widget/ActionBarView;->isSplitActionBar()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 191
    if-nez v8, :cond_5

    iget-object v0, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mActionBarBottom:Landroid/view/View;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mActionBarBottom:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_6

    .line 194
    :cond_5
    iget v0, p1, Landroid/graphics/Rect;->bottom:I

    iget v1, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mActionBarHeight:I

    add-int/2addr v0, v1

    iput v0, p1, Landroid/graphics/Rect;->bottom:I

    .line 198
    :cond_6
    if-eqz v7, :cond_7

    .line 199
    invoke-virtual {p0}, Lcom/android/internal/widget/ActionBarOverlayLayout;->requestLayout()V

    .line 202
    :cond_7
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->fitSystemWindows(Landroid/graphics/Rect;)Z

    move-result v0

    return v0

    .line 156
    .end local v7           #changed:Z
    .end local v8           #stable:Z
    :cond_8
    const/4 v8, 0x0

    goto/16 :goto_0

    .line 173
    .restart local v7       #changed:Z
    .restart local v8       #stable:Z
    :cond_9
    iget-object v1, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mContent:Landroid/view/View;

    iget-object v2, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mZeroRect:Landroid/graphics/Rect;

    const/4 v3, 0x1

    const/4 v4, 0x1

    const/4 v5, 0x1

    const/4 v6, 0x1

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/internal/widget/ActionBarOverlayLayout;->applyInsets(Landroid/view/View;Landroid/graphics/Rect;ZZZZ)Z

    move-result v0

    or-int/2addr v7, v0

    goto :goto_1
.end method

.method public onWindowSystemUiVisibilityChanged(I)V
    .locals 5
    .parameter "visible"

    .prologue
    const/4 v3, 0x1

    .line 102
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onWindowSystemUiVisibilityChanged(I)V

    .line 103
    invoke-virtual {p0}, Lcom/android/internal/widget/ActionBarOverlayLayout;->pullChildren()V

    .line 104
    iget v4, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mLastSystemUiVisibility:I

    xor-int v1, v4, p1

    .line 105
    .local v1, diff:I
    iput p1, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mLastSystemUiVisibility:I

    .line 106
    and-int/lit8 v4, p1, 0x4

    if-nez v4, :cond_2

    move v0, v3

    .line 107
    .local v0, barVisible:Z
    :goto_0
    iget-object v4, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mActionBar:Lcom/android/internal/app/ActionBarImpl;

    if-eqz v4, :cond_3

    iget-object v3, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mActionBar:Lcom/android/internal/app/ActionBarImpl;

    invoke-virtual {v3}, Lcom/android/internal/app/ActionBarImpl;->isSystemShowing()Z

    move-result v2

    .line 108
    .local v2, wasVisible:Z
    :goto_1
    iget-object v3, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mActionBar:Lcom/android/internal/app/ActionBarImpl;

    if-eqz v3, :cond_0

    .line 109
    if-eqz v0, :cond_4

    iget-object v3, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mActionBar:Lcom/android/internal/app/ActionBarImpl;

    invoke-virtual {v3}, Lcom/android/internal/app/ActionBarImpl;->showForSystem()V

    .line 112
    :cond_0
    :goto_2
    and-int/lit16 v3, v1, 0x100

    if-eqz v3, :cond_1

    .line 113
    iget-object v3, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mActionBar:Lcom/android/internal/app/ActionBarImpl;

    if-eqz v3, :cond_1

    .line 114
    invoke-virtual {p0}, Lcom/android/internal/widget/ActionBarOverlayLayout;->requestFitSystemWindows()V

    .line 117
    :cond_1
    return-void

    .line 106
    .end local v0           #barVisible:Z
    .end local v2           #wasVisible:Z
    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    .restart local v0       #barVisible:Z
    :cond_3
    move v2, v3

    .line 107
    goto :goto_1

    .line 110
    .restart local v2       #wasVisible:Z
    :cond_4
    iget-object v3, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mActionBar:Lcom/android/internal/app/ActionBarImpl;

    invoke-virtual {v3}, Lcom/android/internal/app/ActionBarImpl;->hideForSystem()V

    goto :goto_2
.end method

.method protected onWindowVisibilityChanged(I)V
    .locals 1
    .parameter "visibility"

    .prologue
    .line 121
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onWindowVisibilityChanged(I)V

    .line 122
    iput p1, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mWindowVisibility:I

    .line 123
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mActionBar:Lcom/android/internal/app/ActionBarImpl;

    if-eqz v0, :cond_0

    .line 124
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mActionBar:Lcom/android/internal/app/ActionBarImpl;

    invoke-virtual {v0, p1}, Lcom/android/internal/app/ActionBarImpl;->setWindowVisibility(I)V

    .line 126
    :cond_0
    return-void
.end method

.method pullChildren()V
    .locals 1

    .prologue
    .line 206
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mContent:Landroid/view/View;

    if-nez v0, :cond_0

    .line 207
    const v0, 0x1020002

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/ActionBarOverlayLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mContent:Landroid/view/View;

    .line 208
    const v0, 0x10203fb

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/ActionBarOverlayLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mActionBarTop:Landroid/view/View;

    .line 209
    const v0, 0x10203f6

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/ActionBarOverlayLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/ActionBarContainer;

    iput-object v0, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mContainerView:Lcom/android/internal/widget/ActionBarContainer;

    .line 211
    const v0, 0x10203f7

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/ActionBarOverlayLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/ActionBarView;

    iput-object v0, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mActionView:Lcom/android/internal/widget/ActionBarView;

    .line 212
    const v0, 0x10203f9

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/ActionBarOverlayLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mActionBarBottom:Landroid/view/View;

    .line 214
    :cond_0
    return-void
.end method

.method public setActionBar(Lcom/android/internal/app/ActionBarImpl;)V
    .locals 3
    .parameter "impl"

    .prologue
    .line 67
    iput-object p1, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mActionBar:Lcom/android/internal/app/ActionBarImpl;

    .line 68
    invoke-virtual {p0}, Lcom/android/internal/widget/ActionBarOverlayLayout;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 71
    iget-object v1, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mActionBar:Lcom/android/internal/app/ActionBarImpl;

    iget v2, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mWindowVisibility:I

    invoke-virtual {v1, v2}, Lcom/android/internal/app/ActionBarImpl;->setWindowVisibility(I)V

    .line 72
    iget v1, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mLastSystemUiVisibility:I

    if-eqz v1, :cond_0

    .line 73
    iget v0, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mLastSystemUiVisibility:I

    .line 74
    .local v0, newVis:I
    invoke-virtual {p0, v0}, Lcom/android/internal/widget/ActionBarOverlayLayout;->onWindowSystemUiVisibilityChanged(I)V

    .line 75
    invoke-virtual {p0}, Lcom/android/internal/widget/ActionBarOverlayLayout;->requestFitSystemWindows()V

    .line 78
    .end local v0           #newVis:I
    :cond_0
    return-void
.end method

.method public setShowingForActionMode(Z)V
    .locals 2
    .parameter "showing"

    .prologue
    .line 81
    if-eqz p1, :cond_1

    .line 90
    invoke-virtual {p0}, Lcom/android/internal/widget/ActionBarOverlayLayout;->getWindowSystemUiVisibility()I

    move-result v0

    and-int/lit16 v0, v0, 0x500

    const/16 v1, 0x500

    if-ne v0, v1, :cond_0

    .line 93
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/ActionBarOverlayLayout;->setDisabledSystemUiVisibility(I)V

    .line 98
    :cond_0
    :goto_0
    return-void

    .line 96
    :cond_1
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/ActionBarOverlayLayout;->setDisabledSystemUiVisibility(I)V

    goto :goto_0
.end method
