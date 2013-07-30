.class public Lcom/android/sec_settings/ConfirmLockPattern;
.super Landroid/preference/PreferenceActivity;
.source "ConfirmLockPattern.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/sec_settings/ConfirmLockPattern$1;,
        Lcom/android/sec_settings/ConfirmLockPattern$ConfirmLockPatternFragment;,
        Lcom/android/sec_settings/ConfirmLockPattern$Stage;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    .line 79
    return-void
.end method


# virtual methods
.method public getIntent()Landroid/content/Intent;
    .locals 3

    .prologue
    .line 73
    new-instance v0, Landroid/content/Intent;

    invoke-super {p0}, Landroid/preference/PreferenceActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 74
    const-string v1, ":android:show_fragment"

    const-class v2, Lcom/android/sec_settings/ConfirmLockPattern$ConfirmLockPatternFragment;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 75
    const-string v1, ":android:no_headers"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 76
    return-object v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 66
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 67
    const v1, 0x7f09057d

    invoke-virtual {p0, v1}, Lcom/android/sec_settings/ConfirmLockPattern;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 68
    .local v0, msg:Ljava/lang/CharSequence;
    invoke-virtual {p0, v0, v0}, Lcom/android/sec_settings/ConfirmLockPattern;->showBreadCrumbs(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 69
    return-void
.end method
