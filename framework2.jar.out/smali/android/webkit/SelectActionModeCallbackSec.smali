.class public Landroid/webkit/SelectActionModeCallbackSec;
.super Ljava/lang/Object;
.source "SelectActionModeCallbackSec.java"

# interfaces
.implements Landroid/view/ActionMode$Callback;


# static fields
.field private static final LOGTAG:Ljava/lang/String; = "SelectActionModeCallbackSec"


# instance fields
.field private mActionMode:Landroid/view/ActionMode;

.field public mIsEditable:Z

.field private mRecreate:Z

.field private mWebView:Landroid/webkit/WebViewClassic;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 37
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private setMenuVisibility(Landroid/view/Menu;ZI)V
    .locals 1
    .parameter "menu"
    .parameter "visible"
    .parameter "resourceId"

    .prologue
    .line 256
    invoke-interface {p1, p3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 257
    .local v0, item:Landroid/view/MenuItem;
    if-eqz v0, :cond_0

    .line 258
    invoke-interface {v0, p2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 260
    :cond_0
    return-void
.end method


# virtual methods
.method finish()V
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Landroid/webkit/SelectActionModeCallbackSec;->mActionMode:Landroid/view/ActionMode;

    if-eqz v0, :cond_0

    .line 65
    iget-object v0, p0, Landroid/webkit/SelectActionModeCallbackSec;->mActionMode:Landroid/view/ActionMode;

    invoke-virtual {v0}, Landroid/view/ActionMode;->finish()V

    .line 66
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/webkit/SelectActionModeCallbackSec;->mActionMode:Landroid/view/ActionMode;

    .line 68
    :cond_0
    return-void
.end method

.method finish(Z)V
    .locals 0
    .parameter "recreate"

    .prologue
    .line 72
    iput-boolean p1, p0, Landroid/webkit/SelectActionModeCallbackSec;->mRecreate:Z

    .line 73
    invoke-virtual {p0}, Landroid/webkit/SelectActionModeCallbackSec;->finish()V

    .line 74
    return-void
.end method

.method public onActionItemClicked(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z
    .locals 8
    .parameter "mode"
    .parameter "item"

    .prologue
    const/16 v7, 0x7530

    const/16 v6, 0x7d0

    const/4 v4, 0x0

    .line 166
    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    move-result v5

    sparse-switch v5, :sswitch_data_0

    .line 244
    :goto_0
    return v4

    .line 168
    :sswitch_0
    iget-object v4, p0, Landroid/webkit/SelectActionModeCallbackSec;->mWebView:Landroid/webkit/WebViewClassic;

    invoke-virtual {v4}, Landroid/webkit/WebViewClassic;->cutSelectionSec()V

    .line 169
    invoke-virtual {p1}, Landroid/view/ActionMode;->finish()V

    .line 244
    :goto_1
    const/4 v4, 0x1

    goto :goto_0

    .line 175
    :sswitch_1
    iget-object v4, p0, Landroid/webkit/SelectActionModeCallbackSec;->mWebView:Landroid/webkit/WebViewClassic;

    invoke-virtual {v4}, Landroid/webkit/WebViewClassic;->copySelectionSec()Z

    .line 177
    iget-object v4, p0, Landroid/webkit/SelectActionModeCallbackSec;->mWebView:Landroid/webkit/WebViewClassic;

    invoke-virtual {v4}, Landroid/webkit/WebViewClassic;->clearSelection()V

    .line 178
    invoke-virtual {p1}, Landroid/view/ActionMode;->finish()V

    goto :goto_1

    .line 182
    :sswitch_2
    iget-object v4, p0, Landroid/webkit/SelectActionModeCallbackSec;->mWebView:Landroid/webkit/WebViewClassic;

    invoke-virtual {v4}, Landroid/webkit/WebViewClassic;->pasteFromClipboard()V

    .line 183
    invoke-virtual {p1}, Landroid/view/ActionMode;->finish()V

    goto :goto_1

    .line 191
    :sswitch_3
    iget-object v4, p0, Landroid/webkit/SelectActionModeCallbackSec;->mWebView:Landroid/webkit/WebViewClassic;

    invoke-virtual {v4}, Landroid/webkit/WebViewClassic;->getSelectionSec()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_0

    .line 192
    const-string v4, "SelectActionModeCallbackSec"

    const-string v5, "mWebView.getSelectionSec() is null."

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 195
    :cond_0
    new-instance v2, Ljava/lang/StringBuffer;

    iget-object v4, p0, Landroid/webkit/SelectActionModeCallbackSec;->mWebView:Landroid/webkit/WebViewClassic;

    invoke-virtual {v4}, Landroid/webkit/WebViewClassic;->getSelectionSec()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 196
    .local v2, selection:Ljava/lang/StringBuffer;
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->length()I

    move-result v4

    if-le v4, v7, :cond_1

    .line 197
    const-string v4, "SelectActionModeCallbackSec"

    const-string v5, "onActionItemClicked: selected string is too long. Cut it"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 198
    invoke-virtual {v2, v7}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 201
    :cond_1
    iget-object v4, p0, Landroid/webkit/SelectActionModeCallbackSec;->mWebView:Landroid/webkit/WebViewClassic;

    invoke-virtual {v4}, Landroid/webkit/WebViewClassic;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/provider/Browser;->sendString(Landroid/content/Context;Ljava/lang/String;)V

    .line 202
    iget-object v4, p0, Landroid/webkit/SelectActionModeCallbackSec;->mWebView:Landroid/webkit/WebViewClassic;

    invoke-virtual {v4}, Landroid/webkit/WebViewClassic;->clearSelection()V

    .line 203
    invoke-virtual {p1}, Landroid/view/ActionMode;->finish()V

    goto :goto_1

    .line 207
    .end local v2           #selection:Ljava/lang/StringBuffer;
    :sswitch_4
    iget-object v4, p0, Landroid/webkit/SelectActionModeCallbackSec;->mWebView:Landroid/webkit/WebViewClassic;

    invoke-virtual {v4}, Landroid/webkit/WebViewClassic;->selectAllSec()Z

    goto :goto_1

    .line 211
    :sswitch_5
    iget-object v5, p0, Landroid/webkit/SelectActionModeCallbackSec;->mWebView:Landroid/webkit/WebViewClassic;

    invoke-virtual {v5}, Landroid/webkit/WebViewClassic;->getSelectionSec()Ljava/lang/String;

    move-result-object v1

    .line 212
    .local v1, sel:Ljava/lang/String;
    iget-object v5, p0, Landroid/webkit/SelectActionModeCallbackSec;->mWebView:Landroid/webkit/WebViewClassic;

    invoke-virtual {v5}, Landroid/webkit/WebViewClassic;->clearSelection()V

    .line 213
    invoke-virtual {p1}, Landroid/view/ActionMode;->finish()V

    .line 214
    iget-object v5, p0, Landroid/webkit/SelectActionModeCallbackSec;->mWebView:Landroid/webkit/WebViewClassic;

    invoke-virtual {v5, v1, v4}, Landroid/webkit/WebViewClassic;->showFindDialog(Ljava/lang/String;Z)Z

    goto :goto_1

    .line 219
    .end local v1           #sel:Ljava/lang/String;
    :sswitch_6
    iget-object v4, p0, Landroid/webkit/SelectActionModeCallbackSec;->mWebView:Landroid/webkit/WebViewClassic;

    invoke-virtual {v4}, Landroid/webkit/WebViewClassic;->getSelectionSec()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_2

    .line 220
    const-string v4, "SelectActionModeCallbackSec"

    const-string v5, "mWebView.getSelectionSec() is null."

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 224
    :cond_2
    new-instance v3, Ljava/lang/StringBuffer;

    iget-object v4, p0, Landroid/webkit/SelectActionModeCallbackSec;->mWebView:Landroid/webkit/WebViewClassic;

    invoke-virtual {v4}, Landroid/webkit/WebViewClassic;->getSelectionSec()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 225
    .local v3, stringBuffer:Ljava/lang/StringBuffer;
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->length()I

    move-result v4

    if-le v4, v6, :cond_3

    .line 226
    invoke-virtual {v3, v6}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 229
    :cond_3
    new-instance v0, Landroid/content/Intent;

    const-string v4, "android.intent.action.WEB_SEARCH"

    invoke-direct {v0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 230
    .local v0, i:Landroid/content/Intent;
    const-string v4, "query"

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 231
    iget-object v4, p0, Landroid/webkit/SelectActionModeCallbackSec;->mWebView:Landroid/webkit/WebViewClassic;

    invoke-virtual {v4}, Landroid/webkit/WebViewClassic;->clearSelection()V

    .line 232
    invoke-virtual {p1}, Landroid/view/ActionMode;->finish()V

    .line 233
    iget-object v4, p0, Landroid/webkit/SelectActionModeCallbackSec;->mWebView:Landroid/webkit/WebViewClassic;

    invoke-virtual {v4}, Landroid/webkit/WebViewClassic;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_1

    .line 237
    .end local v0           #i:Landroid/content/Intent;
    .end local v3           #stringBuffer:Ljava/lang/StringBuffer;
    :sswitch_7
    iget-object v4, p0, Landroid/webkit/SelectActionModeCallbackSec;->mWebView:Landroid/webkit/WebViewClassic;

    invoke-virtual {v4}, Landroid/webkit/WebViewClassic;->pasteFromClipboardEx()V

    .line 238
    invoke-virtual {p1}, Landroid/view/ActionMode;->finish()V

    goto/16 :goto_1

    .line 166
    nop

    :sswitch_data_0
    .sparse-switch
        0x1020020 -> :sswitch_0
        0x1020021 -> :sswitch_1
        0x1020022 -> :sswitch_2
        0x102025d -> :sswitch_7
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
    .line 82
    invoke-virtual {p1}, Landroid/view/ActionMode;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v10

    const v11, 0x1140007

    invoke-virtual {v10, v11, p2}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 83
    iget-object v10, p0, Landroid/webkit/SelectActionModeCallbackSec;->mWebView:Landroid/webkit/WebViewClassic;

    invoke-virtual {v10}, Landroid/webkit/WebViewClassic;->getContext()Landroid/content/Context;

    move-result-object v5

    .line 86
    .local v5, context:Landroid/content/Context;
    iget-object v10, p0, Landroid/webkit/SelectActionModeCallbackSec;->mWebView:Landroid/webkit/WebViewClassic;

    invoke-virtual {v10}, Landroid/webkit/WebViewClassic;->getFindOptionEnabled()Z

    move-result v6

    .line 95
    .local v6, isFindEnabled:Z
    const-string v10, "clipboard"

    invoke-virtual {v5, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/content/ClipboardManager;

    move-object v3, v10

    check-cast v3, Landroid/content/ClipboardManager;

    .line 97
    .local v3, cm:Landroid/content/ClipboardManager;
    invoke-virtual {p1}, Landroid/view/ActionMode;->isUiFocusable()Z

    move-result v7

    .line 102
    .local v7, isFocusable:Z
    iget-boolean v10, p0, Landroid/webkit/SelectActionModeCallbackSec;->mRecreate:Z

    if-nez v10, :cond_0

    .line 103
    iget-object v10, p0, Landroid/webkit/SelectActionModeCallbackSec;->mWebView:Landroid/webkit/WebViewClassic;

    invoke-virtual {v10}, Landroid/webkit/WebViewClassic;->focusCandidateIsEditableText()Z

    move-result v10

    iput-boolean v10, p0, Landroid/webkit/SelectActionModeCallbackSec;->mIsEditable:Z

    .line 106
    :cond_0
    const/4 v8, 0x0

    .line 107
    .local v8, isTypePassword:Z
    const/4 v9, 0x0

    .line 108
    .local v9, variation:I
    iget-object v10, p0, Landroid/webkit/SelectActionModeCallbackSec;->mWebView:Landroid/webkit/WebViewClassic;

    iget-object v10, v10, Landroid/webkit/WebViewClassic;->mInputConnection:Landroid/webkit/WebViewClassic$WebViewInputConnection;

    if-eqz v10, :cond_1

    .line 109
    iget-object v10, p0, Landroid/webkit/SelectActionModeCallbackSec;->mWebView:Landroid/webkit/WebViewClassic;

    iget-object v10, v10, Landroid/webkit/WebViewClassic;->mInputConnection:Landroid/webkit/WebViewClassic$WebViewInputConnection;

    invoke-virtual {v10}, Landroid/webkit/WebViewClassic$WebViewInputConnection;->getInputType()I

    move-result v10

    and-int/lit16 v9, v10, 0xff0

    .line 111
    const/16 v10, 0xe0

    if-ne v9, v10, :cond_1

    .line 112
    const/4 v8, 0x1

    .line 116
    :cond_1
    iget-boolean v10, p0, Landroid/webkit/SelectActionModeCallbackSec;->mIsEditable:Z

    if-eqz v10, :cond_4

    invoke-virtual {v3}, Landroid/content/ClipboardManager;->hasPrimaryClip()Z

    move-result v10

    if-eqz v10, :cond_4

    if-eqz v7, :cond_4

    const/4 v2, 0x1

    .line 117
    .local v2, canPaste:Z
    :goto_0
    iget-boolean v10, p0, Landroid/webkit/SelectActionModeCallbackSec;->mIsEditable:Z

    if-nez v10, :cond_5

    if-eqz v7, :cond_5

    if-eqz v6, :cond_5

    const/4 v1, 0x1

    .line 118
    .local v1, canFind:Z
    :goto_1
    iget-boolean v10, p0, Landroid/webkit/SelectActionModeCallbackSec;->mIsEditable:Z

    if-eqz v10, :cond_6

    if-eqz v7, :cond_6

    if-nez v8, :cond_6

    const/4 v0, 0x1

    .line 119
    .local v0, canCut:Z
    :goto_2
    const v10, 0x102047c

    invoke-direct {p0, p2, v1, v10}, Landroid/webkit/SelectActionModeCallbackSec;->setMenuVisibility(Landroid/view/Menu;ZI)V

    .line 120
    const v10, 0x1020022

    invoke-direct {p0, p2, v2, v10}, Landroid/webkit/SelectActionModeCallbackSec;->setMenuVisibility(Landroid/view/Menu;ZI)V

    .line 121
    const v10, 0x1020020

    invoke-direct {p0, p2, v0, v10}, Landroid/webkit/SelectActionModeCallbackSec;->setMenuVisibility(Landroid/view/Menu;ZI)V

    .line 123
    iget-boolean v10, p0, Landroid/webkit/SelectActionModeCallbackSec;->mIsEditable:Z

    if-eqz v10, :cond_2

    .line 124
    const v10, 0x1020021

    invoke-direct {p0, p2, v0, v10}, Landroid/webkit/SelectActionModeCallbackSec;->setMenuVisibility(Landroid/view/Menu;ZI)V

    .line 125
    const v10, 0x102047b

    invoke-direct {p0, p2, v0, v10}, Landroid/webkit/SelectActionModeCallbackSec;->setMenuVisibility(Landroid/view/Menu;ZI)V

    .line 126
    const v10, 0x102047d

    invoke-direct {p0, p2, v0, v10}, Landroid/webkit/SelectActionModeCallbackSec;->setMenuVisibility(Landroid/view/Menu;ZI)V

    .line 128
    :cond_2
    iget-boolean v10, p0, Landroid/webkit/SelectActionModeCallbackSec;->mIsEditable:Z

    const v11, 0x102025d

    invoke-direct {p0, p2, v10, v11}, Landroid/webkit/SelectActionModeCallbackSec;->setMenuVisibility(Landroid/view/Menu;ZI)V

    .line 129
    iput-object p1, p0, Landroid/webkit/SelectActionModeCallbackSec;->mActionMode:Landroid/view/ActionMode;

    .line 136
    iget-object v10, p0, Landroid/webkit/SelectActionModeCallbackSec;->mWebView:Landroid/webkit/WebViewClassic;

    invoke-virtual {v10}, Landroid/webkit/WebViewClassic;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    .line 137
    .local v4, config:Landroid/content/res/Configuration;
    iget v10, v4, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v10, v10, 0x4

    const/4 v11, 0x4

    if-eq v10, v11, :cond_3

    .line 138
    iget v10, v4, Landroid/content/res/Configuration;->orientation:I

    const/4 v11, 0x1

    if-ne v10, v11, :cond_7

    .line 139
    const/4 v10, 0x0

    invoke-interface {p2, v10}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v10

    const/4 v11, 0x2

    invoke-interface {v10, v11}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 140
    const/4 v10, 0x1

    invoke-interface {p2, v10}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v10

    const/4 v11, 0x2

    invoke-interface {v10, v11}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 141
    const/4 v10, 0x2

    invoke-interface {p2, v10}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v10

    const/4 v11, 0x2

    invoke-interface {v10, v11}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 142
    const/4 v10, 0x3

    invoke-interface {p2, v10}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v10

    const/4 v11, 0x1

    invoke-interface {v10, v11}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 143
    const/4 v10, 0x4

    invoke-interface {p2, v10}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v10

    const/4 v11, 0x1

    invoke-interface {v10, v11}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 144
    const/4 v10, 0x5

    invoke-interface {p2, v10}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v10

    const/4 v11, 0x1

    invoke-interface {v10, v11}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 154
    :cond_3
    :goto_3
    const/4 v10, 0x0

    iput-boolean v10, p0, Landroid/webkit/SelectActionModeCallbackSec;->mRecreate:Z

    .line 155
    iput-object p1, p0, Landroid/webkit/SelectActionModeCallbackSec;->mActionMode:Landroid/view/ActionMode;

    .line 156
    const/4 v10, 0x1

    return v10

    .line 116
    .end local v0           #canCut:Z
    .end local v1           #canFind:Z
    .end local v2           #canPaste:Z
    .end local v4           #config:Landroid/content/res/Configuration;
    :cond_4
    const/4 v2, 0x0

    goto/16 :goto_0

    .line 117
    .restart local v2       #canPaste:Z
    :cond_5
    const/4 v1, 0x0

    goto/16 :goto_1

    .line 118
    .restart local v1       #canFind:Z
    :cond_6
    const/4 v0, 0x0

    goto/16 :goto_2

    .line 146
    .restart local v0       #canCut:Z
    .restart local v4       #config:Landroid/content/res/Configuration;
    :cond_7
    const/4 v10, 0x0

    invoke-interface {p2, v10}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v10

    const/4 v11, 0x6

    invoke-interface {v10, v11}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 147
    const/4 v10, 0x1

    invoke-interface {p2, v10}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v10

    const/4 v11, 0x6

    invoke-interface {v10, v11}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 148
    const/4 v10, 0x2

    invoke-interface {p2, v10}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v10

    const/4 v11, 0x6

    invoke-interface {v10, v11}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 149
    const/4 v10, 0x3

    invoke-interface {p2, v10}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v10

    const/4 v11, 0x5

    invoke-interface {v10, v11}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 150
    const/4 v10, 0x4

    invoke-interface {p2, v10}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v10

    const/4 v11, 0x5

    invoke-interface {v10, v11}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 151
    const/4 v10, 0x5

    invoke-interface {p2, v10}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v10

    const/4 v11, 0x5

    invoke-interface {v10, v11}, Landroid/view/MenuItem;->setShowAsAction(I)V

    goto :goto_3
.end method

.method public onDestroyActionMode(Landroid/view/ActionMode;)V
    .locals 1
    .parameter "mode"

    .prologue
    .line 251
    iget-boolean v0, p0, Landroid/webkit/SelectActionModeCallbackSec;->mRecreate:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/webkit/SelectActionModeCallbackSec;->mWebView:Landroid/webkit/WebViewClassic;

    invoke-virtual {v0}, Landroid/webkit/WebViewClassic;->clearSelection()V

    .line 253
    :cond_0
    return-void
.end method

.method public onPrepareActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 1
    .parameter "mode"
    .parameter "menu"

    .prologue
    .line 161
    const/4 v0, 0x1

    return v0
.end method

.method protected onSetWebView()V
    .locals 0

    .prologue
    .line 59
    return-void
.end method

.method setWebViewClassic(Landroid/webkit/WebViewClassic;)V
    .locals 0
    .parameter "webViewClassic"

    .prologue
    .line 46
    iput-object p1, p0, Landroid/webkit/SelectActionModeCallbackSec;->mWebView:Landroid/webkit/WebViewClassic;

    .line 47
    invoke-virtual {p0}, Landroid/webkit/SelectActionModeCallbackSec;->onSetWebView()V

    .line 48
    return-void
.end method
