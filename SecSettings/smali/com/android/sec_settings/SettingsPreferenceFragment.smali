.class public Lcom/android/sec_settings/SettingsPreferenceFragment;
.super Landroid/preference/PreferenceFragment;
.source "SettingsPreferenceFragment.java"

# interfaces
.implements Lcom/android/sec_settings/DialogCreatable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/sec_settings/SettingsPreferenceFragment$SettingsDialogFragment;
    }
.end annotation


# instance fields
.field private mDialogFragment:Lcom/android/sec_settings/SettingsPreferenceFragment$SettingsDialogFragment;

.field private mHelpUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 40
    invoke-direct {p0}, Landroid/preference/PreferenceFragment;-><init>()V

    .line 48
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/sec_settings/SettingsPreferenceFragment;->mHelpUrl:Ljava/lang/String;

    .line 188
    return-void
.end method

.method static synthetic access$200(Lcom/android/sec_settings/SettingsPreferenceFragment;)Lcom/android/sec_settings/SettingsPreferenceFragment$SettingsDialogFragment;
    .locals 1
    .parameter "x0"

    .prologue
    .line 40
    iget-object v0, p0, Lcom/android/sec_settings/SettingsPreferenceFragment;->mDialogFragment:Lcom/android/sec_settings/SettingsPreferenceFragment$SettingsDialogFragment;

    return-object v0
.end method

.method static synthetic access$202(Lcom/android/sec_settings/SettingsPreferenceFragment;Lcom/android/sec_settings/SettingsPreferenceFragment$SettingsDialogFragment;)Lcom/android/sec_settings/SettingsPreferenceFragment$SettingsDialogFragment;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 40
    iput-object p1, p0, Lcom/android/sec_settings/SettingsPreferenceFragment;->mDialogFragment:Lcom/android/sec_settings/SettingsPreferenceFragment$SettingsDialogFragment;

    return-object p1
.end method


# virtual methods
.method public finish()V
    .locals 1

    .prologue
    .line 286
    invoke-virtual {p0}, Lcom/android/sec_settings/SettingsPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 287
    invoke-virtual {p0}, Lcom/android/sec_settings/SettingsPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->onBackPressed()V

    .line 289
    :cond_0
    return-void
.end method

.method public final finishFragment()V
    .locals 1

    .prologue
    .line 95
    invoke-virtual {p0}, Lcom/android/sec_settings/SettingsPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->onBackPressed()V

    .line 96
    return-void
.end method

.method protected getContentResolver()Landroid/content/ContentResolver;
    .locals 1

    .prologue
    .line 104
    invoke-virtual {p0}, Lcom/android/sec_settings/SettingsPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method protected getHelpResource()I
    .locals 1

    .prologue
    .line 74
    const/4 v0, 0x0

    return v0
.end method

.method protected getNextButton()Landroid/widget/Button;
    .locals 1

    .prologue
    .line 282
    invoke-virtual {p0}, Lcom/android/sec_settings/SettingsPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/sec_settings/ButtonBarHandler;

    invoke-interface {v0}, Lcom/android/sec_settings/ButtonBarHandler;->getNextButton()Landroid/widget/Button;

    move-result-object v0

    return-object v0
.end method

.method protected getPackageManager()Landroid/content/pm/PackageManager;
    .locals 1

    .prologue
    .line 118
    invoke-virtual {p0}, Lcom/android/sec_settings/SettingsPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    return-object v0
.end method

.method protected getSystemService(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .parameter "name"

    .prologue
    .line 111
    invoke-virtual {p0}, Lcom/android/sec_settings/SettingsPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected hasNextButton()Z
    .locals 1

    .prologue
    .line 278
    invoke-virtual {p0}, Lcom/android/sec_settings/SettingsPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/sec_settings/ButtonBarHandler;

    invoke-interface {v0}, Lcom/android/sec_settings/ButtonBarHandler;->hasNextButton()Z

    move-result v0

    return v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedInstanceState"

    .prologue
    .line 63
    invoke-super {p0, p1}, Landroid/preference/PreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 64
    iget-object v0, p0, Lcom/android/sec_settings/SettingsPreferenceFragment;->mHelpUrl:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 65
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/sec_settings/SettingsPreferenceFragment;->setHasOptionsMenu(Z)V

    .line 67
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "icicle"

    .prologue
    .line 52
    invoke-super {p0, p1}, Landroid/preference/PreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 55
    invoke-virtual {p0}, Lcom/android/sec_settings/SettingsPreferenceFragment;->getHelpResource()I

    move-result v0

    .line 56
    .local v0, helpResource:I
    if-eqz v0, :cond_0

    .line 57
    invoke-virtual {p0}, Lcom/android/sec_settings/SettingsPreferenceFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/sec_settings/SettingsPreferenceFragment;->mHelpUrl:Ljava/lang/String;

    .line 59
    :cond_0
    return-void
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 1
    .parameter "dialogId"

    .prologue
    .line 153
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 5
    .parameter "menu"
    .parameter "inflater"

    .prologue
    const/4 v4, 0x0

    .line 79
    iget-object v2, p0, Lcom/android/sec_settings/SettingsPreferenceFragment;->mHelpUrl:Ljava/lang/String;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/sec_settings/SettingsPreferenceFragment;->mHelpUrl:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 80
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    iget-object v3, p0, Lcom/android/sec_settings/SettingsPreferenceFragment;->mHelpUrl:Ljava/lang/String;

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 81
    .local v0, helpIntent:Landroid/content/Intent;
    const/high16 v2, 0x1080

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 83
    const/16 v2, 0x65

    const v3, 0x7f0908f5

    invoke-interface {p1, v4, v2, v4, v3}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    .line 84
    .local v1, helpItem:Landroid/view/MenuItem;
    const v2, 0x7f0200a0

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 85
    invoke-interface {v1, v4}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 86
    invoke-interface {v1, v0}, Landroid/view/MenuItem;->setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;

    .line 88
    .end local v0           #helpIntent:Landroid/content/Intent;
    .end local v1           #helpItem:Landroid/view/MenuItem;
    :cond_0
    return-void
.end method

.method public onDetach()V
    .locals 4

    .prologue
    .line 123
    invoke-virtual {p0}, Lcom/android/sec_settings/SettingsPreferenceFragment;->isRemoving()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 124
    iget-object v1, p0, Lcom/android/sec_settings/SettingsPreferenceFragment;->mDialogFragment:Lcom/android/sec_settings/SettingsPreferenceFragment$SettingsDialogFragment;

    if-eqz v1, :cond_0

    .line 126
    :try_start_0
    iget-object v1, p0, Lcom/android/sec_settings/SettingsPreferenceFragment;->mDialogFragment:Lcom/android/sec_settings/SettingsPreferenceFragment$SettingsDialogFragment;

    invoke-virtual {v1}, Lcom/android/sec_settings/SettingsPreferenceFragment$SettingsDialogFragment;->dismiss()V

    .line 127
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/sec_settings/SettingsPreferenceFragment;->mDialogFragment:Lcom/android/sec_settings/SettingsPreferenceFragment$SettingsDialogFragment;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 133
    :cond_0
    :goto_0
    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onDetach()V

    .line 134
    return-void

    .line 128
    :catch_0
    move-exception v0

    .line 129
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "SettingsPreferenceFragment"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "try - catch in onDetach() : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected removeDialog(I)V
    .locals 1
    .parameter "dialogId"

    .prologue
    .line 160
    iget-object v0, p0, Lcom/android/sec_settings/SettingsPreferenceFragment;->mDialogFragment:Lcom/android/sec_settings/SettingsPreferenceFragment$SettingsDialogFragment;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/sec_settings/SettingsPreferenceFragment;->mDialogFragment:Lcom/android/sec_settings/SettingsPreferenceFragment$SettingsDialogFragment;

    invoke-virtual {v0}, Lcom/android/sec_settings/SettingsPreferenceFragment$SettingsDialogFragment;->getDialogId()I

    move-result v0

    if-ne v0, p1, :cond_0

    .line 161
    iget-object v0, p0, Lcom/android/sec_settings/SettingsPreferenceFragment;->mDialogFragment:Lcom/android/sec_settings/SettingsPreferenceFragment$SettingsDialogFragment;

    invoke-virtual {v0}, Lcom/android/sec_settings/SettingsPreferenceFragment$SettingsDialogFragment;->dismiss()V

    .line 163
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/sec_settings/SettingsPreferenceFragment;->mDialogFragment:Lcom/android/sec_settings/SettingsPreferenceFragment$SettingsDialogFragment;

    .line 164
    return-void
.end method

.method protected setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 183
    iget-object v0, p0, Lcom/android/sec_settings/SettingsPreferenceFragment;->mDialogFragment:Lcom/android/sec_settings/SettingsPreferenceFragment$SettingsDialogFragment;

    if-eqz v0, :cond_0

    .line 184
    iget-object v0, p0, Lcom/android/sec_settings/SettingsPreferenceFragment;->mDialogFragment:Lcom/android/sec_settings/SettingsPreferenceFragment$SettingsDialogFragment;

    #setter for: Lcom/android/sec_settings/SettingsPreferenceFragment$SettingsDialogFragment;->mOnDismissListener:Landroid/content/DialogInterface$OnDismissListener;
    invoke-static {v0, p1}, Lcom/android/sec_settings/SettingsPreferenceFragment$SettingsDialogFragment;->access$102(Lcom/android/sec_settings/SettingsPreferenceFragment$SettingsDialogFragment;Landroid/content/DialogInterface$OnDismissListener;)Landroid/content/DialogInterface$OnDismissListener;

    .line 186
    :cond_0
    return-void
.end method

.method protected showDialog(I)V
    .locals 3
    .parameter "dialogId"

    .prologue
    .line 139
    iget-object v0, p0, Lcom/android/sec_settings/SettingsPreferenceFragment;->mDialogFragment:Lcom/android/sec_settings/SettingsPreferenceFragment$SettingsDialogFragment;

    if-eqz v0, :cond_1

    .line 140
    const-string v0, "SettingsPreferenceFragment"

    const-string v1, "Old dialog fragment not null!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    iget-object v0, p0, Lcom/android/sec_settings/SettingsPreferenceFragment;->mDialogFragment:Lcom/android/sec_settings/SettingsPreferenceFragment$SettingsDialogFragment;

    invoke-virtual {v0}, Lcom/android/sec_settings/SettingsPreferenceFragment$SettingsDialogFragment;->getDialogId()I

    move-result v0

    if-eq v0, p1, :cond_0

    .line 142
    new-instance v0, Lcom/android/sec_settings/SettingsPreferenceFragment$SettingsDialogFragment;

    invoke-direct {v0, p0, p1}, Lcom/android/sec_settings/SettingsPreferenceFragment$SettingsDialogFragment;-><init>(Lcom/android/sec_settings/DialogCreatable;I)V

    iput-object v0, p0, Lcom/android/sec_settings/SettingsPreferenceFragment;->mDialogFragment:Lcom/android/sec_settings/SettingsPreferenceFragment$SettingsDialogFragment;

    .line 143
    iget-object v0, p0, Lcom/android/sec_settings/SettingsPreferenceFragment;->mDialogFragment:Lcom/android/sec_settings/SettingsPreferenceFragment$SettingsDialogFragment;

    invoke-virtual {p0}, Lcom/android/sec_settings/SettingsPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/sec_settings/SettingsPreferenceFragment$SettingsDialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 150
    :cond_0
    :goto_0
    return-void

    .line 147
    :cond_1
    new-instance v0, Lcom/android/sec_settings/SettingsPreferenceFragment$SettingsDialogFragment;

    invoke-direct {v0, p0, p1}, Lcom/android/sec_settings/SettingsPreferenceFragment$SettingsDialogFragment;-><init>(Lcom/android/sec_settings/DialogCreatable;I)V

    iput-object v0, p0, Lcom/android/sec_settings/SettingsPreferenceFragment;->mDialogFragment:Lcom/android/sec_settings/SettingsPreferenceFragment$SettingsDialogFragment;

    .line 148
    iget-object v0, p0, Lcom/android/sec_settings/SettingsPreferenceFragment;->mDialogFragment:Lcom/android/sec_settings/SettingsPreferenceFragment$SettingsDialogFragment;

    invoke-virtual {p0}, Lcom/android/sec_settings/SettingsPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/sec_settings/SettingsPreferenceFragment$SettingsDialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public startFragment(Landroid/app/Fragment;Ljava/lang/String;ILandroid/os/Bundle;)Z
    .locals 7
    .parameter "caller"
    .parameter "fragmentClass"
    .parameter "requestCode"
    .parameter "extras"

    .prologue
    .line 293
    invoke-virtual {p0}, Lcom/android/sec_settings/SettingsPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    instance-of v1, v1, Landroid/preference/PreferenceActivity;

    if-eqz v1, :cond_0

    .line 294
    invoke-virtual {p0}, Lcom/android/sec_settings/SettingsPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceActivity;

    .line 295
    .local v0, preferenceActivity:Landroid/preference/PreferenceActivity;
    const v3, 0x7f090176

    const/4 v4, 0x0

    move-object v1, p2

    move-object v2, p4

    move-object v5, p1

    move v6, p3

    invoke-virtual/range {v0 .. v6}, Landroid/preference/PreferenceActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    .line 297
    const/4 v1, 0x1

    .line 302
    .end local v0           #preferenceActivity:Landroid/preference/PreferenceActivity;
    :goto_0
    return v1

    .line 299
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

    .line 302
    const/4 v1, 0x0

    goto :goto_0
.end method
