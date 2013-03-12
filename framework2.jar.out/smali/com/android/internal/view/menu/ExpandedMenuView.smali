.class public final Lcom/android/internal/view/menu/ExpandedMenuView;
.super Landroid/widget/ListView;
.source "ExpandedMenuView.java"

# interfaces
.implements Lcom/android/internal/view/menu/MenuBuilder$ItemInvoker;
.implements Lcom/android/internal/view/menu/MenuView;
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field private isDeviceDefault:I

.field private mAnimations:I

.field private mMenu:Lcom/android/internal/view/menu/MenuBuilder;

.field private mVisibleMaxHeight:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v3, 0x0

    .line 57
    invoke-direct {p0, p1, p2}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 59
    sget-object v2, Lcom/android/internal/R$styleable;->MenuView:[I

    invoke-virtual {p1, p2, v2, v3, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 60
    .local v0, a:Landroid/content/res/TypedArray;
    invoke-virtual {v0, v3, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    iput v2, p0, Lcom/android/internal/view/menu/ExpandedMenuView;->mAnimations:I

    .line 61
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 64
    new-instance v1, Landroid/util/TypedValue;

    invoke-direct {v1}, Landroid/util/TypedValue;-><init>()V

    .line 65
    .local v1, outValue:Landroid/util/TypedValue;
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    const v3, 0x10103fd

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v1, v4}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 66
    iget v2, v1, Landroid/util/TypedValue;->data:I

    iput v2, p0, Lcom/android/internal/view/menu/ExpandedMenuView;->isDeviceDefault:I

    .line 68
    invoke-virtual {p0, p0}, Lcom/android/internal/view/menu/ExpandedMenuView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 69
    return-void
.end method


# virtual methods
.method public getWindowAnimations()I
    .locals 1

    .prologue
    .line 98
    iget v0, p0, Lcom/android/internal/view/menu/ExpandedMenuView;->mAnimations:I

    return v0
.end method

.method public initialize(Lcom/android/internal/view/menu/MenuBuilder;)V
    .locals 2
    .parameter "menu"

    .prologue
    .line 72
    iput-object p1, p0, Lcom/android/internal/view/menu/ExpandedMenuView;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    .line 75
    iget v0, p0, Lcom/android/internal/view/menu/ExpandedMenuView;->isDeviceDefault:I

    if-eqz v0, :cond_0

    .line 76
    iget-object v0, p0, Lcom/android/internal/view/menu/ExpandedMenuView;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/internal/view/menu/MenuBuilder;->setOptionalIconsVisible(Z)V

    .line 79
    :cond_0
    return-void
.end method

.method public invokeItem(Lcom/android/internal/view/menu/MenuItemImpl;)Z
    .locals 2
    .parameter "item"

    .prologue
    .line 90
    iget-object v0, p0, Lcom/android/internal/view/menu/ExpandedMenuView;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/android/internal/view/menu/MenuBuilder;->performItemAction(Landroid/view/MenuItem;I)Z

    move-result v0

    return v0
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 83
    invoke-super {p0}, Landroid/widget/ListView;->onDetachedFromWindow()V

    .line 86
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/internal/view/menu/ExpandedMenuView;->setChildrenDrawingCacheEnabled(Z)V

    .line 87
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 1
    .parameter "parent"
    .parameter "v"
    .parameter "position"
    .parameter "id"

    .prologue
    .line 94
    invoke-virtual {p0}, Lcom/android/internal/view/menu/ExpandedMenuView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    invoke-interface {v0, p3}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/view/menu/MenuItemImpl;

    invoke-virtual {p0, v0}, Lcom/android/internal/view/menu/ExpandedMenuView;->invokeItem(Lcom/android/internal/view/menu/MenuItemImpl;)Z

    .line 95
    return-void
.end method

.method protected onMeasure(II)V
    .locals 13
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    const/4 v12, 0x0

    .line 104
    invoke-super {p0, p1, p2}, Landroid/widget/ListView;->onMeasure(II)V

    .line 107
    iget v9, p0, Lcom/android/internal/view/menu/ExpandedMenuView;->isDeviceDefault:I

    if-eqz v9, :cond_2

    .line 109
    invoke-virtual {p0}, Lcom/android/internal/view/menu/ExpandedMenuView;->getMeasuredHeight()I

    move-result v4

    .line 110
    .local v4, mMeasuredHeight:I
    iget-object v9, p0, Landroid/widget/AdapterView;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x1050087

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    .line 113
    .local v5, mVisibleMaxHeight:I
    iget-object v9, p0, Landroid/widget/AdapterView;->mContext:Landroid/content/Context;

    invoke-static {v9}, Landroid/sec/multiwindow/impl/MultiWindowManager;->isPhone(Landroid/content/Context;)Z

    move-result v9

    if-eqz v9, :cond_1

    iget-object v9, p0, Landroid/widget/AdapterView;->mContext:Landroid/content/Context;

    instance-of v9, v9, Landroid/content/ContextWrapper;

    if-eqz v9, :cond_1

    iget-object v9, p0, Landroid/widget/AdapterView;->mContext:Landroid/content/Context;

    check-cast v9, Landroid/content/ContextWrapper;

    invoke-virtual {v9}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v9

    instance-of v9, v9, Landroid/app/Activity;

    if-eqz v9, :cond_1

    .line 114
    iget-object v9, p0, Landroid/widget/AdapterView;->mContext:Landroid/content/Context;

    check-cast v9, Landroid/content/ContextWrapper;

    invoke-virtual {v9}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    .line 115
    .local v1, a:Landroid/app/Activity;
    invoke-virtual {v1}, Landroid/app/Activity;->getWindowMode()I

    move-result v8

    .line 116
    .local v8, windowMode:I
    invoke-static {v8}, Landroid/view/WindowManagerPolicy$WindowModeHelper;->mode(I)I

    move-result v9

    const/high16 v10, 0x200

    if-ne v9, v10, :cond_1

    invoke-static {v8}, Landroid/view/WindowManagerPolicy$WindowModeHelper;->option(I)I

    move-result v9

    and-int/lit8 v9, v9, 0x18

    if-eqz v9, :cond_1

    .line 118
    invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v9

    invoke-virtual {v9}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v9

    invoke-virtual {v9}, Landroid/view/View;->getHeight()I

    move-result v3

    .line 120
    .local v3, activityHeight:I
    invoke-virtual {p0}, Lcom/android/internal/view/menu/ExpandedMenuView;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v9

    const/4 v10, 0x1

    new-array v10, v10, [I

    const v11, 0x10102eb

    aput v11, v10, v12

    invoke-virtual {v9, v10}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v7

    .line 121
    .local v7, ta:Landroid/content/res/TypedArray;
    invoke-virtual {v7, v12, v12}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    .line 122
    .local v2, actionBarHeight:I
    invoke-virtual {v7}, Landroid/content/res/TypedArray;->recycle()V

    .line 124
    const/16 v0, 0x14

    .line 126
    .local v0, MARGIN:I
    sub-int v9, v3, v2

    add-int/lit8 v6, v9, -0x14

    .line 127
    .local v6, recommandHeight:I
    if-ge v6, v2, :cond_0

    .line 128
    move v6, v2

    .line 131
    :cond_0
    if-nez v5, :cond_3

    .line 132
    move v5, v6

    .line 140
    .end local v0           #MARGIN:I
    .end local v1           #a:Landroid/app/Activity;
    .end local v2           #actionBarHeight:I
    .end local v3           #activityHeight:I
    .end local v6           #recommandHeight:I
    .end local v7           #ta:Landroid/content/res/TypedArray;
    .end local v8           #windowMode:I
    :cond_1
    :goto_0
    if-le v4, v5, :cond_2

    if-eqz v5, :cond_2

    .line 142
    invoke-virtual {p0}, Lcom/android/internal/view/menu/ExpandedMenuView;->getMeasuredWidth()I

    move-result v9

    invoke-virtual {p0, v9, v5}, Lcom/android/internal/view/menu/ExpandedMenuView;->setMeasuredDimension(II)V

    .line 145
    .end local v4           #mMeasuredHeight:I
    .end local v5           #mVisibleMaxHeight:I
    :cond_2
    return-void

    .line 133
    .restart local v0       #MARGIN:I
    .restart local v1       #a:Landroid/app/Activity;
    .restart local v2       #actionBarHeight:I
    .restart local v3       #activityHeight:I
    .restart local v4       #mMeasuredHeight:I
    .restart local v5       #mVisibleMaxHeight:I
    .restart local v6       #recommandHeight:I
    .restart local v7       #ta:Landroid/content/res/TypedArray;
    .restart local v8       #windowMode:I
    :cond_3
    if-le v5, v6, :cond_1

    .line 134
    move v5, v6

    goto :goto_0
.end method
