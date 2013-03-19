.class public Lcom/android/settings/ProgressCategory;
.super Lcom/android/settings/ProgressCategoryBase;
.source "ProgressCategory.java"


# instance fields
.field private mChangeProgressText:Z

.field private mCheckIgnore:Z

.field private mNoDeviceFoundAdded:Z

.field private mNoDeviceFoundPreference:Landroid/preference/Preference;

.field private mNoDeviceIgnore:Z

.field private mNoDeviceTitle:I

.field private mProgress:Z

.field private mProgressText:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v0, 0x0

    .line 37
    invoke-direct {p0, p1, p2}, Lcom/android/settings/ProgressCategoryBase;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 27
    iput-boolean v0, p0, Lcom/android/settings/ProgressCategory;->mProgress:Z

    .line 30
    iput-boolean v0, p0, Lcom/android/settings/ProgressCategory;->mCheckIgnore:Z

    .line 31
    iput-boolean v0, p0, Lcom/android/settings/ProgressCategory;->mNoDeviceIgnore:Z

    .line 32
    iput-boolean v0, p0, Lcom/android/settings/ProgressCategory;->mChangeProgressText:Z

    .line 34
    const v0, 0x7f090d4c

    iput v0, p0, Lcom/android/settings/ProgressCategory;->mNoDeviceTitle:I

    .line 38
    const v0, 0x7f0400c3

    invoke-virtual {p0, v0}, Lcom/android/settings/ProgressCategory;->setLayoutResource(I)V

    .line 39
    return-void
.end method


# virtual methods
.method public onBindView(Landroid/view/View;)V
    .locals 8
    .parameter "view"

    .prologue
    const/16 v6, 0x8

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 43
    invoke-super {p0, p1}, Lcom/android/settings/ProgressCategoryBase;->onBindView(Landroid/view/View;)V

    .line 44
    const v3, 0x7f0b0225

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 45
    .local v2, textView:Landroid/widget/TextView;
    const v3, 0x7f0b0224

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 48
    .local v1, progressBar:Landroid/view/View;
    iget-boolean v3, p0, Lcom/android/settings/ProgressCategory;->mChangeProgressText:Z

    if-nez v3, :cond_5

    .line 49
    iget-boolean v3, p0, Lcom/android/settings/ProgressCategory;->mProgress:Z

    if-eqz v3, :cond_4

    const v3, 0x7f0900af

    :goto_0
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 54
    :goto_1
    invoke-virtual {p0}, Lcom/android/settings/ProgressCategory;->getPreferenceCount()I

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/ProgressCategory;->getPreferenceCount()I

    move-result v3

    if-ne v3, v5, :cond_6

    invoke-virtual {p0, v4}, Lcom/android/settings/ProgressCategory;->getPreference(I)Landroid/preference/Preference;

    move-result-object v3

    iget-object v7, p0, Lcom/android/settings/ProgressCategory;->mNoDeviceFoundPreference:Landroid/preference/Preference;

    if-ne v3, v7, :cond_6

    :cond_0
    move v0, v5

    .line 56
    .local v0, noDeviceFound:Z
    :goto_2
    iget-boolean v3, p0, Lcom/android/settings/ProgressCategory;->mNoDeviceIgnore:Z

    if-nez v3, :cond_8

    .line 57
    if-eqz v0, :cond_7

    move v3, v6

    :goto_3
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 60
    :goto_4
    iget-boolean v3, p0, Lcom/android/settings/ProgressCategory;->mProgress:Z

    if-eqz v3, :cond_1

    move v6, v4

    :cond_1
    invoke-virtual {v1, v6}, Landroid/view/View;->setVisibility(I)V

    .line 62
    iget-boolean v3, p0, Lcom/android/settings/ProgressCategory;->mProgress:Z

    if-nez v3, :cond_2

    if-eqz v0, :cond_2

    iget-boolean v3, p0, Lcom/android/settings/ProgressCategory;->mCheckIgnore:Z

    if-eqz v3, :cond_9

    .line 63
    :cond_2
    iget-boolean v3, p0, Lcom/android/settings/ProgressCategory;->mNoDeviceFoundAdded:Z

    if-eqz v3, :cond_3

    .line 64
    iget-object v3, p0, Lcom/android/settings/ProgressCategory;->mNoDeviceFoundPreference:Landroid/preference/Preference;

    invoke-virtual {p0, v3}, Lcom/android/settings/ProgressCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 65
    iput-boolean v4, p0, Lcom/android/settings/ProgressCategory;->mNoDeviceFoundAdded:Z

    .line 79
    :cond_3
    :goto_5
    return-void

    .line 49
    .end local v0           #noDeviceFound:Z
    :cond_4
    const v3, 0x7f0901c5

    goto :goto_0

    .line 52
    :cond_5
    iget v3, p0, Lcom/android/settings/ProgressCategory;->mProgressText:I

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1

    :cond_6
    move v0, v4

    .line 54
    goto :goto_2

    .restart local v0       #noDeviceFound:Z
    :cond_7
    move v3, v4

    .line 57
    goto :goto_3

    .line 59
    :cond_8
    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_4

    .line 68
    :cond_9
    iget-boolean v3, p0, Lcom/android/settings/ProgressCategory;->mNoDeviceFoundAdded:Z

    if-nez v3, :cond_3

    .line 69
    iget-object v3, p0, Lcom/android/settings/ProgressCategory;->mNoDeviceFoundPreference:Landroid/preference/Preference;

    if-nez v3, :cond_a

    .line 70
    new-instance v3, Landroid/preference/Preference;

    invoke-virtual {p0}, Lcom/android/settings/ProgressCategory;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v3, v6}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/android/settings/ProgressCategory;->mNoDeviceFoundPreference:Landroid/preference/Preference;

    .line 71
    iget-object v3, p0, Lcom/android/settings/ProgressCategory;->mNoDeviceFoundPreference:Landroid/preference/Preference;

    const v6, 0x7f0400b9

    invoke-virtual {v3, v6}, Landroid/preference/Preference;->setLayoutResource(I)V

    .line 72
    iget-object v3, p0, Lcom/android/settings/ProgressCategory;->mNoDeviceFoundPreference:Landroid/preference/Preference;

    iget v6, p0, Lcom/android/settings/ProgressCategory;->mNoDeviceTitle:I

    invoke-virtual {v3, v6}, Landroid/preference/Preference;->setTitle(I)V

    .line 73
    iget-object v3, p0, Lcom/android/settings/ProgressCategory;->mNoDeviceFoundPreference:Landroid/preference/Preference;

    invoke-virtual {v3, v4}, Landroid/preference/Preference;->setSelectable(Z)V

    .line 75
    :cond_a
    iget-object v3, p0, Lcom/android/settings/ProgressCategory;->mNoDeviceFoundPreference:Landroid/preference/Preference;

    invoke-virtual {p0, v3}, Lcom/android/settings/ProgressCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 76
    iput-boolean v5, p0, Lcom/android/settings/ProgressCategory;->mNoDeviceFoundAdded:Z

    goto :goto_5
.end method

.method public setIgnoreMessage(Z)V
    .locals 0
    .parameter "flag"

    .prologue
    .line 88
    iput-boolean p1, p0, Lcom/android/settings/ProgressCategory;->mCheckIgnore:Z

    .line 89
    return-void
.end method

.method public setIgnoreNoDevice(Z)V
    .locals 0
    .parameter "flag"

    .prologue
    .line 92
    iput-boolean p1, p0, Lcom/android/settings/ProgressCategory;->mNoDeviceIgnore:Z

    .line 93
    return-void
.end method

.method public setProgress(Z)V
    .locals 0
    .parameter "progressOn"

    .prologue
    .line 83
    iput-boolean p1, p0, Lcom/android/settings/ProgressCategory;->mProgress:Z

    .line 84
    invoke-virtual {p0}, Lcom/android/settings/ProgressCategory;->notifyChanged()V

    .line 85
    return-void
.end method

.method public setProgressText(ZI)V
    .locals 1
    .parameter "flag"
    .parameter "resource_id"

    .prologue
    .line 96
    iput-boolean p1, p0, Lcom/android/settings/ProgressCategory;->mChangeProgressText:Z

    .line 97
    iget-boolean v0, p0, Lcom/android/settings/ProgressCategory;->mChangeProgressText:Z

    if-eqz v0, :cond_0

    .line 98
    iput p2, p0, Lcom/android/settings/ProgressCategory;->mProgressText:I

    .line 101
    :goto_0
    return-void

    .line 100
    :cond_0
    const v0, 0x7f0900af

    iput v0, p0, Lcom/android/settings/ProgressCategory;->mProgressText:I

    goto :goto_0
.end method
