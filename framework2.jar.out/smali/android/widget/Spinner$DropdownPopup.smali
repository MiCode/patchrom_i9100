.class Landroid/widget/Spinner$DropdownPopup;
.super Landroid/widget/ListPopupWindow;
.source "Spinner.java"

# interfaces
.implements Landroid/widget/Spinner$SpinnerPopup;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/Spinner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DropdownPopup"
.end annotation


# instance fields
.field private mAdapter:Landroid/widget/ListAdapter;

.field private mHintText:Ljava/lang/CharSequence;

.field final synthetic this$0:Landroid/widget/Spinner;


# direct methods
.method public constructor <init>(Landroid/widget/Spinner;Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .parameter
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyleRes"

    .prologue
    const/4 v1, 0x0

    .line 916
    iput-object p1, p0, Landroid/widget/Spinner$DropdownPopup;->this$0:Landroid/widget/Spinner;

    .line 917
    invoke-direct {p0, p2, p3, v1, p4}, Landroid/widget/ListPopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 919
    invoke-virtual {p0, p1}, Landroid/widget/Spinner$DropdownPopup;->setAnchorView(Landroid/view/View;)V

    .line 920
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/widget/Spinner$DropdownPopup;->setModal(Z)V

    .line 921
    invoke-virtual {p0, v1}, Landroid/widget/Spinner$DropdownPopup;->setPromptPosition(I)V

    .line 922
    new-instance v0, Landroid/widget/Spinner$DropdownPopup$1;

    invoke-direct {v0, p0, p1}, Landroid/widget/Spinner$DropdownPopup$1;-><init>(Landroid/widget/Spinner$DropdownPopup;Landroid/widget/Spinner;)V

    invoke-virtual {p0, v0}, Landroid/widget/Spinner$DropdownPopup;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 931
    return-void
.end method

.method static synthetic access$100(Landroid/widget/Spinner$DropdownPopup;)Landroid/widget/ListAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 912
    iget-object v0, p0, Landroid/widget/Spinner$DropdownPopup;->mAdapter:Landroid/widget/ListAdapter;

    return-object v0
.end method


# virtual methods
.method public getHintText()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 940
    iget-object v0, p0, Landroid/widget/Spinner$DropdownPopup;->mHintText:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public setAdapter(Landroid/widget/ListAdapter;)V
    .locals 0
    .parameter "adapter"

    .prologue
    .line 935
    invoke-super {p0, p1}, Landroid/widget/ListPopupWindow;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 936
    iput-object p1, p0, Landroid/widget/Spinner$DropdownPopup;->mAdapter:Landroid/widget/ListAdapter;

    .line 937
    return-void
.end method

.method public setPromptText(Ljava/lang/CharSequence;)V
    .locals 0
    .parameter "hintText"

    .prologue
    .line 945
    iput-object p1, p0, Landroid/widget/Spinner$DropdownPopup;->mHintText:Ljava/lang/CharSequence;

    .line 946
    return-void
.end method

.method public show()V
    .locals 10

    .prologue
    .line 950
    invoke-virtual {p0}, Landroid/widget/Spinner$DropdownPopup;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 951
    .local v0, background:Landroid/graphics/drawable/Drawable;
    const/4 v1, 0x0

    .line 952
    .local v1, bgOffset:I
    if-eqz v0, :cond_1

    .line 953
    iget-object v7, p0, Landroid/widget/Spinner$DropdownPopup;->this$0:Landroid/widget/Spinner;

    #getter for: Landroid/widget/Spinner;->mTempRect:Landroid/graphics/Rect;
    invoke-static {v7}, Landroid/widget/Spinner;->access$200(Landroid/widget/Spinner;)Landroid/graphics/Rect;

    move-result-object v7

    invoke-virtual {v0, v7}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 954
    iget-object v7, p0, Landroid/widget/Spinner$DropdownPopup;->this$0:Landroid/widget/Spinner;

    #getter for: Landroid/widget/Spinner;->mTempRect:Landroid/graphics/Rect;
    invoke-static {v7}, Landroid/widget/Spinner;->access$200(Landroid/widget/Spinner;)Landroid/graphics/Rect;

    move-result-object v7

    iget v7, v7, Landroid/graphics/Rect;->left:I

    neg-int v1, v7

    .line 959
    :goto_0
    iget-object v7, p0, Landroid/widget/Spinner$DropdownPopup;->this$0:Landroid/widget/Spinner;

    invoke-virtual {v7}, Landroid/widget/Spinner;->getPaddingLeft()I

    move-result v4

    .line 960
    .local v4, spinnerPaddingLeft:I
    iget-object v7, p0, Landroid/widget/Spinner$DropdownPopup;->this$0:Landroid/widget/Spinner;

    iget v7, v7, Landroid/widget/Spinner;->mDropDownWidth:I

    const/4 v8, -0x2

    if-ne v7, v8, :cond_2

    .line 961
    iget-object v7, p0, Landroid/widget/Spinner$DropdownPopup;->this$0:Landroid/widget/Spinner;

    invoke-virtual {v7}, Landroid/widget/Spinner;->getWidth()I

    move-result v6

    .line 962
    .local v6, spinnerWidth:I
    iget-object v7, p0, Landroid/widget/Spinner$DropdownPopup;->this$0:Landroid/widget/Spinner;

    invoke-virtual {v7}, Landroid/widget/Spinner;->getPaddingRight()I

    move-result v5

    .line 964
    .local v5, spinnerPaddingRight:I
    iget-object v8, p0, Landroid/widget/Spinner$DropdownPopup;->this$0:Landroid/widget/Spinner;

    iget-object v7, p0, Landroid/widget/Spinner$DropdownPopup;->mAdapter:Landroid/widget/ListAdapter;

    check-cast v7, Landroid/widget/SpinnerAdapter;

    invoke-virtual {p0}, Landroid/widget/Spinner$DropdownPopup;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v9

    invoke-virtual {v8, v7, v9}, Landroid/widget/Spinner;->measureContentWidth(Landroid/widget/SpinnerAdapter;Landroid/graphics/drawable/Drawable;)I

    move-result v2

    .line 966
    .local v2, contentWidth:I
    iget-object v7, p0, Landroid/widget/Spinner$DropdownPopup;->this$0:Landroid/widget/Spinner;

    #getter for: Landroid/widget/AdapterView;->mContext:Landroid/content/Context;
    invoke-static {v7}, Landroid/widget/Spinner;->access$300(Landroid/widget/Spinner;)Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v7

    iget v7, v7, Landroid/util/DisplayMetrics;->widthPixels:I

    iget-object v8, p0, Landroid/widget/Spinner$DropdownPopup;->this$0:Landroid/widget/Spinner;

    #getter for: Landroid/widget/Spinner;->mTempRect:Landroid/graphics/Rect;
    invoke-static {v8}, Landroid/widget/Spinner;->access$200(Landroid/widget/Spinner;)Landroid/graphics/Rect;

    move-result-object v8

    iget v8, v8, Landroid/graphics/Rect;->left:I

    sub-int/2addr v7, v8

    iget-object v8, p0, Landroid/widget/Spinner$DropdownPopup;->this$0:Landroid/widget/Spinner;

    #getter for: Landroid/widget/Spinner;->mTempRect:Landroid/graphics/Rect;
    invoke-static {v8}, Landroid/widget/Spinner;->access$200(Landroid/widget/Spinner;)Landroid/graphics/Rect;

    move-result-object v8

    iget v8, v8, Landroid/graphics/Rect;->right:I

    sub-int v3, v7, v8

    .line 968
    .local v3, contentWidthLimit:I
    if-le v2, v3, :cond_0

    .line 969
    move v2, v3

    .line 972
    :cond_0
    sub-int v7, v6, v4

    sub-int/2addr v7, v5

    invoke-static {v2, v7}, Ljava/lang/Math;->max(II)I

    move-result v7

    invoke-virtual {p0, v7}, Landroid/widget/Spinner$DropdownPopup;->setContentWidth(I)V

    .line 981
    .end local v2           #contentWidth:I
    .end local v3           #contentWidthLimit:I
    .end local v5           #spinnerPaddingRight:I
    .end local v6           #spinnerWidth:I
    :goto_1
    add-int v7, v1, v4

    invoke-virtual {p0, v7}, Landroid/widget/Spinner$DropdownPopup;->setHorizontalOffset(I)V

    .line 982
    const/4 v7, 0x2

    invoke-virtual {p0, v7}, Landroid/widget/Spinner$DropdownPopup;->setInputMethodMode(I)V

    .line 983
    invoke-super {p0}, Landroid/widget/ListPopupWindow;->show()V

    .line 984
    invoke-virtual {p0}, Landroid/widget/Spinner$DropdownPopup;->getListView()Landroid/widget/ListView;

    move-result-object v7

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Landroid/widget/ListView;->setChoiceMode(I)V

    .line 985
    iget-object v7, p0, Landroid/widget/Spinner$DropdownPopup;->this$0:Landroid/widget/Spinner;

    invoke-virtual {v7}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v7

    invoke-virtual {p0, v7}, Landroid/widget/Spinner$DropdownPopup;->setSelection(I)V

    .line 986
    return-void

    .line 956
    .end local v4           #spinnerPaddingLeft:I
    :cond_1
    iget-object v7, p0, Landroid/widget/Spinner$DropdownPopup;->this$0:Landroid/widget/Spinner;

    #getter for: Landroid/widget/Spinner;->mTempRect:Landroid/graphics/Rect;
    invoke-static {v7}, Landroid/widget/Spinner;->access$200(Landroid/widget/Spinner;)Landroid/graphics/Rect;

    move-result-object v7

    iget-object v8, p0, Landroid/widget/Spinner$DropdownPopup;->this$0:Landroid/widget/Spinner;

    #getter for: Landroid/widget/Spinner;->mTempRect:Landroid/graphics/Rect;
    invoke-static {v8}, Landroid/widget/Spinner;->access$200(Landroid/widget/Spinner;)Landroid/graphics/Rect;

    move-result-object v8

    const/4 v9, 0x0

    iput v9, v8, Landroid/graphics/Rect;->right:I

    iput v9, v7, Landroid/graphics/Rect;->left:I

    goto/16 :goto_0

    .line 974
    .restart local v4       #spinnerPaddingLeft:I
    :cond_2
    iget-object v7, p0, Landroid/widget/Spinner$DropdownPopup;->this$0:Landroid/widget/Spinner;

    iget v7, v7, Landroid/widget/Spinner;->mDropDownWidth:I

    const/4 v8, -0x1

    if-ne v7, v8, :cond_3

    .line 975
    iget-object v7, p0, Landroid/widget/Spinner$DropdownPopup;->this$0:Landroid/widget/Spinner;

    invoke-virtual {v7}, Landroid/widget/Spinner;->getWidth()I

    move-result v6

    .line 976
    .restart local v6       #spinnerWidth:I
    iget-object v7, p0, Landroid/widget/Spinner$DropdownPopup;->this$0:Landroid/widget/Spinner;

    invoke-virtual {v7}, Landroid/widget/Spinner;->getPaddingRight()I

    move-result v5

    .line 977
    .restart local v5       #spinnerPaddingRight:I
    sub-int v7, v6, v4

    sub-int/2addr v7, v5

    invoke-virtual {p0, v7}, Landroid/widget/Spinner$DropdownPopup;->setContentWidth(I)V

    goto :goto_1

    .line 979
    .end local v5           #spinnerPaddingRight:I
    .end local v6           #spinnerWidth:I
    :cond_3
    iget-object v7, p0, Landroid/widget/Spinner$DropdownPopup;->this$0:Landroid/widget/Spinner;

    iget v7, v7, Landroid/widget/Spinner;->mDropDownWidth:I

    invoke-virtual {p0, v7}, Landroid/widget/Spinner$DropdownPopup;->setContentWidth(I)V

    goto :goto_1
.end method
