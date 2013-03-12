.class public Landroid/preference/VolumePreference;
.super Landroid/preference/SeekBarDialogPreference;
.source "VolumePreference.java"

# interfaces
.implements Landroid/preference/PreferenceManager$OnActivityStopListener;
.implements Landroid/view/View$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/preference/VolumePreference$SeekBarVolumizer;,
        Landroid/preference/VolumePreference$SavedState;,
        Landroid/preference/VolumePreference$VolumeStore;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = true

.field private static final DISPLAY_PROFILE_EDIT:I = 0x1

.field private static final DISPLAY_SOUND_SETTING:I = 0x0

.field private static final TAG:Ljava/lang/String; = "VolumePreference"


# instance fields
.field private mAudioManager:Landroid/media/AudioManager;

.field private mDisplayType:I

.field private mEditMode:I

.field private mProfileMode:I

.field private mSeekBarVolumizer:Landroid/preference/VolumePreference$SeekBarVolumizer;

.field private mStreamType:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v2, 0x0

    .line 70
    invoke-direct {p0, p1, p2}, Landroid/preference/SeekBarDialogPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 72
    sget-object v1, Lcom/android/internal/R$styleable;->VolumePreference:[I

    invoke-virtual {p1, p2, v1, v2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 74
    .local v0, a:Landroid/content/res/TypedArray;
    invoke-virtual {v0, v2, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Landroid/preference/VolumePreference;->mStreamType:I

    .line 75
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 76
    const-string v1, "audio"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioManager;

    iput-object v1, p0, Landroid/preference/VolumePreference;->mAudioManager:Landroid/media/AudioManager;

    .line 77
    return-void
.end method

.method static synthetic access$000(Landroid/preference/VolumePreference;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 53
    iget v0, p0, Landroid/preference/VolumePreference;->mDisplayType:I

    return v0
.end method

.method static synthetic access$100(Landroid/preference/VolumePreference;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 53
    iget v0, p0, Landroid/preference/VolumePreference;->mProfileMode:I

    return v0
.end method

.method static synthetic access$200(Landroid/preference/VolumePreference;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 53
    iget v0, p0, Landroid/preference/VolumePreference;->mEditMode:I

    return v0
.end method

.method private cleanup()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 169
    const-string v2, "VolumePreference"

    const-string v3, "cleanup()"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    invoke-virtual {p0}, Landroid/preference/VolumePreference;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v2

    invoke-virtual {v2, p0}, Landroid/preference/PreferenceManager;->unregisterOnActivityStopListener(Landroid/preference/PreferenceManager$OnActivityStopListener;)V

    .line 172
    iget-object v2, p0, Landroid/preference/VolumePreference;->mSeekBarVolumizer:Landroid/preference/VolumePreference$SeekBarVolumizer;

    if-eqz v2, :cond_3

    .line 173
    invoke-virtual {p0}, Landroid/preference/VolumePreference;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    .line 174
    .local v0, dialog:Landroid/app/Dialog;
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 175
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    const v3, 0x10203e4

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 177
    .local v1, view:Landroid/view/View;
    if-eqz v1, :cond_0

    invoke-virtual {v1, v4}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 179
    :cond_0
    const-string v2, "CTC"

    const-string v3, "ro.csc.sales_code"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "CHM"

    const-string v3, "ro.csc.sales_code"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 181
    :cond_1
    iget v2, p0, Landroid/preference/VolumePreference;->mDisplayType:I

    if-nez v2, :cond_2

    .line 182
    iget-object v2, p0, Landroid/preference/VolumePreference;->mSeekBarVolumizer:Landroid/preference/VolumePreference$SeekBarVolumizer;

    invoke-virtual {v2}, Landroid/preference/VolumePreference$SeekBarVolumizer;->revertVolume()V

    .line 189
    .end local v1           #view:Landroid/view/View;
    :cond_2
    :goto_0
    iget-object v2, p0, Landroid/preference/VolumePreference;->mSeekBarVolumizer:Landroid/preference/VolumePreference$SeekBarVolumizer;

    invoke-virtual {v2}, Landroid/preference/VolumePreference$SeekBarVolumizer;->stop()V

    .line 190
    iput-object v4, p0, Landroid/preference/VolumePreference;->mSeekBarVolumizer:Landroid/preference/VolumePreference$SeekBarVolumizer;

    .line 193
    .end local v0           #dialog:Landroid/app/Dialog;
    :cond_3
    return-void

    .line 186
    .restart local v0       #dialog:Landroid/app/Dialog;
    .restart local v1       #view:Landroid/view/View;
    :cond_4
    iget-object v2, p0, Landroid/preference/VolumePreference;->mSeekBarVolumizer:Landroid/preference/VolumePreference$SeekBarVolumizer;

    invoke-virtual {v2}, Landroid/preference/VolumePreference$SeekBarVolumizer;->revertVolume()V

    goto :goto_0
.end method


# virtual methods
.method public onActivityStop()V
    .locals 2

    .prologue
    .line 159
    const-string v0, "VolumePreference"

    const-string v1, "onActivityStop()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    iget-object v0, p0, Landroid/preference/VolumePreference;->mSeekBarVolumizer:Landroid/preference/VolumePreference$SeekBarVolumizer;

    if-eqz v0, :cond_0

    .line 161
    iget-object v0, p0, Landroid/preference/VolumePreference;->mSeekBarVolumizer:Landroid/preference/VolumePreference$SeekBarVolumizer;

    invoke-virtual {v0}, Landroid/preference/VolumePreference$SeekBarVolumizer;->stopSample()V

    .line 163
    :cond_0
    return-void
.end method

.method protected onBindDialogView(Landroid/view/View;)V
    .locals 5
    .parameter "view"

    .prologue
    const/4 v4, 0x0

    .line 91
    invoke-super {p0, p1}, Landroid/preference/SeekBarDialogPreference;->onBindDialogView(Landroid/view/View;)V

    .line 93
    const v1, 0x10203e4

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    .line 94
    .local v0, seekBar:Landroid/widget/SeekBar;
    new-instance v1, Landroid/preference/VolumePreference$SeekBarVolumizer;

    invoke-virtual {p0}, Landroid/preference/VolumePreference;->getContext()Landroid/content/Context;

    move-result-object v2

    iget v3, p0, Landroid/preference/VolumePreference;->mStreamType:I

    invoke-direct {v1, p0, v2, v0, v3}, Landroid/preference/VolumePreference$SeekBarVolumizer;-><init>(Landroid/preference/VolumePreference;Landroid/content/Context;Landroid/widget/SeekBar;I)V

    iput-object v1, p0, Landroid/preference/VolumePreference;->mSeekBarVolumizer:Landroid/preference/VolumePreference$SeekBarVolumizer;

    .line 95
    const-string v1, "VolumePreference"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onBindDialogView : mStreamType : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Landroid/preference/VolumePreference;->mStreamType:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    invoke-virtual {p0}, Landroid/preference/VolumePreference;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/preference/PreferenceManager;->registerOnActivityStopListener(Landroid/preference/PreferenceManager$OnActivityStopListener;)V

    .line 100
    invoke-virtual {p1, p0}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 101
    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    .line 102
    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    .line 104
    invoke-virtual {p0}, Landroid/preference/VolumePreference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "sound_profile_mode"

    invoke-static {v1, v2, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Landroid/preference/VolumePreference;->mProfileMode:I

    .line 107
    invoke-virtual {p0}, Landroid/preference/VolumePreference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "sound_profile_edit_mode"

    invoke-static {v1, v2, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Landroid/preference/VolumePreference;->mEditMode:I

    .line 109
    return-void
.end method

.method protected onDialogClosed(Z)V
    .locals 3
    .parameter "positiveResult"

    .prologue
    .line 139
    invoke-super {p0, p1}, Landroid/preference/SeekBarDialogPreference;->onDialogClosed(Z)V

    .line 140
    const-string v0, "VolumePreference"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " onDialogClosed() positiveResult: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    const-string v0, "CTC"

    const-string v1, "ro.csc.sales_code"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "CHM"

    const-string v1, "ro.csc.sales_code"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 143
    :cond_0
    if-nez p1, :cond_1

    iget-object v0, p0, Landroid/preference/VolumePreference;->mSeekBarVolumizer:Landroid/preference/VolumePreference$SeekBarVolumizer;

    if-eqz v0, :cond_1

    .line 144
    iget v0, p0, Landroid/preference/VolumePreference;->mDisplayType:I

    if-nez v0, :cond_1

    .line 145
    iget-object v0, p0, Landroid/preference/VolumePreference;->mSeekBarVolumizer:Landroid/preference/VolumePreference$SeekBarVolumizer;

    invoke-virtual {v0}, Landroid/preference/VolumePreference$SeekBarVolumizer;->revertVolume()V

    .line 155
    :cond_1
    :goto_0
    invoke-direct {p0}, Landroid/preference/VolumePreference;->cleanup()V

    .line 156
    return-void

    .line 150
    :cond_2
    if-nez p1, :cond_1

    iget-object v0, p0, Landroid/preference/VolumePreference;->mSeekBarVolumizer:Landroid/preference/VolumePreference$SeekBarVolumizer;

    if-eqz v0, :cond_1

    .line 151
    iget-object v0, p0, Landroid/preference/VolumePreference;->mSeekBarVolumizer:Landroid/preference/VolumePreference$SeekBarVolumizer;

    invoke-virtual {v0}, Landroid/preference/VolumePreference$SeekBarVolumizer;->revertVolume()V

    goto :goto_0
.end method

.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 6
    .parameter "v"
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 113
    const-string v3, "VolumePreference"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onKey() Keycode : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    iget-object v3, p0, Landroid/preference/VolumePreference;->mSeekBarVolumizer:Landroid/preference/VolumePreference$SeekBarVolumizer;

    if-nez v3, :cond_1

    .line 133
    :cond_0
    :goto_0
    return v1

    .line 115
    :cond_1
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v3

    if-nez v3, :cond_2

    move v0, v1

    .line 116
    .local v0, isdown:Z
    :goto_1
    sparse-switch p2, :sswitch_data_0

    move v1, v2

    .line 133
    goto :goto_0

    .end local v0           #isdown:Z
    :cond_2
    move v0, v2

    .line 115
    goto :goto_1

    .line 118
    .restart local v0       #isdown:Z
    :sswitch_0
    if-eqz v0, :cond_0

    .line 119
    iget-object v2, p0, Landroid/preference/VolumePreference;->mSeekBarVolumizer:Landroid/preference/VolumePreference$SeekBarVolumizer;

    const/4 v3, -0x1

    invoke-virtual {v2, v3}, Landroid/preference/VolumePreference$SeekBarVolumizer;->changeVolumeBy(I)V

    goto :goto_0

    .line 123
    :sswitch_1
    if-eqz v0, :cond_0

    .line 124
    iget-object v2, p0, Landroid/preference/VolumePreference;->mSeekBarVolumizer:Landroid/preference/VolumePreference$SeekBarVolumizer;

    invoke-virtual {v2, v1}, Landroid/preference/VolumePreference$SeekBarVolumizer;->changeVolumeBy(I)V

    goto :goto_0

    .line 128
    :sswitch_2
    if-eqz v0, :cond_0

    .line 129
    iget-object v2, p0, Landroid/preference/VolumePreference;->mSeekBarVolumizer:Landroid/preference/VolumePreference$SeekBarVolumizer;

    invoke-virtual {v2}, Landroid/preference/VolumePreference$SeekBarVolumizer;->muteVolume()V

    goto :goto_0

    .line 116
    :sswitch_data_0
    .sparse-switch
        0x18 -> :sswitch_1
        0x19 -> :sswitch_0
        0xa4 -> :sswitch_2
    .end sparse-switch
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 3
    .parameter "state"

    .prologue
    .line 218
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-class v2, Landroid/preference/VolumePreference$SavedState;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 220
    :cond_0
    invoke-super {p0, p1}, Landroid/preference/SeekBarDialogPreference;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 229
    :cond_1
    :goto_0
    return-void

    :cond_2
    move-object v0, p1

    .line 224
    check-cast v0, Landroid/preference/VolumePreference$SavedState;

    .line 225
    .local v0, myState:Landroid/preference/VolumePreference$SavedState;
    invoke-virtual {v0}, Landroid/preference/VolumePreference$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Landroid/preference/SeekBarDialogPreference;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 226
    iget-object v1, p0, Landroid/preference/VolumePreference;->mSeekBarVolumizer:Landroid/preference/VolumePreference$SeekBarVolumizer;

    if-eqz v1, :cond_1

    .line 227
    iget-object v1, p0, Landroid/preference/VolumePreference;->mSeekBarVolumizer:Landroid/preference/VolumePreference$SeekBarVolumizer;

    invoke-virtual {v0}, Landroid/preference/VolumePreference$SavedState;->getVolumeStore()Landroid/preference/VolumePreference$VolumeStore;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/VolumePreference$SeekBarVolumizer;->onRestoreInstanceState(Landroid/preference/VolumePreference$VolumeStore;)V

    goto :goto_0
.end method

.method protected onSampleStarting(Landroid/preference/VolumePreference$SeekBarVolumizer;)V
    .locals 1
    .parameter "volumizer"

    .prologue
    .line 196
    iget-object v0, p0, Landroid/preference/VolumePreference;->mSeekBarVolumizer:Landroid/preference/VolumePreference$SeekBarVolumizer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/preference/VolumePreference;->mSeekBarVolumizer:Landroid/preference/VolumePreference$SeekBarVolumizer;

    if-eq p1, v0, :cond_0

    .line 197
    iget-object v0, p0, Landroid/preference/VolumePreference;->mSeekBarVolumizer:Landroid/preference/VolumePreference$SeekBarVolumizer;

    invoke-virtual {v0}, Landroid/preference/VolumePreference$SeekBarVolumizer;->stopSample()V

    .line 199
    :cond_0
    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 4

    .prologue
    .line 203
    invoke-super {p0}, Landroid/preference/SeekBarDialogPreference;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    .line 204
    .local v1, superState:Landroid/os/Parcelable;
    invoke-virtual {p0}, Landroid/preference/VolumePreference;->isPersistent()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 213
    .end local v1           #superState:Landroid/os/Parcelable;
    :goto_0
    return-object v1

    .line 209
    .restart local v1       #superState:Landroid/os/Parcelable;
    :cond_0
    new-instance v0, Landroid/preference/VolumePreference$SavedState;

    invoke-direct {v0, v1}, Landroid/preference/VolumePreference$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 210
    .local v0, myState:Landroid/preference/VolumePreference$SavedState;
    iget-object v2, p0, Landroid/preference/VolumePreference;->mSeekBarVolumizer:Landroid/preference/VolumePreference$SeekBarVolumizer;

    if-eqz v2, :cond_1

    .line 211
    iget-object v2, p0, Landroid/preference/VolumePreference;->mSeekBarVolumizer:Landroid/preference/VolumePreference$SeekBarVolumizer;

    invoke-virtual {v0}, Landroid/preference/VolumePreference$SavedState;->getVolumeStore()Landroid/preference/VolumePreference$VolumeStore;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/VolumePreference$SeekBarVolumizer;->onSaveInstanceState(Landroid/preference/VolumePreference$VolumeStore;)V

    :cond_1
    move-object v1, v0

    .line 213
    goto :goto_0
.end method

.method public setDisplayType(I)V
    .locals 3
    .parameter "displayType"

    .prologue
    .line 85
    const-string v0, "VolumePreference"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setDisplayType : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    iput p1, p0, Landroid/preference/VolumePreference;->mDisplayType:I

    .line 87
    return-void
.end method

.method public setStreamType(I)V
    .locals 3
    .parameter "streamType"

    .prologue
    .line 80
    const-string v0, "VolumePreference"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setSteamType : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    iput p1, p0, Landroid/preference/VolumePreference;->mStreamType:I

    .line 82
    return-void
.end method
