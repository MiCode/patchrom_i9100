.class Landroid/widget/TextView$ActionPopupWindow;
.super Landroid/widget/TextView$PinnedPopupWindow;
.source "TextView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/TextView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ActionPopupWindow"
.end annotation


# static fields
.field private static final POPUP_TEXT_LAYOUT:I = 0x10900a4

.field private static final TW_POPUP_TEXT_LAYOUT:I = 0x10900c3


# instance fields
.field private mClipboardTextView:Landroid/widget/TextView;

.field private mPasteTextView:Landroid/widget/TextView;

.field final synthetic this$0:Landroid/widget/TextView;


# direct methods
.method private constructor <init>(Landroid/widget/TextView;)V
    .locals 0
    .parameter

    .prologue
    .line 10705
    iput-object p1, p0, Landroid/widget/TextView$ActionPopupWindow;->this$0:Landroid/widget/TextView;

    invoke-direct {p0, p1}, Landroid/widget/TextView$PinnedPopupWindow;-><init>(Landroid/widget/TextView;)V

    return-void
.end method

.method synthetic constructor <init>(Landroid/widget/TextView;Landroid/widget/TextView$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 10705
    invoke-direct {p0, p1}, Landroid/widget/TextView$ActionPopupWindow;-><init>(Landroid/widget/TextView;)V

    return-void
.end method


# virtual methods
.method protected clipVertically(I)I
    .locals 5
    .parameter "positionY"

    .prologue
    .line 10850
    if-gtz p1, :cond_0

    .line 10851
    invoke-virtual {p0}, Landroid/widget/TextView$ActionPopupWindow;->getTextOffset()I

    move-result v2

    .line 10852
    .local v2, offset:I
    iget-object v3, p0, Landroid/widget/TextView$ActionPopupWindow;->this$0:Landroid/widget/TextView;

    iget-object v3, v3, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v3, v2}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v1

    .line 10853
    .local v1, line:I
    iget-object v3, p0, Landroid/widget/TextView$ActionPopupWindow;->this$0:Landroid/widget/TextView;

    iget-object v3, v3, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v3, v1}, Landroid/text/Layout;->getLineBottom(I)I

    move-result v3

    iget-object v4, p0, Landroid/widget/TextView$ActionPopupWindow;->this$0:Landroid/widget/TextView;

    iget-object v4, v4, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v4, v1}, Landroid/text/Layout;->getLineTop(I)I

    move-result v4

    sub-int/2addr v3, v4

    add-int/2addr p1, v3

    .line 10854
    iget-object v3, p0, Landroid/widget/TextView$PinnedPopupWindow;->mContentView:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v3

    add-int/2addr p1, v3

    .line 10857
    iget-object v3, p0, Landroid/widget/TextView$ActionPopupWindow;->this$0:Landroid/widget/TextView;

    #getter for: Landroid/view/View;->mContext:Landroid/content/Context;
    invoke-static {v3}, Landroid/widget/TextView;->access$6700(Landroid/widget/TextView;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    iget-object v4, p0, Landroid/widget/TextView$ActionPopupWindow;->this$0:Landroid/widget/TextView;

    #getter for: Landroid/widget/TextView;->mTextSelectHandleRes:I
    invoke-static {v4}, Landroid/widget/TextView;->access$6600(Landroid/widget/TextView;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 10858
    .local v0, handle:Landroid/graphics/drawable/Drawable;
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    add-int/2addr p1, v3

    .line 10861
    .end local v0           #handle:Landroid/graphics/drawable/Drawable;
    .end local v1           #line:I
    .end local v2           #offset:I
    :cond_0
    return p1
.end method

.method protected createPopupWindow()V
    .locals 4

    .prologue
    .line 10718
    new-instance v0, Landroid/widget/PopupWindow;

    iget-object v1, p0, Landroid/widget/TextView$ActionPopupWindow;->this$0:Landroid/widget/TextView;

    #getter for: Landroid/view/View;->mContext:Landroid/content/Context;
    invoke-static {v1}, Landroid/widget/TextView;->access$5900(Landroid/widget/TextView;)Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    const v3, 0x10102c8

    invoke-direct {v0, v1, v2, v3}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v0, p0, Landroid/widget/TextView$PinnedPopupWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    .line 10720
    iget-object v0, p0, Landroid/widget/TextView$PinnedPopupWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setClippingEnabled(Z)V

    .line 10721
    return-void
.end method

.method protected getTextOffset()I
    .locals 2

    .prologue
    .line 10838
    iget-object v0, p0, Landroid/widget/TextView$ActionPopupWindow;->this$0:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v0

    iget-object v1, p0, Landroid/widget/TextView$ActionPopupWindow;->this$0:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v1

    add-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    return v0
.end method

.method protected getVerticalLocalPosition(I)I
    .locals 2
    .parameter "line"

    .prologue
    .line 10843
    iget-object v0, p0, Landroid/widget/TextView$ActionPopupWindow;->this$0:Landroid/widget/TextView;

    iget-object v0, v0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v0, p1}, Landroid/text/Layout;->getLineTop(I)I

    move-result v0

    iget-object v1, p0, Landroid/widget/TextView$PinnedPopupWindow;->mContentView:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method protected initContentView()V
    .locals 10

    .prologue
    const v9, 0x10900c3

    const/4 v8, -0x2

    const/4 v7, 0x0

    .line 10725
    new-instance v3, Landroid/widget/LinearLayout;

    iget-object v5, p0, Landroid/widget/TextView$ActionPopupWindow;->this$0:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v3, v5}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 10726
    .local v3, linearLayout:Landroid/widget/LinearLayout;
    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 10727
    iput-object v3, p0, Landroid/widget/TextView$PinnedPopupWindow;->mContentView:Landroid/view/ViewGroup;

    .line 10729
    iget-object v5, p0, Landroid/widget/TextView$ActionPopupWindow;->this$0:Landroid/widget/TextView;

    #getter for: Landroid/widget/TextView;->mThemeDeviceDefault:Z
    invoke-static {v5}, Landroid/widget/TextView;->access$4800(Landroid/widget/TextView;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 10730
    iget-object v5, p0, Landroid/widget/TextView$PinnedPopupWindow;->mContentView:Landroid/view/ViewGroup;

    const v6, 0x10806ce

    invoke-virtual {v5, v6}, Landroid/view/ViewGroup;->setBackgroundResource(I)V

    .line 10740
    :goto_0
    iget-object v5, p0, Landroid/widget/TextView$ActionPopupWindow;->this$0:Landroid/widget/TextView;

    #getter for: Landroid/view/View;->mContext:Landroid/content/Context;
    invoke-static {v5}, Landroid/widget/TextView;->access$6000(Landroid/widget/TextView;)Landroid/content/Context;

    move-result-object v5

    const-string/jumbo v6, "layout_inflater"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/LayoutInflater;

    .line 10743
    .local v2, inflater:Landroid/view/LayoutInflater;
    new-instance v4, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v4, v8, v8}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 10747
    .local v4, wrapContent:Landroid/view/ViewGroup$LayoutParams;
    iget-object v5, p0, Landroid/widget/TextView$ActionPopupWindow;->this$0:Landroid/widget/TextView;

    #getter for: Landroid/widget/TextView;->mThemeDeviceDefault:Z
    invoke-static {v5}, Landroid/widget/TextView;->access$4800(Landroid/widget/TextView;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 10748
    invoke-virtual {v2, v9, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Landroid/widget/TextView$ActionPopupWindow;->mPasteTextView:Landroid/widget/TextView;

    .line 10753
    :goto_1
    iget-object v5, p0, Landroid/widget/TextView$ActionPopupWindow;->mPasteTextView:Landroid/widget/TextView;

    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 10754
    iget-object v5, p0, Landroid/widget/TextView$PinnedPopupWindow;->mContentView:Landroid/view/ViewGroup;

    iget-object v6, p0, Landroid/widget/TextView$ActionPopupWindow;->mPasteTextView:Landroid/widget/TextView;

    invoke-virtual {v5, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 10755
    iget-object v5, p0, Landroid/widget/TextView$ActionPopupWindow;->mPasteTextView:Landroid/widget/TextView;

    const v6, 0x104000b

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(I)V

    .line 10756
    iget-object v5, p0, Landroid/widget/TextView$ActionPopupWindow;->mPasteTextView:Landroid/widget/TextView;

    invoke-virtual {v5, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 10759
    iget-object v5, p0, Landroid/widget/TextView$ActionPopupWindow;->this$0:Landroid/widget/TextView;

    #getter for: Landroid/widget/TextView;->mThemeDeviceDefault:Z
    invoke-static {v5}, Landroid/widget/TextView;->access$4800(Landroid/widget/TextView;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 10760
    iget-object v5, p0, Landroid/widget/TextView$ActionPopupWindow;->this$0:Landroid/widget/TextView;

    #getter for: Landroid/view/View;->mContext:Landroid/content/Context;
    invoke-static {v5}, Landroid/widget/TextView;->access$6100(Landroid/widget/TextView;)Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x108064f

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 10764
    .local v0, drawable1:Landroid/graphics/drawable/Drawable;
    :goto_2
    iget-object v5, p0, Landroid/widget/TextView$ActionPopupWindow;->mPasteTextView:Landroid/widget/TextView;

    invoke-virtual {v5, v0, v7, v7, v7}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 10780
    iget-object v5, p0, Landroid/widget/TextView$ActionPopupWindow;->this$0:Landroid/widget/TextView;

    #getter for: Landroid/widget/TextView;->mThemeDeviceDefault:Z
    invoke-static {v5}, Landroid/widget/TextView;->access$4800(Landroid/widget/TextView;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 10781
    invoke-virtual {v2, v9, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Landroid/widget/TextView$ActionPopupWindow;->mClipboardTextView:Landroid/widget/TextView;

    .line 10782
    iget-object v5, p0, Landroid/widget/TextView$ActionPopupWindow;->mClipboardTextView:Landroid/widget/TextView;

    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 10783
    iget-object v5, p0, Landroid/widget/TextView$PinnedPopupWindow;->mContentView:Landroid/view/ViewGroup;

    iget-object v6, p0, Landroid/widget/TextView$ActionPopupWindow;->mClipboardTextView:Landroid/widget/TextView;

    invoke-virtual {v5, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 10784
    iget-object v5, p0, Landroid/widget/TextView$ActionPopupWindow;->mClipboardTextView:Landroid/widget/TextView;

    const v6, 0x10405b4

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(I)V

    .line 10785
    iget-object v5, p0, Landroid/widget/TextView$ActionPopupWindow;->mClipboardTextView:Landroid/widget/TextView;

    invoke-virtual {v5, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 10786
    iget-object v5, p0, Landroid/widget/TextView$ActionPopupWindow;->this$0:Landroid/widget/TextView;

    #getter for: Landroid/view/View;->mContext:Landroid/content/Context;
    invoke-static {v5}, Landroid/widget/TextView;->access$6300(Landroid/widget/TextView;)Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x1080642

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 10787
    .local v1, drawable3:Landroid/graphics/drawable/Drawable;
    iget-object v5, p0, Landroid/widget/TextView$ActionPopupWindow;->mClipboardTextView:Landroid/widget/TextView;

    invoke-virtual {v5, v1, v7, v7, v7}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 10790
    .end local v1           #drawable3:Landroid/graphics/drawable/Drawable;
    :cond_0
    return-void

    .line 10734
    .end local v0           #drawable1:Landroid/graphics/drawable/Drawable;
    .end local v2           #inflater:Landroid/view/LayoutInflater;
    .end local v4           #wrapContent:Landroid/view/ViewGroup$LayoutParams;
    :cond_1
    iget-object v5, p0, Landroid/widget/TextView$PinnedPopupWindow;->mContentView:Landroid/view/ViewGroup;

    const v6, 0x10805b4

    invoke-virtual {v5, v6}, Landroid/view/ViewGroup;->setBackgroundResource(I)V

    goto/16 :goto_0

    .line 10750
    .restart local v2       #inflater:Landroid/view/LayoutInflater;
    .restart local v4       #wrapContent:Landroid/view/ViewGroup$LayoutParams;
    :cond_2
    const v5, 0x10900a4

    invoke-virtual {v2, v5, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Landroid/widget/TextView$ActionPopupWindow;->mPasteTextView:Landroid/widget/TextView;

    goto/16 :goto_1

    .line 10762
    :cond_3
    iget-object v5, p0, Landroid/widget/TextView$ActionPopupWindow;->this$0:Landroid/widget/TextView;

    #getter for: Landroid/view/View;->mContext:Landroid/content/Context;
    invoke-static {v5}, Landroid/widget/TextView;->access$6200(Landroid/widget/TextView;)Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x1080342

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .restart local v0       #drawable1:Landroid/graphics/drawable/Drawable;
    goto :goto_2
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "view"

    .prologue
    .line 10815
    iget-object v0, p0, Landroid/widget/TextView$ActionPopupWindow;->mPasteTextView:Landroid/widget/TextView;

    if-ne p1, v0, :cond_1

    iget-object v0, p0, Landroid/widget/TextView$ActionPopupWindow;->this$0:Landroid/widget/TextView;

    #calls: Landroid/widget/TextView;->canPaste()Z
    invoke-static {v0}, Landroid/widget/TextView;->access$5100(Landroid/widget/TextView;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 10816
    iget-object v0, p0, Landroid/widget/TextView$ActionPopupWindow;->this$0:Landroid/widget/TextView;

    const v1, 0x1020022

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->onTextContextMenuItem(I)Z

    .line 10817
    invoke-virtual {p0}, Landroid/widget/TextView$ActionPopupWindow;->hide()V

    .line 10834
    :cond_0
    :goto_0
    return-void

    .line 10826
    :cond_1
    iget-object v0, p0, Landroid/widget/TextView$ActionPopupWindow;->mClipboardTextView:Landroid/widget/TextView;

    if-ne p1, v0, :cond_0

    .line 10827
    iget-object v0, p0, Landroid/widget/TextView$ActionPopupWindow;->this$0:Landroid/widget/TextView;

    const v1, 0x1020241

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->onTextContextMenuItem(I)Z

    .line 10828
    invoke-virtual {p0}, Landroid/widget/TextView$ActionPopupWindow;->hide()V

    .line 10830
    iget-object v0, p0, Landroid/widget/TextView$ActionPopupWindow;->this$0:Landroid/widget/TextView;

    #calls: Landroid/widget/TextView;->hideControllers()V
    invoke-static {v0}, Landroid/widget/TextView;->access$6500(Landroid/widget/TextView;)V

    goto :goto_0
.end method

.method public show()V
    .locals 7

    .prologue
    const/16 v5, 0x8

    const/4 v3, 0x0

    .line 10794
    iget-object v4, p0, Landroid/widget/TextView$ActionPopupWindow;->this$0:Landroid/widget/TextView;

    #calls: Landroid/widget/TextView;->canPaste()Z
    invoke-static {v4}, Landroid/widget/TextView;->access$5100(Landroid/widget/TextView;)Z

    move-result v0

    .line 10795
    .local v0, canPaste:Z
    iget-object v4, p0, Landroid/widget/TextView$ActionPopupWindow;->this$0:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->isSuggestionsEnabled()Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Landroid/widget/TextView$ActionPopupWindow;->this$0:Landroid/widget/TextView;

    #calls: Landroid/widget/TextView;->isCursorInsideSuggestionSpan()Z
    invoke-static {v4}, Landroid/widget/TextView;->access$6400(Landroid/widget/TextView;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v1, 0x1

    .line 10796
    .local v1, canSuggest:Z
    :goto_0
    iget-object v6, p0, Landroid/widget/TextView$ActionPopupWindow;->mPasteTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_2

    move v4, v3

    :goto_1
    invoke-virtual {v6, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 10800
    iget-object v4, p0, Landroid/widget/TextView$ActionPopupWindow;->this$0:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v4

    const-string v6, "clipboardEx"

    invoke-virtual {v4, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/sec/clipboard/ClipboardExManager;

    .line 10801
    .local v2, clipEx:Landroid/sec/clipboard/ClipboardExManager;
    iget-object v4, p0, Landroid/widget/TextView$ActionPopupWindow;->this$0:Landroid/widget/TextView;

    #getter for: Landroid/widget/TextView;->mThemeDeviceDefault:Z
    invoke-static {v4}, Landroid/widget/TextView;->access$4800(Landroid/widget/TextView;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 10802
    iget-object v4, p0, Landroid/widget/TextView$ActionPopupWindow;->mClipboardTextView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/sec/clipboard/ClipboardExManager;->getDataListSize()I

    move-result v6

    if-eqz v6, :cond_3

    :goto_2
    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 10808
    :cond_0
    if-nez v0, :cond_4

    invoke-virtual {v2}, Landroid/sec/clipboard/ClipboardExManager;->getDataListSize()I

    move-result v3

    if-nez v3, :cond_4

    .line 10811
    :goto_3
    return-void

    .end local v1           #canSuggest:Z
    .end local v2           #clipEx:Landroid/sec/clipboard/ClipboardExManager;
    :cond_1
    move v1, v3

    .line 10795
    goto :goto_0

    .restart local v1       #canSuggest:Z
    :cond_2
    move v4, v5

    .line 10796
    goto :goto_1

    .restart local v2       #clipEx:Landroid/sec/clipboard/ClipboardExManager;
    :cond_3
    move v3, v5

    .line 10802
    goto :goto_2

    .line 10810
    :cond_4
    invoke-super {p0}, Landroid/widget/TextView$PinnedPopupWindow;->show()V

    goto :goto_3
.end method
