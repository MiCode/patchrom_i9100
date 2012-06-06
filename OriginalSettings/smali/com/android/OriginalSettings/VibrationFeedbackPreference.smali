.class public Lcom/android/OriginalSettings/VibrationFeedbackPreference;
.super Landroid/preference/SeekBarDialogPreference;
.source "VibrationFeedbackPreference.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# static fields
.field private static final SEEKBAR_ID:[I


# instance fields
.field private currentLevel:I

.field private mHapticFeedbackSeekBar:Landroid/widget/SeekBar;

.field private mHapticFeedbackVibrationIntensity:I

.field private mIncomingCallSeekBar:Landroid/widget/SeekBar;

.field private mIncomingCallVibrationIntensity:I

.field private mIntensityValue:[I

.field private mNotificationSeekBar:Landroid/widget/SeekBar;

.field private mNotificationVibrationIntensity:I

.field private mOldHapticFeedbackVibrationIntensity:I

.field private mOldHapticFeedbackVibrationSlideLevel:I

.field private mOldIncomingCallVibrationSlideLevel:I

.field private mOldNotificationVibrationSlideLevel:I

.field mVibrator:Landroid/os/Vibrator;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 54
    const/4 v0, 0x3

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/OriginalSettings/VibrationFeedbackPreference;->SEEKBAR_ID:[I

    return-void

    nop

    :array_0
    .array-data 0x4
        0x4ft 0x1t 0x8t 0x7ft
        0x50t 0x1t 0x8t 0x7ft
        0x51t 0x1t 0x8t 0x7ft
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 69
    invoke-direct {p0, p1, p2}, Landroid/preference/SeekBarDialogPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 44
    const/4 v0, 0x6

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/android/OriginalSettings/VibrationFeedbackPreference;->mIntensityValue:[I

    .line 61
    invoke-virtual {p0}, Lcom/android/OriginalSettings/VibrationFeedbackPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "vibrator"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    iput-object v0, p0, Lcom/android/OriginalSettings/VibrationFeedbackPreference;->mVibrator:Landroid/os/Vibrator;

    .line 66
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/OriginalSettings/VibrationFeedbackPreference;->currentLevel:I

    .line 70
    const v0, 0x7f04006b

    invoke-virtual {p0, v0}, Lcom/android/OriginalSettings/VibrationFeedbackPreference;->setDialogLayoutResource(I)V

    .line 90
    return-void

    .line 44
    nop

    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0xe8t 0x3t 0x0t 0x0t
        0xact 0xdt 0x0t 0x0t
        0x70t 0x17t 0x0t 0x0t
        0x40t 0x1ft 0x0t 0x0t
        0xfct 0x21t 0x0t 0x0t
    .end array-data
.end method

.method private convertIntensityToLevel(I)I
    .locals 5
    .parameter "mIntensity"

    .prologue
    .line 165
    const/4 v0, 0x0

    .local v0, mLevel:I
    :goto_0
    iget-object v2, p0, Lcom/android/OriginalSettings/VibrationFeedbackPreference;->mIntensityValue:[I

    array-length v2, v2

    if-ge v0, v2, :cond_1

    .line 166
    iget-object v2, p0, Lcom/android/OriginalSettings/VibrationFeedbackPreference;->mIntensityValue:[I

    aget v2, v2, v0

    if-ne p1, v2, :cond_0

    .line 168
    const-string v2, "VibrationFeedbackPreference"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "convertIntensityToLevel : return level"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v0

    .line 178
    .end local v0           #mLevel:I
    .local v1, mLevel:I
    :goto_1
    return v1

    .line 165
    .end local v1           #mLevel:I
    .restart local v0       #mLevel:I
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 172
    :cond_1
    iget-object v2, p0, Lcom/android/OriginalSettings/VibrationFeedbackPreference;->mIntensityValue:[I

    array-length v2, v2

    if-ne v0, v2, :cond_2

    .line 174
    add-int/lit8 v0, v0, -0x1

    .line 175
    const-string v2, "VibrationFeedbackPreference"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Intensity : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    const-string v2, "VibrationFeedbackPreference"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "There is no matched item. return max level"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    move v1, v0

    .line 178
    .end local v0           #mLevel:I
    .restart local v1       #mLevel:I
    goto :goto_1
.end method

.method private convertLevelToIntensity(I)I
    .locals 4
    .parameter "mLevel"

    .prologue
    .line 182
    iget-object v0, p0, Lcom/android/OriginalSettings/VibrationFeedbackPreference;->mIntensityValue:[I

    array-length v0, v0

    if-ge p1, v0, :cond_0

    .line 184
    const-string v0, "VibrationFeedbackPreference"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "convertLevelToIntensity : mLevel["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "Intensity["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/OriginalSettings/VibrationFeedbackPreference;->mIntensityValue:[I

    aget v2, v2, p1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    iget-object v0, p0, Lcom/android/OriginalSettings/VibrationFeedbackPreference;->mIntensityValue:[I

    aget v0, v0, p1

    .line 188
    :goto_0
    return v0

    .line 187
    :cond_0
    const-string v0, "VibrationFeedbackPreference"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "convertLevelToIntensity : return max intensity "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/OriginalSettings/VibrationFeedbackPreference;->mIntensityValue:[I

    iget-object v3, p0, Lcom/android/OriginalSettings/VibrationFeedbackPreference;->mIntensityValue:[I

    array-length v3, v3

    add-int/lit8 v3, v3, -0x1

    aget v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    iget-object v0, p0, Lcom/android/OriginalSettings/VibrationFeedbackPreference;->mIntensityValue:[I

    iget-object v1, p0, Lcom/android/OriginalSettings/VibrationFeedbackPreference;->mIntensityValue:[I

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    aget v0, v0, v1

    goto :goto_0
.end method

.method private setHapticFeedbackVibrationIntensity(I)V
    .locals 3
    .parameter "mVibrationIntensityLevel"

    .prologue
    .line 265
    const-string v0, "VibrationFeedbackPreference"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setHapticFeedbackVibrationIntensity : level["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 266
    invoke-direct {p0, p1}, Lcom/android/OriginalSettings/VibrationFeedbackPreference;->convertLevelToIntensity(I)I

    move-result v0

    iput v0, p0, Lcom/android/OriginalSettings/VibrationFeedbackPreference;->mHapticFeedbackVibrationIntensity:I

    .line 268
    const-string v0, "VibrationFeedbackPreference"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setHapticFeedbackVibrationIntensity : mHapticFeedbackVibrationIntensity["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/OriginalSettings/VibrationFeedbackPreference;->mHapticFeedbackVibrationIntensity:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 269
    invoke-virtual {p0}, Lcom/android/OriginalSettings/VibrationFeedbackPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "VIB_FEEDBACK_MAGNITUDE"

    iget v2, p0, Lcom/android/OriginalSettings/VibrationFeedbackPreference;->mHapticFeedbackVibrationIntensity:I

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 270
    const-string v0, "VibrationFeedbackPreference"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setHapticFeedbackVibrationIntensity : Settings.System.VIB_FEEDBACK_MAGNITUDE["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/OriginalSettings/VibrationFeedbackPreference;->mHapticFeedbackVibrationIntensity:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 271
    return-void
.end method

.method private setIncomingCallVibrationIntensity(I)V
    .locals 3
    .parameter "mVibrationIntensityLevel"

    .prologue
    .line 253
    const-string v0, "VibrationFeedbackPreference"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setIncomingCallVibrationIntensity : level["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 254
    invoke-virtual {p0}, Lcom/android/OriginalSettings/VibrationFeedbackPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "VIB_RECVCALL_MAGNITUDE"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 255
    const-string v0, "VibrationFeedbackPreference"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setIncomingCallVibrationIntensity : Settings.System.VIB_RECVCALL_MAGNITUDE["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 256
    return-void
.end method

.method private setNotificationVibrationIntensity(I)V
    .locals 3
    .parameter "mVibrationIntensityLevel"

    .prologue
    .line 259
    const-string v0, "VibrationFeedbackPreference"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setNotificationVibrationIntensity : level["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 260
    invoke-virtual {p0}, Lcom/android/OriginalSettings/VibrationFeedbackPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "VIB_NOTIFICATION_MAGNITUDE"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 261
    const-string v0, "VibrationFeedbackPreference"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setNotificationVibrationIntensity : Settings.System.VIB_NOTIFICATION_MAGNITUDE["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 262
    return-void
.end method


# virtual methods
.method protected onBindDialogView(Landroid/view/View;)V
    .locals 6
    .parameter "view"

    .prologue
    const/4 v5, 0x4

    const/4 v4, 0x5

    const/4 v3, 0x1

    .line 94
    invoke-super {p0, p1}, Landroid/preference/SeekBarDialogPreference;->onBindDialogView(Landroid/view/View;)V

    .line 96
    sget-object v0, Lcom/android/OriginalSettings/VibrationFeedbackPreference;->SEEKBAR_ID:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    iput-object v0, p0, Lcom/android/OriginalSettings/VibrationFeedbackPreference;->mIncomingCallSeekBar:Landroid/widget/SeekBar;

    .line 97
    iget-object v0, p0, Lcom/android/OriginalSettings/VibrationFeedbackPreference;->mIncomingCallSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0, v3}, Landroid/widget/SeekBar;->setSoundEffectsEnabled(Z)V

    .line 98
    sget-object v0, Lcom/android/OriginalSettings/VibrationFeedbackPreference;->SEEKBAR_ID:[I

    aget v0, v0, v3

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    iput-object v0, p0, Lcom/android/OriginalSettings/VibrationFeedbackPreference;->mNotificationSeekBar:Landroid/widget/SeekBar;

    .line 99
    iget-object v0, p0, Lcom/android/OriginalSettings/VibrationFeedbackPreference;->mNotificationSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0, v3}, Landroid/widget/SeekBar;->setSoundEffectsEnabled(Z)V

    .line 100
    sget-object v0, Lcom/android/OriginalSettings/VibrationFeedbackPreference;->SEEKBAR_ID:[I

    const/4 v1, 0x2

    aget v0, v0, v1

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    iput-object v0, p0, Lcom/android/OriginalSettings/VibrationFeedbackPreference;->mHapticFeedbackSeekBar:Landroid/widget/SeekBar;

    .line 101
    iget-object v0, p0, Lcom/android/OriginalSettings/VibrationFeedbackPreference;->mHapticFeedbackSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0, v3}, Landroid/widget/SeekBar;->setSoundEffectsEnabled(Z)V

    .line 103
    iget-object v0, p0, Lcom/android/OriginalSettings/VibrationFeedbackPreference;->mIncomingCallSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0, v4}, Landroid/widget/SeekBar;->setMax(I)V

    .line 104
    const-string v0, "VibrationFeedbackPreference"

    const-string v1, "onBindDialogView : mIncomingCallSeekBar.setMax(MAXIMUM_VIBRATION_INTENSITY[5])"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    invoke-virtual {p0}, Lcom/android/OriginalSettings/VibrationFeedbackPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "VIB_RECVCALL_MAGNITUDE"

    invoke-static {v0, v1, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/OriginalSettings/VibrationFeedbackPreference;->mOldIncomingCallVibrationSlideLevel:I

    .line 106
    const-string v0, "VibrationFeedbackPreference"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onBindDialogView : Settings.System.VIB_RECVCALL_MAGNITUDE["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/OriginalSettings/VibrationFeedbackPreference;->mOldIncomingCallVibrationSlideLevel:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    const-string v0, "VibrationFeedbackPreference"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onBindDialogView : mOldSlideLevel["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/OriginalSettings/VibrationFeedbackPreference;->mOldIncomingCallVibrationSlideLevel:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    iget-object v0, p0, Lcom/android/OriginalSettings/VibrationFeedbackPreference;->mIncomingCallSeekBar:Landroid/widget/SeekBar;

    iget v1, p0, Lcom/android/OriginalSettings/VibrationFeedbackPreference;->mOldIncomingCallVibrationSlideLevel:I

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 109
    const-string v0, "VibrationFeedbackPreference"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onBindDialogView : mSeekBar.setProgress("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/OriginalSettings/VibrationFeedbackPreference;->mOldIncomingCallVibrationSlideLevel:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    iget-object v0, p0, Lcom/android/OriginalSettings/VibrationFeedbackPreference;->mIncomingCallSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0, p0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 112
    iget-object v0, p0, Lcom/android/OriginalSettings/VibrationFeedbackPreference;->mNotificationSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0, v4}, Landroid/widget/SeekBar;->setMax(I)V

    .line 113
    const-string v0, "VibrationFeedbackPreference"

    const-string v1, "onBindDialogView : mNotificationSeekBar.setMax(MAXIMUM_VIBRATION_INTENSITY[5])"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    invoke-virtual {p0}, Lcom/android/OriginalSettings/VibrationFeedbackPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "VIB_NOTIFICATION_MAGNITUDE"

    invoke-static {v0, v1, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/OriginalSettings/VibrationFeedbackPreference;->mOldNotificationVibrationSlideLevel:I

    .line 115
    const-string v0, "VibrationFeedbackPreference"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onBindDialogView : Settings.System.VIB_NOTIFICATION_MAGNITUDE["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/OriginalSettings/VibrationFeedbackPreference;->mOldNotificationVibrationSlideLevel:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    const-string v0, "VibrationFeedbackPreference"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onBindDialogView : mOldSlideLevel["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/OriginalSettings/VibrationFeedbackPreference;->mOldNotificationVibrationSlideLevel:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    iget-object v0, p0, Lcom/android/OriginalSettings/VibrationFeedbackPreference;->mNotificationSeekBar:Landroid/widget/SeekBar;

    iget v1, p0, Lcom/android/OriginalSettings/VibrationFeedbackPreference;->mOldNotificationVibrationSlideLevel:I

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 118
    const-string v0, "VibrationFeedbackPreference"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onBindDialogView : mNotificationSeekBar.setProgress("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/OriginalSettings/VibrationFeedbackPreference;->mOldNotificationVibrationSlideLevel:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    iget-object v0, p0, Lcom/android/OriginalSettings/VibrationFeedbackPreference;->mNotificationSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0, p0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 121
    iget-object v0, p0, Lcom/android/OriginalSettings/VibrationFeedbackPreference;->mHapticFeedbackSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0, v4}, Landroid/widget/SeekBar;->setMax(I)V

    .line 122
    const-string v0, "VibrationFeedbackPreference"

    const-string v1, "onBindDialogView : mHapticFeedbackSeekBar.setMax(MAXIMUM_VIBRATION_INTENSITY[5])"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    invoke-virtual {p0}, Lcom/android/OriginalSettings/VibrationFeedbackPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "VIB_FEEDBACK_MAGNITUDE"

    const/16 v2, 0x2710

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/OriginalSettings/VibrationFeedbackPreference;->mOldHapticFeedbackVibrationIntensity:I

    .line 124
    const-string v0, "VibrationFeedbackPreference"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onBindDialogView : Settings.System.VIB_FEEDBACK_MAGNITUDE["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/OriginalSettings/VibrationFeedbackPreference;->mOldHapticFeedbackVibrationIntensity:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    iget v0, p0, Lcom/android/OriginalSettings/VibrationFeedbackPreference;->mOldHapticFeedbackVibrationIntensity:I

    invoke-direct {p0, v0}, Lcom/android/OriginalSettings/VibrationFeedbackPreference;->convertIntensityToLevel(I)I

    move-result v0

    iput v0, p0, Lcom/android/OriginalSettings/VibrationFeedbackPreference;->mOldHapticFeedbackVibrationSlideLevel:I

    .line 126
    iget v0, p0, Lcom/android/OriginalSettings/VibrationFeedbackPreference;->mOldHapticFeedbackVibrationSlideLevel:I

    iput v0, p0, Lcom/android/OriginalSettings/VibrationFeedbackPreference;->currentLevel:I

    .line 127
    const-string v0, "VibrationFeedbackPreference"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onBindDialogView : mOldSlideLevel["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/OriginalSettings/VibrationFeedbackPreference;->mOldHapticFeedbackVibrationSlideLevel:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    iget-object v0, p0, Lcom/android/OriginalSettings/VibrationFeedbackPreference;->mHapticFeedbackSeekBar:Landroid/widget/SeekBar;

    iget v1, p0, Lcom/android/OriginalSettings/VibrationFeedbackPreference;->mOldHapticFeedbackVibrationSlideLevel:I

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 129
    const-string v0, "VibrationFeedbackPreference"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onBindDialogView : mHapticFeedbackSeekBar.setProgress("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/OriginalSettings/VibrationFeedbackPreference;->mOldHapticFeedbackVibrationSlideLevel:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    iget-object v0, p0, Lcom/android/OriginalSettings/VibrationFeedbackPreference;->mHapticFeedbackSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0, p0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 134
    invoke-virtual {p1, p0}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 135
    invoke-virtual {p1, v3}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    .line 136
    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    .line 137
    return-void
.end method

.method protected onDialogClosed(Z)V
    .locals 3
    .parameter "positiveResult"

    .prologue
    .line 225
    invoke-super {p0, p1}, Landroid/preference/SeekBarDialogPreference;->onDialogClosed(Z)V

    .line 226
    if-eqz p1, :cond_0

    .line 227
    const-string v0, "VibrationFeedbackPreference"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDialogClosed : positiveResult = true, Incoming call progress["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/OriginalSettings/VibrationFeedbackPreference;->mIncomingCallSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v2}, Landroid/widget/SeekBar;->getProgress()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 228
    iget-object v0, p0, Lcom/android/OriginalSettings/VibrationFeedbackPreference;->mIncomingCallSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0}, Landroid/widget/SeekBar;->getProgress()I

    move-result v0

    iput v0, p0, Lcom/android/OriginalSettings/VibrationFeedbackPreference;->mIncomingCallVibrationIntensity:I

    .line 229
    const-string v0, "VibrationFeedbackPreference"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDialogClosed : mIncomingCallVibrationIntensity["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/OriginalSettings/VibrationFeedbackPreference;->mIncomingCallVibrationIntensity:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 230
    invoke-virtual {p0}, Lcom/android/OriginalSettings/VibrationFeedbackPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "VIB_RECVCALL_MAGNITUDE"

    iget v2, p0, Lcom/android/OriginalSettings/VibrationFeedbackPreference;->mIncomingCallVibrationIntensity:I

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 231
    const-string v0, "VibrationFeedbackPreference"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDialogClosed : Settings.System.VIB_RECVCALL_MAGNITUDE["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/OriginalSettings/VibrationFeedbackPreference;->mIncomingCallVibrationIntensity:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 233
    const-string v0, "VibrationFeedbackPreference"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDialogClosed : positiveResult = true, Notification progress["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/OriginalSettings/VibrationFeedbackPreference;->mNotificationSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v2}, Landroid/widget/SeekBar;->getProgress()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 234
    iget-object v0, p0, Lcom/android/OriginalSettings/VibrationFeedbackPreference;->mNotificationSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0}, Landroid/widget/SeekBar;->getProgress()I

    move-result v0

    iput v0, p0, Lcom/android/OriginalSettings/VibrationFeedbackPreference;->mNotificationVibrationIntensity:I

    .line 235
    const-string v0, "VibrationFeedbackPreference"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDialogClosed : mNotificationVibrationIntensity["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/OriginalSettings/VibrationFeedbackPreference;->mNotificationVibrationIntensity:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 236
    invoke-virtual {p0}, Lcom/android/OriginalSettings/VibrationFeedbackPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "VIB_NOTIFICATION_MAGNITUDE"

    iget v2, p0, Lcom/android/OriginalSettings/VibrationFeedbackPreference;->mNotificationVibrationIntensity:I

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 237
    const-string v0, "VibrationFeedbackPreference"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDialogClosed : Settings.System.VIB_NOTIFICATION_MAGNITUDE["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/OriginalSettings/VibrationFeedbackPreference;->mNotificationVibrationIntensity:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 239
    const-string v0, "VibrationFeedbackPreference"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDialogClosed : positiveResult = true, Haptic feedback progress["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/OriginalSettings/VibrationFeedbackPreference;->mHapticFeedbackSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v2}, Landroid/widget/SeekBar;->getProgress()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 240
    iget-object v0, p0, Lcom/android/OriginalSettings/VibrationFeedbackPreference;->mHapticFeedbackSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0}, Landroid/widget/SeekBar;->getProgress()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/OriginalSettings/VibrationFeedbackPreference;->convertLevelToIntensity(I)I

    move-result v0

    iput v0, p0, Lcom/android/OriginalSettings/VibrationFeedbackPreference;->mHapticFeedbackVibrationIntensity:I

    .line 241
    const-string v0, "VibrationFeedbackPreference"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDialogClosed : mHapticFeedbackVibrationIntensity["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/OriginalSettings/VibrationFeedbackPreference;->mHapticFeedbackVibrationIntensity:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 242
    invoke-virtual {p0}, Lcom/android/OriginalSettings/VibrationFeedbackPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "VIB_FEEDBACK_MAGNITUDE"

    iget v2, p0, Lcom/android/OriginalSettings/VibrationFeedbackPreference;->mHapticFeedbackVibrationIntensity:I

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 243
    const-string v0, "VibrationFeedbackPreference"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDialogClosed : Settings.System.VIB_FEEDBACK_MAGNITUDE["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/OriginalSettings/VibrationFeedbackPreference;->mHapticFeedbackVibrationIntensity:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 250
    :goto_0
    return-void

    .line 246
    :cond_0
    iget v0, p0, Lcom/android/OriginalSettings/VibrationFeedbackPreference;->mOldIncomingCallVibrationSlideLevel:I

    invoke-direct {p0, v0}, Lcom/android/OriginalSettings/VibrationFeedbackPreference;->setIncomingCallVibrationIntensity(I)V

    .line 247
    iget v0, p0, Lcom/android/OriginalSettings/VibrationFeedbackPreference;->mOldNotificationVibrationSlideLevel:I

    invoke-direct {p0, v0}, Lcom/android/OriginalSettings/VibrationFeedbackPreference;->setNotificationVibrationIntensity(I)V

    .line 248
    iget v0, p0, Lcom/android/OriginalSettings/VibrationFeedbackPreference;->mOldHapticFeedbackVibrationSlideLevel:I

    invoke-direct {p0, v0}, Lcom/android/OriginalSettings/VibrationFeedbackPreference;->setHapticFeedbackVibrationIntensity(I)V

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

    .line 141
    const-string v3, "VibrationFeedbackPreference"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onKey() Keycode : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v3

    if-nez v3, :cond_1

    move v0, v1

    .line 144
    .local v0, isdown:Z
    :goto_0
    const-string v3, "VibrationFeedbackPreference"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " onKey() Keycode: isdown : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    packed-switch p2, :pswitch_data_0

    move v1, v2

    .line 159
    :cond_0
    :goto_1
    return v1

    .end local v0           #isdown:Z
    :cond_1
    move v0, v2

    .line 143
    goto :goto_0

    .line 147
    .restart local v0       #isdown:Z
    :pswitch_0
    if-eqz v0, :cond_0

    iget v2, p0, Lcom/android/OriginalSettings/VibrationFeedbackPreference;->currentLevel:I

    if-lez v2, :cond_0

    .line 148
    iget v2, p0, Lcom/android/OriginalSettings/VibrationFeedbackPreference;->currentLevel:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/android/OriginalSettings/VibrationFeedbackPreference;->currentLevel:I

    .line 149
    iget-object v2, p0, Lcom/android/OriginalSettings/VibrationFeedbackPreference;->mHapticFeedbackSeekBar:Landroid/widget/SeekBar;

    iget v3, p0, Lcom/android/OriginalSettings/VibrationFeedbackPreference;->currentLevel:I

    invoke-virtual {v2, v3}, Landroid/widget/SeekBar;->setProgress(I)V

    goto :goto_1

    .line 153
    :pswitch_1
    if-eqz v0, :cond_0

    iget v2, p0, Lcom/android/OriginalSettings/VibrationFeedbackPreference;->currentLevel:I

    const/4 v3, 0x5

    if-ge v2, v3, :cond_0

    .line 154
    iget v2, p0, Lcom/android/OriginalSettings/VibrationFeedbackPreference;->currentLevel:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/android/OriginalSettings/VibrationFeedbackPreference;->currentLevel:I

    .line 155
    iget-object v2, p0, Lcom/android/OriginalSettings/VibrationFeedbackPreference;->mHapticFeedbackSeekBar:Landroid/widget/SeekBar;

    iget v3, p0, Lcom/android/OriginalSettings/VibrationFeedbackPreference;->currentLevel:I

    invoke-virtual {v2, v3}, Landroid/widget/SeekBar;->setProgress(I)V

    goto :goto_1

    .line 145
    nop

    :pswitch_data_0
    .packed-switch 0x18
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 3
    .parameter "seekBar"
    .parameter "progress"
    .parameter "fromTouch"

    .prologue
    .line 194
    iget-object v0, p0, Lcom/android/OriginalSettings/VibrationFeedbackPreference;->mIncomingCallSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 196
    const-string v0, "VibrationFeedbackPreference"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onProgressChanged : setIncomingCallVibrationIntensity(progress["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "])"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    invoke-direct {p0, p2}, Lcom/android/OriginalSettings/VibrationFeedbackPreference;->setIncomingCallVibrationIntensity(I)V

    .line 199
    iget-object v0, p0, Lcom/android/OriginalSettings/VibrationFeedbackPreference;->mVibrator:Landroid/os/Vibrator;

    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Landroid/os/Vibrator;->vibrateCall(I)V

    .line 213
    :goto_0
    return-void

    .line 200
    :cond_0
    iget-object v0, p0, Lcom/android/OriginalSettings/VibrationFeedbackPreference;->mNotificationSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 202
    const-string v0, "VibrationFeedbackPreference"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onProgressChanged : setNotificationVibrationIntensity(progress["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "])"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    invoke-direct {p0, p2}, Lcom/android/OriginalSettings/VibrationFeedbackPreference;->setNotificationVibrationIntensity(I)V

    .line 205
    iget-object v0, p0, Lcom/android/OriginalSettings/VibrationFeedbackPreference;->mVibrator:Landroid/os/Vibrator;

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/os/Vibrator;->vibrateNotification(I)V

    goto :goto_0

    .line 207
    :cond_1
    iput p2, p0, Lcom/android/OriginalSettings/VibrationFeedbackPreference;->currentLevel:I

    .line 208
    const-string v0, "VibrationFeedbackPreference"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onProgressChanged : setHapticFeedbackVibrationIntensity(progress["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "])"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 209
    invoke-direct {p0, p2}, Lcom/android/OriginalSettings/VibrationFeedbackPreference;->setHapticFeedbackVibrationIntensity(I)V

    .line 211
    iget-object v0, p0, Lcom/android/OriginalSettings/VibrationFeedbackPreference;->mVibrator:Landroid/os/Vibrator;

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Landroid/os/Vibrator;->vibrateImmVibe(I)V

    goto :goto_0
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0
    .parameter "seekBar"

    .prologue
    .line 217
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0
    .parameter "seekBar"

    .prologue
    .line 221
    return-void
.end method
