.class Landroid/webkit/SelectActionModeCallback;
.super Ljava/lang/Object;
.source "SelectActionModeCallback.java"

# interfaces
.implements Landroid/view/ActionMode$Callback;


# instance fields
.field private mActionMode:Landroid/view/ActionMode;

.field private mIsTextSelected:Z

.field private mWebView:Landroid/webkit/WebViewClassic;


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 29
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 32
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/webkit/SelectActionModeCallback;->mIsTextSelected:Z

    return-void
.end method

.method private setMenuVisibility(Landroid/view/Menu;ZI)V
    .locals 1
    .parameter "menu"
    .parameter "visible"
    .parameter "resourceId"

    .prologue
    .line 163
    invoke-interface {p1, p3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 164
    .local v0, item:Landroid/view/MenuItem;
    if-eqz v0, :cond_0

    .line 165
    invoke-interface {v0, p2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 167
    :cond_0
    return-void
.end method


# virtual methods
.method finish()V
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Landroid/webkit/SelectActionModeCallback;->mActionMode:Landroid/view/ActionMode;

    if-eqz v0, :cond_0

    .line 46
    iget-object v0, p0, Landroid/webkit/SelectActionModeCallback;->mActionMode:Landroid/view/ActionMode;

    invoke-virtual {v0}, Landroid/view/ActionMode;->finish()V

    .line 48
    :cond_0
    return-void
.end method

.method public onActionItemClicked(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z
    .locals 11
    .parameter "mode"
    .parameter "item"

    .prologue
    const/16 v10, 0x3e8

    const/16 v9, 0x32

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 92
    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    move-result v8

    sparse-switch v8, :sswitch_data_0

    .line 154
    :goto_0
    return v6

    .line 94
    :sswitch_0
    iget-object v6, p0, Landroid/webkit/SelectActionModeCallback;->mWebView:Landroid/webkit/WebViewClassic;

    invoke-virtual {v6}, Landroid/webkit/WebViewClassic;->cutSelection()V

    .line 95
    invoke-virtual {p1}, Landroid/view/ActionMode;->finish()V

    :cond_0
    :goto_1
    move v6, v7

    .line 154
    goto :goto_0

    .line 99
    :sswitch_1
    iget-object v6, p0, Landroid/webkit/SelectActionModeCallback;->mWebView:Landroid/webkit/WebViewClassic;

    invoke-virtual {v6}, Landroid/webkit/WebViewClassic;->copySelection()Z

    .line 100
    invoke-virtual {p1}, Landroid/view/ActionMode;->finish()V

    goto :goto_1

    .line 104
    :sswitch_2
    iget-object v6, p0, Landroid/webkit/SelectActionModeCallback;->mWebView:Landroid/webkit/WebViewClassic;

    invoke-virtual {v6}, Landroid/webkit/WebViewClassic;->pasteFromClipboard()V

    .line 105
    invoke-virtual {p1}, Landroid/view/ActionMode;->finish()V

    goto :goto_1

    .line 109
    :sswitch_3
    iget-object v6, p0, Landroid/webkit/SelectActionModeCallback;->mWebView:Landroid/webkit/WebViewClassic;

    invoke-virtual {v6}, Landroid/webkit/WebViewClassic;->getSelection()Ljava/lang/String;

    move-result-object v4

    .line 110
    .local v4, selection:Ljava/lang/String;
    iget-object v6, p0, Landroid/webkit/SelectActionModeCallback;->mWebView:Landroid/webkit/WebViewClassic;

    invoke-virtual {v6}, Landroid/webkit/WebViewClassic;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6, v4}, Landroid/provider/Browser;->sendString(Landroid/content/Context;Ljava/lang/String;)V

    .line 111
    invoke-virtual {p1}, Landroid/view/ActionMode;->finish()V

    goto :goto_1

    .line 115
    .end local v4           #selection:Ljava/lang/String;
    :sswitch_4
    iget-object v6, p0, Landroid/webkit/SelectActionModeCallback;->mWebView:Landroid/webkit/WebViewClassic;

    invoke-virtual {v6}, Landroid/webkit/WebViewClassic;->selectAll()V

    goto :goto_1

    .line 119
    :sswitch_5
    iget-object v8, p0, Landroid/webkit/SelectActionModeCallback;->mWebView:Landroid/webkit/WebViewClassic;

    invoke-virtual {v8}, Landroid/webkit/WebViewClassic;->getSelection()Ljava/lang/String;

    move-result-object v2

    .line 120
    .local v2, sel:Ljava/lang/String;
    invoke-virtual {p1}, Landroid/view/ActionMode;->finish()V

    .line 122
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 123
    .local v1, sBuffer:Ljava/lang/StringBuffer;
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->length()I

    move-result v8

    if-le v8, v9, :cond_1

    .line 124
    invoke-virtual {v1, v9}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 126
    :cond_1
    iget-object v8, p0, Landroid/webkit/SelectActionModeCallback;->mWebView:Landroid/webkit/WebViewClassic;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9, v6}, Landroid/webkit/WebViewClassic;->showFindDialog(Ljava/lang/String;Z)Z

    goto :goto_1

    .line 131
    .end local v1           #sBuffer:Ljava/lang/StringBuffer;
    .end local v2           #sel:Ljava/lang/String;
    :sswitch_6
    new-instance v0, Landroid/content/Intent;

    const-string v6, "android.intent.action.WEB_SEARCH"

    invoke-direct {v0, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 134
    .local v0, i:Landroid/content/Intent;
    iget-object v6, p0, Landroid/webkit/SelectActionModeCallback;->mWebView:Landroid/webkit/WebViewClassic;

    invoke-virtual {v6}, Landroid/webkit/WebViewClassic;->getSelection()Ljava/lang/String;

    move-result-object v3

    .line 135
    .local v3, sel1:Ljava/lang/String;
    if-eqz v3, :cond_0

    .line 136
    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5, v3}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 137
    .local v5, stringBuffer:Ljava/lang/StringBuffer;
    invoke-virtual {v5}, Ljava/lang/StringBuffer;->length()I

    move-result v6

    if-le v6, v10, :cond_2

    .line 138
    invoke-virtual {v5, v10}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 140
    :cond_2
    const-string/jumbo v6, "query"

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v6, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 142
    const-string/jumbo v6, "new_search"

    invoke-virtual {v0, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 144
    iget-object v6, p0, Landroid/webkit/SelectActionModeCallback;->mWebView:Landroid/webkit/WebViewClassic;

    invoke-virtual {v6}, Landroid/webkit/WebViewClassic;->getContext()Landroid/content/Context;

    move-result-object v6

    instance-of v6, v6, Landroid/app/Activity;

    if-nez v6, :cond_3

    .line 145
    const/high16 v6, 0x1000

    invoke-virtual {v0, v6}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 147
    :cond_3
    invoke-virtual {p1}, Landroid/view/ActionMode;->finish()V

    .line 148
    iget-object v6, p0, Landroid/webkit/SelectActionModeCallback;->mWebView:Landroid/webkit/WebViewClassic;

    invoke-virtual {v6}, Landroid/webkit/WebViewClassic;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_1

    .line 92
    :sswitch_data_0
    .sparse-switch
        0x1020020 -> :sswitch_0
        0x1020021 -> :sswitch_1
        0x1020022 -> :sswitch_2
        0x102047a -> :sswitch_4
        0x102047b -> :sswitch_3
        0x102047c -> :sswitch_5
        0x102047d -> :sswitch_6
    .end sparse-switch
.end method

.method public onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 12
    .parameter "mode"
    .parameter "menu"

    .prologue
    const/4 v1, 0x0

    const/4 v10, 0x1

    .line 54
    invoke-virtual {p1}, Landroid/view/ActionMode;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v9

    const v11, 0x1140006

    invoke-virtual {v9, v11, p2}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 56
    iget-object v9, p0, Landroid/webkit/SelectActionModeCallback;->mWebView:Landroid/webkit/WebViewClassic;

    invoke-virtual {v9}, Landroid/webkit/WebViewClassic;->getContext()Landroid/content/Context;

    move-result-object v6

    .line 67
    .local v6, context:Landroid/content/Context;
    const-string v9, "clipboard"

    invoke-virtual {v6, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/content/ClipboardManager;

    move-object v5, v9

    check-cast v5, Landroid/content/ClipboardManager;

    .line 69
    .local v5, cm:Landroid/content/ClipboardManager;
    invoke-virtual {p1}, Landroid/view/ActionMode;->isUiFocusable()Z

    move-result v8

    .line 70
    .local v8, isFocusable:Z
    iget-object v9, p0, Landroid/webkit/SelectActionModeCallback;->mWebView:Landroid/webkit/WebViewClassic;

    invoke-virtual {v9}, Landroid/webkit/WebViewClassic;->focusCandidateIsEditableText()Z

    move-result v7

    .line 71
    .local v7, isEditable:Z
    if-eqz v7, :cond_1

    invoke-virtual {v5}, Landroid/content/ClipboardManager;->hasPrimaryClip()Z

    move-result v9

    if-eqz v9, :cond_1

    if-eqz v8, :cond_1

    move v3, v10

    .line 72
    .local v3, canPaste:Z
    :goto_0
    if-nez v7, :cond_2

    if-eqz v8, :cond_2

    move v2, v10

    .line 73
    .local v2, canFind:Z
    :goto_1
    if-eqz v7, :cond_0

    iget-boolean v9, p0, Landroid/webkit/SelectActionModeCallback;->mIsTextSelected:Z

    if-eqz v9, :cond_0

    if-eqz v8, :cond_0

    move v1, v10

    .line 74
    .local v1, canCut:Z
    :cond_0
    iget-boolean v0, p0, Landroid/webkit/SelectActionModeCallback;->mIsTextSelected:Z

    .line 75
    .local v0, canCopy:Z
    iget-boolean v4, p0, Landroid/webkit/SelectActionModeCallback;->mIsTextSelected:Z

    .line 76
    .local v4, canWebSearch:Z
    const v9, 0x102047c

    invoke-direct {p0, p2, v2, v9}, Landroid/webkit/SelectActionModeCallback;->setMenuVisibility(Landroid/view/Menu;ZI)V

    .line 77
    const v9, 0x1020022

    invoke-direct {p0, p2, v3, v9}, Landroid/webkit/SelectActionModeCallback;->setMenuVisibility(Landroid/view/Menu;ZI)V

    .line 78
    const v9, 0x1020020

    invoke-direct {p0, p2, v1, v9}, Landroid/webkit/SelectActionModeCallback;->setMenuVisibility(Landroid/view/Menu;ZI)V

    .line 79
    const v9, 0x1020021

    invoke-direct {p0, p2, v0, v9}, Landroid/webkit/SelectActionModeCallback;->setMenuVisibility(Landroid/view/Menu;ZI)V

    .line 80
    const v9, 0x102047d

    invoke-direct {p0, p2, v4, v9}, Landroid/webkit/SelectActionModeCallback;->setMenuVisibility(Landroid/view/Menu;ZI)V

    .line 81
    iput-object p1, p0, Landroid/webkit/SelectActionModeCallback;->mActionMode:Landroid/view/ActionMode;

    .line 82
    return v10

    .end local v0           #canCopy:Z
    .end local v1           #canCut:Z
    .end local v2           #canFind:Z
    .end local v3           #canPaste:Z
    .end local v4           #canWebSearch:Z
    :cond_1
    move v3, v1

    .line 71
    goto :goto_0

    .restart local v3       #canPaste:Z
    :cond_2
    move v2, v1

    .line 72
    goto :goto_1
.end method

.method public onDestroyActionMode(Landroid/view/ActionMode;)V
    .locals 1
    .parameter "mode"

    .prologue
    .line 159
    iget-object v0, p0, Landroid/webkit/SelectActionModeCallback;->mWebView:Landroid/webkit/WebViewClassic;

    invoke-virtual {v0}, Landroid/webkit/WebViewClassic;->selectionDone()V

    .line 160
    return-void
.end method

.method public onPrepareActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 1
    .parameter "mode"
    .parameter "menu"

    .prologue
    .line 87
    const/4 v0, 0x1

    return v0
.end method

.method setTextSelected(Z)V
    .locals 0
    .parameter "isTextSelected"

    .prologue
    .line 39
    iput-boolean p1, p0, Landroid/webkit/SelectActionModeCallback;->mIsTextSelected:Z

    .line 40
    return-void
.end method

.method setWebView(Landroid/webkit/WebViewClassic;)V
    .locals 0
    .parameter "webView"

    .prologue
    .line 35
    iput-object p1, p0, Landroid/webkit/SelectActionModeCallback;->mWebView:Landroid/webkit/WebViewClassic;

    .line 36
    return-void
.end method
