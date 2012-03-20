.class public Lcom/sec/android/app/callsetting/allcalls/RejectMessages;
.super Landroid/app/Activity;
.source "RejectMessages.java"

# interfaces
.implements Landroid/text/TextWatcher;


# static fields
.field static mLeftSoftkey:Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;

.field static mSoftkeyView:Lcom/sec/android/touchwiz/widget/TwSoftkeyView;


# instance fields
.field private handler:Landroid/os/Handler;

.field private imm:Landroid/view/inputmethod/InputMethodManager;

.field istoastshowing:Z

.field mCreateEdit:Landroid/widget/EditText;

.field private final mTextViewKeyListener:Landroid/view/View$OnKeyListener;

.field selectedMessage:Ljava/lang/String;

.field updateMODE:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 66
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 77
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/callsetting/allcalls/RejectMessages;->istoastshowing:Z

    .line 283
    new-instance v0, Lcom/sec/android/app/callsetting/allcalls/RejectMessages$3;

    invoke-direct {v0, p0}, Lcom/sec/android/app/callsetting/allcalls/RejectMessages$3;-><init>(Lcom/sec/android/app/callsetting/allcalls/RejectMessages;)V

    iput-object v0, p0, Lcom/sec/android/app/callsetting/allcalls/RejectMessages;->handler:Landroid/os/Handler;

    .line 343
    new-instance v0, Lcom/sec/android/app/callsetting/allcalls/RejectMessages$5;

    invoke-direct {v0, p0}, Lcom/sec/android/app/callsetting/allcalls/RejectMessages$5;-><init>(Lcom/sec/android/app/callsetting/allcalls/RejectMessages;)V

    iput-object v0, p0, Lcom/sec/android/app/callsetting/allcalls/RejectMessages;->mTextViewKeyListener:Landroid/view/View$OnKeyListener;

    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/app/callsetting/allcalls/RejectMessages;)Landroid/view/inputmethod/InputMethodManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    iget-object v0, p0, Lcom/sec/android/app/callsetting/allcalls/RejectMessages;->imm:Landroid/view/inputmethod/InputMethodManager;

    return-object v0
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0
    .parameter "arg0"

    .prologue
    .line 339
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "s"
    .parameter "start"
    .parameter "count"
    .parameter "after"

    .prologue
    .line 295
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .parameter "newConfig"

    .prologue
    .line 279
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 280
    const-string v0, "Configuration"

    const-string v1, "changed "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 281
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 8
    .parameter "savedInstanceState"

    .prologue
    const/4 v6, 0x0

    const/4 v7, 0x1

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const-string v4, "CreateRejectMessages"

    const-string v5, "OnCreate ============== :"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const v4, 0x7f03000f

    invoke-virtual {p0, v4}, Lcom/sec/android/app/callsetting/allcalls/RejectMessages;->setContentView(I)V

    invoke-virtual {p0}, Lcom/sec/android/app/callsetting/allcalls/RejectMessages;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .local v0, actionBar:Landroid/app/ActionBar;
    if-eqz v0, :cond_0

    invoke-virtual {v0, v7}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V
    invoke-virtual {v0, v7}, Landroid/app/ActionBar;->setHomeButtonEnabled(Z)V

    :cond_0
    const v4, 0x7f080034

    invoke-virtual {p0, v4}, Lcom/sec/android/app/callsetting/allcalls/RejectMessages;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/EditText;

    iput-object v4, p0, Lcom/sec/android/app/callsetting/allcalls/RejectMessages;->mCreateEdit:Landroid/widget/EditText;

    .line 107
    iget-object v4, p0, Lcom/sec/android/app/callsetting/allcalls/RejectMessages;->mCreateEdit:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->requestFocus()Z

    .line 110
    new-instance v1, Lcom/sec/android/app/callsetting/allcalls/RejectMessages$1;

    invoke-direct {v1, p0}, Lcom/sec/android/app/callsetting/allcalls/RejectMessages$1;-><init>(Lcom/sec/android/app/callsetting/allcalls/RejectMessages;)V

    .line 177
    .local v1, filter:Landroid/text/InputFilter;
    new-array v2, v7, [Landroid/text/InputFilter;

    .line 188
    .local v2, filterArray:[Landroid/text/InputFilter;
    new-instance v4, Landroid/text/InputFilter$LengthFilter;

    const/16 v5, 0x64

    invoke-direct {v4, v5}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v4, v2, v6

    .line 192
    iget-object v4, p0, Lcom/sec/android/app/callsetting/allcalls/RejectMessages;->mCreateEdit:Landroid/widget/EditText;

    invoke-virtual {v4, v2}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 197
    const v4, 0x7f08000a

    invoke-virtual {p0, v4}, Lcom/sec/android/app/callsetting/allcalls/RejectMessages;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/sec/android/touchwiz/widget/TwSoftkeyView;

    sput-object v4, Lcom/sec/android/app/callsetting/allcalls/RejectMessages;->mSoftkeyView:Lcom/sec/android/touchwiz/widget/TwSoftkeyView;

    .line 198
    const v4, 0x7f08000b

    invoke-virtual {p0, v4}, Lcom/sec/android/app/callsetting/allcalls/RejectMessages;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;

    sput-object v4, Lcom/sec/android/app/callsetting/allcalls/RejectMessages;->mLeftSoftkey:Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;

    .line 199
    const-string v4, "input_method"

    invoke-virtual {p0, v4}, Lcom/sec/android/app/callsetting/allcalls/RejectMessages;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/inputmethod/InputMethodManager;

    iput-object v4, p0, Lcom/sec/android/app/callsetting/allcalls/RejectMessages;->imm:Landroid/view/inputmethod/InputMethodManager;

    .line 202
    invoke-virtual {p0}, Lcom/sec/android/app/callsetting/allcalls/RejectMessages;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const-string v5, "UPDATE_MODE"

    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    iput-boolean v4, p0, Lcom/sec/android/app/callsetting/allcalls/RejectMessages;->updateMODE:Z

    .line 203
    const-string v4, "CreateRejectMessages"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "updateMODE = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v6, p0, Lcom/sec/android/app/callsetting/allcalls/RejectMessages;->updateMODE:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 205
    iget-boolean v4, p0, Lcom/sec/android/app/callsetting/allcalls/RejectMessages;->updateMODE:Z

    if-ne v4, v7, :cond_1

    .line 206
    invoke-virtual {p0}, Lcom/sec/android/app/callsetting/allcalls/RejectMessages;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const-string v5, "SELECTED_MESSAGE"

    invoke-virtual {v4, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/sec/android/app/callsetting/allcalls/RejectMessages;->selectedMessage:Ljava/lang/String;

    .line 212
    iget-object v4, p0, Lcom/sec/android/app/callsetting/allcalls/RejectMessages;->mCreateEdit:Landroid/widget/EditText;

    iget-object v5, p0, Lcom/sec/android/app/callsetting/allcalls/RejectMessages;->selectedMessage:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 217
    iget-object v4, p0, Lcom/sec/android/app/callsetting/allcalls/RejectMessages;->mCreateEdit:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->length()I

    move-result v3

    .line 218
    .local v3, len:I
    if-lez v3, :cond_1

    .line 219
    iget-object v4, p0, Lcom/sec/android/app/callsetting/allcalls/RejectMessages;->mCreateEdit:Landroid/widget/EditText;

    invoke-virtual {v4, v3}, Landroid/widget/EditText;->setSelection(I)V

    .line 237
    .end local v3           #len:I
    :cond_1
    return-void
.end method

.method protected onDestroy()V
    .locals 0

    .prologue
    .line 252
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 253
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .parameter

    .prologue
    .line 373
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    .line 374
    const v1, 0x102002c

    if-ne v0, v1, :cond_0

    .line 375
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 376
    const-string v1, "android.intent.action.MAIN"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 377
    const/high16 v1, 0x400

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 378
    invoke-virtual {p0, v0}, Lcom/sec/android/app/callsetting/allcalls/RejectMessages;->startActivity(Landroid/content/Intent;)V

    .line 379
    invoke-virtual {p0}, Lcom/sec/android/app/callsetting/allcalls/RejectMessages;->finish()V

    .line 380
    const/4 v0, 0x1

    .line 382
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    goto :goto_0
.end method

.method protected onPause()V
    .locals 3

    .prologue
    .line 256
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 257
    iget-object v0, p0, Lcom/sec/android/app/callsetting/allcalls/RejectMessages;->imm:Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, p0, Lcom/sec/android/app/callsetting/allcalls/RejectMessages;->mCreateEdit:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 258
    return-void
.end method

.method protected onResume()V
    .locals 4

    .prologue
    .line 242
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 243
    iget-object v0, p0, Lcom/sec/android/app/callsetting/allcalls/RejectMessages;->mCreateEdit:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 244
    iget-object v0, p0, Lcom/sec/android/app/callsetting/allcalls/RejectMessages;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/sec/android/app/callsetting/allcalls/RejectMessages$2;

    invoke-direct {v1, p0}, Lcom/sec/android/app/callsetting/allcalls/RejectMessages$2;-><init>(Lcom/sec/android/app/callsetting/allcalls/RejectMessages;)V

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 249
    return-void
.end method

.method protected onStop()V
    .locals 0

    .prologue
    .line 261
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 262
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "input"
    .parameter "start"
    .parameter "before"
    .parameter "changeCount"

    .prologue
    .line 300
    return-void
.end method

.method public softkeyLeftRun(Landroid/view/View;)V
    .locals 3
    .parameter "target"

    .prologue
    .line 266
    invoke-virtual {p0}, Lcom/sec/android/app/callsetting/allcalls/RejectMessages;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 267
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "EDITED_MESSAGE"

    iget-object v2, p0, Lcom/sec/android/app/callsetting/allcalls/RejectMessages;->mCreateEdit:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 268
    const-string v1, "UPDATED"

    iget-boolean v2, p0, Lcom/sec/android/app/callsetting/allcalls/RejectMessages;->updateMODE:Z

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 269
    const/4 v1, -0x1

    invoke-virtual {p0, v1, v0}, Lcom/sec/android/app/callsetting/allcalls/RejectMessages;->setResult(ILandroid/content/Intent;)V

    .line 270
    invoke-virtual {p0}, Lcom/sec/android/app/callsetting/allcalls/RejectMessages;->finish()V

    .line 271
    return-void
.end method

.method public softkeyRightRun(Landroid/view/View;)V
    .locals 2
    .parameter "target"

    .prologue
    .line 274
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/callsetting/allcalls/RejectMessages;->setResult(ILandroid/content/Intent;)V

    .line 275
    invoke-virtual {p0}, Lcom/sec/android/app/callsetting/allcalls/RejectMessages;->finish()V

    .line 276
    return-void
.end method
