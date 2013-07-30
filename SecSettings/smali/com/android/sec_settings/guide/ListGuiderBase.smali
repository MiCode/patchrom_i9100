.class Lcom/android/sec_settings/guide/ListGuiderBase;
.super Lcom/android/sec_settings/guide/GuiderBase;
.source "ListGuiderBase.java"

# interfaces
.implements Lcom/android/sec_settings/guide/GuiderLifecycleListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/sec_settings/guide/ListGuiderBase$GuideStates;
    }
.end annotation


# instance fields
.field mShowedDialog:Lcom/android/sec_settings/guide/ListGuiderBase$GuideStates;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 2
    .parameter "activity"

    .prologue
    .line 39
    invoke-direct {p0, p1}, Lcom/android/sec_settings/guide/GuiderBase;-><init>(Landroid/app/Activity;)V

    .line 33
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/sec_settings/guide/ListGuiderBase;->mShowedDialog:Lcom/android/sec_settings/guide/ListGuiderBase$GuideStates;

    .line 41
    instance-of v0, p1, Landroid/app/ListActivity;

    if-nez v0, :cond_0

    .line 42
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Expecting ListActivity"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 44
    :cond_0
    return-void
.end method


# virtual methods
.method public finish()V
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 118
    invoke-super {p0}, Lcom/android/sec_settings/guide/GuiderBase;->finish()V

    .line 120
    invoke-virtual {p0}, Lcom/android/sec_settings/guide/ListGuiderBase;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Landroid/app/ListActivity;

    .line 121
    .local v0, activity:Landroid/app/ListActivity;
    if-nez v0, :cond_0

    move-object v1, v2

    .line 123
    .local v1, list:Landroid/widget/ListView;
    :goto_0
    if-nez v1, :cond_1

    .line 134
    :goto_1
    return-void

    .line 121
    .end local v1           #list:Landroid/widget/ListView;
    :cond_0
    invoke-virtual {v0}, Landroid/app/ListActivity;->getListView()Landroid/widget/ListView;

    move-result-object v1

    goto :goto_0

    .line 127
    .restart local v1       #list:Landroid/widget/ListView;
    :cond_1
    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 129
    invoke-virtual {p0}, Lcom/android/sec_settings/guide/ListGuiderBase;->getFragment()Landroid/app/Fragment;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-virtual {p0}, Lcom/android/sec_settings/guide/ListGuiderBase;->getFragment()Landroid/app/Fragment;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Fragment;->isResumed()Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/sec_settings/guide/GuiderBase;->mEnabler:Lcom/android/sec_settings/guide/GuideFragment$WrappedEnabler;

    if-eqz v3, :cond_2

    .line 130
    iget-object v3, p0, Lcom/android/sec_settings/guide/GuiderBase;->mEnabler:Lcom/android/sec_settings/guide/GuideFragment$WrappedEnabler;

    invoke-virtual {v3, v2}, Lcom/android/sec_settings/guide/GuideFragment$WrappedEnabler;->setOnEnablerSwitchListener(Lcom/android/sec_settings/guide/OnInternalSwitcherListener;)V

    .line 133
    :cond_2
    iput-object v2, p0, Lcom/android/sec_settings/guide/GuiderBase;->mEnabler:Lcom/android/sec_settings/guide/GuideFragment$WrappedEnabler;

    goto :goto_1
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 0
    .parameter "savedInstanceState"

    .prologue
    .line 108
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .parameter "newConfig"

    .prologue
    .line 95
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/sec_settings/guide/ListGuiderBase;->mShowedDialog:Lcom/android/sec_settings/guide/ListGuiderBase$GuideStates;

    .line 96
    invoke-virtual {p0}, Lcom/android/sec_settings/guide/ListGuiderBase;->showHelpDialog()V

    .line 97
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0
    .parameter "savedInstanceState"

    .prologue
    .line 49
    return-void
.end method

.method public onDestroy()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 54
    invoke-virtual {p0}, Lcom/android/sec_settings/guide/ListGuiderBase;->finish()V

    .line 55
    iput-object v2, p0, Lcom/android/sec_settings/guide/GuiderBase;->mEnabler:Lcom/android/sec_settings/guide/GuideFragment$WrappedEnabler;

    .line 57
    invoke-virtual {p0}, Lcom/android/sec_settings/guide/ListGuiderBase;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Landroid/app/ListActivity;

    .line 59
    .local v0, activity:Landroid/app/ListActivity;
    if-nez v0, :cond_1

    .line 68
    :cond_0
    :goto_0
    return-void

    .line 63
    :cond_1
    invoke-virtual {v0}, Landroid/app/ListActivity;->getListView()Landroid/widget/ListView;

    move-result-object v1

    .line 65
    .local v1, list:Landroid/widget/ListView;
    if-eqz v1, :cond_0

    .line 66
    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    goto :goto_0
.end method

.method public onKey(ILandroid/view/KeyEvent;)Z
    .locals 5
    .parameter "keyCode"
    .parameter "keyEvent"

    .prologue
    const/16 v4, 0x6f

    .line 176
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    .line 177
    .local v0, action:I
    const/4 v2, 0x0

    .line 179
    .local v2, retval:Z
    const/16 v3, 0x42

    if-eq p1, v3, :cond_0

    const/16 v3, 0x17

    if-eq p1, v3, :cond_0

    if-ne p1, v4, :cond_3

    :cond_0
    if-eqz v0, :cond_1

    const/4 v3, 0x1

    if-ne v0, v3, :cond_3

    .line 185
    :cond_1
    invoke-virtual {p0}, Lcom/android/sec_settings/guide/ListGuiderBase;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getCurrentFocus()Landroid/view/View;

    move-result-object v1

    .line 187
    .local v1, focus:Landroid/view/View;
    if-nez v0, :cond_4

    .line 188
    if-eqz v1, :cond_2

    invoke-virtual {v1, p1, p2}, Landroid/view/View;->onKeyDown(ILandroid/view/KeyEvent;)Z

    .line 198
    :cond_2
    :goto_0
    const/4 v2, 0x1

    .line 201
    .end local v1           #focus:Landroid/view/View;
    :cond_3
    return v2

    .line 190
    .restart local v1       #focus:Landroid/view/View;
    :cond_4
    if-eqz v1, :cond_5

    invoke-virtual {v1, p1, p2}, Landroid/view/View;->onKeyUp(ILandroid/view/KeyEvent;)Z

    .line 192
    :cond_5
    if-ne p1, v4, :cond_2

    invoke-virtual {p0}, Lcom/android/sec_settings/guide/ListGuiderBase;->getActivity()Landroid/app/Activity;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 194
    invoke-virtual {p0}, Lcom/android/sec_settings/guide/ListGuiderBase;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Landroid/app/Activity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)V
    .locals 0
    .parameter "item"

    .prologue
    .line 172
    return-void
.end method

.method public onPause()V
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 147
    iget-object v3, p0, Lcom/android/sec_settings/guide/GuiderBase;->mEnabler:Lcom/android/sec_settings/guide/GuideFragment$WrappedEnabler;

    if-eqz v3, :cond_0

    .line 148
    iget-object v3, p0, Lcom/android/sec_settings/guide/GuiderBase;->mEnabler:Lcom/android/sec_settings/guide/GuideFragment$WrappedEnabler;

    invoke-virtual {v3, v2}, Lcom/android/sec_settings/guide/GuideFragment$WrappedEnabler;->setOnEnablerSwitchListener(Lcom/android/sec_settings/guide/OnInternalSwitcherListener;)V

    .line 151
    :cond_0
    invoke-virtual {p0}, Lcom/android/sec_settings/guide/ListGuiderBase;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Landroid/app/ListActivity;

    .line 152
    .local v0, activity:Landroid/app/ListActivity;
    if-nez v0, :cond_1

    move-object v1, v2

    .line 154
    .local v1, list:Landroid/widget/ListView;
    :goto_0
    if-nez v1, :cond_2

    .line 159
    :goto_1
    return-void

    .line 152
    .end local v1           #list:Landroid/widget/ListView;
    :cond_1
    invoke-virtual {v0}, Landroid/app/ListActivity;->getListView()Landroid/widget/ListView;

    move-result-object v1

    goto :goto_0

    .line 158
    .restart local v1       #list:Landroid/widget/ListView;
    :cond_2
    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    goto :goto_1
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 0
    .parameter "menu"

    .prologue
    .line 113
    return-void
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 72
    invoke-virtual {p0}, Lcom/android/sec_settings/guide/ListGuiderBase;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Landroid/app/ListActivity;

    .line 73
    .local v0, activity:Landroid/app/ListActivity;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    .line 75
    .local v1, list:Landroid/widget/ListView;
    :goto_0
    if-nez v1, :cond_1

    .line 91
    :goto_1
    return-void

    .line 73
    .end local v1           #list:Landroid/widget/ListView;
    :cond_0
    invoke-virtual {v0}, Landroid/app/ListActivity;->getListView()Landroid/widget/ListView;

    move-result-object v1

    goto :goto_0

    .line 80
    .restart local v1       #list:Landroid/widget/ListView;
    :cond_1
    iget-object v2, p0, Lcom/android/sec_settings/guide/GuiderBase;->mEnabler:Lcom/android/sec_settings/guide/GuideFragment$WrappedEnabler;

    if-eqz v2, :cond_2

    .line 81
    iget-object v2, p0, Lcom/android/sec_settings/guide/GuiderBase;->mEnabler:Lcom/android/sec_settings/guide/GuideFragment$WrappedEnabler;

    invoke-virtual {v2}, Lcom/android/sec_settings/guide/GuideFragment$WrappedEnabler;->isChecked()Z

    move-result v2

    invoke-virtual {p0, v2}, Lcom/android/sec_settings/guide/ListGuiderBase;->showHelpDialog(Z)V

    .line 82
    iget-object v2, p0, Lcom/android/sec_settings/guide/GuiderBase;->mEnabler:Lcom/android/sec_settings/guide/GuideFragment$WrappedEnabler;

    invoke-virtual {v2, p0}, Lcom/android/sec_settings/guide/GuideFragment$WrappedEnabler;->setOnEnablerSwitchListener(Lcom/android/sec_settings/guide/OnInternalSwitcherListener;)V

    .line 85
    :cond_2
    new-instance v2, Lcom/android/sec_settings/guide/ListGuiderBase$1;

    invoke-direct {v2, p0}, Lcom/android/sec_settings/guide/ListGuiderBase$1;-><init>(Lcom/android/sec_settings/guide/ListGuiderBase;)V

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    goto :goto_1
.end method

.method public setEnabler(Lcom/android/sec_settings/guide/GuideFragment$WrappedEnabler;)V
    .locals 1
    .parameter "enabler"

    .prologue
    .line 138
    iput-object p1, p0, Lcom/android/sec_settings/guide/GuiderBase;->mEnabler:Lcom/android/sec_settings/guide/GuideFragment$WrappedEnabler;

    .line 140
    invoke-virtual {p0}, Lcom/android/sec_settings/guide/ListGuiderBase;->getFragment()Landroid/app/Fragment;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/sec_settings/guide/ListGuiderBase;->getFragment()Landroid/app/Fragment;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Fragment;->isResumed()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/sec_settings/guide/GuiderBase;->mEnabler:Lcom/android/sec_settings/guide/GuideFragment$WrappedEnabler;

    if-eqz v0, :cond_0

    .line 141
    iget-object v0, p0, Lcom/android/sec_settings/guide/GuiderBase;->mEnabler:Lcom/android/sec_settings/guide/GuideFragment$WrappedEnabler;

    invoke-virtual {v0, p0}, Lcom/android/sec_settings/guide/GuideFragment$WrappedEnabler;->setOnEnablerSwitchListener(Lcom/android/sec_settings/guide/OnInternalSwitcherListener;)V

    .line 143
    :cond_0
    return-void
.end method

.method public showHelpDialog()V
    .locals 1

    .prologue
    .line 164
    iget-object v0, p0, Lcom/android/sec_settings/guide/GuiderBase;->mEnabler:Lcom/android/sec_settings/guide/GuideFragment$WrappedEnabler;

    if-eqz v0, :cond_0

    .line 165
    iget-object v0, p0, Lcom/android/sec_settings/guide/GuiderBase;->mEnabler:Lcom/android/sec_settings/guide/GuideFragment$WrappedEnabler;

    invoke-virtual {v0}, Lcom/android/sec_settings/guide/GuideFragment$WrappedEnabler;->isChecked()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/sec_settings/guide/ListGuiderBase;->showHelpDialog(Z)V

    .line 167
    :cond_0
    return-void
.end method
