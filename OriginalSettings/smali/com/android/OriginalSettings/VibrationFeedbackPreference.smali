.class public Lcom/android/settings/VibrationFeedbackPreference;
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

.field private mNotificationSeekBar:Landroid/widget/SeekBar;

.field private mNotificationVibrationIntensity:I

.field private mOldHapticFeedbackVibrationSlideLevel:I

.field private mOldIncomingCallVibrationSlideLevel:I

.field private mOldNotificationVibrationSlideLevel:I

.field mVibrator:Landroid/os/SystemVibrator;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 56
    const/4 v0, 0x3

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/settings/VibrationFeedbackPreference;->SEEKBAR_ID:[I

    return-void

    nop

    :array_0
    .array-data 0x4
        0x1bt 0x2t 0xbt 0x7ft
        0x1ct 0x2t 0xbt 0x7ft
        0x1et 0x2t 0xbt 0x7ft
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 70
    invoke-direct {p0, p1, p2}, Landroid/preference/SeekBarDialogPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 62
    new-instance v0, Landroid/os/SystemVibrator;

    invoke-direct {v0}, Landroid/os/SystemVibrator;-><init>()V

    iput-object v0, p0, Lcom/android/settings/VibrationFeedbackPreference;->mVibrator:Landroid/os/SystemVibrator;

    .line 67
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings/VibrationFeedbackPreference;->currentLevel:I

    .line 71
    const v0, 0x7f0400b8

    invoke-virtual {p0, v0}, Lcom/android/settings/VibrationFeedbackPreference;->setDialogLayoutResource(I)V

    .line 72
    return-void
.end method

.method private StringToLongArray(Ljava/lang/String;)[J
    .locals 7
    .parameter "string"

    .prologue
    const/4 v4, 0x0

    .line 224
    if-nez p1, :cond_1

    move-object v2, v4

    .line 245
    :cond_0
    :goto_0
    return-object v2

    .line 227
    :cond_1
    const-string v5, ", "

    invoke-virtual {p1, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 230
    .local v3, temp:[Ljava/lang/String;
    array-length v5, v3

    if-gtz v5, :cond_2

    move-object v2, v4

    .line 232
    goto :goto_0

    .line 235
    :cond_2
    array-length v5, v3

    new-array v2, v5, [J

    .line 237
    .local v2, ret:[J
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    :try_start_0
    array-length v5, v3

    if-ge v1, v5, :cond_0

    .line 238
    aget-object v5, v3, v1

    invoke-static {v5}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    aput-wide v5, v2, v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 237
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 241
    :catch_0
    move-exception v0

    .local v0, e:Ljava/lang/Exception;
    move-object v2, v4

    .line 243
    goto :goto_0
.end method

.method private setHapticFeedbackVibrationIntensity(I)V
    .locals 3
    .parameter "vibrationIntensityLevel"

    .prologue
    .line 219
    invoke-virtual {p0}, Lcom/android/settings/VibrationFeedbackPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "VIB_FEEDBACK_MAGNITUDE"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 220
    const-string v0, "VibrationFeedbackPreference"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setHapticFeedbackVibrationIntensity : Settings.System.VIB_FEEDBACK_MAGNITUDE["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 221
    return-void
.end method

.method private setIncomingCallVibrationIntensity(I)V
    .locals 3
    .parameter "vibrationIntensityLevel"

    .prologue
    .line 209
    invoke-virtual {p0}, Lcom/android/settings/VibrationFeedbackPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "VIB_RECVCALL_MAGNITUDE"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 210
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

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    return-void
.end method

.method private setNotificationVibrationIntensity(I)V
    .locals 3
    .parameter "vibrationIntensityLevel"

    .prologue
    .line 214
    invoke-virtual {p0}, Lcom/android/settings/VibrationFeedbackPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "VIB_NOTIFICATION_MAGNITUDE"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 215
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

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    return-void
.end method


# virtual methods
.method protected onBindDialogView(Landroid/view/View;)V
    .locals 7
    .parameter "view"

    .prologue
    const/16 v6, 0x8

    const/4 v4, 0x5

    const/4 v5, 0x1

    .line 76
    invoke-super {p0, p1}, Landroid/preference/SeekBarDialogPreference;->onBindDialogView(Landroid/view/View;)V

    .line 78
    sget-object v2, Lcom/android/settings/VibrationFeedbackPreference;->SEEKBAR_ID:[I

    const/4 v3, 0x0

    aget v2, v2, v3

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/SeekBar;

    iput-object v2, p0, Lcom/android/settings/VibrationFeedbackPreference;->mIncomingCallSeekBar:Landroid/widget/SeekBar;

    .line 79
    iget-object v2, p0, Lcom/android/settings/VibrationFeedbackPreference;->mIncomingCallSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v2, v5}, Landroid/widget/SeekBar;->setSoundEffectsEnabled(Z)V

    .line 81
    invoke-virtual {p0}, Lcom/android/settings/VibrationFeedbackPreference;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/android/settings/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/VibrationFeedbackPreference;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/android/settings/Utils;->isVoiceCapable(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 82
    :cond_0
    const v2, 0x7f0b021a

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 83
    .local v1, incomingCallText:Landroid/widget/TextView;
    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 84
    iget-object v2, p0, Lcom/android/settings/VibrationFeedbackPreference;->mIncomingCallSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v2, v6}, Landroid/widget/SeekBar;->setVisibility(I)V

    .line 87
    .end local v1           #incomingCallText:Landroid/widget/TextView;
    :cond_1
    sget-object v2, Lcom/android/settings/VibrationFeedbackPreference;->SEEKBAR_ID:[I

    aget v2, v2, v5

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/SeekBar;

    iput-object v2, p0, Lcom/android/settings/VibrationFeedbackPreference;->mNotificationSeekBar:Landroid/widget/SeekBar;

    .line 88
    iget-object v2, p0, Lcom/android/settings/VibrationFeedbackPreference;->mNotificationSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v2, v5}, Landroid/widget/SeekBar;->setSoundEffectsEnabled(Z)V

    .line 89
    sget-object v2, Lcom/android/settings/VibrationFeedbackPreference;->SEEKBAR_ID:[I

    const/4 v3, 0x2

    aget v2, v2, v3

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/SeekBar;

    iput-object v2, p0, Lcom/android/settings/VibrationFeedbackPreference;->mHapticFeedbackSeekBar:Landroid/widget/SeekBar;

    .line 90
    iget-object v2, p0, Lcom/android/settings/VibrationFeedbackPreference;->mHapticFeedbackSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v2, v5}, Landroid/widget/SeekBar;->setSoundEffectsEnabled(Z)V

    .line 92
    iget-object v2, p0, Lcom/android/settings/VibrationFeedbackPreference;->mIncomingCallSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v2, v4}, Landroid/widget/SeekBar;->setMax(I)V

    .line 94
    invoke-virtual {p0}, Lcom/android/settings/VibrationFeedbackPreference;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "VIB_RECVCALL_MAGNITUDE"

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/android/settings/VibrationFeedbackPreference;->mOldIncomingCallVibrationSlideLevel:I

    .line 95
    iget-object v2, p0, Lcom/android/settings/VibrationFeedbackPreference;->mIncomingCallSeekBar:Landroid/widget/SeekBar;

    iget v3, p0, Lcom/android/settings/VibrationFeedbackPreference;->mOldIncomingCallVibrationSlideLevel:I

    invoke-virtual {v2, v3}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 96
    iget-object v2, p0, Lcom/android/settings/VibrationFeedbackPreference;->mIncomingCallSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v2, p0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 98
    iget-object v2, p0, Lcom/android/settings/VibrationFeedbackPreference;->mNotificationSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v2, v4}, Landroid/widget/SeekBar;->setMax(I)V

    .line 99
    invoke-virtual {p0}, Lcom/android/settings/VibrationFeedbackPreference;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "VIB_NOTIFICATION_MAGNITUDE"

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/android/settings/VibrationFeedbackPreference;->mOldNotificationVibrationSlideLevel:I

    .line 100
    iget-object v2, p0, Lcom/android/settings/VibrationFeedbackPreference;->mNotificationSeekBar:Landroid/widget/SeekBar;

    iget v3, p0, Lcom/android/settings/VibrationFeedbackPreference;->mOldNotificationVibrationSlideLevel:I

    invoke-virtual {v2, v3}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 101
    iget-object v2, p0, Lcom/android/settings/VibrationFeedbackPreference;->mNotificationSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v2, p0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 103
    iget-object v2, p0, Lcom/android/settings/VibrationFeedbackPreference;->mHapticFeedbackSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v2, v4}, Landroid/widget/SeekBar;->setMax(I)V

    .line 104
    invoke-virtual {p0}, Lcom/android/settings/VibrationFeedbackPreference;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "VIB_FEEDBACK_MAGNITUDE"

    const/4 v4, 0x3

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/android/settings/VibrationFeedbackPreference;->mOldHapticFeedbackVibrationSlideLevel:I

    .line 105
    iget v2, p0, Lcom/android/settings/VibrationFeedbackPreference;->mOldHapticFeedbackVibrationSlideLevel:I

    iput v2, p0, Lcom/android/settings/VibrationFeedbackPreference;->currentLevel:I

    .line 106
    iget-object v2, p0, Lcom/android/settings/VibrationFeedbackPreference;->mHapticFeedbackSeekBar:Landroid/widget/SeekBar;

    iget v3, p0, Lcom/android/settings/VibrationFeedbackPreference;->mOldHapticFeedbackVibrationSlideLevel:I

    invoke-virtual {v2, v3}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 107
    iget-object v2, p0, Lcom/android/settings/VibrationFeedbackPreference;->mHapticFeedbackSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v2, p0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 111
    invoke-virtual {p1, p0}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 112
    invoke-virtual {p1, v5}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    .line 113
    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    .line 115
    const-string v2, "DCM"

    const-string v3, "ro.csc.sales_code"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 116
    const v2, 0x7f0b021d

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 117
    .local v0, hapticFeedbackText:Landroid/widget/TextView;
    invoke-virtual {p0}, Lcom/android/settings/VibrationFeedbackPreference;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f09041d

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 119
    .end local v0           #hapticFeedbackText:Landroid/widget/TextView;
    :cond_2
    return-void
.end method

.method protected onDialogClosed(Z)V
    .locals 3
    .parameter "positiveResult"

    .prologue
    .line 185
    invoke-super {p0, p1}, Landroid/preference/SeekBarDialogPreference;->onDialogClosed(Z)V

    .line 186
    if-eqz p1, :cond_0

    .line 187
    iget-object v0, p0, Lcom/android/settings/VibrationFeedbackPreference;->mIncomingCallSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0}, Landroid/widget/SeekBar;->getProgress()I

    move-result v0

    iput v0, p0, Lcom/android/settings/VibrationFeedbackPreference;->mIncomingCallVibrationIntensity:I

    .line 188
    invoke-virtual {p0}, Lcom/android/settings/VibrationFeedbackPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "VIB_RECVCALL_MAGNITUDE"

    iget v2, p0, Lcom/android/settings/VibrationFeedbackPreference;->mIncomingCallVibrationIntensity:I

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 189
    const-string v0, "VibrationFeedbackPreference"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDialogClosed : Settings.System.VIB_RECVCALL_MAGNITUDE["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/settings/VibrationFeedbackPreference;->mIncomingCallVibrationIntensity:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    iget-object v0, p0, Lcom/android/settings/VibrationFeedbackPreference;->mNotificationSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0}, Landroid/widget/SeekBar;->getProgress()I

    move-result v0

    iput v0, p0, Lcom/android/settings/VibrationFeedbackPreference;->mNotificationVibrationIntensity:I

    .line 193
    invoke-virtual {p0}, Lcom/android/settings/VibrationFeedbackPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "VIB_NOTIFICATION_MAGNITUDE"

    iget v2, p0, Lcom/android/settings/VibrationFeedbackPreference;->mNotificationVibrationIntensity:I

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 194
    const-string v0, "VibrationFeedbackPreference"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDialogClosed : Settings.System.VIB_NOTIFICATION_MAGNITUDE["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/settings/VibrationFeedbackPreference;->mNotificationVibrationIntensity:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    iget-object v0, p0, Lcom/android/settings/VibrationFeedbackPreference;->mHapticFeedbackSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0}, Landroid/widget/SeekBar;->getProgress()I

    move-result v0

    iput v0, p0, Lcom/android/settings/VibrationFeedbackPreference;->mHapticFeedbackVibrationIntensity:I

    .line 198
    invoke-virtual {p0}, Lcom/android/settings/VibrationFeedbackPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "VIB_FEEDBACK_MAGNITUDE"

    iget v2, p0, Lcom/android/settings/VibrationFeedbackPreference;->mHapticFeedbackVibrationIntensity:I

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 199
    const-string v0, "VibrationFeedbackPreference"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDialogClosed : Settings.System.VIB_FEEDBACK_MAGNITUDE["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/settings/VibrationFeedbackPreference;->mHapticFeedbackVibrationIntensity:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    :goto_0
    return-void

    .line 202
    :cond_0
    iget v0, p0, Lcom/android/settings/VibrationFeedbackPreference;->mOldIncomingCallVibrationSlideLevel:I

    invoke-direct {p0, v0}, Lcom/android/settings/VibrationFeedbackPreference;->setIncomingCallVibrationIntensity(I)V

    .line 203
    iget v0, p0, Lcom/android/settings/VibrationFeedbackPreference;->mOldNotificationVibrationSlideLevel:I

    invoke-direct {p0, v0}, Lcom/android/settings/VibrationFeedbackPreference;->setNotificationVibrationIntensity(I)V

    .line 204
    iget v0, p0, Lcom/android/settings/VibrationFeedbackPreference;->mOldHapticFeedbackVibrationSlideLevel:I

    invoke-direct {p0, v0}, Lcom/android/settings/VibrationFeedbackPreference;->setHapticFeedbackVibrationIntensity(I)V

    goto :goto_0
.end method

.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 4
    .parameter "v"
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 124
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v3

    if-nez v3, :cond_1

    move v0, v1

    .line 125
    .local v0, isdown:Z
    :goto_0
    packed-switch p2, :pswitch_data_0

    move v1, v2

    .line 139
    :cond_0
    :goto_1
    return v1

    .end local v0           #isdown:Z
    :cond_1
    move v0, v2

    .line 124
    goto :goto_0

    .line 127
    .restart local v0       #isdown:Z
    :pswitch_0
    if-eqz v0, :cond_0

    iget v2, p0, Lcom/android/settings/VibrationFeedbackPreference;->currentLevel:I

    if-lez v2, :cond_0

    .line 128
    iget v2, p0, Lcom/android/settings/VibrationFeedbackPreference;->currentLevel:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/android/settings/VibrationFeedbackPreference;->currentLevel:I

    .line 129
    iget-object v2, p0, Lcom/android/settings/VibrationFeedbackPreference;->mHapticFeedbackSeekBar:Landroid/widget/SeekBar;

    iget v3, p0, Lcom/android/settings/VibrationFeedbackPreference;->currentLevel:I

    invoke-virtual {v2, v3}, Landroid/widget/SeekBar;->setProgress(I)V

    goto :goto_1

    .line 133
    :pswitch_1
    if-eqz v0, :cond_0

    iget v2, p0, Lcom/android/settings/VibrationFeedbackPreference;->currentLevel:I

    const/4 v3, 0x5

    if-ge v2, v3, :cond_0

    .line 134
    iget v2, p0, Lcom/android/settings/VibrationFeedbackPreference;->currentLevel:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/android/settings/VibrationFeedbackPreference;->currentLevel:I

    .line 135
    iget-object v2, p0, Lcom/android/settings/VibrationFeedbackPreference;->mHapticFeedbackSeekBar:Landroid/widget/SeekBar;

    iget v3, p0, Lcom/android/settings/VibrationFeedbackPreference;->currentLevel:I

    invoke-virtual {v2, v3}, Landroid/widget/SeekBar;->setProgress(I)V

    goto :goto_1

    .line 125
    nop

    :pswitch_data_0
    .packed-switch 0x18
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 10
    .parameter "seekBar"
    .parameter "progress"
    .parameter "fromTouch"

    .prologue
    const/4 v2, 0x0

    .line 146
    iget-object v0, p0, Lcom/android/settings/VibrationFeedbackPreference;->mIncomingCallSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 147
    invoke-direct {p0, p2}, Lcom/android/settings/VibrationFeedbackPreference;->setIncomingCallVibrationIntensity(I)V

    .line 149
    invoke-virtual {p0}, Lcom/android/settings/VibrationFeedbackPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "default_vibration_pattern"

    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 150
    .local v9, temp:Ljava/lang/String;
    if-nez v9, :cond_0

    .line 151
    const-string v9, "content://com.android.settings.personalvibration.PersonalVibrationProvider/1"

    .line 153
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/VibrationFeedbackPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v9}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 154
    .local v6, c:Landroid/database/Cursor;
    if-eqz v6, :cond_2

    .line 155
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 156
    const-string v0, "vibration_pattern"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 157
    .local v8, patternStr:Ljava/lang/String;
    invoke-direct {p0, v8}, Lcom/android/settings/VibrationFeedbackPreference;->StringToLongArray(Ljava/lang/String;)[J

    move-result-object v7

    .line 158
    .local v7, pattern:[J
    if-eqz v7, :cond_1

    .line 159
    iget-object v0, p0, Lcom/android/settings/VibrationFeedbackPreference;->mVibrator:Landroid/os/SystemVibrator;

    const/4 v1, -0x1

    sget-object v2, Landroid/os/SystemVibrator$MagnitudeType;->CallMagnitude:Landroid/os/SystemVibrator$MagnitudeType;

    invoke-virtual {v0, v7, v1, v2}, Landroid/os/SystemVibrator;->vibrate([JILandroid/os/SystemVibrator$MagnitudeType;)V

    .line 161
    .end local v7           #pattern:[J
    .end local v8           #patternStr:Ljava/lang/String;
    :cond_1
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 173
    .end local v6           #c:Landroid/database/Cursor;
    .end local v9           #temp:Ljava/lang/String;
    :cond_2
    :goto_0
    return-void

    .line 164
    :cond_3
    iget-object v0, p0, Lcom/android/settings/VibrationFeedbackPreference;->mNotificationSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 165
    invoke-direct {p0, p2}, Lcom/android/settings/VibrationFeedbackPreference;->setNotificationVibrationIntensity(I)V

    .line 166
    iget-object v0, p0, Lcom/android/settings/VibrationFeedbackPreference;->mVibrator:Landroid/os/SystemVibrator;

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/os/SystemVibrator;->vibrateNotification(I)V

    goto :goto_0

    .line 169
    :cond_4
    iput p2, p0, Lcom/android/settings/VibrationFeedbackPreference;->currentLevel:I

    .line 170
    invoke-direct {p0, p2}, Lcom/android/settings/VibrationFeedbackPreference;->setHapticFeedbackVibrationIntensity(I)V

    .line 171
    iget-object v0, p0, Lcom/android/settings/VibrationFeedbackPreference;->mVibrator:Landroid/os/SystemVibrator;

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Landroid/os/SystemVibrator;->vibrateImmVibe(I)V

    goto :goto_0
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0
    .parameter "seekBar"

    .prologue
    .line 177
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0
    .parameter "seekBar"

    .prologue
    .line 181
    return-void
.end method
