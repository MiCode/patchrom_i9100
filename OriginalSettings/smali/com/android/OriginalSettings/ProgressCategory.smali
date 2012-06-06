.class public Lcom/android/OriginalSettings/ProgressCategory;
.super Lcom/android/OriginalSettings/ProgressCategoryBase;
.source "ProgressCategory.java"


# instance fields
.field private mCheckIgnore:Z

.field private mNoDeviceFoundAdded:Z

.field private mNoDeviceFoundPreference:Landroid/preference/Preference;

.field private mNoDeviceTitle:I

.field private mProgress:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v0, 0x0

    .line 34
    invoke-direct {p0, p1, p2}, Lcom/android/OriginalSettings/ProgressCategoryBase;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 27
    iput-boolean v0, p0, Lcom/android/OriginalSettings/ProgressCategory;->mProgress:Z

    .line 30
    iput-boolean v0, p0, Lcom/android/OriginalSettings/ProgressCategory;->mCheckIgnore:Z

    .line 31
    const v0, 0x7f0b0101

    iput v0, p0, Lcom/android/OriginalSettings/ProgressCategory;->mNoDeviceTitle:I

    .line 35
    const v0, 0x7f040074

    invoke-virtual {p0, v0}, Lcom/android/OriginalSettings/ProgressCategory;->setLayoutResource(I)V

    .line 36
    return-void
.end method


# virtual methods
.method public onBindView(Landroid/view/View;)V
    .locals 8
    .parameter "view"

    .prologue
    const/4 v4, 0x4

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 40
    invoke-super {p0, p1}, Lcom/android/OriginalSettings/ProgressCategoryBase;->onBindView(Landroid/view/View;)V

    .line 41
    const v3, 0x7f08015a

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 42
    .local v2, textView:Landroid/widget/TextView;
    const v3, 0x7f08015b

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 45
    .local v1, progressBar:Landroid/view/View;
    iget-boolean v3, p0, Lcom/android/OriginalSettings/ProgressCategory;->mProgress:Z

    if-eqz v3, :cond_4

    const v3, 0x7f0b00ff

    :goto_0
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 46
    invoke-virtual {p0}, Lcom/android/OriginalSettings/ProgressCategory;->getPreferenceCount()I

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {p0}, Lcom/android/OriginalSettings/ProgressCategory;->getPreferenceCount()I

    move-result v3

    if-ne v3, v6, :cond_5

    invoke-virtual {p0, v5}, Lcom/android/OriginalSettings/ProgressCategory;->getPreference(I)Landroid/preference/Preference;

    move-result-object v3

    iget-object v7, p0, Lcom/android/OriginalSettings/ProgressCategory;->mNoDeviceFoundPreference:Landroid/preference/Preference;

    if-ne v3, v7, :cond_5

    :cond_0
    move v0, v6

    .line 48
    .local v0, noDeviceFound:Z
    :goto_1
    if-eqz v0, :cond_6

    move v3, v4

    :goto_2
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 49
    iget-boolean v3, p0, Lcom/android/OriginalSettings/ProgressCategory;->mProgress:Z

    if-eqz v3, :cond_1

    move v4, v5

    :cond_1
    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 51
    iget-boolean v3, p0, Lcom/android/OriginalSettings/ProgressCategory;->mProgress:Z

    if-nez v3, :cond_2

    if-eqz v0, :cond_2

    iget-boolean v3, p0, Lcom/android/OriginalSettings/ProgressCategory;->mCheckIgnore:Z

    if-eqz v3, :cond_7

    .line 52
    :cond_2
    iget-boolean v3, p0, Lcom/android/OriginalSettings/ProgressCategory;->mNoDeviceFoundAdded:Z

    if-eqz v3, :cond_3

    .line 53
    iget-object v3, p0, Lcom/android/OriginalSettings/ProgressCategory;->mNoDeviceFoundPreference:Landroid/preference/Preference;

    invoke-virtual {p0, v3}, Lcom/android/OriginalSettings/ProgressCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 54
    iput-boolean v5, p0, Lcom/android/OriginalSettings/ProgressCategory;->mNoDeviceFoundAdded:Z

    .line 68
    :cond_3
    :goto_3
    return-void

    .line 45
    .end local v0           #noDeviceFound:Z
    :cond_4
    const v3, 0x7f0b00fc

    goto :goto_0

    :cond_5
    move v0, v5

    .line 46
    goto :goto_1

    .restart local v0       #noDeviceFound:Z
    :cond_6
    move v3, v5

    .line 48
    goto :goto_2

    .line 57
    :cond_7
    iget-boolean v3, p0, Lcom/android/OriginalSettings/ProgressCategory;->mNoDeviceFoundAdded:Z

    if-nez v3, :cond_3

    .line 58
    iget-object v3, p0, Lcom/android/OriginalSettings/ProgressCategory;->mNoDeviceFoundPreference:Landroid/preference/Preference;

    if-nez v3, :cond_8

    .line 59
    new-instance v3, Landroid/preference/Preference;

    invoke-virtual {p0}, Lcom/android/OriginalSettings/ProgressCategory;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/android/OriginalSettings/ProgressCategory;->mNoDeviceFoundPreference:Landroid/preference/Preference;

    .line 60
    iget-object v3, p0, Lcom/android/OriginalSettings/ProgressCategory;->mNoDeviceFoundPreference:Landroid/preference/Preference;

    const v4, 0x7f04006c

    invoke-virtual {v3, v4}, Landroid/preference/Preference;->setLayoutResource(I)V

    .line 61
    iget-object v3, p0, Lcom/android/OriginalSettings/ProgressCategory;->mNoDeviceFoundPreference:Landroid/preference/Preference;

    iget v4, p0, Lcom/android/OriginalSettings/ProgressCategory;->mNoDeviceTitle:I

    invoke-virtual {v3, v4}, Landroid/preference/Preference;->setTitle(I)V

    .line 62
    iget-object v3, p0, Lcom/android/OriginalSettings/ProgressCategory;->mNoDeviceFoundPreference:Landroid/preference/Preference;

    invoke-virtual {v3, v5}, Landroid/preference/Preference;->setSelectable(Z)V

    .line 64
    :cond_8
    iget-object v3, p0, Lcom/android/OriginalSettings/ProgressCategory;->mNoDeviceFoundPreference:Landroid/preference/Preference;

    invoke-virtual {p0, v3}, Lcom/android/OriginalSettings/ProgressCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 65
    iput-boolean v6, p0, Lcom/android/OriginalSettings/ProgressCategory;->mNoDeviceFoundAdded:Z

    goto :goto_3
.end method

.method public setNoDeviceFoundText(I)V
    .locals 0
    .parameter "resource_id"

    .prologue
    .line 81
    iput p1, p0, Lcom/android/OriginalSettings/ProgressCategory;->mNoDeviceTitle:I

    .line 82
    return-void
.end method

.method public setProgress(Z)V
    .locals 0
    .parameter "progressOn"

    .prologue
    .line 72
    iput-boolean p1, p0, Lcom/android/OriginalSettings/ProgressCategory;->mProgress:Z

    .line 73
    invoke-virtual {p0}, Lcom/android/OriginalSettings/ProgressCategory;->notifyChanged()V

    .line 74
    return-void
.end method
