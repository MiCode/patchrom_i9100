.class public Lcom/android/OriginalSettings/motion/PanSensitivityPreference;
.super Landroid/preference/SeekBarDialogPreference;
.source "PanSensitivityPreference.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# static fields
.field private static mOldSensitivity:I


# instance fields
.field private mAfterTest:Z

.field private mContext:Landroid/content/Context;

.field private mSeekBar:Landroid/widget/SeekBar;

.field private mSensitivityText:Landroid/widget/LinearLayout;

.field private mTest:Landroid/widget/Button;

.field private mWhichButtonClicked:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 31
    const/4 v0, 0x5

    sput v0, Lcom/android/OriginalSettings/motion/PanSensitivityPreference;->mOldSensitivity:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 38
    invoke-direct {p0, p1, p2}, Landroid/preference/SeekBarDialogPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 34
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/OriginalSettings/motion/PanSensitivityPreference;->mAfterTest:Z

    .line 35
    const/4 v0, -0x2

    iput v0, p0, Lcom/android/OriginalSettings/motion/PanSensitivityPreference;->mWhichButtonClicked:I

    .line 39
    iput-object p1, p0, Lcom/android/OriginalSettings/motion/PanSensitivityPreference;->mContext:Landroid/content/Context;

    .line 40
    const v0, 0x7f040072

    invoke-virtual {p0, v0}, Lcom/android/OriginalSettings/motion/PanSensitivityPreference;->setDialogLayoutResource(I)V

    .line 41
    return-void
.end method

.method static synthetic access$002(Lcom/android/OriginalSettings/motion/PanSensitivityPreference;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 24
    iput p1, p0, Lcom/android/OriginalSettings/motion/PanSensitivityPreference;->mWhichButtonClicked:I

    return p1
.end method

.method static synthetic access$100(Lcom/android/OriginalSettings/motion/PanSensitivityPreference;)Landroid/widget/SeekBar;
    .locals 1
    .parameter "x0"

    .prologue
    .line 24
    iget-object v0, p0, Lcom/android/OriginalSettings/motion/PanSensitivityPreference;->mSeekBar:Landroid/widget/SeekBar;

    return-object v0
.end method


# virtual methods
.method protected onBindDialogView(Landroid/view/View;)V
    .locals 2
    .parameter "view"

    .prologue
    .line 56
    invoke-super {p0, p1}, Landroid/preference/SeekBarDialogPreference;->onBindDialogView(Landroid/view/View;)V

    .line 58
    invoke-static {p1}, Lcom/android/OriginalSettings/motion/PanSensitivityPreference;->getSeekBar(Landroid/view/View;)Landroid/widget/SeekBar;

    move-result-object v0

    iput-object v0, p0, Lcom/android/OriginalSettings/motion/PanSensitivityPreference;->mSeekBar:Landroid/widget/SeekBar;

    .line 59
    iget-object v0, p0, Lcom/android/OriginalSettings/motion/PanSensitivityPreference;->mSeekBar:Landroid/widget/SeekBar;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setMax(I)V

    .line 61
    const v0, 0x7f080156

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/OriginalSettings/motion/PanSensitivityPreference;->mSensitivityText:Landroid/widget/LinearLayout;

    .line 62
    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 102
    invoke-super {p0, p1, p2}, Landroid/preference/SeekBarDialogPreference;->onClick(Landroid/content/DialogInterface;I)V

    .line 103
    const-string v0, "PanSensitivityPreference"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mWhichButtonClicked : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    iput p2, p0, Lcom/android/OriginalSettings/motion/PanSensitivityPreference;->mWhichButtonClicked:I

    .line 105
    return-void
.end method

.method protected onDialogClosed(Z)V
    .locals 3
    .parameter "positiveResult"

    .prologue
    .line 87
    invoke-super {p0, p1}, Landroid/preference/SeekBarDialogPreference;->onDialogClosed(Z)V

    .line 89
    if-eqz p1, :cond_1

    .line 90
    invoke-virtual {p0}, Lcom/android/OriginalSettings/motion/PanSensitivityPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "motion_panning_sensitivity"

    iget-object v2, p0, Lcom/android/OriginalSettings/motion/PanSensitivityPreference;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v2}, Landroid/widget/SeekBar;->getProgress()I

    move-result v2

    add-int/lit8 v2, v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 98
    :cond_0
    :goto_0
    return-void

    .line 92
    :cond_1
    iget v0, p0, Lcom/android/OriginalSettings/motion/PanSensitivityPreference;->mWhichButtonClicked:I

    const/4 v1, -0x3

    if-eq v0, v1, :cond_0

    .line 93
    const-string v0, "PanSensitivityPreference"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onClick - mOldSensitivity : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/android/OriginalSettings/motion/PanSensitivityPreference;->mOldSensitivity:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    invoke-virtual {p0}, Lcom/android/OriginalSettings/motion/PanSensitivityPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "motion_panning_sensitivity"

    sget v2, Lcom/android/OriginalSettings/motion/PanSensitivityPreference;->mOldSensitivity:I

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0
.end method

.method protected onPrepareDialogBuilder(Landroid/app/AlertDialog$Builder;)V
    .locals 2
    .parameter "builder"

    .prologue
    .line 45
    const v0, 0x7f0b07e6

    new-instance v1, Lcom/android/OriginalSettings/motion/PanSensitivityPreference$1;

    invoke-direct {v1, p0}, Lcom/android/OriginalSettings/motion/PanSensitivityPreference$1;-><init>(Lcom/android/OriginalSettings/motion/PanSensitivityPreference;)V

    invoke-virtual {p1, v0, v1}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 52
    return-void
.end method

.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 0
    .parameter "arg0"
    .parameter "arg1"
    .parameter "arg2"

    .prologue
    .line 116
    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0
    .parameter "arg0"

    .prologue
    .line 122
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 3
    .parameter "arg0"

    .prologue
    .line 126
    const-string v0, "PanSensitivityPreference"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onStopTrackingTouch"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/OriginalSettings/motion/PanSensitivityPreference;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v2}, Landroid/widget/SeekBar;->getProgress()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    invoke-virtual {p0}, Lcom/android/OriginalSettings/motion/PanSensitivityPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "motion_panning_sensitivity"

    iget-object v2, p0, Lcom/android/OriginalSettings/motion/PanSensitivityPreference;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v2}, Landroid/widget/SeekBar;->getProgress()I

    move-result v2

    add-int/lit8 v2, v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 129
    return-void
.end method

.method protected showDialog(Landroid/os/Bundle;)V
    .locals 5
    .parameter "state"

    .prologue
    const/4 v4, 0x5

    .line 66
    invoke-super {p0, p1}, Landroid/preference/SeekBarDialogPreference;->showDialog(Landroid/os/Bundle;)V

    .line 67
    const/4 v0, 0x0

    .line 68
    .local v0, currentUseMotion:I
    const/4 v1, -0x2

    iput v1, p0, Lcom/android/OriginalSettings/motion/PanSensitivityPreference;->mWhichButtonClicked:I

    .line 69
    iget-boolean v1, p0, Lcom/android/OriginalSettings/motion/PanSensitivityPreference;->mAfterTest:Z

    if-nez v1, :cond_0

    .line 70
    const-string v1, "PanSensitivityPreference"

    const-string v2, "showDialog :1 "

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    invoke-virtual {p0}, Lcom/android/OriginalSettings/motion/PanSensitivityPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "motion_panning_sensitivity"

    invoke-static {v1, v2, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    sput v1, Lcom/android/OriginalSettings/motion/PanSensitivityPreference;->mOldSensitivity:I

    .line 73
    iget-object v1, p0, Lcom/android/OriginalSettings/motion/PanSensitivityPreference;->mSeekBar:Landroid/widget/SeekBar;

    sget v2, Lcom/android/OriginalSettings/motion/PanSensitivityPreference;->mOldSensitivity:I

    add-int/lit8 v2, v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 81
    :goto_0
    invoke-virtual {p0}, Lcom/android/OriginalSettings/motion/PanSensitivityPreference;->getDialog()Landroid/app/Dialog;

    move-result-object v1

    check-cast v1, Landroid/app/AlertDialog;

    const/4 v2, -0x3

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v1

    iput-object v1, p0, Lcom/android/OriginalSettings/motion/PanSensitivityPreference;->mTest:Landroid/widget/Button;

    .line 82
    iget-object v1, p0, Lcom/android/OriginalSettings/motion/PanSensitivityPreference;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v1, p0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 83
    return-void

    .line 75
    :cond_0
    const-string v1, "PanSensitivityPreference"

    const-string v2, "showDialog :2 "

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/OriginalSettings/motion/PanSensitivityPreference;->mAfterTest:Z

    .line 77
    iget-object v1, p0, Lcom/android/OriginalSettings/motion/PanSensitivityPreference;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {p0}, Lcom/android/OriginalSettings/motion/PanSensitivityPreference;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "motion_panning_sensitivity"

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    add-int/lit8 v2, v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/SeekBar;->setProgress(I)V

    goto :goto_0
.end method

.method public showTutorialDialog()V
    .locals 1

    .prologue
    .line 108
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/OriginalSettings/motion/PanSensitivityPreference;->mAfterTest:Z

    .line 109
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/OriginalSettings/motion/PanSensitivityPreference;->showDialog(Landroid/os/Bundle;)V

    .line 110
    return-void
.end method
