.class public Lcom/android/sec_settings/ChooseLockFaceWarning;
.super Landroid/preference/PreferenceActivity;
.source "ChooseLockFaceWarning.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/sec_settings/ChooseLockFaceWarning$ChooseLockFaceWarningFragment;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    .line 38
    return-void
.end method


# virtual methods
.method public getIntent()Landroid/content/Intent;
    .locals 3

    .prologue
    .line 42
    new-instance v0, Landroid/content/Intent;

    invoke-super {p0}, Landroid/preference/PreferenceActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 43
    const-string v1, ":android:show_fragment"

    const-class v2, Lcom/android/sec_settings/ChooseLockFaceWarning$ChooseLockFaceWarningFragment;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 44
    const-string v1, ":android:no_headers"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 45
    return-object v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter "savedInstanceState"

    .prologue
    .line 50
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 51
    const v1, 0x7f090183

    invoke-virtual {p0, v1}, Lcom/android/sec_settings/ChooseLockFaceWarning;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 53
    .local v0, msg:Ljava/lang/CharSequence;
    invoke-virtual {p0}, Lcom/android/sec_settings/ChooseLockFaceWarning;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "lockscreen.biometric_weak_with_voice_fallback"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 54
    const v1, 0x7f090185

    invoke-virtual {p0, v1}, Lcom/android/sec_settings/ChooseLockFaceWarning;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 56
    :cond_0
    invoke-virtual {p0, v0, v0}, Lcom/android/sec_settings/ChooseLockFaceWarning;->showBreadCrumbs(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 57
    return-void
.end method
