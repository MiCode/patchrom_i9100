.class public Lcom/android/sec_settings/ChooseLockPassword;
.super Landroid/preference/PreferenceActivity;
.source "ChooseLockPassword.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/sec_settings/ChooseLockPassword$ChooseLockPasswordFragment;
    }
.end annotation


# static fields
.field public static isChangePwdRequired:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 88
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/sec_settings/ChooseLockPassword;->isChangePwdRequired:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 78
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    .line 131
    return-void
.end method


# virtual methods
.method public getIntent()Landroid/content/Intent;
    .locals 3

    .prologue
    .line 94
    new-instance v0, Landroid/content/Intent;

    invoke-super {p0}, Landroid/preference/PreferenceActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 95
    const-string v1, ":android:show_fragment"

    const-class v2, Lcom/android/sec_settings/ChooseLockPassword$ChooseLockPasswordFragment;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 96
    const-string v1, ":android:no_headers"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 97
    return-object v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .parameter "newConfig"

    .prologue
    .line 116
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 117
    invoke-virtual {p0}, Lcom/android/sec_settings/ChooseLockPassword;->recreate()V

    .line 118
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 103
    const/4 v1, 0x0

    sput-boolean v1, Lcom/android/sec_settings/ChooseLockPassword;->isChangePwdRequired:Z

    .line 108
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 109
    const v1, 0x7f090579

    invoke-virtual {p0, v1}, Lcom/android/sec_settings/ChooseLockPassword;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 110
    .local v0, msg:Ljava/lang/CharSequence;
    invoke-virtual {p0, v0, v0}, Lcom/android/sec_settings/ChooseLockPassword;->showBreadCrumbs(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 111
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 123
    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    const/4 v0, 0x3

    if-ne p1, v0, :cond_1

    .line 124
    :cond_0
    sget-boolean v0, Lcom/android/sec_settings/ChooseLockPassword;->isChangePwdRequired:Z

    if-eqz v0, :cond_1

    .line 125
    const/4 v0, 0x1

    .line 128
    :goto_0
    return v0

    :cond_1
    invoke-super {p0, p1, p2}, Landroid/preference/PreferenceActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method
