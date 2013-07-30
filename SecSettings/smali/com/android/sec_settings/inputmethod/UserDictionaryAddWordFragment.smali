.class public Lcom/android/sec_settings/inputmethod/UserDictionaryAddWordFragment;
.super Landroid/app/Fragment;
.source "UserDictionaryAddWordFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;
.implements Lcom/android/internal/app/LocalePicker$LocaleSelectionListener;


# instance fields
.field private mContents:Lcom/android/sec_settings/inputmethod/UserDictionaryAddWordContents;

.field private mIsDeleting:Z

.field private mIsSpinner:Z

.field private mRootView:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 43
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 51
    iput-boolean v0, p0, Lcom/android/sec_settings/inputmethod/UserDictionaryAddWordFragment;->mIsDeleting:Z

    .line 52
    iput-boolean v0, p0, Lcom/android/sec_settings/inputmethod/UserDictionaryAddWordFragment;->mIsSpinner:Z

    return-void
.end method

.method private updateSpinner()V
    .locals 5

    .prologue
    .line 104
    iget-object v3, p0, Lcom/android/sec_settings/inputmethod/UserDictionaryAddWordFragment;->mContents:Lcom/android/sec_settings/inputmethod/UserDictionaryAddWordContents;

    invoke-virtual {p0}, Lcom/android/sec_settings/inputmethod/UserDictionaryAddWordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/sec_settings/inputmethod/UserDictionaryAddWordContents;->getLocalesList(Landroid/app/Activity;)Ljava/util/ArrayList;

    move-result-object v2

    .line 106
    .local v2, localesList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/sec_settings/inputmethod/UserDictionaryAddWordContents$LocaleRenderer;>;"
    iget-object v3, p0, Lcom/android/sec_settings/inputmethod/UserDictionaryAddWordFragment;->mRootView:Landroid/view/View;

    const v4, 0x7f0b02ba

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Spinner;

    .line 108
    .local v1, localeSpinner:Landroid/widget/Spinner;
    new-instance v0, Landroid/widget/ArrayAdapter;

    invoke-virtual {p0}, Lcom/android/sec_settings/inputmethod/UserDictionaryAddWordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const v4, 0x1090008

    invoke-direct {v0, v3, v4, v2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 110
    .local v0, adapter:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Lcom/android/sec_settings/inputmethod/UserDictionaryAddWordContents$LocaleRenderer;>;"
    const v3, 0x1090009

    invoke-virtual {v0, v3}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 111
    invoke-virtual {v1, v0}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 112
    invoke-virtual {v1, p0}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 113
    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedInstanceState"

    .prologue
    .line 56
    invoke-super {p0, p1}, Landroid/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 57
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/sec_settings/inputmethod/UserDictionaryAddWordFragment;->setHasOptionsMenu(Z)V

    .line 58
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 4
    .parameter "menu"
    .parameter "inflater"

    .prologue
    const/4 v3, 0x0

    .line 72
    const/4 v1, 0x1

    const v2, 0x7f0907c5

    invoke-interface {p1, v3, v1, v3, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    const v2, 0x7f02015f

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 74
    .local v0, actionItem:Landroid/view/MenuItem;
    const/4 v1, 0x5

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 76
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .parameter "inflater"
    .parameter "container"
    .parameter "savedState"

    .prologue
    .line 62
    const v0, 0x7f0400fa

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/sec_settings/inputmethod/UserDictionaryAddWordFragment;->mRootView:Landroid/view/View;

    .line 63
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/sec_settings/inputmethod/UserDictionaryAddWordFragment;->mIsDeleting:Z

    .line 64
    iget-object v0, p0, Lcom/android/sec_settings/inputmethod/UserDictionaryAddWordFragment;->mContents:Lcom/android/sec_settings/inputmethod/UserDictionaryAddWordContents;

    if-nez v0, :cond_0

    .line 65
    new-instance v0, Lcom/android/sec_settings/inputmethod/UserDictionaryAddWordContents;

    iget-object v1, p0, Lcom/android/sec_settings/inputmethod/UserDictionaryAddWordFragment;->mRootView:Landroid/view/View;

    invoke-virtual {p0}, Lcom/android/sec_settings/inputmethod/UserDictionaryAddWordFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/android/sec_settings/inputmethod/UserDictionaryAddWordContents;-><init>(Landroid/view/View;Landroid/os/Bundle;)V

    iput-object v0, p0, Lcom/android/sec_settings/inputmethod/UserDictionaryAddWordFragment;->mContents:Lcom/android/sec_settings/inputmethod/UserDictionaryAddWordContents;

    .line 67
    :cond_0
    iget-object v0, p0, Lcom/android/sec_settings/inputmethod/UserDictionaryAddWordFragment;->mRootView:Landroid/view/View;

    return-object v0
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 117
    invoke-super {p0}, Landroid/app/Fragment;->onDestroy()V

    .line 119
    iget-boolean v0, p0, Lcom/android/sec_settings/inputmethod/UserDictionaryAddWordFragment;->mIsDeleting:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/sec_settings/inputmethod/UserDictionaryAddWordFragment;->mIsSpinner:Z

    if-nez v0, :cond_0

    .line 120
    iget-object v0, p0, Lcom/android/sec_settings/inputmethod/UserDictionaryAddWordFragment;->mContents:Lcom/android/sec_settings/inputmethod/UserDictionaryAddWordContents;

    invoke-virtual {p0}, Lcom/android/sec_settings/inputmethod/UserDictionaryAddWordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/sec_settings/inputmethod/UserDictionaryAddWordContents;->apply(Landroid/content/Context;)V

    .line 122
    :cond_0
    return-void
.end method

.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4
    .parameter
    .parameter "view"
    .parameter "pos"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    const/4 v3, 0x1

    .line 127
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/sec_settings/inputmethod/UserDictionaryAddWordFragment;->mIsSpinner:Z

    .line 128
    invoke-virtual {p1, p3}, Landroid/widget/AdapterView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/sec_settings/inputmethod/UserDictionaryAddWordContents$LocaleRenderer;

    .line 129
    .local v0, locale:Lcom/android/sec_settings/inputmethod/UserDictionaryAddWordContents$LocaleRenderer;
    invoke-virtual {v0}, Lcom/android/sec_settings/inputmethod/UserDictionaryAddWordContents$LocaleRenderer;->isMoreLanguages()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 130
    iput-boolean v3, p0, Lcom/android/sec_settings/inputmethod/UserDictionaryAddWordFragment;->mIsSpinner:Z

    .line 131
    invoke-virtual {p0}, Lcom/android/sec_settings/inputmethod/UserDictionaryAddWordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    check-cast v1, Landroid/preference/PreferenceActivity;

    .line 132
    .local v1, preferenceActivity:Landroid/preference/PreferenceActivity;
    new-instance v2, Lcom/android/sec_settings/inputmethod/UserDictionaryLocalePicker;

    invoke-direct {v2, p0}, Lcom/android/sec_settings/inputmethod/UserDictionaryLocalePicker;-><init>(Lcom/android/sec_settings/inputmethod/UserDictionaryAddWordFragment;)V

    invoke-virtual {v1, v2, v3}, Landroid/preference/PreferenceActivity;->startPreferenceFragment(Landroid/app/Fragment;Z)V

    .line 136
    .end local v1           #preferenceActivity:Landroid/preference/PreferenceActivity;
    :goto_0
    return-void

    .line 134
    :cond_0
    iget-object v2, p0, Lcom/android/sec_settings/inputmethod/UserDictionaryAddWordFragment;->mContents:Lcom/android/sec_settings/inputmethod/UserDictionaryAddWordContents;

    invoke-virtual {v0}, Lcom/android/sec_settings/inputmethod/UserDictionaryAddWordContents$LocaleRenderer;->getLocaleString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/sec_settings/inputmethod/UserDictionaryAddWordContents;->updateLocale(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onLocaleSelected(Ljava/util/Locale;)V
    .locals 2
    .parameter "locale"

    .prologue
    .line 148
    iget-object v0, p0, Lcom/android/sec_settings/inputmethod/UserDictionaryAddWordFragment;->mContents:Lcom/android/sec_settings/inputmethod/UserDictionaryAddWordContents;

    invoke-virtual {p1}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/sec_settings/inputmethod/UserDictionaryAddWordContents;->updateLocale(Ljava/lang/String;)V

    .line 149
    invoke-virtual {p0}, Lcom/android/sec_settings/inputmethod/UserDictionaryAddWordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->onBackPressed()V

    .line 150
    return-void
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 141
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    invoke-virtual {p0}, Lcom/android/sec_settings/inputmethod/UserDictionaryAddWordFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 142
    .local v0, args:Landroid/os/Bundle;
    iget-object v1, p0, Lcom/android/sec_settings/inputmethod/UserDictionaryAddWordFragment;->mContents:Lcom/android/sec_settings/inputmethod/UserDictionaryAddWordContents;

    const-string v2, "locale"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/sec_settings/inputmethod/UserDictionaryAddWordContents;->updateLocale(Ljava/lang/String;)V

    .line 143
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3
    .parameter "item"

    .prologue
    const/4 v0, 0x1

    .line 87
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    if-ne v1, v0, :cond_0

    .line 88
    iget-object v1, p0, Lcom/android/sec_settings/inputmethod/UserDictionaryAddWordFragment;->mContents:Lcom/android/sec_settings/inputmethod/UserDictionaryAddWordContents;

    invoke-virtual {p0}, Lcom/android/sec_settings/inputmethod/UserDictionaryAddWordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/sec_settings/inputmethod/UserDictionaryAddWordContents;->delete(Landroid/content/Context;)V

    .line 89
    iput-boolean v0, p0, Lcom/android/sec_settings/inputmethod/UserDictionaryAddWordFragment;->mIsDeleting:Z

    .line 90
    invoke-virtual {p0}, Lcom/android/sec_settings/inputmethod/UserDictionaryAddWordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->onBackPressed()V

    .line 93
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 98
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 100
    invoke-direct {p0}, Lcom/android/sec_settings/inputmethod/UserDictionaryAddWordFragment;->updateSpinner()V

    .line 101
    return-void
.end method
