.class Landroid/webkit/FindActionModeCallback;
.super Ljava/lang/Object;
.source "FindActionModeCallback.java"

# interfaces
.implements Landroid/view/ActionMode$Callback;
.implements Landroid/text/TextWatcher;
.implements Landroid/view/View$OnLongClickListener;
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/webkit/FindActionModeCallback$NoAction;
    }
.end annotation


# instance fields
.field private mActionMode:Landroid/view/ActionMode;

.field private mActiveMatchIndex:I

.field private mCustomView:Landroid/view/View;

.field private mEditText:Landroid/widget/EditText;

.field private mGlobalVisibleOffset:Landroid/graphics/Point;

.field private mGlobalVisibleRect:Landroid/graphics/Rect;

.field private mInput:Landroid/view/inputmethod/InputMethodManager;

.field private mMatches:Landroid/widget/TextView;

.field private mMatchesFound:Z

.field private mNumberOfMatches:I

.field private mResources:Landroid/content/res/Resources;

.field private mWebView:Landroid/webkit/WebViewClassic;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 294
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/webkit/FindActionModeCallback;->mGlobalVisibleRect:Landroid/graphics/Rect;

    .line 295
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Landroid/webkit/FindActionModeCallback;->mGlobalVisibleOffset:Landroid/graphics/Point;

    .line 51
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x1090140

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Landroid/webkit/FindActionModeCallback;->mCustomView:Landroid/view/View;

    .line 53
    iget-object v0, p0, Landroid/webkit/FindActionModeCallback;->mCustomView:Landroid/view/View;

    const v1, 0x1020003

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Landroid/webkit/FindActionModeCallback;->mEditText:Landroid/widget/EditText;

    .line 55
    iget-object v0, p0, Landroid/webkit/FindActionModeCallback;->mEditText:Landroid/widget/EditText;

    new-instance v1, Landroid/webkit/FindActionModeCallback$NoAction;

    invoke-direct {v1}, Landroid/webkit/FindActionModeCallback$NoAction;-><init>()V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setCustomSelectionActionModeCallback(Landroid/view/ActionMode$Callback;)V

    .line 56
    iget-object v0, p0, Landroid/webkit/FindActionModeCallback;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v0, p0}, Landroid/widget/EditText;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 57
    iget-object v0, p0, Landroid/webkit/FindActionModeCallback;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v0, p0}, Landroid/widget/EditText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 58
    iget-object v0, p0, Landroid/webkit/FindActionModeCallback;->mEditText:Landroid/widget/EditText;

    new-instance v1, Landroid/webkit/FindActionModeCallback$1;

    invoke-direct {v1, p0}, Landroid/webkit/FindActionModeCallback$1;-><init>(Landroid/webkit/FindActionModeCallback;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 67
    const-string v0, ""

    invoke-virtual {p0, v0}, Landroid/webkit/FindActionModeCallback;->setText(Ljava/lang/String;)V

    .line 68
    iget-object v0, p0, Landroid/webkit/FindActionModeCallback;->mCustomView:Landroid/view/View;

    const v1, 0x102045c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Landroid/webkit/FindActionModeCallback;->mMatches:Landroid/widget/TextView;

    .line 70
    const-string v0, "input_method"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    iput-object v0, p0, Landroid/webkit/FindActionModeCallback;->mInput:Landroid/view/inputmethod/InputMethodManager;

    .line 72
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Landroid/webkit/FindActionModeCallback;->mResources:Landroid/content/res/Resources;

    .line 73
    return-void
.end method

.method private findNext(Z)V
    .locals 2
    .parameter "next"

    .prologue
    .line 115
    iget-object v0, p0, Landroid/webkit/FindActionModeCallback;->mWebView:Landroid/webkit/WebViewClassic;

    if-nez v0, :cond_0

    .line 116
    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "No WebView for FindActionModeCallback::findNext"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 119
    :cond_0
    iget-boolean v0, p0, Landroid/webkit/FindActionModeCallback;->mMatchesFound:Z

    if-nez v0, :cond_2

    .line 120
    invoke-virtual {p0}, Landroid/webkit/FindActionModeCallback;->findAll()V

    .line 130
    :cond_1
    :goto_0
    return-void

    .line 123
    :cond_2
    iget v0, p0, Landroid/webkit/FindActionModeCallback;->mNumberOfMatches:I

    if-eqz v0, :cond_1

    .line 128
    iget-object v0, p0, Landroid/webkit/FindActionModeCallback;->mWebView:Landroid/webkit/WebViewClassic;

    invoke-virtual {v0, p1}, Landroid/webkit/WebViewClassic;->findNext(Z)V

    .line 129
    invoke-direct {p0}, Landroid/webkit/FindActionModeCallback;->updateMatchesString()V

    goto :goto_0
.end method

.method private updateMatchesString()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 189
    iget-object v0, p0, Landroid/webkit/FindActionModeCallback;->mMatches:Landroid/widget/TextView;

    iget-object v1, p0, Landroid/webkit/FindActionModeCallback;->mResources:Landroid/content/res/Resources;

    const v2, 0x1130013

    iget v3, p0, Landroid/webkit/FindActionModeCallback;->mNumberOfMatches:I

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    iget v5, p0, Landroid/webkit/FindActionModeCallback;->mActiveMatchIndex:I

    add-int/lit8 v5, v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v7

    const/4 v5, 0x1

    iget v6, p0, Landroid/webkit/FindActionModeCallback;->mNumberOfMatches:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 193
    iget-object v0, p0, Landroid/webkit/FindActionModeCallback;->mMatches:Landroid/widget/TextView;

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 194
    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0
    .parameter "s"

    .prologue
    .line 292
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "s"
    .parameter "start"
    .parameter "count"
    .parameter "after"

    .prologue
    .line 279
    return-void
.end method

.method findAll()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 136
    iget-object v1, p0, Landroid/webkit/FindActionModeCallback;->mWebView:Landroid/webkit/WebViewClassic;

    if-nez v1, :cond_0

    .line 137
    new-instance v1, Ljava/lang/AssertionError;

    const-string v2, "No WebView for FindActionModeCallback::findAll"

    invoke-direct {v1, v2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1

    .line 140
    :cond_0
    iget-object v1, p0, Landroid/webkit/FindActionModeCallback;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    .line 141
    .local v0, find:Ljava/lang/CharSequence;
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-nez v1, :cond_1

    .line 142
    iget-object v1, p0, Landroid/webkit/FindActionModeCallback;->mWebView:Landroid/webkit/WebViewClassic;

    invoke-virtual {v1}, Landroid/webkit/WebViewClassic;->clearMatches()V

    .line 143
    iget-object v1, p0, Landroid/webkit/FindActionModeCallback;->mMatches:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 144
    iput-boolean v3, p0, Landroid/webkit/FindActionModeCallback;->mMatchesFound:Z

    .line 145
    iget-object v1, p0, Landroid/webkit/FindActionModeCallback;->mWebView:Landroid/webkit/WebViewClassic;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/webkit/WebViewClassic;->findAll(Ljava/lang/String;)I

    .line 152
    :goto_0
    return-void

    .line 147
    :cond_1
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/webkit/FindActionModeCallback;->mMatchesFound:Z

    .line 148
    iget-object v1, p0, Landroid/webkit/FindActionModeCallback;->mMatches:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 149
    iput v3, p0, Landroid/webkit/FindActionModeCallback;->mNumberOfMatches:I

    .line 150
    iget-object v1, p0, Landroid/webkit/FindActionModeCallback;->mWebView:Landroid/webkit/WebViewClassic;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/webkit/WebViewClassic;->findAllAsync(Ljava/lang/String;)V

    goto :goto_0
.end method

.method finish()V
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Landroid/webkit/FindActionModeCallback;->mActionMode:Landroid/view/ActionMode;

    invoke-virtual {v0}, Landroid/view/ActionMode;->finish()V

    .line 77
    return-void
.end method

.method public getActionModeGlobalBottom()I
    .locals 3

    .prologue
    .line 297
    iget-object v1, p0, Landroid/webkit/FindActionModeCallback;->mActionMode:Landroid/view/ActionMode;

    if-nez v1, :cond_0

    .line 298
    const/4 v1, 0x0

    .line 305
    :goto_0
    return v1

    .line 300
    :cond_0
    iget-object v1, p0, Landroid/webkit/FindActionModeCallback;->mCustomView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 301
    .local v0, view:Landroid/view/View;
    if-nez v0, :cond_1

    .line 302
    iget-object v0, p0, Landroid/webkit/FindActionModeCallback;->mCustomView:Landroid/view/View;

    .line 304
    :cond_1
    iget-object v1, p0, Landroid/webkit/FindActionModeCallback;->mGlobalVisibleRect:Landroid/graphics/Rect;

    iget-object v2, p0, Landroid/webkit/FindActionModeCallback;->mGlobalVisibleOffset:Landroid/graphics/Point;

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;Landroid/graphics/Point;)Z

    .line 305
    iget-object v1, p0, Landroid/webkit/FindActionModeCallback;->mGlobalVisibleRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    goto :goto_0
.end method

.method public getActionModeGlobalRight()I
    .locals 3

    .prologue
    .line 310
    iget-object v1, p0, Landroid/webkit/FindActionModeCallback;->mActionMode:Landroid/view/ActionMode;

    if-nez v1, :cond_0

    .line 311
    const/4 v1, 0x0

    .line 318
    :goto_0
    return v1

    .line 313
    :cond_0
    iget-object v1, p0, Landroid/webkit/FindActionModeCallback;->mCustomView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 314
    .local v0, view:Landroid/view/View;
    if-nez v0, :cond_1

    .line 315
    iget-object v0, p0, Landroid/webkit/FindActionModeCallback;->mCustomView:Landroid/view/View;

    .line 317
    :cond_1
    iget-object v1, p0, Landroid/webkit/FindActionModeCallback;->mGlobalVisibleRect:Landroid/graphics/Rect;

    iget-object v2, p0, Landroid/webkit/FindActionModeCallback;->mGlobalVisibleOffset:Landroid/graphics/Point;

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;Landroid/graphics/Point;)Z

    .line 318
    iget-object v1, p0, Landroid/webkit/FindActionModeCallback;->mGlobalVisibleRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    goto :goto_0
.end method

.method public onActionItemClicked(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z
    .locals 4
    .parameter "mode"
    .parameter "item"

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 253
    iget-object v2, p0, Landroid/webkit/FindActionModeCallback;->mWebView:Landroid/webkit/WebViewClassic;

    if-nez v2, :cond_0

    .line 254
    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "No WebView for FindActionModeCallback::onActionItemClicked"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 257
    :cond_0
    iget-object v2, p0, Landroid/webkit/FindActionModeCallback;->mInput:Landroid/view/inputmethod/InputMethodManager;

    iget-object v3, p0, Landroid/webkit/FindActionModeCallback;->mWebView:Landroid/webkit/WebViewClassic;

    invoke-virtual {v3}, Landroid/webkit/WebViewClassic;->getWebView()Landroid/webkit/WebView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/webkit/WebView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v3

    invoke-virtual {v2, v3, v0}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 258
    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 268
    :goto_0
    return v0

    .line 260
    :pswitch_0
    invoke-direct {p0, v0}, Landroid/webkit/FindActionModeCallback;->findNext(Z)V

    :goto_1
    move v0, v1

    .line 268
    goto :goto_0

    .line 263
    :pswitch_1
    invoke-direct {p0, v1}, Landroid/webkit/FindActionModeCallback;->findNext(Z)V

    goto :goto_1

    .line 258
    :pswitch_data_0
    .packed-switch 0x102047e
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 206
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/webkit/FindActionModeCallback;->findNext(Z)V

    .line 207
    return-void
.end method

.method public onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 6
    .parameter "mode"
    .parameter "menu"

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 213
    invoke-virtual {p1}, Landroid/view/ActionMode;->isUiFocusable()Z

    move-result v4

    if-nez v4, :cond_0

    .line 236
    :goto_0
    return v2

    .line 221
    :cond_0
    iget-object v4, p0, Landroid/webkit/FindActionModeCallback;->mCustomView:Landroid/view/View;

    invoke-virtual {p1, v4}, Landroid/view/ActionMode;->setCustomView(Landroid/view/View;)V

    .line 222
    invoke-virtual {p1}, Landroid/view/ActionMode;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v4

    const v5, 0x1140008

    invoke-virtual {v4, v5, p2}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 224
    iput-object p1, p0, Landroid/webkit/FindActionModeCallback;->mActionMode:Landroid/view/ActionMode;

    .line 225
    iget-object v4, p0, Landroid/webkit/FindActionModeCallback;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    .line 226
    .local v0, edit:Landroid/text/Editable;
    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v4

    invoke-static {v0, v4}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    .line 227
    iget-object v4, p0, Landroid/webkit/FindActionModeCallback;->mMatches:Landroid/widget/TextView;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 228
    iput-boolean v2, p0, Landroid/webkit/FindActionModeCallback;->mMatchesFound:Z

    .line 229
    iget-object v2, p0, Landroid/webkit/FindActionModeCallback;->mMatches:Landroid/widget/TextView;

    const-string v4, "0"

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 230
    iget-object v2, p0, Landroid/webkit/FindActionModeCallback;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->requestFocus()Z

    .line 231
    iget-object v2, p0, Landroid/webkit/FindActionModeCallback;->mCustomView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 232
    .local v1, view:Landroid/view/View;
    if-nez v1, :cond_1

    .line 233
    iget-object v2, p0, Landroid/webkit/FindActionModeCallback;->mCustomView:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/view/View;->setClickable(Z)V

    :goto_1
    move v2, v3

    .line 236
    goto :goto_0

    .line 235
    :cond_1
    invoke-virtual {v1, v3}, Landroid/view/View;->setClickable(Z)V

    goto :goto_1
.end method

.method public onDestroyActionMode(Landroid/view/ActionMode;)V
    .locals 3
    .parameter "mode"

    .prologue
    .line 241
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/webkit/FindActionModeCallback;->mActionMode:Landroid/view/ActionMode;

    .line 242
    iget-object v0, p0, Landroid/webkit/FindActionModeCallback;->mWebView:Landroid/webkit/WebViewClassic;

    invoke-virtual {v0}, Landroid/webkit/WebViewClassic;->notifyFindDialogDismissed()V

    .line 243
    iget-object v0, p0, Landroid/webkit/FindActionModeCallback;->mInput:Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, p0, Landroid/webkit/FindActionModeCallback;->mWebView:Landroid/webkit/WebViewClassic;

    invoke-virtual {v1}, Landroid/webkit/WebViewClassic;->getWebView()Landroid/webkit/WebView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/webkit/WebView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 244
    return-void
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 1
    .parameter "v"

    .prologue
    .line 199
    const/4 v0, 0x1

    return v0
.end method

.method public onPrepareActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 1
    .parameter "mode"
    .parameter "menu"

    .prologue
    .line 248
    const/4 v0, 0x0

    return v0
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "s"
    .parameter "start"
    .parameter "before"
    .parameter "count"

    .prologue
    .line 286
    invoke-virtual {p0}, Landroid/webkit/FindActionModeCallback;->findAll()V

    .line 287
    return-void
.end method

.method setText(Ljava/lang/String;)V
    .locals 4
    .parameter "text"

    .prologue
    const/4 v3, 0x0

    .line 84
    iget-object v2, p0, Landroid/webkit/FindActionModeCallback;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v2, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 85
    iget-object v2, p0, Landroid/webkit/FindActionModeCallback;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    .line 86
    .local v1, span:Landroid/text/Spannable;
    invoke-interface {v1}, Landroid/text/Spannable;->length()I

    move-result v0

    .line 90
    .local v0, length:I
    invoke-static {v1, v0, v0}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    .line 93
    const/16 v2, 0x12

    invoke-interface {v1, p0, v3, v0, v2}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 94
    iput-boolean v3, p0, Landroid/webkit/FindActionModeCallback;->mMatchesFound:Z

    .line 95
    return-void
.end method

.method setWebView(Landroid/webkit/WebViewClassic;)V
    .locals 2
    .parameter "webView"

    .prologue
    .line 102
    if-nez p1, :cond_0

    .line 103
    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "WebView supplied to FindActionModeCallback cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 106
    :cond_0
    iput-object p1, p0, Landroid/webkit/FindActionModeCallback;->mWebView:Landroid/webkit/WebViewClassic;

    .line 107
    return-void
.end method

.method public showSoftInput()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 155
    iget-object v1, p0, Landroid/webkit/FindActionModeCallback;->mInput:Landroid/view/inputmethod/InputMethodManager;

    iget-object v2, p0, Landroid/webkit/FindActionModeCallback;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getRootView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/inputmethod/InputMethodManager;->startGettingWindowFocus(Landroid/view/View;)V

    .line 156
    iget-object v1, p0, Landroid/webkit/FindActionModeCallback;->mInput:Landroid/view/inputmethod/InputMethodManager;

    iget-object v2, p0, Landroid/webkit/FindActionModeCallback;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v1, v2}, Landroid/view/inputmethod/InputMethodManager;->focusIn(Landroid/view/View;)V

    .line 157
    iget-object v1, p0, Landroid/webkit/FindActionModeCallback;->mInput:Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {v1}, Landroid/view/inputmethod/InputMethodManager;->isAccessoryKeyboardState()I

    move-result v0

    .line 158
    .local v0, mKeyboard:I
    and-int/lit8 v1, v0, 0x1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    and-int/lit8 v1, v0, 0x2

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 161
    :cond_0
    iget-object v1, p0, Landroid/webkit/FindActionModeCallback;->mInput:Landroid/view/inputmethod/InputMethodManager;

    iget-object v2, p0, Landroid/webkit/FindActionModeCallback;->mWebView:Landroid/webkit/WebViewClassic;

    invoke-virtual {v2}, Landroid/webkit/WebViewClassic;->getWebView()Landroid/webkit/WebView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/webkit/WebView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v1, v2, v3}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 167
    :goto_0
    return-void

    .line 165
    :cond_1
    iget-object v1, p0, Landroid/webkit/FindActionModeCallback;->mInput:Landroid/view/inputmethod/InputMethodManager;

    iget-object v2, p0, Landroid/webkit/FindActionModeCallback;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v1, v2, v3}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    goto :goto_0
.end method

.method public updateMatchCount(IIZ)V
    .locals 2
    .parameter "matchIndex"
    .parameter "matchCount"
    .parameter "isEmptyFind"

    .prologue
    .line 170
    if-nez p3, :cond_0

    .line 171
    iput p2, p0, Landroid/webkit/FindActionModeCallback;->mNumberOfMatches:I

    .line 172
    iput p1, p0, Landroid/webkit/FindActionModeCallback;->mActiveMatchIndex:I

    .line 173
    invoke-direct {p0}, Landroid/webkit/FindActionModeCallback;->updateMatchesString()V

    .line 178
    :goto_0
    return-void

    .line 175
    :cond_0
    iget-object v0, p0, Landroid/webkit/FindActionModeCallback;->mMatches:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 176
    const/4 v0, 0x0

    iput v0, p0, Landroid/webkit/FindActionModeCallback;->mNumberOfMatches:I

    goto :goto_0
.end method
