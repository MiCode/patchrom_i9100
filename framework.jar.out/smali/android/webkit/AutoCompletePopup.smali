.class Landroid/webkit/AutoCompletePopup;
.super Ljava/lang/Object;
.source "AutoCompletePopup.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Landroid/widget/Filter$FilterListener;
.implements Landroid/widget/PopupWindow$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/webkit/AutoCompletePopup$AnchorView;
    }
.end annotation


# static fields
.field private static final AUTOFILL_FORM:I = 0x64


# instance fields
.field private mAdapter:Landroid/widget/ListAdapter;

.field private mAnchor:Landroid/view/View;

.field private mFilter:Landroid/widget/Filter;

.field private mHandler:Landroid/os/Handler;

.field private mInputConnection:Landroid/webkit/WebViewClassic$WebViewInputConnection;

.field private mIsAutoFillProfileSet:Z

.field private mPopup:Landroid/widget/ListPopupWindow;

.field private mQueryId:I

.field private mShowPopUp:Z

.field private mText:Ljava/lang/CharSequence;

.field private mWebView:Landroid/webkit/WebViewClassic;


# direct methods
.method public constructor <init>(Landroid/webkit/WebViewClassic;Landroid/webkit/WebViewClassic$WebViewInputConnection;)V
    .locals 1
    .parameter "webView"
    .parameter "inputConnection"

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/webkit/AutoCompletePopup;->mShowPopUp:Z

    .line 57
    iput-object p2, p0, Landroid/webkit/AutoCompletePopup;->mInputConnection:Landroid/webkit/WebViewClassic$WebViewInputConnection;

    .line 58
    iput-object p1, p0, Landroid/webkit/AutoCompletePopup;->mWebView:Landroid/webkit/WebViewClassic;

    .line 59
    new-instance v0, Landroid/webkit/AutoCompletePopup$1;

    invoke-direct {v0, p0}, Landroid/webkit/AutoCompletePopup$1;-><init>(Landroid/webkit/AutoCompletePopup;)V

    iput-object v0, p0, Landroid/webkit/AutoCompletePopup;->mHandler:Landroid/os/Handler;

    .line 69
    return-void
.end method

.method static synthetic access$000(Landroid/webkit/AutoCompletePopup;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 33
    iget v0, p0, Landroid/webkit/AutoCompletePopup;->mQueryId:I

    return v0
.end method

.method static synthetic access$100(Landroid/webkit/AutoCompletePopup;)Landroid/webkit/WebViewClassic;
    .locals 1
    .parameter "x0"

    .prologue
    .line 33
    iget-object v0, p0, Landroid/webkit/AutoCompletePopup;->mWebView:Landroid/webkit/WebViewClassic;

    return-object v0
.end method

.method private ensurePopup()V
    .locals 2

    .prologue
    .line 242
    iget-object v0, p0, Landroid/webkit/AutoCompletePopup;->mPopup:Landroid/widget/ListPopupWindow;

    if-nez v0, :cond_1

    .line 243
    new-instance v0, Landroid/widget/ListPopupWindow;

    iget-object v1, p0, Landroid/webkit/AutoCompletePopup;->mWebView:Landroid/webkit/WebViewClassic;

    invoke-virtual {v1}, Landroid/webkit/WebViewClassic;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/ListPopupWindow;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroid/webkit/AutoCompletePopup;->mPopup:Landroid/widget/ListPopupWindow;

    .line 244
    new-instance v0, Landroid/webkit/AutoCompletePopup$AnchorView;

    iget-object v1, p0, Landroid/webkit/AutoCompletePopup;->mWebView:Landroid/webkit/WebViewClassic;

    invoke-virtual {v1}, Landroid/webkit/WebViewClassic;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/webkit/AutoCompletePopup$AnchorView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroid/webkit/AutoCompletePopup;->mAnchor:Landroid/view/View;

    .line 245
    iget-object v0, p0, Landroid/webkit/AutoCompletePopup;->mWebView:Landroid/webkit/WebViewClassic;

    invoke-virtual {v0}, Landroid/webkit/WebViewClassic;->getWebView()Landroid/webkit/WebView;

    move-result-object v0

    iget-object v1, p0, Landroid/webkit/AutoCompletePopup;->mAnchor:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->addView(Landroid/view/View;)V

    .line 246
    iget-object v0, p0, Landroid/webkit/AutoCompletePopup;->mPopup:Landroid/widget/ListPopupWindow;

    invoke-virtual {v0, p0}, Landroid/widget/ListPopupWindow;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 247
    iget-object v0, p0, Landroid/webkit/AutoCompletePopup;->mPopup:Landroid/widget/ListPopupWindow;

    iget-object v1, p0, Landroid/webkit/AutoCompletePopup;->mAnchor:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/ListPopupWindow;->setAnchorView(Landroid/view/View;)V

    .line 248
    iget-object v0, p0, Landroid/webkit/AutoCompletePopup;->mPopup:Landroid/widget/ListPopupWindow;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ListPopupWindow;->setPromptPosition(I)V

    .line 252
    :cond_0
    :goto_0
    return-void

    .line 249
    :cond_1
    iget-object v0, p0, Landroid/webkit/AutoCompletePopup;->mWebView:Landroid/webkit/WebViewClassic;

    invoke-virtual {v0}, Landroid/webkit/WebViewClassic;->getWebView()Landroid/webkit/WebView;

    move-result-object v0

    iget-object v1, p0, Landroid/webkit/AutoCompletePopup;->mAnchor:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->indexOfChild(Landroid/view/View;)I

    move-result v0

    if-gez v0, :cond_0

    .line 250
    iget-object v0, p0, Landroid/webkit/AutoCompletePopup;->mWebView:Landroid/webkit/WebViewClassic;

    invoke-virtual {v0}, Landroid/webkit/WebViewClassic;->getWebView()Landroid/webkit/WebView;

    move-result-object v0

    iget-object v1, p0, Landroid/webkit/AutoCompletePopup;->mAnchor:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->addView(Landroid/view/View;)V

    goto :goto_0
.end method

.method private pushTextToInputConnection()V
    .locals 4

    .prologue
    .line 213
    iget-object v1, p0, Landroid/webkit/AutoCompletePopup;->mInputConnection:Landroid/webkit/WebViewClassic$WebViewInputConnection;

    invoke-virtual {v1}, Landroid/webkit/WebViewClassic$WebViewInputConnection;->getEditable()Landroid/text/Editable;

    move-result-object v0

    .line 214
    .local v0, oldText:Landroid/text/Editable;
    iget-object v1, p0, Landroid/webkit/AutoCompletePopup;->mInputConnection:Landroid/webkit/WebViewClassic$WebViewInputConnection;

    const/4 v2, 0x0

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/webkit/WebViewClassic$WebViewInputConnection;->setSelection(II)Z

    .line 215
    iget-object v1, p0, Landroid/webkit/AutoCompletePopup;->mInputConnection:Landroid/webkit/WebViewClassic$WebViewInputConnection;

    iget-object v2, p0, Landroid/webkit/AutoCompletePopup;->mText:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Landroid/webkit/WebViewClassic$WebViewInputConnection;->replaceSelection(Ljava/lang/CharSequence;)V

    .line 216
    iget-object v1, p0, Landroid/webkit/AutoCompletePopup;->mInputConnection:Landroid/webkit/WebViewClassic$WebViewInputConnection;

    iget-object v2, p0, Landroid/webkit/AutoCompletePopup;->mText:Ljava/lang/CharSequence;

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    iget-object v3, p0, Landroid/webkit/AutoCompletePopup;->mText:Ljava/lang/CharSequence;

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/webkit/WebViewClassic$WebViewInputConnection;->setSelection(II)Z

    .line 217
    return-void
.end method


# virtual methods
.method public clearAdapter()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 114
    iput-object v1, p0, Landroid/webkit/AutoCompletePopup;->mAdapter:Landroid/widget/ListAdapter;

    .line 115
    iput-object v1, p0, Landroid/webkit/AutoCompletePopup;->mFilter:Landroid/widget/Filter;

    .line 116
    iget-object v0, p0, Landroid/webkit/AutoCompletePopup;->mPopup:Landroid/widget/ListPopupWindow;

    if-eqz v0, :cond_0

    .line 117
    iget-object v0, p0, Landroid/webkit/AutoCompletePopup;->mPopup:Landroid/widget/ListPopupWindow;

    invoke-virtual {v0}, Landroid/widget/ListPopupWindow;->dismiss()V

    .line 118
    iget-object v0, p0, Landroid/webkit/AutoCompletePopup;->mPopup:Landroid/widget/ListPopupWindow;

    invoke-virtual {v0, v1}, Landroid/widget/ListPopupWindow;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 120
    :cond_0
    return-void
.end method

.method public onDismiss()V
    .locals 2

    .prologue
    .line 238
    iget-object v0, p0, Landroid/webkit/AutoCompletePopup;->mWebView:Landroid/webkit/WebViewClassic;

    invoke-virtual {v0}, Landroid/webkit/WebViewClassic;->getWebView()Landroid/webkit/WebView;

    move-result-object v0

    iget-object v1, p0, Landroid/webkit/AutoCompletePopup;->mAnchor:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->removeView(Landroid/view/View;)V

    .line 239
    return-void
.end method

.method public onFilterComplete(I)V
    .locals 4
    .parameter "count"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 221
    invoke-direct {p0}, Landroid/webkit/AutoCompletePopup;->ensurePopup()V

    .line 222
    iget-boolean v3, p0, Landroid/webkit/AutoCompletePopup;->mShowPopUp:Z

    if-eqz v3, :cond_2

    if-lez p1, :cond_2

    iget-object v3, p0, Landroid/webkit/AutoCompletePopup;->mInputConnection:Landroid/webkit/WebViewClassic$WebViewInputConnection;

    invoke-virtual {v3}, Landroid/webkit/WebViewClassic$WebViewInputConnection;->getIsAutoFillable()Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Landroid/webkit/AutoCompletePopup;->mText:Ljava/lang/CharSequence;

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-lez v3, :cond_2

    :cond_0
    move v0, v1

    .line 224
    .local v0, showDropDown:Z
    :goto_0
    if-eqz v0, :cond_3

    .line 225
    iget-object v3, p0, Landroid/webkit/AutoCompletePopup;->mPopup:Landroid/widget/ListPopupWindow;

    invoke-virtual {v3}, Landroid/widget/ListPopupWindow;->isShowing()Z

    move-result v3

    if-nez v3, :cond_1

    .line 227
    iget-object v3, p0, Landroid/webkit/AutoCompletePopup;->mPopup:Landroid/widget/ListPopupWindow;

    invoke-virtual {v3, v1}, Landroid/widget/ListPopupWindow;->setInputMethodMode(I)V

    .line 229
    :cond_1
    iget-object v1, p0, Landroid/webkit/AutoCompletePopup;->mPopup:Landroid/widget/ListPopupWindow;

    invoke-virtual {v1}, Landroid/widget/ListPopupWindow;->show()V

    .line 230
    iget-object v1, p0, Landroid/webkit/AutoCompletePopup;->mPopup:Landroid/widget/ListPopupWindow;

    invoke-virtual {v1}, Landroid/widget/ListPopupWindow;->getListView()Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setOverScrollMode(I)V

    .line 234
    :goto_1
    return-void

    .end local v0           #showDropDown:Z
    :cond_2
    move v0, v2

    .line 222
    goto :goto_0

    .line 232
    .restart local v0       #showDropDown:Z
    :cond_3
    iget-object v1, p0, Landroid/webkit/AutoCompletePopup;->mPopup:Landroid/widget/ListPopupWindow;

    invoke-virtual {v1}, Landroid/widget/ListPopupWindow;->dismiss()V

    goto :goto_1
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4
    .parameter
    .parameter "view"
    .parameter "position"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 172
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    iget-object v2, p0, Landroid/webkit/AutoCompletePopup;->mPopup:Landroid/widget/ListPopupWindow;

    if-nez v2, :cond_0

    .line 206
    :goto_0
    return-void

    .line 175
    :cond_0
    const-wide/16 v2, 0x0

    cmp-long v2, p4, v2

    if-nez v2, :cond_3

    if-nez p3, :cond_3

    iget-object v2, p0, Landroid/webkit/AutoCompletePopup;->mInputConnection:Landroid/webkit/WebViewClassic$WebViewInputConnection;

    invoke-virtual {v2}, Landroid/webkit/WebViewClassic$WebViewInputConnection;->getIsAutoFillable()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 176
    const-string v2, ""

    iput-object v2, p0, Landroid/webkit/AutoCompletePopup;->mText:Ljava/lang/CharSequence;

    .line 177
    invoke-direct {p0}, Landroid/webkit/AutoCompletePopup;->pushTextToInputConnection()V

    .line 179
    iget-boolean v2, p0, Landroid/webkit/AutoCompletePopup;->mIsAutoFillProfileSet:Z

    if-eqz v2, :cond_2

    .line 181
    iget-object v2, p0, Landroid/webkit/AutoCompletePopup;->mWebView:Landroid/webkit/WebViewClassic;

    iget v3, p0, Landroid/webkit/AutoCompletePopup;->mQueryId:I

    invoke-virtual {v2, v3}, Landroid/webkit/WebViewClassic;->autoFillForm(I)V

    .line 205
    :cond_1
    :goto_1
    iget-object v2, p0, Landroid/webkit/AutoCompletePopup;->mPopup:Landroid/widget/ListPopupWindow;

    invoke-virtual {v2}, Landroid/widget/ListPopupWindow;->dismiss()V

    goto :goto_0

    .line 186
    :cond_2
    iget-object v2, p0, Landroid/webkit/AutoCompletePopup;->mWebView:Landroid/webkit/WebViewClassic;

    invoke-virtual {v2}, Landroid/webkit/WebViewClassic;->getWebChromeClient()Landroid/webkit/WebChromeClient;

    move-result-object v1

    .line 187
    .local v1, webChromeClient:Landroid/webkit/WebChromeClient;
    if-eqz v1, :cond_1

    .line 188
    iget-object v2, p0, Landroid/webkit/AutoCompletePopup;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x64

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/webkit/WebChromeClient;->setupAutoFill(Landroid/os/Message;)V

    goto :goto_1

    .line 194
    .end local v1           #webChromeClient:Landroid/webkit/WebChromeClient;
    :cond_3
    if-gez p3, :cond_4

    .line 195
    iget-object v2, p0, Landroid/webkit/AutoCompletePopup;->mPopup:Landroid/widget/ListPopupWindow;

    invoke-virtual {v2}, Landroid/widget/ListPopupWindow;->getSelectedItem()Ljava/lang/Object;

    move-result-object v0

    .line 199
    .local v0, selectedItem:Ljava/lang/Object;
    :goto_2
    if-eqz v0, :cond_1

    .line 200
    iget-object v2, p0, Landroid/webkit/AutoCompletePopup;->mFilter:Landroid/widget/Filter;

    invoke-virtual {v2, v0}, Landroid/widget/Filter;->convertResultToString(Ljava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/webkit/AutoCompletePopup;->setText(Ljava/lang/CharSequence;)V

    .line 201
    invoke-direct {p0}, Landroid/webkit/AutoCompletePopup;->pushTextToInputConnection()V

    .line 202
    const/4 v2, 0x0

    iput-boolean v2, p0, Landroid/webkit/AutoCompletePopup;->mShowPopUp:Z

    goto :goto_1

    .line 197
    .end local v0           #selectedItem:Ljava/lang/Object;
    :cond_4
    iget-object v2, p0, Landroid/webkit/AutoCompletePopup;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v2, p3}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    .restart local v0       #selectedItem:Ljava/lang/Object;
    goto :goto_2
.end method

.method public onKeyPreIme(ILandroid/view/KeyEvent;)Z
    .locals 4
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 72
    iget-object v3, p0, Landroid/webkit/AutoCompletePopup;->mPopup:Landroid/widget/ListPopupWindow;

    if-nez v3, :cond_1

    .line 98
    :cond_0
    :goto_0
    return v1

    .line 75
    :cond_1
    const/4 v3, 0x4

    if-ne p1, v3, :cond_5

    iget-object v3, p0, Landroid/webkit/AutoCompletePopup;->mPopup:Landroid/widget/ListPopupWindow;

    invoke-virtual {v3}, Landroid/widget/ListPopupWindow;->isShowing()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 78
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v3

    if-nez v3, :cond_3

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v3

    if-nez v3, :cond_3

    .line 79
    iget-object v1, p0, Landroid/webkit/AutoCompletePopup;->mAnchor:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getKeyDispatcherState()Landroid/view/KeyEvent$DispatcherState;

    move-result-object v0

    .line 80
    .local v0, state:Landroid/view/KeyEvent$DispatcherState;
    if-eqz v0, :cond_2

    .line 81
    invoke-virtual {v0, p2, p0}, Landroid/view/KeyEvent$DispatcherState;->startTracking(Landroid/view/KeyEvent;Ljava/lang/Object;)V

    :cond_2
    move v1, v2

    .line 83
    goto :goto_0

    .line 84
    .end local v0           #state:Landroid/view/KeyEvent$DispatcherState;
    :cond_3
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v3

    if-ne v3, v2, :cond_5

    .line 85
    iget-object v3, p0, Landroid/webkit/AutoCompletePopup;->mAnchor:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getKeyDispatcherState()Landroid/view/KeyEvent$DispatcherState;

    move-result-object v0

    .line 86
    .restart local v0       #state:Landroid/view/KeyEvent$DispatcherState;
    if-eqz v0, :cond_4

    .line 87
    invoke-virtual {v0, p2}, Landroid/view/KeyEvent$DispatcherState;->handleUpEvent(Landroid/view/KeyEvent;)V

    .line 89
    :cond_4
    invoke-virtual {p2}, Landroid/view/KeyEvent;->isTracking()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-virtual {p2}, Landroid/view/KeyEvent;->isCanceled()Z

    move-result v3

    if-nez v3, :cond_5

    .line 90
    iget-object v1, p0, Landroid/webkit/AutoCompletePopup;->mPopup:Landroid/widget/ListPopupWindow;

    invoke-virtual {v1}, Landroid/widget/ListPopupWindow;->dismiss()V

    move v1, v2

    .line 91
    goto :goto_0

    .line 95
    .end local v0           #state:Landroid/view/KeyEvent$DispatcherState;
    :cond_5
    iget-object v2, p0, Landroid/webkit/AutoCompletePopup;->mPopup:Landroid/widget/ListPopupWindow;

    invoke-virtual {v2}, Landroid/widget/ListPopupWindow;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 96
    iget-object v1, p0, Landroid/webkit/AutoCompletePopup;->mPopup:Landroid/widget/ListPopupWindow;

    invoke-virtual {v1, p1, p2}, Landroid/widget/ListPopupWindow;->onKeyPreIme(ILandroid/view/KeyEvent;)Z

    move-result v1

    goto :goto_0
.end method

.method public resetRect()V
    .locals 10

    .prologue
    .line 136
    invoke-direct {p0}, Landroid/webkit/AutoCompletePopup;->ensurePopup()V

    .line 137
    iget-object v8, p0, Landroid/webkit/AutoCompletePopup;->mWebView:Landroid/webkit/WebViewClassic;

    iget-object v9, p0, Landroid/webkit/AutoCompletePopup;->mWebView:Landroid/webkit/WebViewClassic;

    iget-object v9, v9, Landroid/webkit/WebViewClassic;->mEditTextContentBounds:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->left:I

    invoke-virtual {v8, v9}, Landroid/webkit/WebViewClassic;->contentToViewX(I)I

    move-result v2

    .line 138
    .local v2, left:I
    iget-object v8, p0, Landroid/webkit/AutoCompletePopup;->mWebView:Landroid/webkit/WebViewClassic;

    iget-object v9, p0, Landroid/webkit/AutoCompletePopup;->mWebView:Landroid/webkit/WebViewClassic;

    iget-object v9, v9, Landroid/webkit/WebViewClassic;->mEditTextContentBounds:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->right:I

    invoke-virtual {v8, v9}, Landroid/webkit/WebViewClassic;->contentToViewX(I)I

    move-result v5

    .line 139
    .local v5, right:I
    sub-int v7, v5, v2

    .line 140
    .local v7, width:I
    iget-object v8, p0, Landroid/webkit/AutoCompletePopup;->mPopup:Landroid/widget/ListPopupWindow;

    invoke-virtual {v8, v7}, Landroid/widget/ListPopupWindow;->setWidth(I)V

    .line 142
    iget-object v8, p0, Landroid/webkit/AutoCompletePopup;->mWebView:Landroid/webkit/WebViewClassic;

    iget-object v9, p0, Landroid/webkit/AutoCompletePopup;->mWebView:Landroid/webkit/WebViewClassic;

    iget-object v9, v9, Landroid/webkit/WebViewClassic;->mEditTextContentBounds:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v8, v9}, Landroid/webkit/WebViewClassic;->contentToViewY(I)I

    move-result v0

    .line 143
    .local v0, bottom:I
    iget-object v8, p0, Landroid/webkit/AutoCompletePopup;->mWebView:Landroid/webkit/WebViewClassic;

    iget-object v9, p0, Landroid/webkit/AutoCompletePopup;->mWebView:Landroid/webkit/WebViewClassic;

    iget-object v9, v9, Landroid/webkit/WebViewClassic;->mEditTextContentBounds:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->top:I

    invoke-virtual {v8, v9}, Landroid/webkit/WebViewClassic;->contentToViewY(I)I

    move-result v6

    .line 144
    .local v6, top:I
    sub-int v1, v0, v6

    .line 146
    .local v1, height:I
    iget-object v8, p0, Landroid/webkit/AutoCompletePopup;->mAnchor:Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/AbsoluteLayout$LayoutParams;

    .line 148
    .local v3, lp:Landroid/widget/AbsoluteLayout$LayoutParams;
    const/4 v4, 0x0

    .line 149
    .local v4, needsUpdate:Z
    if-nez v3, :cond_3

    .line 150
    new-instance v3, Landroid/widget/AbsoluteLayout$LayoutParams;

    .end local v3           #lp:Landroid/widget/AbsoluteLayout$LayoutParams;
    invoke-direct {v3, v7, v1, v2, v6}, Landroid/widget/AbsoluteLayout$LayoutParams;-><init>(IIII)V

    .line 161
    .restart local v3       #lp:Landroid/widget/AbsoluteLayout$LayoutParams;
    :cond_0
    :goto_0
    if-eqz v4, :cond_1

    .line 162
    iget-object v8, p0, Landroid/webkit/AutoCompletePopup;->mAnchor:Landroid/view/View;

    invoke-virtual {v8, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 164
    :cond_1
    iget-object v8, p0, Landroid/webkit/AutoCompletePopup;->mPopup:Landroid/widget/ListPopupWindow;

    invoke-virtual {v8}, Landroid/widget/ListPopupWindow;->isShowing()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 165
    iget-object v8, p0, Landroid/webkit/AutoCompletePopup;->mPopup:Landroid/widget/ListPopupWindow;

    invoke-virtual {v8}, Landroid/widget/ListPopupWindow;->show()V

    .line 167
    :cond_2
    return-void

    .line 152
    :cond_3
    iget v8, v3, Landroid/widget/AbsoluteLayout$LayoutParams;->x:I

    if-ne v8, v2, :cond_4

    iget v8, v3, Landroid/widget/AbsoluteLayout$LayoutParams;->y:I

    if-ne v8, v6, :cond_4

    iget v8, v3, Landroid/widget/AbsoluteLayout$LayoutParams;->width:I

    if-ne v8, v7, :cond_4

    iget v8, v3, Landroid/widget/AbsoluteLayout$LayoutParams;->height:I

    if-eq v8, v1, :cond_0

    .line 154
    :cond_4
    const/4 v4, 0x1

    .line 155
    iput v2, v3, Landroid/widget/AbsoluteLayout$LayoutParams;->x:I

    .line 156
    iput v6, v3, Landroid/widget/AbsoluteLayout$LayoutParams;->y:I

    .line 157
    iput v7, v3, Landroid/widget/AbsoluteLayout$LayoutParams;->width:I

    .line 158
    iput v1, v3, Landroid/widget/AbsoluteLayout$LayoutParams;->height:I

    goto :goto_0
.end method

.method public setAdapter(Landroid/widget/ListAdapter;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Landroid/widget/ListAdapter;",
            ":",
            "Landroid/widget/Filterable;",
            ">(TT;)V"
        }
    .end annotation

    .prologue
    .line 123
    .local p1, adapter:Landroid/widget/ListAdapter;,"TT;"
    invoke-direct {p0}, Landroid/webkit/AutoCompletePopup;->ensurePopup()V

    .line 124
    iget-object v0, p0, Landroid/webkit/AutoCompletePopup;->mPopup:Landroid/widget/ListPopupWindow;

    invoke-virtual {v0, p1}, Landroid/widget/ListPopupWindow;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 125
    iput-object p1, p0, Landroid/webkit/AutoCompletePopup;->mAdapter:Landroid/widget/ListAdapter;

    .line 126
    if-eqz p1, :cond_0

    .line 127
    check-cast p1, Landroid/widget/Filterable;

    .end local p1           #adapter:Landroid/widget/ListAdapter;,"TT;"
    invoke-interface {p1}, Landroid/widget/Filterable;->getFilter()Landroid/widget/Filter;

    move-result-object v0

    iput-object v0, p0, Landroid/webkit/AutoCompletePopup;->mFilter:Landroid/widget/Filter;

    .line 128
    iget-object v0, p0, Landroid/webkit/AutoCompletePopup;->mFilter:Landroid/widget/Filter;

    iget-object v1, p0, Landroid/webkit/AutoCompletePopup;->mText:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1, p0}, Landroid/widget/Filter;->filter(Ljava/lang/CharSequence;Landroid/widget/Filter$FilterListener;)V

    .line 132
    :goto_0
    invoke-virtual {p0}, Landroid/webkit/AutoCompletePopup;->resetRect()V

    .line 133
    return-void

    .line 130
    .restart local p1       #adapter:Landroid/widget/ListAdapter;,"TT;"
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/webkit/AutoCompletePopup;->mFilter:Landroid/widget/Filter;

    goto :goto_0
.end method

.method public setAutoFillQueryId(I)V
    .locals 0
    .parameter "queryId"

    .prologue
    .line 110
    iput p1, p0, Landroid/webkit/AutoCompletePopup;->mQueryId:I

    .line 111
    return-void
.end method

.method public setIsAutoFillProfileSet(Z)V
    .locals 0
    .parameter "isAutoFillProfileSet"

    .prologue
    .line 209
    iput-boolean p1, p0, Landroid/webkit/AutoCompletePopup;->mIsAutoFillProfileSet:Z

    .line 210
    return-void
.end method

.method public setText(Ljava/lang/CharSequence;)V
    .locals 1
    .parameter "text"

    .prologue
    .line 102
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/webkit/AutoCompletePopup;->mShowPopUp:Z

    .line 103
    iput-object p1, p0, Landroid/webkit/AutoCompletePopup;->mText:Ljava/lang/CharSequence;

    .line 104
    iget-object v0, p0, Landroid/webkit/AutoCompletePopup;->mFilter:Landroid/widget/Filter;

    if-eqz v0, :cond_0

    .line 105
    iget-object v0, p0, Landroid/webkit/AutoCompletePopup;->mFilter:Landroid/widget/Filter;

    invoke-virtual {v0, p1, p0}, Landroid/widget/Filter;->filter(Ljava/lang/CharSequence;Landroid/widget/Filter$FilterListener;)V

    .line 107
    :cond_0
    return-void
.end method
