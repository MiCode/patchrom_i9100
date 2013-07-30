.class public Lcom/android/sec_settings/inputmethod/UserDictionaryAddWordActivity;
.super Landroid/app/Activity;
.source "UserDictionaryAddWordActivity.java"


# instance fields
.field private mContents:Lcom/android/sec_settings/inputmethod/UserDictionaryAddWordContents;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public onClickCancel(Landroid/view/View;)V
    .locals 0
    .parameter "v"

    .prologue
    .line 71
    invoke-virtual {p0}, Lcom/android/sec_settings/inputmethod/UserDictionaryAddWordActivity;->finish()V

    .line 72
    return-void
.end method

.method public onClickConfirm(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 75
    iget-object v0, p0, Lcom/android/sec_settings/inputmethod/UserDictionaryAddWordActivity;->mContents:Lcom/android/sec_settings/inputmethod/UserDictionaryAddWordContents;

    invoke-virtual {v0, p0}, Lcom/android/sec_settings/inputmethod/UserDictionaryAddWordContents;->apply(Landroid/content/Context;)V

    .line 76
    invoke-virtual {p0}, Lcom/android/sec_settings/inputmethod/UserDictionaryAddWordActivity;->finish()V

    .line 77
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 7
    .parameter "savedInstanceState"

    .prologue
    .line 37
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 38
    const v4, 0x7f0400f9

    invoke-virtual {p0, v4}, Lcom/android/sec_settings/inputmethod/UserDictionaryAddWordActivity;->setContentView(I)V

    .line 39
    invoke-virtual {p0}, Lcom/android/sec_settings/inputmethod/UserDictionaryAddWordActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 40
    .local v2, intent:Landroid/content/Intent;
    invoke-virtual {v2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 42
    .local v0, action:Ljava/lang/String;
    const-string v4, "com.android.settings.USER_DICTIONARY_EDIT"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 43
    const/4 v3, 0x0

    .line 54
    .local v3, mode:I
    :goto_0
    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 55
    .local v1, args:Landroid/os/Bundle;
    const-string v4, "mode"

    invoke-virtual {v1, v4, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 57
    if-eqz p1, :cond_0

    .line 59
    invoke-virtual {v1, p1}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 62
    :cond_0
    new-instance v4, Lcom/android/sec_settings/inputmethod/UserDictionaryAddWordContents;

    invoke-virtual {p0}, Lcom/android/sec_settings/inputmethod/UserDictionaryAddWordActivity;->getWindow()Landroid/view/Window;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v5

    invoke-direct {v4, v5, v1}, Lcom/android/sec_settings/inputmethod/UserDictionaryAddWordContents;-><init>(Landroid/view/View;Landroid/os/Bundle;)V

    iput-object v4, p0, Lcom/android/sec_settings/inputmethod/UserDictionaryAddWordActivity;->mContents:Lcom/android/sec_settings/inputmethod/UserDictionaryAddWordContents;

    .line 63
    return-void

    .line 44
    .end local v1           #args:Landroid/os/Bundle;
    .end local v3           #mode:I
    :cond_1
    const-string v4, "com.android.settings.USER_DICTIONARY_INSERT"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 45
    const/4 v3, 0x1

    .restart local v3       #mode:I
    goto :goto_0

    .line 48
    .end local v3           #mode:I
    :cond_2
    new-instance v4, Ljava/lang/RuntimeException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unsupported action: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1
    .parameter "outState"

    .prologue
    .line 67
    iget-object v0, p0, Lcom/android/sec_settings/inputmethod/UserDictionaryAddWordActivity;->mContents:Lcom/android/sec_settings/inputmethod/UserDictionaryAddWordContents;

    invoke-virtual {v0, p1}, Lcom/android/sec_settings/inputmethod/UserDictionaryAddWordContents;->saveStateIntoBundle(Landroid/os/Bundle;)V

    .line 68
    return-void
.end method
