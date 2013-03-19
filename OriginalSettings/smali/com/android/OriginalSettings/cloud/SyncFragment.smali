.class public abstract Lcom/android/settings/cloud/SyncFragment;
.super Landroid/preference/PreferenceFragment;
.source "SyncFragment.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;
.implements Lcom/android/settings/cloud/CloudDialog$DialogListener;


# instance fields
.field private dialogFragment:Landroid/app/DialogFragment;

.field protected mActionBarSwitch:Landroid/widget/Switch;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 26
    invoke-direct {p0}, Landroid/preference/PreferenceFragment;-><init>()V

    .line 36
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/cloud/SyncFragment;->dialogFragment:Landroid/app/DialogFragment;

    return-void
.end method


# virtual methods
.method protected abstract broadcastStatus()V
.end method

.method protected finish()V
    .locals 1

    .prologue
    .line 100
    invoke-virtual {p0}, Lcom/android/settings/cloud/SyncFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/app/FragmentTransaction;->remove(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commit()I

    .line 101
    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 0
    .parameter "savedInstanceState"

    .prologue
    .line 40
    invoke-super {p0, p1}, Landroid/preference/PreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 41
    return-void
.end method

.method public onCancelButtonClick()V
    .locals 2

    .prologue
    .line 138
    iget-object v0, p0, Lcom/android/settings/cloud/SyncFragment;->mActionBarSwitch:Landroid/widget/Switch;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setChecked(Z)V

    .line 139
    invoke-virtual {p0}, Lcom/android/settings/cloud/SyncFragment;->updateScreen()V

    .line 140
    return-void
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 3
    .parameter "buttonView"
    .parameter "isChecked"

    .prologue
    .line 82
    if-eqz p2, :cond_0

    .line 84
    invoke-virtual {p0}, Lcom/android/settings/cloud/SyncFragment;->broadcastStatus()V

    .line 92
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/cloud/SyncFragment;->updateScreen()V

    .line 93
    return-void

    .line 87
    :cond_0
    const/4 v0, 0x2

    const v1, 0x7f090e2f

    invoke-virtual {p0, v1}, Lcom/android/settings/cloud/SyncFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p0}, Lcom/android/settings/cloud/CloudDialog;->getInstance(ILjava/lang/String;Lcom/android/settings/cloud/CloudDialog$DialogListener;)Lcom/android/settings/cloud/CloudDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/cloud/SyncFragment;->dialogFragment:Landroid/app/DialogFragment;

    .line 89
    iget-object v0, p0, Lcom/android/settings/cloud/SyncFragment;->dialogFragment:Landroid/app/DialogFragment;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/DialogFragment;->setCancelable(Z)V

    .line 90
    iget-object v0, p0, Lcom/android/settings/cloud/SyncFragment;->dialogFragment:Landroid/app/DialogFragment;

    invoke-virtual {p0}, Lcom/android/settings/cloud/SyncFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string v2, "dialog"

    invoke-virtual {v0, v1, v2}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onPause()V
    .locals 4

    .prologue
    .line 144
    invoke-virtual {p0}, Lcom/android/settings/cloud/SyncFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 145
    .local v0, activity:Landroid/app/Activity;
    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    const/4 v2, 0x0

    const/16 v3, 0x10

    invoke-virtual {v1, v2, v3}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    .line 146
    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;)V

    .line 147
    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onPause()V

    .line 148
    return-void
.end method

.method public onPositiveButtonClick()V
    .locals 0

    .prologue
    .line 128
    invoke-virtual {p0}, Lcom/android/settings/cloud/SyncFragment;->updateScreen()V

    .line 129
    invoke-virtual {p0}, Lcom/android/settings/cloud/SyncFragment;->broadcastStatus()V

    .line 131
    return-void
.end method

.method public onResume()V
    .locals 7

    .prologue
    const/16 v5, 0x10

    const/4 v6, -0x2

    const/4 v4, 0x0

    .line 45
    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onResume()V

    .line 46
    invoke-virtual {p0}, Lcom/android/settings/cloud/SyncFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 48
    .local v0, activity:Landroid/app/Activity;
    new-instance v2, Landroid/widget/Switch;

    invoke-direct {v2, v0}, Landroid/widget/Switch;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/settings/cloud/SyncFragment;->mActionBarSwitch:Landroid/widget/Switch;

    .line 50
    instance-of v2, v0, Landroid/preference/PreferenceActivity;

    if-eqz v2, :cond_0

    .line 51
    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0f0002

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 53
    .local v1, padding:I
    iget-object v2, p0, Lcom/android/settings/cloud/SyncFragment;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v2, v4, v4, v1, v4}, Landroid/widget/Switch;->setPadding(IIII)V

    .line 54
    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v2

    invoke-virtual {v2, v5, v5}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    .line 56
    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/cloud/SyncFragment;->mActionBarSwitch:Landroid/widget/Switch;

    new-instance v4, Landroid/app/ActionBar$LayoutParams;

    const/16 v5, 0x15

    invoke-direct {v4, v6, v6, v5}, Landroid/app/ActionBar$LayoutParams;-><init>(III)V

    invoke-virtual {v2, v3, v4}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;Landroid/app/ActionBar$LayoutParams;)V

    .line 63
    .end local v1           #padding:I
    :cond_0
    return-void
.end method

.method protected abstract togglePreferences(Z)V
.end method

.method protected updateScreen()V
    .locals 2

    .prologue
    .line 107
    invoke-static {}, Lcom/android/settings/cloud/CloudSettings;->getInstance()Lcom/android/settings/cloud/CloudSettings;

    move-result-object v0

    .line 109
    .local v0, settings:Lcom/android/settings/cloud/CloudSettings;
    if-nez v0, :cond_0

    .line 111
    invoke-virtual {p0}, Lcom/android/settings/cloud/SyncFragment;->finish()V

    .line 120
    :goto_0
    return-void

    .line 112
    :cond_0
    invoke-virtual {v0}, Lcom/android/settings/cloud/CloudSettings;->isAccountSet()Z

    move-result v1

    if-nez v1, :cond_1

    .line 114
    invoke-virtual {p0}, Lcom/android/settings/cloud/SyncFragment;->finish()V

    goto :goto_0

    .line 117
    :cond_1
    iget-object v1, p0, Lcom/android/settings/cloud/SyncFragment;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v1}, Landroid/widget/Switch;->isChecked()Z

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/settings/cloud/SyncFragment;->togglePreferences(Z)V

    goto :goto_0
.end method
