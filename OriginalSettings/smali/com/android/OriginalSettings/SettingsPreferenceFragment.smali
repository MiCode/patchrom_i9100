.class public Lcom/android/OriginalSettings/SettingsPreferenceFragment;
.super Landroid/preference/PreferenceFragment;
.source "SettingsPreferenceFragment.java"

# interfaces
.implements Lcom/android/OriginalSettings/DialogCreatable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/OriginalSettings/SettingsPreferenceFragment$SettingsDialogFragment;
    }
.end annotation


# instance fields
.field private mDialogFragment:Lcom/android/OriginalSettings/SettingsPreferenceFragment$SettingsDialogFragment;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Landroid/preference/PreferenceFragment;-><init>()V

    .line 133
    return-void
.end method

.method static synthetic access$200(Lcom/android/OriginalSettings/SettingsPreferenceFragment;)Lcom/android/OriginalSettings/SettingsPreferenceFragment$SettingsDialogFragment;
    .locals 1
    .parameter "x0"

    .prologue
    .line 34
    iget-object v0, p0, Lcom/android/OriginalSettings/SettingsPreferenceFragment;->mDialogFragment:Lcom/android/OriginalSettings/SettingsPreferenceFragment$SettingsDialogFragment;

    return-object v0
.end method

.method static synthetic access$202(Lcom/android/OriginalSettings/SettingsPreferenceFragment;Lcom/android/OriginalSettings/SettingsPreferenceFragment$SettingsDialogFragment;)Lcom/android/OriginalSettings/SettingsPreferenceFragment$SettingsDialogFragment;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 34
    iput-object p1, p0, Lcom/android/OriginalSettings/SettingsPreferenceFragment;->mDialogFragment:Lcom/android/OriginalSettings/SettingsPreferenceFragment$SettingsDialogFragment;

    return-object p1
.end method


# virtual methods
.method public finish()V
    .locals 1

    .prologue
    .line 231
    invoke-virtual {p0}, Lcom/android/OriginalSettings/SettingsPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->onBackPressed()V

    .line 232
    return-void
.end method

.method public final finishFragment()V
    .locals 1

    .prologue
    .line 50
    invoke-virtual {p0}, Lcom/android/OriginalSettings/SettingsPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->onBackPressed()V

    .line 51
    return-void
.end method

.method protected getContentResolver()Landroid/content/ContentResolver;
    .locals 1

    .prologue
    .line 59
    invoke-virtual {p0}, Lcom/android/OriginalSettings/SettingsPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method protected getNextButton()Landroid/widget/Button;
    .locals 1

    .prologue
    .line 227
    invoke-virtual {p0}, Lcom/android/OriginalSettings/SettingsPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/OriginalSettings/ButtonBarHandler;

    invoke-interface {v0}, Lcom/android/OriginalSettings/ButtonBarHandler;->getNextButton()Landroid/widget/Button;

    move-result-object v0

    return-object v0
.end method

.method protected getPackageManager()Landroid/content/pm/PackageManager;
    .locals 1

    .prologue
    .line 73
    invoke-virtual {p0}, Lcom/android/OriginalSettings/SettingsPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    return-object v0
.end method

.method protected getSystemService(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .parameter "name"

    .prologue
    .line 66
    invoke-virtual {p0}, Lcom/android/OriginalSettings/SettingsPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected hasNextButton()Z
    .locals 1

    .prologue
    .line 223
    invoke-virtual {p0}, Lcom/android/OriginalSettings/SettingsPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/OriginalSettings/ButtonBarHandler;

    invoke-interface {v0}, Lcom/android/OriginalSettings/ButtonBarHandler;->hasNextButton()Z

    move-result v0

    return v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 0
    .parameter "savedInstanceState"

    .prologue
    .line 42
    invoke-super {p0, p1}, Landroid/preference/PreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 43
    return-void
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 1
    .parameter "dialogId"

    .prologue
    .line 98
    const/4 v0, 0x0

    return-object v0
.end method

.method public onDetach()V
    .locals 1

    .prologue
    .line 78
    invoke-virtual {p0}, Lcom/android/OriginalSettings/SettingsPreferenceFragment;->isRemoving()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 79
    iget-object v0, p0, Lcom/android/OriginalSettings/SettingsPreferenceFragment;->mDialogFragment:Lcom/android/OriginalSettings/SettingsPreferenceFragment$SettingsDialogFragment;

    if-eqz v0, :cond_0

    .line 80
    iget-object v0, p0, Lcom/android/OriginalSettings/SettingsPreferenceFragment;->mDialogFragment:Lcom/android/OriginalSettings/SettingsPreferenceFragment$SettingsDialogFragment;

    invoke-virtual {v0}, Lcom/android/OriginalSettings/SettingsPreferenceFragment$SettingsDialogFragment;->dismiss()V

    .line 81
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/OriginalSettings/SettingsPreferenceFragment;->mDialogFragment:Lcom/android/OriginalSettings/SettingsPreferenceFragment$SettingsDialogFragment;

    .line 84
    :cond_0
    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onDetach()V

    .line 85
    return-void
.end method

.method protected removeDialog(I)V
    .locals 1
    .parameter "dialogId"

    .prologue
    .line 105
    iget-object v0, p0, Lcom/android/OriginalSettings/SettingsPreferenceFragment;->mDialogFragment:Lcom/android/OriginalSettings/SettingsPreferenceFragment$SettingsDialogFragment;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/OriginalSettings/SettingsPreferenceFragment;->mDialogFragment:Lcom/android/OriginalSettings/SettingsPreferenceFragment$SettingsDialogFragment;

    invoke-virtual {v0}, Lcom/android/OriginalSettings/SettingsPreferenceFragment$SettingsDialogFragment;->getDialogId()I

    move-result v0

    if-ne v0, p1, :cond_0

    .line 106
    iget-object v0, p0, Lcom/android/OriginalSettings/SettingsPreferenceFragment;->mDialogFragment:Lcom/android/OriginalSettings/SettingsPreferenceFragment$SettingsDialogFragment;

    invoke-virtual {v0}, Lcom/android/OriginalSettings/SettingsPreferenceFragment$SettingsDialogFragment;->dismiss()V

    .line 108
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/OriginalSettings/SettingsPreferenceFragment;->mDialogFragment:Lcom/android/OriginalSettings/SettingsPreferenceFragment$SettingsDialogFragment;

    .line 109
    return-void
.end method

.method protected showDialog(I)V
    .locals 3
    .parameter "dialogId"

    .prologue
    .line 90
    iget-object v0, p0, Lcom/android/OriginalSettings/SettingsPreferenceFragment;->mDialogFragment:Lcom/android/OriginalSettings/SettingsPreferenceFragment$SettingsDialogFragment;

    if-eqz v0, :cond_0

    .line 91
    const-string v0, "SettingsPreferenceFragment"

    const-string v1, "Old dialog fragment not null!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    :cond_0
    new-instance v0, Lcom/android/OriginalSettings/SettingsPreferenceFragment$SettingsDialogFragment;

    invoke-direct {v0, p0, p1}, Lcom/android/OriginalSettings/SettingsPreferenceFragment$SettingsDialogFragment;-><init>(Lcom/android/OriginalSettings/DialogCreatable;I)V

    iput-object v0, p0, Lcom/android/OriginalSettings/SettingsPreferenceFragment;->mDialogFragment:Lcom/android/OriginalSettings/SettingsPreferenceFragment$SettingsDialogFragment;

    .line 94
    iget-object v0, p0, Lcom/android/OriginalSettings/SettingsPreferenceFragment;->mDialogFragment:Lcom/android/OriginalSettings/SettingsPreferenceFragment$SettingsDialogFragment;

    invoke-virtual {p0}, Lcom/android/OriginalSettings/SettingsPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/OriginalSettings/SettingsPreferenceFragment$SettingsDialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 95
    return-void
.end method

.method public startFragment(Landroid/app/Fragment;Ljava/lang/String;ILandroid/os/Bundle;)Z
    .locals 7
    .parameter "caller"
    .parameter "fragmentClass"
    .parameter "requestCode"
    .parameter "extras"

    .prologue
    .line 236
    invoke-virtual {p0}, Lcom/android/OriginalSettings/SettingsPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    instance-of v1, v1, Lmiui/preference/BasePreferenceActivity;

    if-eqz v1, :cond_0

    .line 237
    invoke-virtual {p0}, Lcom/android/OriginalSettings/SettingsPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lmiui/preference/BasePreferenceActivity;

    .line 238
    .local v0, preferenceActivity:Lmiui/preference/BasePreferenceActivity;
    const v3, 0x7f0b01b5

    const/4 v4, 0x0

    move-object v1, p2

    move-object v2, p4

    move-object v5, p1

    move v6, p3

    invoke-virtual/range {v0 .. v6}, Lmiui/preference/BasePreferenceActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    .line 240
    const/4 v1, 0x1

    .line 245
    .end local v0           #preferenceActivity:Lmiui/preference/BasePreferenceActivity;
    :goto_0
    return v1

    .line 242
    :cond_0
    const-string v1, "SettingsPreferenceFragment"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Parent isn\'t PreferenceActivity, thus there\'s no way to launch the given Fragment (name: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", requestCode: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 245
    const/4 v1, 0x0

    goto :goto_0
.end method
