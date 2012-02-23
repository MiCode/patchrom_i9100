.class Landroid/widget/TextView$SelectionActionModeCallback;
.super Ljava/lang/Object;
.source "TextView.java"

# interfaces
.implements Landroid/view/ActionMode$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/TextView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SelectionActionModeCallback"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/TextView;


# direct methods
.method private constructor <init>(Landroid/widget/TextView;)V
    .locals 0
    .parameter

    .prologue
    .line 10539
    iput-object p1, p0, Landroid/widget/TextView$SelectionActionModeCallback;->this$0:Landroid/widget/TextView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/widget/TextView;Landroid/widget/TextView$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 10539
    invoke-direct {p0, p1}, Landroid/widget/TextView$SelectionActionModeCallback;-><init>(Landroid/widget/TextView;)V

    return-void
.end method


# virtual methods
.method public onActionItemClicked(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z
    .locals 2
    .parameter "mode"
    .parameter "item"

    .prologue
    .line 10660
    iget-object v0, p0, Landroid/widget/TextView$SelectionActionModeCallback;->this$0:Landroid/widget/TextView;

    #getter for: Landroid/widget/TextView;->mCustomSelectionActionModeCallback:Landroid/view/ActionMode$Callback;
    invoke-static {v0}, Landroid/widget/TextView;->access$5500(Landroid/widget/TextView;)Landroid/view/ActionMode$Callback;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/TextView$SelectionActionModeCallback;->this$0:Landroid/widget/TextView;

    #getter for: Landroid/widget/TextView;->mCustomSelectionActionModeCallback:Landroid/view/ActionMode$Callback;
    invoke-static {v0}, Landroid/widget/TextView;->access$5500(Landroid/widget/TextView;)Landroid/view/ActionMode$Callback;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/view/ActionMode$Callback;->onActionItemClicked(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 10662
    const/4 v0, 0x1

    .line 10664
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Landroid/widget/TextView$SelectionActionModeCallback;->this$0:Landroid/widget/TextView;

    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->onTextContextMenuItem(I)Z

    move-result v0

    goto :goto_0
.end method

.method public onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 17
    .parameter "mode"
    .parameter "menu"

    .prologue
    .line 10543
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/widget/TextView$SelectionActionModeCallback;->this$0:Landroid/widget/TextView;

    #getter for: Landroid/view/View;->mContext:Landroid/content/Context;
    invoke-static {v12}, Landroid/widget/TextView;->access$4700(Landroid/widget/TextView;)Landroid/content/Context;

    move-result-object v12

    sget-object v13, Lcom/android/internal/R$styleable;->SelectionModeDrawables:[I

    invoke-virtual {v12, v13}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v11

    .line 10546
    .local v11, styledAttributes:Landroid/content/res/TypedArray;
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/widget/TextView$SelectionActionModeCallback;->this$0:Landroid/widget/TextView;

    invoke-virtual {v12}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v12

    invoke-virtual {v12}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x1110038

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    .line 10555
    .local v3, allowText:Z
    const/4 v9, 0x0

    .line 10556
    .local v9, selectAllIconId:I
    if-nez v3, :cond_0

    .line 10558
    const/4 v12, 0x3

    const/4 v13, 0x0

    invoke-virtual {v11, v12, v13}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v9

    .line 10563
    :cond_0
    new-instance v8, Landroid/util/TypedValue;

    invoke-direct {v8}, Landroid/util/TypedValue;-><init>()V

    .line 10564
    .local v8, outValue:Landroid/util/TypedValue;
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/widget/TextView$SelectionActionModeCallback;->this$0:Landroid/widget/TextView;

    invoke-virtual {v12}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v12

    invoke-virtual {v12}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v12

    const v13, 0x10103da

    const/4 v14, 0x1

    invoke-virtual {v12, v13, v8, v14}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 10565
    iget v12, v8, Landroid/util/TypedValue;->data:I

    if-eqz v12, :cond_1

    .line 10566
    const/4 v12, 0x3

    const/4 v13, 0x0

    invoke-virtual {v11, v12, v13}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v9

    .line 10571
    :cond_1
    const/4 v12, 0x0

    const v13, 0x102001f

    const/4 v14, 0x0

    const v15, 0x104000d

    move-object/from16 v0, p2

    invoke-interface {v0, v12, v13, v14, v15}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v12

    invoke-interface {v12, v9}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v12

    const/16 v13, 0x61

    invoke-interface {v12, v13}, Landroid/view/MenuItem;->setAlphabeticShortcut(C)Landroid/view/MenuItem;

    move-result-object v12

    const/4 v13, 0x6

    invoke-interface {v12, v13}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 10577
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/widget/TextView$SelectionActionModeCallback;->this$0:Landroid/widget/TextView;

    #calls: Landroid/widget/TextView;->canCut()Z
    invoke-static {v12}, Landroid/widget/TextView;->access$4800(Landroid/widget/TextView;)Z

    move-result v12

    if-eqz v12, :cond_2

    .line 10578
    const/4 v12, 0x0

    const v13, 0x1020020

    const/4 v14, 0x0

    const v15, 0x1040003

    move-object/from16 v0, p2

    invoke-interface {v0, v12, v13, v14, v15}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v12

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-virtual {v11, v13, v14}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v13

    invoke-interface {v12, v13}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v12

    const/16 v13, 0x78

    invoke-interface {v12, v13}, Landroid/view/MenuItem;->setAlphabeticShortcut(C)Landroid/view/MenuItem;

    move-result-object v12

    const/4 v13, 0x6

    invoke-interface {v12, v13}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 10586
    :cond_2
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/widget/TextView$SelectionActionModeCallback;->this$0:Landroid/widget/TextView;

    #calls: Landroid/widget/TextView;->canCopy()Z
    invoke-static {v12}, Landroid/widget/TextView;->access$4900(Landroid/widget/TextView;)Z

    move-result v12

    if-eqz v12, :cond_3

    .line 10587
    const/4 v12, 0x0

    const v13, 0x1020021

    const/4 v14, 0x0

    const v15, 0x1040001

    move-object/from16 v0, p2

    invoke-interface {v0, v12, v13, v14, v15}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v12

    const/4 v13, 0x1

    const/4 v14, 0x0

    invoke-virtual {v11, v13, v14}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v13

    invoke-interface {v12, v13}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v12

    const/16 v13, 0x63

    invoke-interface {v12, v13}, Landroid/view/MenuItem;->setAlphabeticShortcut(C)Landroid/view/MenuItem;

    move-result-object v12

    const/4 v13, 0x6

    invoke-interface {v12, v13}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 10595
    :cond_3
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/widget/TextView$SelectionActionModeCallback;->this$0:Landroid/widget/TextView;

    #calls: Landroid/widget/TextView;->canPaste()Z
    invoke-static {v12}, Landroid/widget/TextView;->access$5000(Landroid/widget/TextView;)Z

    move-result v12

    if-eqz v12, :cond_4

    .line 10596
    const/4 v12, 0x0

    const v13, 0x1020022

    const/4 v14, 0x0

    const v15, 0x104000b

    move-object/from16 v0, p2

    invoke-interface {v0, v12, v13, v14, v15}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v12

    const/4 v13, 0x2

    const/4 v14, 0x0

    invoke-virtual {v11, v13, v14}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v13

    invoke-interface {v12, v13}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v12

    const/16 v13, 0x76

    invoke-interface {v12, v13}, Landroid/view/MenuItem;->setAlphabeticShortcut(C)Landroid/view/MenuItem;

    move-result-object v12

    const/4 v13, 0x6

    invoke-interface {v12, v13}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 10605
    :cond_4
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/widget/TextView$SelectionActionModeCallback;->this$0:Landroid/widget/TextView;

    #calls: Landroid/widget/TextView;->canPaste()Z
    invoke-static {v12}, Landroid/widget/TextView;->access$5000(Landroid/widget/TextView;)Z

    move-result v12

    if-eqz v12, :cond_5

    .line 10606
    const/4 v12, 0x0

    const v13, 0x1020241

    const/4 v14, 0x0

    const v15, 0x10405b4

    move-object/from16 v0, p2

    invoke-interface {v0, v12, v13, v14, v15}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v12

    const/4 v13, 0x4

    const/4 v14, 0x0

    invoke-virtual {v11, v13, v14}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v13

    invoke-interface {v12, v13}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v12

    const/16 v13, 0x70

    invoke-interface {v12, v13}, Landroid/view/MenuItem;->setAlphabeticShortcut(C)Landroid/view/MenuItem;

    move-result-object v12

    const/4 v13, 0x6

    invoke-interface {v12, v13}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 10616
    :cond_5
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/widget/TextView$SelectionActionModeCallback;->this$0:Landroid/widget/TextView;

    #getter for: Landroid/view/View;->mContext:Landroid/content/Context;
    invoke-static {v12}, Landroid/widget/TextView;->access$5100(Landroid/widget/TextView;)Landroid/content/Context;

    move-result-object v12

    const/4 v13, 0x0

    sget-object v14, Lcom/android/internal/R$styleable;->ActionMenuItemView:[I

    const v15, 0x10102d8

    const/16 v16, 0x0

    invoke-virtual/range {v12 .. v16}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v2

    .line 10619
    .local v2, a:Landroid/content/res/TypedArray;
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/widget/TextView$SelectionActionModeCallback;->this$0:Landroid/widget/TextView;

    #getter for: Landroid/view/View;->mContext:Landroid/content/Context;
    invoke-static {v12}, Landroid/widget/TextView;->access$5200(Landroid/widget/TextView;)Landroid/content/Context;

    move-result-object v12

    invoke-virtual {v12}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    invoke-virtual {v12}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v12

    iget v10, v12, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    .line 10620
    .local v10, smallestScreenWidthDp:I
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/widget/TextView$SelectionActionModeCallback;->this$0:Landroid/widget/TextView;

    #getter for: Landroid/view/View;->mContext:Landroid/content/Context;
    invoke-static {v12}, Landroid/widget/TextView;->access$5300(Landroid/widget/TextView;)Landroid/content/Context;

    move-result-object v12

    invoke-virtual {v12}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    invoke-virtual {v12}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v12

    iget v4, v12, Landroid/util/DisplayMetrics;->density:F

    .line 10621
    .local v4, density:F
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/TextView$SelectionActionModeCallback;->this$0:Landroid/widget/TextView;

    #getter for: Landroid/view/View;->mContext:Landroid/content/Context;
    invoke-static {v13}, Landroid/widget/TextView;->access$5400(Landroid/widget/TextView;)Landroid/content/Context;

    move-result-object v13

    invoke-virtual {v13}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x105004d

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v13

    invoke-virtual {v2, v12, v13}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v7

    .line 10624
    .local v7, mMinCellSize:I
    int-to-float v12, v10

    mul-float/2addr v12, v4

    float-to-int v12, v12

    div-int/2addr v12, v7

    add-int/lit8 v6, v12, -0x1

    .line 10626
    .local v6, mMaxActionModeItems:I
    if-lez v6, :cond_6

    invoke-interface/range {p2 .. p2}, Landroid/view/Menu;->size()I

    move-result v12

    if-lt v12, v6, :cond_6

    .line 10627
    add-int/lit8 v5, v6, -0x1

    .local v5, i:I
    :goto_0
    invoke-interface/range {p2 .. p2}, Landroid/view/Menu;->size()I

    move-result v12

    if-ge v5, v12, :cond_6

    .line 10628
    move-object/from16 v0, p2

    invoke-interface {v0, v5}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v12

    const/4 v13, 0x5

    invoke-interface {v12, v13}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 10627
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 10633
    .end local v5           #i:I
    :cond_6
    invoke-virtual {v11}, Landroid/content/res/TypedArray;->recycle()V

    .line 10635
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/widget/TextView$SelectionActionModeCallback;->this$0:Landroid/widget/TextView;

    #getter for: Landroid/widget/TextView;->mCustomSelectionActionModeCallback:Landroid/view/ActionMode$Callback;
    invoke-static {v12}, Landroid/widget/TextView;->access$5500(Landroid/widget/TextView;)Landroid/view/ActionMode$Callback;

    move-result-object v12

    if-eqz v12, :cond_7

    .line 10636
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/widget/TextView$SelectionActionModeCallback;->this$0:Landroid/widget/TextView;

    #getter for: Landroid/widget/TextView;->mCustomSelectionActionModeCallback:Landroid/view/ActionMode$Callback;
    invoke-static {v12}, Landroid/widget/TextView;->access$5500(Landroid/widget/TextView;)Landroid/view/ActionMode$Callback;

    move-result-object v12

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-interface {v12, v0, v1}, Landroid/view/ActionMode$Callback;->onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z

    move-result v12

    if-nez v12, :cond_7

    .line 10638
    const/4 v12, 0x0

    .line 10646
    :goto_1
    return v12

    .line 10642
    :cond_7
    invoke-interface/range {p2 .. p2}, Landroid/view/Menu;->hasVisibleItems()Z

    move-result v12

    if-nez v12, :cond_8

    invoke-virtual/range {p1 .. p1}, Landroid/view/ActionMode;->getCustomView()Landroid/view/View;

    move-result-object v12

    if-eqz v12, :cond_9

    .line 10643
    :cond_8
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/widget/TextView$SelectionActionModeCallback;->this$0:Landroid/widget/TextView;

    invoke-virtual {v12}, Landroid/widget/TextView;->getSelectionController()Landroid/widget/TextView$SelectionModifierCursorController;

    move-result-object v12

    invoke-virtual {v12}, Landroid/widget/TextView$SelectionModifierCursorController;->show()V

    .line 10644
    const/4 v12, 0x1

    goto :goto_1

    .line 10646
    :cond_9
    const/4 v12, 0x0

    goto :goto_1
.end method

.method public onDestroyActionMode(Landroid/view/ActionMode;)V
    .locals 2
    .parameter "mode"

    .prologue
    .line 10669
    iget-object v0, p0, Landroid/widget/TextView$SelectionActionModeCallback;->this$0:Landroid/widget/TextView;

    #getter for: Landroid/widget/TextView;->mCustomSelectionActionModeCallback:Landroid/view/ActionMode$Callback;
    invoke-static {v0}, Landroid/widget/TextView;->access$5500(Landroid/widget/TextView;)Landroid/view/ActionMode$Callback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 10670
    iget-object v0, p0, Landroid/widget/TextView$SelectionActionModeCallback;->this$0:Landroid/widget/TextView;

    #getter for: Landroid/widget/TextView;->mCustomSelectionActionModeCallback:Landroid/view/ActionMode$Callback;
    invoke-static {v0}, Landroid/widget/TextView;->access$5500(Landroid/widget/TextView;)Landroid/view/ActionMode$Callback;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/view/ActionMode$Callback;->onDestroyActionMode(Landroid/view/ActionMode;)V

    .line 10672
    :cond_0
    iget-object v0, p0, Landroid/widget/TextView$SelectionActionModeCallback;->this$0:Landroid/widget/TextView;

    #getter for: Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;
    invoke-static {v0}, Landroid/widget/TextView;->access$600(Landroid/widget/TextView;)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Landroid/text/Spannable;

    iget-object v1, p0, Landroid/widget/TextView$SelectionActionModeCallback;->this$0:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v1

    invoke-static {v0, v1}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    .line 10674
    iget-object v0, p0, Landroid/widget/TextView$SelectionActionModeCallback;->this$0:Landroid/widget/TextView;

    #getter for: Landroid/widget/TextView;->mSelectionModifierCursorController:Landroid/widget/TextView$SelectionModifierCursorController;
    invoke-static {v0}, Landroid/widget/TextView;->access$5600(Landroid/widget/TextView;)Landroid/widget/TextView$SelectionModifierCursorController;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 10675
    iget-object v0, p0, Landroid/widget/TextView$SelectionActionModeCallback;->this$0:Landroid/widget/TextView;

    #getter for: Landroid/widget/TextView;->mSelectionModifierCursorController:Landroid/widget/TextView$SelectionModifierCursorController;
    invoke-static {v0}, Landroid/widget/TextView;->access$5600(Landroid/widget/TextView;)Landroid/widget/TextView$SelectionModifierCursorController;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView$SelectionModifierCursorController;->hide()V

    .line 10678
    :cond_1
    iget-object v0, p0, Landroid/widget/TextView$SelectionActionModeCallback;->this$0:Landroid/widget/TextView;

    const/4 v1, 0x0

    #setter for: Landroid/widget/TextView;->mSelectionActionMode:Landroid/view/ActionMode;
    invoke-static {v0, v1}, Landroid/widget/TextView;->access$5702(Landroid/widget/TextView;Landroid/view/ActionMode;)Landroid/view/ActionMode;

    .line 10679
    return-void
.end method

.method public onPrepareActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 1
    .parameter "mode"
    .parameter "menu"

    .prologue
    .line 10652
    iget-object v0, p0, Landroid/widget/TextView$SelectionActionModeCallback;->this$0:Landroid/widget/TextView;

    #getter for: Landroid/widget/TextView;->mCustomSelectionActionModeCallback:Landroid/view/ActionMode$Callback;
    invoke-static {v0}, Landroid/widget/TextView;->access$5500(Landroid/widget/TextView;)Landroid/view/ActionMode$Callback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 10653
    iget-object v0, p0, Landroid/widget/TextView$SelectionActionModeCallback;->this$0:Landroid/widget/TextView;

    #getter for: Landroid/widget/TextView;->mCustomSelectionActionModeCallback:Landroid/view/ActionMode$Callback;
    invoke-static {v0}, Landroid/widget/TextView;->access$5500(Landroid/widget/TextView;)Landroid/view/ActionMode$Callback;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/view/ActionMode$Callback;->onPrepareActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z

    move-result v0

    .line 10655
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method
