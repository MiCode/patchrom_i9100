.class public Lcom/android/OriginalSettings/ChooseLockPatternTutorial;
.super Lmiui/preference/BasePreferenceActivity;
.source "ChooseLockPatternTutorial.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/OriginalSettings/ChooseLockPatternTutorial$ChooseLockPatternTutorialFragment;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Lmiui/preference/BasePreferenceActivity;-><init>()V

    .line 37
    return-void
.end method


# virtual methods
.method public getIntent()Landroid/content/Intent;
    .locals 3

    .prologue
    .line 41
    new-instance v0, Landroid/content/Intent;

    invoke-super {p0}, Lmiui/preference/BasePreferenceActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 42
    const-string v1, ":android:show_fragment"

    const-class v2, Lcom/android/OriginalSettings/ChooseLockPatternTutorial$ChooseLockPatternTutorialFragment;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 43
    const-string v1, ":android:no_headers"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 44
    return-object v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 49
    invoke-super {p0, p1}, Lmiui/preference/BasePreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 50
    const v1, 0x7f0b0423

    invoke-virtual {p0, v1}, Lcom/android/OriginalSettings/ChooseLockPatternTutorial;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 51
    .local v0, msg:Ljava/lang/CharSequence;
    invoke-virtual {p0, v0, v0}, Lcom/android/OriginalSettings/ChooseLockPatternTutorial;->showBreadCrumbs(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 52
    return-void
.end method
