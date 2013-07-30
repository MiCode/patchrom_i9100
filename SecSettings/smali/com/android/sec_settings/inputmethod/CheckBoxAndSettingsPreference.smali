.class public Lcom/android/sec_settings/inputmethod/CheckBoxAndSettingsPreference;
.super Landroid/preference/CheckBoxPreference;
.source "CheckBoxAndSettingsPreference.java"


# instance fields
.field private mFragment:Lcom/android/sec_settings/SettingsPreferenceFragment;

.field private mSettingsButton:Landroid/widget/ImageView;

.field private mSettingsIntent:Landroid/content/Intent;

.field private mSummaryText:Landroid/widget/TextView;

.field private mTitleText:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 41
    invoke-direct {p0, p1, p2}, Landroid/preference/CheckBoxPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 42
    const v0, 0x7f0400bd

    invoke-virtual {p0, v0}, Lcom/android/sec_settings/inputmethod/CheckBoxAndSettingsPreference;->setLayoutResource(I)V

    .line 43
    const v0, 0x7f0400be

    invoke-virtual {p0, v0}, Lcom/android/sec_settings/inputmethod/CheckBoxAndSettingsPreference;->setWidgetLayoutResource(I)V

    .line 44
    return-void
.end method

.method private enableSettingsButton()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 97
    iget-object v1, p0, Lcom/android/sec_settings/inputmethod/CheckBoxAndSettingsPreference;->mSettingsButton:Landroid/widget/ImageView;

    if-eqz v1, :cond_0

    .line 98
    iget-object v1, p0, Lcom/android/sec_settings/inputmethod/CheckBoxAndSettingsPreference;->mSettingsIntent:Landroid/content/Intent;

    if-nez v1, :cond_3

    .line 99
    iget-object v1, p0, Lcom/android/sec_settings/inputmethod/CheckBoxAndSettingsPreference;->mSettingsButton:Landroid/widget/ImageView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 110
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/sec_settings/inputmethod/CheckBoxAndSettingsPreference;->mTitleText:Landroid/widget/TextView;

    if-eqz v1, :cond_1

    .line 111
    iget-object v1, p0, Lcom/android/sec_settings/inputmethod/CheckBoxAndSettingsPreference;->mTitleText:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 113
    :cond_1
    iget-object v1, p0, Lcom/android/sec_settings/inputmethod/CheckBoxAndSettingsPreference;->mSummaryText:Landroid/widget/TextView;

    if-eqz v1, :cond_2

    .line 114
    iget-object v1, p0, Lcom/android/sec_settings/inputmethod/CheckBoxAndSettingsPreference;->mSummaryText:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 116
    :cond_2
    return-void

    .line 101
    :cond_3
    invoke-virtual {p0}, Lcom/android/sec_settings/inputmethod/CheckBoxAndSettingsPreference;->isChecked()Z

    move-result v0

    .line 102
    .local v0, checked:Z
    iget-object v1, p0, Lcom/android/sec_settings/inputmethod/CheckBoxAndSettingsPreference;->mSettingsButton:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 103
    iget-object v1, p0, Lcom/android/sec_settings/inputmethod/CheckBoxAndSettingsPreference;->mSettingsButton:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setClickable(Z)V

    .line 104
    iget-object v1, p0, Lcom/android/sec_settings/inputmethod/CheckBoxAndSettingsPreference;->mSettingsButton:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setFocusable(Z)V

    .line 105
    if-nez v0, :cond_0

    .line 106
    iget-object v1, p0, Lcom/android/sec_settings/inputmethod/CheckBoxAndSettingsPreference;->mSettingsButton:Landroid/widget/ImageView;

    const v2, 0x3ecccccd

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setAlpha(F)V

    goto :goto_0
.end method


# virtual methods
.method protected onBindView(Landroid/view/View;)V
    .locals 3
    .parameter "view"

    .prologue
    .line 48
    invoke-super {p0, p1}, Landroid/preference/CheckBoxPreference;->onBindView(Landroid/view/View;)V

    .line 49
    const v1, 0x7f0b0220

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 50
    .local v0, textLayout:Landroid/view/View;
    new-instance v1, Lcom/android/sec_settings/inputmethod/CheckBoxAndSettingsPreference$1;

    invoke-direct {v1, p0}, Lcom/android/sec_settings/inputmethod/CheckBoxAndSettingsPreference$1;-><init>(Lcom/android/sec_settings/inputmethod/CheckBoxAndSettingsPreference;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 58
    const v1, 0x7f0b0221

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/sec_settings/inputmethod/CheckBoxAndSettingsPreference;->mSettingsButton:Landroid/widget/ImageView;

    .line 59
    const v1, 0x1020016

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/sec_settings/inputmethod/CheckBoxAndSettingsPreference;->mTitleText:Landroid/widget/TextView;

    .line 60
    const v1, 0x1020010

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/sec_settings/inputmethod/CheckBoxAndSettingsPreference;->mSummaryText:Landroid/widget/TextView;

    .line 61
    iget-object v1, p0, Lcom/android/sec_settings/inputmethod/CheckBoxAndSettingsPreference;->mSettingsButton:Landroid/widget/ImageView;

    new-instance v2, Lcom/android/sec_settings/inputmethod/CheckBoxAndSettingsPreference$2;

    invoke-direct {v2, p0}, Lcom/android/sec_settings/inputmethod/CheckBoxAndSettingsPreference$2;-><init>(Lcom/android/sec_settings/inputmethod/CheckBoxAndSettingsPreference;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 68
    invoke-direct {p0}, Lcom/android/sec_settings/inputmethod/CheckBoxAndSettingsPreference;->enableSettingsButton()V

    .line 69
    return-void
.end method

.method protected onCheckBoxClicked()V
    .locals 1

    .prologue
    .line 83
    invoke-virtual {p0}, Lcom/android/sec_settings/inputmethod/CheckBoxAndSettingsPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 84
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/sec_settings/inputmethod/CheckBoxAndSettingsPreference;->setChecked(Z)V

    .line 88
    :goto_0
    return-void

    .line 86
    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/sec_settings/inputmethod/CheckBoxAndSettingsPreference;->setChecked(Z)V

    goto :goto_0
.end method

.method protected onSettingsButtonClicked()V
    .locals 2

    .prologue
    .line 91
    iget-object v0, p0, Lcom/android/sec_settings/inputmethod/CheckBoxAndSettingsPreference;->mFragment:Lcom/android/sec_settings/SettingsPreferenceFragment;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/sec_settings/inputmethod/CheckBoxAndSettingsPreference;->mSettingsIntent:Landroid/content/Intent;

    if-eqz v0, :cond_0

    .line 92
    iget-object v0, p0, Lcom/android/sec_settings/inputmethod/CheckBoxAndSettingsPreference;->mFragment:Lcom/android/sec_settings/SettingsPreferenceFragment;

    iget-object v1, p0, Lcom/android/sec_settings/inputmethod/CheckBoxAndSettingsPreference;->mSettingsIntent:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Lcom/android/sec_settings/SettingsPreferenceFragment;->startActivity(Landroid/content/Intent;)V

    .line 94
    :cond_0
    return-void
.end method

.method public setEnabled(Z)V
    .locals 0
    .parameter "enabled"

    .prologue
    .line 73
    invoke-super {p0, p1}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 74
    invoke-direct {p0}, Lcom/android/sec_settings/inputmethod/CheckBoxAndSettingsPreference;->enableSettingsButton()V

    .line 75
    return-void
.end method

.method public setFragmentIntent(Lcom/android/sec_settings/SettingsPreferenceFragment;Landroid/content/Intent;)V
    .locals 0
    .parameter "fragment"
    .parameter "intent"

    .prologue
    .line 78
    iput-object p1, p0, Lcom/android/sec_settings/inputmethod/CheckBoxAndSettingsPreference;->mFragment:Lcom/android/sec_settings/SettingsPreferenceFragment;

    .line 79
    iput-object p2, p0, Lcom/android/sec_settings/inputmethod/CheckBoxAndSettingsPreference;->mSettingsIntent:Landroid/content/Intent;

    .line 80
    return-void
.end method
