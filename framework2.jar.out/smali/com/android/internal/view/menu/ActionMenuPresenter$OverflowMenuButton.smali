.class Lcom/android/internal/view/menu/ActionMenuPresenter$OverflowMenuButton;
.super Landroid/widget/ImageButton;
.source "ActionMenuPresenter.java"

# interfaces
.implements Lcom/android/internal/view/menu/ActionMenuView$ActionMenuChildView;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/view/menu/ActionMenuPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OverflowMenuButton"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/view/menu/ActionMenuPresenter;


# direct methods
.method public constructor <init>(Lcom/android/internal/view/menu/ActionMenuPresenter;Landroid/content/Context;)V
    .locals 3
    .parameter
    .parameter "context"

    .prologue
    const/4 v2, 0x1

    .line 727
    iput-object p1, p0, Lcom/android/internal/view/menu/ActionMenuPresenter$OverflowMenuButton;->this$0:Lcom/android/internal/view/menu/ActionMenuPresenter;

    .line 728
    const/4 v0, 0x0

    const v1, 0x10102f6

    invoke-direct {p0, p2, v0, v1}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 730
    invoke-virtual {p0, v2}, Lcom/android/internal/view/menu/ActionMenuPresenter$OverflowMenuButton;->setClickable(Z)V

    .line 731
    invoke-virtual {p0, v2}, Lcom/android/internal/view/menu/ActionMenuPresenter$OverflowMenuButton;->setFocusable(Z)V

    .line 732
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/internal/view/menu/ActionMenuPresenter$OverflowMenuButton;->setVisibility(I)V

    .line 733
    invoke-virtual {p0, v2}, Lcom/android/internal/view/menu/ActionMenuPresenter$OverflowMenuButton;->setEnabled(Z)V

    .line 736
    #getter for: Lcom/android/internal/view/menu/ActionMenuPresenter;->mIsParentThemeDeviceDefault:Z
    invoke-static {p1}, Lcom/android/internal/view/menu/ActionMenuPresenter;->access$100(Lcom/android/internal/view/menu/ActionMenuPresenter;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 737
    invoke-virtual {p0, v2}, Lcom/android/internal/view/menu/ActionMenuPresenter$OverflowMenuButton;->setHoverPopupType(I)V

    .line 739
    invoke-virtual {p0, v2}, Lcom/android/internal/view/menu/ActionMenuPresenter$OverflowMenuButton;->setLongClickable(Z)V

    .line 742
    :cond_0
    return-void
.end method


# virtual methods
.method public needsDividerAfter()Z
    .locals 1

    .prologue
    .line 819
    const/4 v0, 0x0

    return v0
.end method

.method public needsDividerBefore()Z
    .locals 1

    .prologue
    .line 815
    const/4 v0, 0x0

    return v0
.end method

.method public performClick()Z
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 746
    invoke-super {p0}, Landroid/widget/ImageButton;->performClick()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 752
    :goto_0
    return v1

    .line 750
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/internal/view/menu/ActionMenuPresenter$OverflowMenuButton;->playSoundEffect(I)V

    .line 751
    iget-object v0, p0, Lcom/android/internal/view/menu/ActionMenuPresenter$OverflowMenuButton;->this$0:Lcom/android/internal/view/menu/ActionMenuPresenter;

    invoke-virtual {v0}, Lcom/android/internal/view/menu/ActionMenuPresenter;->showOverflowMenu()Z

    goto :goto_0
.end method

.method public performLongClick()Z
    .locals 17

    .prologue
    .line 758
    invoke-super/range {p0 .. p0}, Landroid/widget/ImageButton;->performLongClick()Z

    move-result v13

    if-eqz v13, :cond_0

    .line 759
    const/4 v13, 0x1

    .line 810
    :goto_0
    return v13

    .line 762
    :cond_0
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/view/menu/ActionMenuPresenter$OverflowMenuButton;->this$0:Lcom/android/internal/view/menu/ActionMenuPresenter;

    #getter for: Lcom/android/internal/view/menu/ActionMenuPresenter;->mIsParentThemeDeviceDefault:Z
    invoke-static {v13}, Lcom/android/internal/view/menu/ActionMenuPresenter;->access$100(Lcom/android/internal/view/menu/ActionMenuPresenter;)Z

    move-result v13

    if-eqz v13, :cond_6

    .line 763
    const/4 v13, 0x2

    new-array v8, v13, [I

    .line 764
    .local v8, screenPos:[I
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    .line 765
    .local v3, displayFrame:Landroid/graphics/Rect;
    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lcom/android/internal/view/menu/ActionMenuPresenter$OverflowMenuButton;->getLocationOnScreen([I)V

    .line 766
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/view/menu/ActionMenuPresenter$OverflowMenuButton;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 768
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/view/menu/ActionMenuPresenter$OverflowMenuButton;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 769
    .local v2, context:Landroid/content/Context;
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/view/menu/ActionMenuPresenter$OverflowMenuButton;->getWidth()I

    move-result v11

    .line 770
    .local v11, width:I
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/view/menu/ActionMenuPresenter$OverflowMenuButton;->getHeight()I

    move-result v4

    .line 771
    .local v4, height:I
    const/4 v13, 0x1

    aget v13, v8, v13

    div-int/lit8 v14, v4, 0x2

    add-int v6, v13, v14

    .line 772
    .local v6, midy:I
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    invoke-virtual {v13}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v13

    iget v9, v13, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 775
    .local v9, screenWidth:I
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/view/menu/ActionMenuPresenter$OverflowMenuButton;->getRootView()Landroid/view/View;

    move-result-object v7

    .line 776
    .local v7, root:Landroid/view/View;
    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v10

    .line 777
    .local v10, vlp:Landroid/view/ViewGroup$LayoutParams;
    const/4 v12, 0x0

    .line 779
    .local v12, wlp:Landroid/view/WindowManager$LayoutParams;
    instance-of v13, v10, Landroid/view/WindowManager$LayoutParams;

    if-eqz v13, :cond_2

    move-object v12, v10

    .line 780
    check-cast v12, Landroid/view/WindowManager$LayoutParams;

    .line 781
    iget v13, v12, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit16 v13, v13, 0x200

    if-nez v13, :cond_3

    const/4 v5, 0x0

    .line 782
    .local v5, isMultiWindowPopup:Z
    :goto_1
    if-eqz v5, :cond_2

    iget v13, v3, Landroid/graphics/Rect;->left:I

    if-ltz v13, :cond_1

    iget v13, v3, Landroid/graphics/Rect;->top:I

    if-gez v13, :cond_2

    .line 783
    :cond_1
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/view/menu/ActionMenuPresenter$OverflowMenuButton;->this$0:Lcom/android/internal/view/menu/ActionMenuPresenter;

    move-object/from16 v0, p0

    #calls: Lcom/android/internal/view/menu/ActionMenuPresenter;->getVisibleDisplayRect(Landroid/view/View;Landroid/graphics/Rect;)V
    invoke-static {v13, v0, v3}, Lcom/android/internal/view/menu/ActionMenuPresenter;->access$200(Lcom/android/internal/view/menu/ActionMenuPresenter;Landroid/view/View;Landroid/graphics/Rect;)V

    .line 788
    .end local v5           #isMultiWindowPopup:Z
    :cond_2
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/view/menu/ActionMenuPresenter$OverflowMenuButton;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v13

    const/4 v14, 0x0

    invoke-static {v2, v13, v14}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    .line 789
    .local v1, cheatSheet:Landroid/widget/Toast;
    const/4 v13, 0x1

    aget v13, v8, v13

    add-int/2addr v13, v4

    iget v14, v3, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v14, v4

    if-ge v13, v14, :cond_5

    .line 791
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    invoke-virtual {v13}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v13

    iget v13, v13, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    const/16 v14, 0x2d0

    if-lt v13, v14, :cond_4

    .line 792
    const/16 v13, 0x35

    const/4 v14, 0x0

    aget v14, v8, v14

    sub-int v14, v9, v14

    div-int/lit8 v15, v11, 0x2

    sub-int/2addr v14, v15

    const/4 v15, 0x1

    aget v15, v8, v15

    add-int/2addr v15, v4

    invoke-virtual {v1, v13, v14, v15}, Landroid/widget/Toast;->setGravity(III)V

    .line 805
    :goto_2
    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 806
    const/4 v13, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/internal/view/menu/ActionMenuPresenter$OverflowMenuButton;->performHapticFeedback(I)Z

    .line 808
    const/4 v13, 0x1

    goto/16 :goto_0

    .line 781
    .end local v1           #cheatSheet:Landroid/widget/Toast;
    :cond_3
    const/4 v5, 0x1

    goto :goto_1

    .line 796
    .restart local v1       #cheatSheet:Landroid/widget/Toast;
    :cond_4
    const/16 v13, 0x35

    const/4 v14, 0x0

    aget v14, v8, v14

    sub-int v14, v9, v14

    div-int/lit8 v15, v11, 0x2

    sub-int/2addr v14, v15

    const/4 v15, 0x1

    aget v15, v8, v15

    add-int/2addr v15, v4

    iget v0, v3, Landroid/graphics/Rect;->top:I

    move/from16 v16, v0

    sub-int v15, v15, v16

    invoke-virtual {v1, v13, v14, v15}, Landroid/widget/Toast;->setGravity(III)V

    goto :goto_2

    .line 802
    :cond_5
    const/16 v13, 0x51

    const/4 v14, 0x0

    invoke-virtual {v1, v13, v14, v4}, Landroid/widget/Toast;->setGravity(III)V

    goto :goto_2

    .line 810
    .end local v1           #cheatSheet:Landroid/widget/Toast;
    .end local v2           #context:Landroid/content/Context;
    .end local v3           #displayFrame:Landroid/graphics/Rect;
    .end local v4           #height:I
    .end local v6           #midy:I
    .end local v7           #root:Landroid/view/View;
    .end local v8           #screenPos:[I
    .end local v9           #screenWidth:I
    .end local v10           #vlp:Landroid/view/ViewGroup$LayoutParams;
    .end local v11           #width:I
    .end local v12           #wlp:Landroid/view/WindowManager$LayoutParams;
    :cond_6
    const/4 v13, 0x0

    goto/16 :goto_0
.end method
