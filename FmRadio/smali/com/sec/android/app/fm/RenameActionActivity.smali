.class public Lcom/sec/android/app/fm/RenameActionActivity;
.super Landroid/app/Activity;
.source "RenameActionActivity.java"


# instance fields
.field private final MENU_CANCEL:I

.field private final MENU_DONE:I

.field private final MENU_FIRST:I

.field private inputManager:Landroid/view/inputmethod/InputMethodManager;

.field private mBackKey:Z

.field private mEditText:Landroid/widget/EditText;

.field private mFreq:F

.field private mFreqName:Ljava/lang/String;

.field private mMenu:Landroid/view/Menu;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 25
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 36
    iput v0, p0, Lcom/sec/android/app/fm/RenameActionActivity;->MENU_FIRST:I

    .line 37
    iput v0, p0, Lcom/sec/android/app/fm/RenameActionActivity;->MENU_DONE:I

    .line 38
    const/4 v0, 0x1

    iput v0, p0, Lcom/sec/android/app/fm/RenameActionActivity;->MENU_CANCEL:I

    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/app/fm/RenameActionActivity;)Landroid/widget/EditText;
    .locals 1
    .parameter "x0"

    .prologue
    .line 25
    iget-object v0, p0, Lcom/sec/android/app/fm/RenameActionActivity;->mEditText:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sec/android/app/fm/RenameActionActivity;)Landroid/view/inputmethod/InputMethodManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 25
    iget-object v0, p0, Lcom/sec/android/app/fm/RenameActionActivity;->inputManager:Landroid/view/inputmethod/InputMethodManager;

    return-object v0
.end method


# virtual methods
.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .parameter "newConfig"

    .prologue
    .line 187
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 188
    invoke-virtual {p0}, Lcom/sec/android/app/fm/RenameActionActivity;->invalidateOptionsMenu()V

    .line 189
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7
    .parameter "savedInstanceState"

    .prologue
    const v4, 0x7f0a0025

    const/4 v6, 0x0

    const/high16 v3, -0x4080

    const/4 v5, 0x1

    .line 44
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 47
    invoke-virtual {p0}, Lcom/sec/android/app/fm/RenameActionActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "com.samsung.app.fm.radio.freq"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getFloatExtra(Ljava/lang/String;F)F

    move-result v1

    iput v1, p0, Lcom/sec/android/app/fm/RenameActionActivity;->mFreq:F

    .line 49
    invoke-virtual {p0}, Lcom/sec/android/app/fm/RenameActionActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "com.samsung.app.fm.radio.freq.name"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/fm/RenameActionActivity;->mFreqName:Ljava/lang/String;

    .line 52
    iget v1, p0, Lcom/sec/android/app/fm/RenameActionActivity;->mFreq:F

    cmpl-float v1, v1, v3

    if-nez v1, :cond_0

    .line 53
    const v1, 0x7f0a0003

    invoke-static {p0, v1, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 55
    invoke-virtual {p0}, Lcom/sec/android/app/fm/RenameActionActivity;->finish()V

    .line 57
    :cond_0
    const-string v1, "input_method"

    invoke-virtual {p0, v1}, Lcom/sec/android/app/fm/RenameActionActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/InputMethodManager;

    iput-object v1, p0, Lcom/sec/android/app/fm/RenameActionActivity;->inputManager:Landroid/view/inputmethod/InputMethodManager;

    .line 58
    const v1, 0x7f03001b

    invoke-virtual {p0, v1}, Lcom/sec/android/app/fm/RenameActionActivity;->setContentView(I)V

    .line 60
    invoke-static {}, Lcom/sec/android/app/fm/FMRadioFeature;->GetFrequencySpace()I

    move-result v1

    const/16 v2, 0x32

    if-ne v1, v2, :cond_1

    .line 61
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/sec/android/app/fm/RenameActionActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "%.2f"

    new-array v3, v5, [Ljava/lang/Object;

    iget v4, p0, Lcom/sec/android/app/fm/RenameActionActivity;->mFreq:F

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/sec/android/app/fm/RenameActionActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 68
    :goto_0
    const v1, 0x7f0700aa

    invoke-virtual {p0, v1}, Lcom/sec/android/app/fm/RenameActionActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lcom/sec/android/app/fm/RenameActionActivity;->mEditText:Landroid/widget/EditText;

    .line 69
    iget-object v1, p0, Lcom/sec/android/app/fm/RenameActionActivity;->mEditText:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/sec/android/app/fm/RenameActionActivity;->mFreqName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 70
    iget-object v1, p0, Lcom/sec/android/app/fm/RenameActionActivity;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->requestFocus()Z

    .line 71
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 72
    .local v0, handler:Landroid/os/Handler;
    new-instance v1, Lcom/sec/android/app/fm/RenameActionActivity$1;

    invoke-direct {v1, p0}, Lcom/sec/android/app/fm/RenameActionActivity$1;-><init>(Lcom/sec/android/app/fm/RenameActionActivity;)V

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 80
    invoke-virtual {p0}, Lcom/sec/android/app/fm/RenameActionActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/app/ActionBar;->setHomeButtonEnabled(Z)V

    .line 82
    invoke-virtual {p0}, Lcom/sec/android/app/fm/RenameActionActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 83
    return-void

    .line 63
    .end local v0           #handler:Landroid/os/Handler;
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/sec/android/app/fm/RenameActionActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/app/fm/RenameActionActivity;->mFreq:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/sec/android/app/fm/RenameActionActivity;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 5
    .parameter "menu"

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 157
    iput-object p1, p0, Lcom/sec/android/app/fm/RenameActionActivity;->mMenu:Landroid/view/Menu;

    .line 159
    const v1, 0x7f0a003c

    invoke-interface {p1, v2, v2, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    .line 160
    .local v0, menuItem:Landroid/view/MenuItem;
    const v1, 0x7f0200a1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 161
    invoke-interface {v0, v4}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 163
    const v1, 0x7f0a0021

    invoke-interface {p1, v2, v3, v3, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    .line 164
    const v1, 0x7f0200f4

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 165
    invoke-interface {v0, v4}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 166
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v1

    return v1
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    .line 90
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 91
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/fm/RenameActionActivity;->mBackKey:Z

    .line 93
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .parameter "item"

    .prologue
    .line 195
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 206
    :goto_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0

    .line 197
    :sswitch_0
    invoke-virtual {p0}, Lcom/sec/android/app/fm/RenameActionActivity;->renameChannel()V

    goto :goto_0

    .line 200
    :sswitch_1
    invoke-virtual {p0}, Lcom/sec/android/app/fm/RenameActionActivity;->renamecancel()V

    goto :goto_0

    .line 203
    :sswitch_2
    invoke-virtual {p0}, Lcom/sec/android/app/fm/RenameActionActivity;->finish()V

    goto :goto_0

    .line 195
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1 -> :sswitch_1
        0x102002c -> :sswitch_2
    .end sparse-switch
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 5
    .parameter "menu"

    .prologue
    const/4 v4, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 172
    invoke-virtual {p0}, Lcom/sec/android/app/fm/RenameActionActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 173
    .local v0, config:Landroid/content/res/Configuration;
    iget v1, v0, Landroid/content/res/Configuration;->orientation:I

    if-ne v1, v3, :cond_0

    .line 174
    invoke-interface {p1, v2}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v4}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    .line 175
    invoke-interface {p1, v3}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v4}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    .line 181
    :goto_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v1

    return v1

    .line 177
    :cond_0
    invoke-interface {p1, v2}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v1

    const v2, 0x7f0200f4

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 178
    invoke-interface {p1, v3}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v1

    const v2, 0x7f0200a1

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    goto :goto_0
.end method

.method protected onStop()V
    .locals 1

    .prologue
    .line 100
    iget-boolean v0, p0, Lcom/sec/android/app/fm/RenameActionActivity;->mBackKey:Z

    if-nez v0, :cond_0

    .line 101
    sget-object v0, Lcom/sec/android/app/fm/MainActivity;->_instance:Lcom/sec/android/app/fm/MainActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/fm/MainActivity;->checkBGPlayingSetting()V

    .line 102
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/fm/RenameActionActivity;->mBackKey:Z

    .line 104
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 105
    return-void
.end method

.method public renameChannel()V
    .locals 5

    .prologue
    .line 112
    iget-object v2, p0, Lcom/sec/android/app/fm/RenameActionActivity;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/app/fm/RenameActionActivity;->mFreqName:Ljava/lang/String;

    .line 114
    iget-object v2, p0, Lcom/sec/android/app/fm/RenameActionActivity;->mFreqName:Ljava/lang/String;

    const/16 v3, 0xa

    const/16 v4, 0x20

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/app/fm/RenameActionActivity;->mFreqName:Ljava/lang/String;

    .line 115
    const/4 v1, -0x1

    .line 116
    .local v1, spaceCount:I
    iget-object v2, p0, Lcom/sec/android/app/fm/RenameActionActivity;->mFreqName:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_0

    .line 117
    iget-object v2, p0, Lcom/sec/android/app/fm/RenameActionActivity;->mFreqName:Ljava/lang/String;

    const-string v3, "[^ ]"

    const-string v4, ""

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v1

    .line 120
    :cond_0
    iget-object v2, p0, Lcom/sec/android/app/fm/RenameActionActivity;->mFreqName:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-ne v1, v2, :cond_1

    .line 121
    const v2, 0x7f0a0009

    const/4 v3, 0x0

    invoke-static {p0, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 130
    :goto_0
    return-void

    .line 123
    :cond_1
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 124
    .local v0, intent:Landroid/content/Intent;
    const-string v2, "com.samsung.app.fm.radio.freq"

    iget v3, p0, Lcom/sec/android/app/fm/RenameActionActivity;->mFreq:F

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;F)Landroid/content/Intent;

    .line 125
    const-string v2, "com.samsung.app.fm.radio.freq.renamed"

    iget-object v3, p0, Lcom/sec/android/app/fm/RenameActionActivity;->mFreqName:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 126
    const/4 v2, -0x1

    invoke-virtual {p0, v2, v0}, Lcom/sec/android/app/fm/RenameActionActivity;->setResult(ILandroid/content/Intent;)V

    .line 127
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/sec/android/app/fm/RenameActionActivity;->mBackKey:Z

    .line 128
    invoke-virtual {p0}, Lcom/sec/android/app/fm/RenameActionActivity;->finish()V

    goto :goto_0
.end method

.method public renamecancel()V
    .locals 1

    .prologue
    .line 137
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/fm/RenameActionActivity;->mBackKey:Z

    .line 138
    invoke-virtual {p0}, Lcom/sec/android/app/fm/RenameActionActivity;->finish()V

    .line 139
    return-void
.end method
