.class public Landroid/preference/SeekBarPreference;
.super Landroid/preference/Preference;
.source "SeekBarPreference.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/preference/SeekBarPreference$SavedState;
    }
.end annotation


# instance fields
.field private mMax:I

.field private mProgress:I

.field private mTrackingTouch:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 54
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/preference/SeekBarPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 55
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 50
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/preference/SeekBarPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 51
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 41
    invoke-direct {p0, p1, p2, p3}, Landroid/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 42
    sget-object v1, Lcom/android/internal/R$styleable;->ProgressBar:[I

    const/4 v2, 0x0

    invoke-virtual {p1, p2, v1, p3, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 44
    .local v0, a:Landroid/content/res/TypedArray;
    const/4 v1, 0x2

    iget v2, p0, Landroid/preference/SeekBarPreference;->mMax:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/preference/SeekBarPreference;->setMax(I)V

    .line 45
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 46
    const v1, 0x10900c7

    invoke-virtual {p0, v1}, Landroid/preference/SeekBarPreference;->setLayoutResource(I)V

    .line 47
    return-void
.end method

.method private setProgress(IZ)V
    .locals 1
    .parameter "progress"
    .parameter "notifyChanged"

    .prologue
    .line 137
    iget v0, p0, Landroid/preference/SeekBarPreference;->mMax:I

    if-le p1, v0, :cond_0

    .line 138
    iget p1, p0, Landroid/preference/SeekBarPreference;->mMax:I

    .line 140
    :cond_0
    if-gez p1, :cond_1

    .line 141
    const/4 p1, 0x0

    .line 143
    :cond_1
    iget v0, p0, Landroid/preference/SeekBarPreference;->mProgress:I

    if-eq p1, v0, :cond_2

    .line 144
    iput p1, p0, Landroid/preference/SeekBarPreference;->mProgress:I

    .line 145
    invoke-virtual {p0, p1}, Landroid/preference/SeekBarPreference;->persistInt(I)Z

    .line 146
    if-eqz p2, :cond_2

    .line 147
    invoke-virtual {p0}, Landroid/preference/SeekBarPreference;->notifyChanged()V

    .line 150
    :cond_2
    return-void
.end method


# virtual methods
.method public getMax()I
    .locals 1

    .prologue
    .line 122
    iget v0, p0, Landroid/preference/SeekBarPreference;->mMax:I

    return v0
.end method

.method public getProgress()I
    .locals 1

    .prologue
    .line 153
    iget v0, p0, Landroid/preference/SeekBarPreference;->mProgress:I

    return v0
.end method

.method public getSummary()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 70
    const/4 v0, 0x0

    return-object v0
.end method

.method protected onBindView(Landroid/view/View;)V
    .locals 2
    .parameter "view"

    .prologue
    .line 59
    invoke-super {p0, p1}, Landroid/preference/Preference;->onBindView(Landroid/view/View;)V

    .line 60
    const v1, 0x10203e4

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    .line 62
    .local v0, seekBar:Landroid/widget/SeekBar;
    invoke-virtual {v0, p0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 63
    iget v1, p0, Landroid/preference/SeekBarPreference;->mMax:I

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setMax(I)V

    .line 64
    iget v1, p0, Landroid/preference/SeekBarPreference;->mProgress:I

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 65
    invoke-virtual {p0}, Landroid/preference/SeekBarPreference;->isEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setEnabled(Z)V

    .line 66
    return-void
.end method

.method protected onGetDefaultValue(Landroid/content/res/TypedArray;I)Ljava/lang/Object;
    .locals 1
    .parameter "a"
    .parameter "index"

    .prologue
    .line 81
    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 3
    .parameter "v"
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v1, 0x1

    .line 86
    invoke-virtual {p0}, Landroid/preference/SeekBarPreference;->getProgress()I

    move-result v0

    .line 87
    .local v0, progress:I
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    if-eq v2, v1, :cond_5

    .line 88
    const/16 v2, 0x51

    if-eq p2, v2, :cond_0

    const/16 v2, 0x46

    if-ne p2, v2, :cond_2

    .line 90
    :cond_0
    invoke-virtual {p0}, Landroid/preference/SeekBarPreference;->getProgress()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {p0, v2}, Landroid/preference/SeekBarPreference;->setProgress(I)V

    .line 118
    :cond_1
    :goto_0
    return v1

    .line 93
    :cond_2
    const/16 v2, 0x45

    if-ne p2, v2, :cond_3

    .line 94
    invoke-virtual {p0}, Landroid/preference/SeekBarPreference;->getProgress()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {p0, v2}, Landroid/preference/SeekBarPreference;->setProgress(I)V

    goto :goto_0

    .line 97
    :cond_3
    const/16 v2, 0x15

    if-ne p2, v2, :cond_4

    .line 98
    if-eqz v0, :cond_1

    .line 102
    add-int/lit8 v2, v0, -0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/preference/SeekBarPreference;->callChangeListener(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 103
    invoke-virtual {p0}, Landroid/preference/SeekBarPreference;->getProgress()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {p0, v2}, Landroid/preference/SeekBarPreference;->setProgress(I)V

    goto :goto_0

    .line 107
    :cond_4
    const/16 v2, 0x16

    if-ne p2, v2, :cond_5

    .line 108
    invoke-virtual {p0}, Landroid/preference/SeekBarPreference;->getMax()I

    move-result v2

    if-eq v0, v2, :cond_1

    .line 112
    add-int/lit8 v2, v0, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/preference/SeekBarPreference;->callChangeListener(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 113
    invoke-virtual {p0}, Landroid/preference/SeekBarPreference;->getProgress()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {p0, v2}, Landroid/preference/SeekBarPreference;->setProgress(I)V

    goto :goto_0

    .line 118
    :cond_5
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 1
    .parameter "seekBar"
    .parameter "progress"
    .parameter "fromUser"

    .prologue
    .line 174
    if-eqz p3, :cond_0

    iget-boolean v0, p0, Landroid/preference/SeekBarPreference;->mTrackingTouch:Z

    if-nez v0, :cond_0

    .line 175
    invoke-virtual {p0, p1}, Landroid/preference/SeekBarPreference;->syncProgress(Landroid/widget/SeekBar;)V

    .line 177
    :cond_0
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 3
    .parameter "state"

    .prologue
    .line 215
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-class v2, Landroid/preference/SeekBarPreference$SavedState;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 217
    invoke-super {p0, p1}, Landroid/preference/Preference;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 227
    :goto_0
    return-void

    :cond_0
    move-object v0, p1

    .line 222
    check-cast v0, Landroid/preference/SeekBarPreference$SavedState;

    .line 223
    .local v0, myState:Landroid/preference/SeekBarPreference$SavedState;
    invoke-virtual {v0}, Landroid/preference/SeekBarPreference$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Landroid/preference/Preference;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 224
    iget v1, v0, Landroid/preference/SeekBarPreference$SavedState;->progress:I

    iput v1, p0, Landroid/preference/SeekBarPreference;->mProgress:I

    .line 225
    iget v1, v0, Landroid/preference/SeekBarPreference$SavedState;->max:I

    iput v1, p0, Landroid/preference/SeekBarPreference;->mMax:I

    .line 226
    invoke-virtual {p0}, Landroid/preference/SeekBarPreference;->notifyChanged()V

    goto :goto_0
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    .prologue
    .line 200
    invoke-super {p0}, Landroid/preference/Preference;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    .line 201
    .local v1, superState:Landroid/os/Parcelable;
    invoke-virtual {p0}, Landroid/preference/SeekBarPreference;->isPersistent()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 210
    .end local v1           #superState:Landroid/os/Parcelable;
    :goto_0
    return-object v1

    .line 207
    .restart local v1       #superState:Landroid/os/Parcelable;
    :cond_0
    new-instance v0, Landroid/preference/SeekBarPreference$SavedState;

    invoke-direct {v0, v1}, Landroid/preference/SeekBarPreference$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 208
    .local v0, myState:Landroid/preference/SeekBarPreference$SavedState;
    iget v2, p0, Landroid/preference/SeekBarPreference;->mProgress:I

    iput v2, v0, Landroid/preference/SeekBarPreference$SavedState;->progress:I

    .line 209
    iget v2, p0, Landroid/preference/SeekBarPreference;->mMax:I

    iput v2, v0, Landroid/preference/SeekBarPreference$SavedState;->max:I

    move-object v1, v0

    .line 210
    goto :goto_0
.end method

.method protected onSetInitialValue(ZLjava/lang/Object;)V
    .locals 1
    .parameter "restoreValue"
    .parameter "defaultValue"

    .prologue
    .line 75
    if-eqz p1, :cond_0

    iget v0, p0, Landroid/preference/SeekBarPreference;->mProgress:I

    invoke-virtual {p0, v0}, Landroid/preference/SeekBarPreference;->getPersistedInt(I)I

    move-result v0

    .end local p2
    :goto_0
    invoke-virtual {p0, v0}, Landroid/preference/SeekBarPreference;->setProgress(I)V

    .line 77
    return-void

    .line 75
    .restart local p2
    :cond_0
    check-cast p2, Ljava/lang/Integer;

    .end local p2
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 1
    .parameter "seekBar"

    .prologue
    .line 181
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/preference/SeekBarPreference;->mTrackingTouch:Z

    .line 182
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 2
    .parameter "seekBar"

    .prologue
    .line 186
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/preference/SeekBarPreference;->mTrackingTouch:Z

    .line 187
    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v0

    iget v1, p0, Landroid/preference/SeekBarPreference;->mProgress:I

    if-eq v0, v1, :cond_0

    .line 188
    invoke-virtual {p0, p1}, Landroid/preference/SeekBarPreference;->syncProgress(Landroid/widget/SeekBar;)V

    .line 190
    :cond_0
    return-void
.end method

.method public setMax(I)V
    .locals 1
    .parameter "max"

    .prologue
    .line 126
    iget v0, p0, Landroid/preference/SeekBarPreference;->mMax:I

    if-eq p1, v0, :cond_0

    .line 127
    iput p1, p0, Landroid/preference/SeekBarPreference;->mMax:I

    .line 128
    invoke-virtual {p0}, Landroid/preference/SeekBarPreference;->notifyChanged()V

    .line 130
    :cond_0
    return-void
.end method

.method public setProgress(I)V
    .locals 1
    .parameter "progress"

    .prologue
    .line 133
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Landroid/preference/SeekBarPreference;->setProgress(IZ)V

    .line 134
    return-void
.end method

.method syncProgress(Landroid/widget/SeekBar;)V
    .locals 2
    .parameter "seekBar"

    .prologue
    .line 161
    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v0

    .line 162
    .local v0, progress:I
    iget v1, p0, Landroid/preference/SeekBarPreference;->mProgress:I

    if-eq v0, v1, :cond_0

    .line 163
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/preference/SeekBarPreference;->callChangeListener(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 164
    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Landroid/preference/SeekBarPreference;->setProgress(IZ)V

    .line 169
    :cond_0
    :goto_0
    return-void

    .line 166
    :cond_1
    iget v1, p0, Landroid/preference/SeekBarPreference;->mProgress:I

    invoke-virtual {p1, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    goto :goto_0
.end method
