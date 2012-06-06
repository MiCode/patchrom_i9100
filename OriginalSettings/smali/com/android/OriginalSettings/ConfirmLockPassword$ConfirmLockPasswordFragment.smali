.class public Lcom/android/OriginalSettings/ConfirmLockPassword$ConfirmLockPasswordFragment;
.super Landroid/app/Fragment;
.source "ConfirmLockPassword.java"

# interfaces
.implements Landroid/text/TextWatcher;
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/TextView$OnEditorActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/OriginalSettings/ConfirmLockPassword;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ConfirmLockPasswordFragment"
.end annotation


# instance fields
.field private mContinueButton:Landroid/widget/Button;

.field private mHandler:Landroid/os/Handler;

.field private mHeaderText:Landroid/widget/TextView;

.field private mKeyboardHelper:Lcom/android/internal/widget/PasswordEntryKeyboardHelper;

.field private mKeyboardView:Lcom/android/internal/widget/PasswordEntryKeyboardView;

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mPasswordEntry:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 77
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 70
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/OriginalSettings/ConfirmLockPassword$ConfirmLockPasswordFragment;->mHandler:Landroid/os/Handler;

    .line 79
    return-void
.end method

.method static synthetic access$000(Lcom/android/OriginalSettings/ConfirmLockPassword$ConfirmLockPasswordFragment;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 64
    iget-object v0, p0, Lcom/android/OriginalSettings/ConfirmLockPassword$ConfirmLockPasswordFragment;->mHeaderText:Landroid/widget/TextView;

    return-object v0
.end method

.method private handleNext()V
    .locals 4

    .prologue
    .line 150
    iget-object v2, p0, Lcom/android/OriginalSettings/ConfirmLockPassword$ConfirmLockPasswordFragment;->mPasswordEntry:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 151
    .local v1, pin:Ljava/lang/String;
    iget-object v2, p0, Lcom/android/OriginalSettings/ConfirmLockPassword$ConfirmLockPasswordFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v2, v1}, Lcom/android/internal/widget/LockPatternUtils;->checkPassword(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 153
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 154
    .local v0, intent:Landroid/content/Intent;
    const-string v2, "password"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 156
    invoke-virtual {p0}, Lcom/android/OriginalSettings/ConfirmLockPassword$ConfirmLockPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const/4 v3, -0x1

    invoke-virtual {v2, v3, v0}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 157
    invoke-virtual {p0}, Lcom/android/OriginalSettings/ConfirmLockPassword$ConfirmLockPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->finish()V

    .line 161
    .end local v0           #intent:Landroid/content/Intent;
    :goto_0
    return-void

    .line 159
    :cond_0
    const v2, 0x7f0b0433

    invoke-direct {p0, v2}, Lcom/android/OriginalSettings/ConfirmLockPassword$ConfirmLockPasswordFragment;->showError(I)V

    goto :goto_0
.end method

.method private showError(I)V
    .locals 4
    .parameter "msg"

    .prologue
    .line 177
    iget-object v0, p0, Lcom/android/OriginalSettings/ConfirmLockPassword$ConfirmLockPasswordFragment;->mHeaderText:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    .line 178
    iget-object v0, p0, Lcom/android/OriginalSettings/ConfirmLockPassword$ConfirmLockPasswordFragment;->mPasswordEntry:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 179
    iget-object v0, p0, Lcom/android/OriginalSettings/ConfirmLockPassword$ConfirmLockPasswordFragment;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/OriginalSettings/ConfirmLockPassword$ConfirmLockPasswordFragment$1;

    invoke-direct {v1, p0}, Lcom/android/OriginalSettings/ConfirmLockPassword$ConfirmLockPasswordFragment$1;-><init>(Lcom/android/OriginalSettings/ConfirmLockPassword$ConfirmLockPasswordFragment;)V

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 184
    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 2
    .parameter "s"

    .prologue
    .line 206
    iget-object v1, p0, Lcom/android/OriginalSettings/ConfirmLockPassword$ConfirmLockPasswordFragment;->mContinueButton:Landroid/widget/Button;

    iget-object v0, p0, Lcom/android/OriginalSettings/ConfirmLockPassword$ConfirmLockPasswordFragment;->mPasswordEntry:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/Button;->setEnabled(Z)V

    .line 207
    return-void

    .line 206
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "s"
    .parameter "start"
    .parameter "count"
    .parameter "after"

    .prologue
    .line 200
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 164
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 174
    :goto_0
    return-void

    .line 166
    :sswitch_0
    invoke-direct {p0}, Lcom/android/OriginalSettings/ConfirmLockPassword$ConfirmLockPasswordFragment;->handleNext()V

    goto :goto_0

    .line 170
    :sswitch_1
    invoke-virtual {p0}, Lcom/android/OriginalSettings/ConfirmLockPassword$ConfirmLockPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setResult(I)V

    .line 171
    invoke-virtual {p0}, Lcom/android/OriginalSettings/ConfirmLockPassword$ConfirmLockPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 164
    :sswitch_data_0
    .sparse-switch
        0x7f080009 -> :sswitch_0
        0x7f080034 -> :sswitch_1
    .end sparse-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 83
    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 84
    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {p0}, Lcom/android/OriginalSettings/ConfirmLockPassword$ConfirmLockPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/OriginalSettings/ConfirmLockPassword$ConfirmLockPasswordFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 85
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 11
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    .line 90
    iget-object v8, p0, Lcom/android/OriginalSettings/ConfirmLockPassword$ConfirmLockPasswordFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v8}, Lcom/android/internal/widget/LockPatternUtils;->getKeyguardStoredPasswordQuality()I

    move-result v5

    .line 91
    .local v5, storedQuality:I
    const v8, 0x7f04001d

    const/4 v9, 0x0

    invoke-virtual {p1, v8, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v7

    .line 94
    .local v7, view:Landroid/view/View;
    const v8, 0x7f080034

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 95
    const v8, 0x7f080009

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/Button;

    iput-object v8, p0, Lcom/android/OriginalSettings/ConfirmLockPassword$ConfirmLockPasswordFragment;->mContinueButton:Landroid/widget/Button;

    .line 96
    iget-object v8, p0, Lcom/android/OriginalSettings/ConfirmLockPassword$ConfirmLockPasswordFragment;->mContinueButton:Landroid/widget/Button;

    invoke-virtual {v8, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 97
    iget-object v8, p0, Lcom/android/OriginalSettings/ConfirmLockPassword$ConfirmLockPasswordFragment;->mContinueButton:Landroid/widget/Button;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/widget/Button;->setEnabled(Z)V

    .line 99
    const v8, 0x7f080033

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    iput-object v8, p0, Lcom/android/OriginalSettings/ConfirmLockPassword$ConfirmLockPasswordFragment;->mPasswordEntry:Landroid/widget/TextView;

    .line 100
    iget-object v8, p0, Lcom/android/OriginalSettings/ConfirmLockPassword$ConfirmLockPasswordFragment;->mPasswordEntry:Landroid/widget/TextView;

    invoke-virtual {v8, p0}, Landroid/widget/TextView;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 101
    iget-object v8, p0, Lcom/android/OriginalSettings/ConfirmLockPassword$ConfirmLockPasswordFragment;->mPasswordEntry:Landroid/widget/TextView;

    invoke-virtual {v8, p0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 103
    const v8, 0x7f080035

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Lcom/android/internal/widget/PasswordEntryKeyboardView;

    iput-object v8, p0, Lcom/android/OriginalSettings/ConfirmLockPassword$ConfirmLockPasswordFragment;->mKeyboardView:Lcom/android/internal/widget/PasswordEntryKeyboardView;

    .line 104
    const v8, 0x7f080031

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    iput-object v8, p0, Lcom/android/OriginalSettings/ConfirmLockPassword$ConfirmLockPasswordFragment;->mHeaderText:Landroid/widget/TextView;

    .line 105
    const/high16 v8, 0x4

    if-eq v8, v5, :cond_0

    const/high16 v8, 0x5

    if-eq v8, v5, :cond_0

    const/high16 v8, 0x6

    if-ne v8, v5, :cond_2

    :cond_0
    const/4 v3, 0x1

    .line 108
    .local v3, isAlpha:Z
    :goto_0
    iget-object v9, p0, Lcom/android/OriginalSettings/ConfirmLockPassword$ConfirmLockPasswordFragment;->mHeaderText:Landroid/widget/TextView;

    if-eqz v3, :cond_3

    const v8, 0x7f0b0425

    :goto_1
    invoke-virtual {v9, v8}, Landroid/widget/TextView;->setText(I)V

    .line 111
    invoke-virtual {p0}, Lcom/android/OriginalSettings/ConfirmLockPassword$ConfirmLockPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 112
    .local v0, activity:Landroid/app/Activity;
    new-instance v8, Lcom/android/internal/widget/PasswordEntryKeyboardHelper;

    iget-object v9, p0, Lcom/android/OriginalSettings/ConfirmLockPassword$ConfirmLockPasswordFragment;->mKeyboardView:Lcom/android/internal/widget/PasswordEntryKeyboardView;

    iget-object v10, p0, Lcom/android/OriginalSettings/ConfirmLockPassword$ConfirmLockPasswordFragment;->mPasswordEntry:Landroid/widget/TextView;

    invoke-direct {v8, v0, v9, v10}, Lcom/android/internal/widget/PasswordEntryKeyboardHelper;-><init>(Landroid/content/Context;Landroid/inputmethodservice/KeyboardView;Landroid/view/View;)V

    iput-object v8, p0, Lcom/android/OriginalSettings/ConfirmLockPassword$ConfirmLockPasswordFragment;->mKeyboardHelper:Lcom/android/internal/widget/PasswordEntryKeyboardHelper;

    .line 114
    iget-object v9, p0, Lcom/android/OriginalSettings/ConfirmLockPassword$ConfirmLockPasswordFragment;->mKeyboardHelper:Lcom/android/internal/widget/PasswordEntryKeyboardHelper;

    if-eqz v3, :cond_4

    const/4 v8, 0x0

    :goto_2
    invoke-virtual {v9, v8}, Lcom/android/internal/widget/PasswordEntryKeyboardHelper;->setKeyboardMode(I)V

    .line 117
    iget-object v8, p0, Lcom/android/OriginalSettings/ConfirmLockPassword$ConfirmLockPasswordFragment;->mKeyboardView:Lcom/android/internal/widget/PasswordEntryKeyboardView;

    invoke-virtual {v8}, Lcom/android/internal/widget/PasswordEntryKeyboardView;->requestFocus()Z

    .line 119
    iget-object v8, p0, Lcom/android/OriginalSettings/ConfirmLockPassword$ConfirmLockPasswordFragment;->mPasswordEntry:Landroid/widget/TextView;

    invoke-virtual {v8}, Landroid/widget/TextView;->getInputType()I

    move-result v1

    .line 120
    .local v1, currentType:I
    iget-object v8, p0, Lcom/android/OriginalSettings/ConfirmLockPassword$ConfirmLockPasswordFragment;->mPasswordEntry:Landroid/widget/TextView;

    if-eqz v3, :cond_5

    .end local v1           #currentType:I
    :goto_3
    invoke-virtual {v8, v1}, Landroid/widget/TextView;->setInputType(I)V

    .line 122
    iget-object v8, p0, Lcom/android/OriginalSettings/ConfirmLockPassword$ConfirmLockPasswordFragment;->mPasswordEntry:Landroid/widget/TextView;

    const/4 v9, -0x1

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setCursorColor(I)V

    .line 125
    instance-of v8, v0, Lmiui/preference/BasePreferenceActivity;

    if-eqz v8, :cond_1

    move-object v4, v0

    .line 126
    check-cast v4, Lmiui/preference/BasePreferenceActivity;

    .line 127
    .local v4, preferenceActivity:Lmiui/preference/BasePreferenceActivity;
    if-eqz v3, :cond_6

    const v2, 0x7f0b0425

    .line 129
    .local v2, id:I
    :goto_4
    invoke-virtual {p0, v2}, Lcom/android/OriginalSettings/ConfirmLockPassword$ConfirmLockPasswordFragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    .line 130
    .local v6, title:Ljava/lang/CharSequence;
    invoke-virtual {v4, v6, v6}, Lmiui/preference/BasePreferenceActivity;->showBreadCrumbs(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 133
    .end local v2           #id:I
    .end local v4           #preferenceActivity:Lmiui/preference/BasePreferenceActivity;
    .end local v6           #title:Ljava/lang/CharSequence;
    :cond_1
    return-object v7

    .line 105
    .end local v0           #activity:Landroid/app/Activity;
    .end local v3           #isAlpha:Z
    :cond_2
    const/4 v3, 0x0

    goto :goto_0

    .line 108
    .restart local v3       #isAlpha:Z
    :cond_3
    const v8, 0x7f0b0427

    goto :goto_1

    .line 114
    .restart local v0       #activity:Landroid/app/Activity;
    :cond_4
    const/4 v8, 0x1

    goto :goto_2

    .line 120
    .restart local v1       #currentType:I
    :cond_5
    const/16 v1, 0x12

    goto :goto_3

    .line 127
    .end local v1           #currentType:I
    .restart local v4       #preferenceActivity:Lmiui/preference/BasePreferenceActivity;
    :cond_6
    const v2, 0x7f0b0427

    goto :goto_4
.end method

.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "v"
    .parameter "actionId"
    .parameter "event"

    .prologue
    .line 189
    if-eqz p2, :cond_0

    const/4 v0, 0x6

    if-eq p2, v0, :cond_0

    const/4 v0, 0x5

    if-ne p2, v0, :cond_1

    .line 192
    :cond_0
    invoke-direct {p0}, Lcom/android/OriginalSettings/ConfirmLockPassword$ConfirmLockPasswordFragment;->handleNext()V

    .line 193
    const/4 v0, 0x1

    .line 195
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 138
    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    .line 139
    iget-object v0, p0, Lcom/android/OriginalSettings/ConfirmLockPassword$ConfirmLockPasswordFragment;->mKeyboardView:Lcom/android/internal/widget/PasswordEntryKeyboardView;

    invoke-virtual {v0}, Lcom/android/internal/widget/PasswordEntryKeyboardView;->requestFocus()Z

    .line 140
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 145
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 146
    iget-object v0, p0, Lcom/android/OriginalSettings/ConfirmLockPassword$ConfirmLockPasswordFragment;->mKeyboardView:Lcom/android/internal/widget/PasswordEntryKeyboardView;

    invoke-virtual {v0}, Lcom/android/internal/widget/PasswordEntryKeyboardView;->requestFocus()Z

    .line 147
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "s"
    .parameter "start"
    .parameter "before"
    .parameter "count"

    .prologue
    .line 203
    return-void
.end method
