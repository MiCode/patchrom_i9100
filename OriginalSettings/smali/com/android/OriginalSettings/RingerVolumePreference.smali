.class public Lcom/android/OriginalSettings/RingerVolumePreference;
.super Landroid/preference/VolumePreference;
.source "RingerVolumePreference.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/OriginalSettings/RingerVolumePreference$SavedState;
    }
.end annotation


# static fields
.field private static final CHECKBOX_VIEW_ID:[I

.field private static final SEEKBAR_ID:[I

.field private static final SEEKBAR_MUTED_RES_ID:[I

.field private static final SEEKBAR_TYPE:[I

.field private static final SEEKBAR_UNMUTED_RES_ID:[I


# instance fields
.field private mAudioManager:Landroid/media/AudioManager;

.field private mCheckBoxes:[Landroid/widget/ImageView;

.field private mHandler:Landroid/os/Handler;

.field private mRingModeChangedReceiver:Landroid/content/BroadcastReceiver;

.field private mSeekBarVolumizer:[Landroid/preference/VolumePreference$SeekBarVolumizer;

.field private mSeekBars:[Landroid/widget/SeekBar;

.field private mVolumeChangeReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x4

    .line 72
    new-array v0, v1, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/OriginalSettings/RingerVolumePreference;->SEEKBAR_ID:[I

    .line 80
    new-array v0, v1, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/android/OriginalSettings/RingerVolumePreference;->SEEKBAR_TYPE:[I

    .line 88
    new-array v0, v1, [I

    fill-array-data v0, :array_2

    sput-object v0, Lcom/android/OriginalSettings/RingerVolumePreference;->CHECKBOX_VIEW_ID:[I

    .line 96
    new-array v0, v1, [I

    fill-array-data v0, :array_3

    sput-object v0, Lcom/android/OriginalSettings/RingerVolumePreference;->SEEKBAR_MUTED_RES_ID:[I

    .line 104
    new-array v0, v1, [I

    fill-array-data v0, :array_4

    sput-object v0, Lcom/android/OriginalSettings/RingerVolumePreference;->SEEKBAR_UNMUTED_RES_ID:[I

    return-void

    .line 72
    nop

    :array_0
    .array-data 0x4
        0x44t 0x1t 0x8t 0x7ft
        0x48t 0x1t 0x8t 0x7ft
        0x4ct 0x1t 0x8t 0x7ft
        0x4et 0x1t 0x8t 0x7ft
    .end array-data

    .line 80
    :array_1
    .array-data 0x4
        0x3t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x5t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
    .end array-data

    .line 88
    :array_2
    .array-data 0x4
        0x43t 0x1t 0x8t 0x7ft
        0x47t 0x1t 0x8t 0x7ft
        0x4bt 0x1t 0x8t 0x7ft
        0x4dt 0x1t 0x8t 0x7ft
    .end array-data

    .line 96
    :array_3
    .array-data 0x4
        0xaet 0x2t 0x8t 0x1t
        0xa9t 0x2t 0x8t 0x1t
        0xa6t 0x2t 0x8t 0x1t
        0xact 0x2t 0x8t 0x1t
    .end array-data

    .line 104
    :array_4
    .array-data 0x4
        0xadt 0x2t 0x8t 0x1t
        0xa8t 0x2t 0x8t 0x1t
        0xa5t 0x2t 0x8t 0x1t
        0xabt 0x2t 0x8t 0x1t
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 157
    invoke-direct {p0, p1, p2}, Landroid/preference/VolumePreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 112
    sget-object v0, Lcom/android/OriginalSettings/RingerVolumePreference;->SEEKBAR_MUTED_RES_ID:[I

    array-length v0, v0

    new-array v0, v0, [Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/OriginalSettings/RingerVolumePreference;->mCheckBoxes:[Landroid/widget/ImageView;

    .line 113
    sget-object v0, Lcom/android/OriginalSettings/RingerVolumePreference;->SEEKBAR_ID:[I

    array-length v0, v0

    new-array v0, v0, [Landroid/widget/SeekBar;

    iput-object v0, p0, Lcom/android/OriginalSettings/RingerVolumePreference;->mSeekBars:[Landroid/widget/SeekBar;

    .line 115
    new-instance v0, Lcom/android/OriginalSettings/RingerVolumePreference$1;

    invoke-direct {v0, p0}, Lcom/android/OriginalSettings/RingerVolumePreference$1;-><init>(Lcom/android/OriginalSettings/RingerVolumePreference;)V

    iput-object v0, p0, Lcom/android/OriginalSettings/RingerVolumePreference;->mHandler:Landroid/os/Handler;

    .line 357
    new-instance v0, Lcom/android/OriginalSettings/RingerVolumePreference$3;

    invoke-direct {v0, p0}, Lcom/android/OriginalSettings/RingerVolumePreference$3;-><init>(Lcom/android/OriginalSettings/RingerVolumePreference;)V

    iput-object v0, p0, Lcom/android/OriginalSettings/RingerVolumePreference;->mVolumeChangeReceiver:Landroid/content/BroadcastReceiver;

    .line 160
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/android/OriginalSettings/RingerVolumePreference;->setStreamType(I)V

    .line 162
    const v0, 0x7f04006a

    invoke-virtual {p0, v0}, Lcom/android/OriginalSettings/RingerVolumePreference;->setDialogLayoutResource(I)V

    .line 165
    sget-object v0, Lcom/android/OriginalSettings/RingerVolumePreference;->SEEKBAR_ID:[I

    array-length v0, v0

    new-array v0, v0, [Landroid/preference/VolumePreference$SeekBarVolumizer;

    iput-object v0, p0, Lcom/android/OriginalSettings/RingerVolumePreference;->mSeekBarVolumizer:[Landroid/preference/VolumePreference$SeekBarVolumizer;

    .line 167
    const-string v0, "audio"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/android/OriginalSettings/RingerVolumePreference;->mAudioManager:Landroid/media/AudioManager;

    .line 168
    return-void
.end method

.method static synthetic access$000(Lcom/android/OriginalSettings/RingerVolumePreference;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 65
    invoke-direct {p0}, Lcom/android/OriginalSettings/RingerVolumePreference;->updateSlidersAndMutedStates()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/OriginalSettings/RingerVolumePreference;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 65
    iget-object v0, p0, Lcom/android/OriginalSettings/RingerVolumePreference;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$200()[I
    .locals 1

    .prologue
    .line 65
    sget-object v0, Lcom/android/OriginalSettings/RingerVolumePreference;->SEEKBAR_ID:[I

    return-object v0
.end method

.method static synthetic access$300()[I
    .locals 1

    .prologue
    .line 65
    sget-object v0, Lcom/android/OriginalSettings/RingerVolumePreference;->SEEKBAR_TYPE:[I

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/OriginalSettings/RingerVolumePreference;)[Landroid/preference/VolumePreference$SeekBarVolumizer;
    .locals 1
    .parameter "x0"

    .prologue
    .line 65
    iget-object v0, p0, Lcom/android/OriginalSettings/RingerVolumePreference;->mSeekBarVolumizer:[Landroid/preference/VolumePreference$SeekBarVolumizer;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/OriginalSettings/RingerVolumePreference;)Landroid/media/AudioManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 65
    iget-object v0, p0, Lcom/android/OriginalSettings/RingerVolumePreference;->mAudioManager:Landroid/media/AudioManager;

    return-object v0
.end method

.method private cleanup()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 299
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    sget-object v2, Lcom/android/OriginalSettings/RingerVolumePreference;->SEEKBAR_ID:[I

    array-length v2, v2

    if-ge v1, v2, :cond_2

    .line 300
    iget-object v2, p0, Lcom/android/OriginalSettings/RingerVolumePreference;->mSeekBarVolumizer:[Landroid/preference/VolumePreference$SeekBarVolumizer;

    aget-object v2, v2, v1

    if-eqz v2, :cond_1

    .line 301
    invoke-virtual {p0}, Lcom/android/OriginalSettings/RingerVolumePreference;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    .line 302
    .local v0, dialog:Landroid/app/Dialog;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 304
    iget-object v2, p0, Lcom/android/OriginalSettings/RingerVolumePreference;->mSeekBarVolumizer:[Landroid/preference/VolumePreference$SeekBarVolumizer;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Landroid/preference/VolumePreference$SeekBarVolumizer;->revertVolume()V

    .line 306
    :cond_0
    iget-object v2, p0, Lcom/android/OriginalSettings/RingerVolumePreference;->mSeekBarVolumizer:[Landroid/preference/VolumePreference$SeekBarVolumizer;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Landroid/preference/VolumePreference$SeekBarVolumizer;->stop()V

    .line 307
    iget-object v2, p0, Lcom/android/OriginalSettings/RingerVolumePreference;->mSeekBarVolumizer:[Landroid/preference/VolumePreference$SeekBarVolumizer;

    aput-object v4, v2, v1

    .line 299
    .end local v0           #dialog:Landroid/app/Dialog;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 310
    :cond_2
    iget-object v2, p0, Lcom/android/OriginalSettings/RingerVolumePreference;->mRingModeChangedReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v2, :cond_3

    .line 311
    invoke-virtual {p0}, Lcom/android/OriginalSettings/RingerVolumePreference;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/android/OriginalSettings/RingerVolumePreference;->mRingModeChangedReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 312
    iput-object v4, p0, Lcom/android/OriginalSettings/RingerVolumePreference;->mRingModeChangedReceiver:Landroid/content/BroadcastReceiver;

    .line 314
    :cond_3
    return-void
.end method

.method private getMediaVolumeUri(Landroid/content/Context;)Landroid/net/Uri;
    .locals 2
    .parameter "context"

    .prologue
    .line 241
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "android.resource://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/high16 v1, 0x7f06

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method private updateSlidersAndMutedStates()V
    .locals 6

    .prologue
    .line 128
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    sget-object v4, Lcom/android/OriginalSettings/RingerVolumePreference;->SEEKBAR_TYPE:[I

    array-length v4, v4

    if-ge v0, v4, :cond_5

    .line 129
    sget-object v4, Lcom/android/OriginalSettings/RingerVolumePreference;->SEEKBAR_TYPE:[I

    aget v2, v4, v0

    .line 130
    .local v2, streamType:I
    iget-object v4, p0, Lcom/android/OriginalSettings/RingerVolumePreference;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v4, v2}, Landroid/media/AudioManager;->isStreamMute(I)Z

    move-result v1

    .line 132
    .local v1, muted:Z
    iget-object v4, p0, Lcom/android/OriginalSettings/RingerVolumePreference;->mCheckBoxes:[Landroid/widget/ImageView;

    aget-object v4, v4, v0

    if-eqz v4, :cond_0

    .line 133
    const/4 v4, 0x2

    if-ne v2, v4, :cond_2

    if-eqz v1, :cond_2

    iget-object v4, p0, Lcom/android/OriginalSettings/RingerVolumePreference;->mAudioManager:Landroid/media/AudioManager;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/media/AudioManager;->shouldVibrate(I)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 135
    iget-object v4, p0, Lcom/android/OriginalSettings/RingerVolumePreference;->mCheckBoxes:[Landroid/widget/ImageView;

    aget-object v4, v4, v0

    const v5, 0x10802aa

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 142
    :cond_0
    :goto_1
    iget-object v4, p0, Lcom/android/OriginalSettings/RingerVolumePreference;->mSeekBars:[Landroid/widget/SeekBar;

    aget-object v4, v4, v0

    if-eqz v4, :cond_1

    .line 143
    if-eqz v1, :cond_4

    iget-object v4, p0, Lcom/android/OriginalSettings/RingerVolumePreference;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v4, v2}, Landroid/media/AudioManager;->getLastAudibleStreamVolume(I)I

    move-result v3

    .line 145
    .local v3, volume:I
    :goto_2
    iget-object v4, p0, Lcom/android/OriginalSettings/RingerVolumePreference;->mSeekBars:[Landroid/widget/SeekBar;

    aget-object v4, v4, v0

    invoke-virtual {v4, v3}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 128
    .end local v3           #volume:I
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 138
    :cond_2
    iget-object v4, p0, Lcom/android/OriginalSettings/RingerVolumePreference;->mCheckBoxes:[Landroid/widget/ImageView;

    aget-object v5, v4, v0

    if-eqz v1, :cond_3

    sget-object v4, Lcom/android/OriginalSettings/RingerVolumePreference;->SEEKBAR_MUTED_RES_ID:[I

    aget v4, v4, v0

    :goto_3
    invoke-virtual {v5, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    :cond_3
    sget-object v4, Lcom/android/OriginalSettings/RingerVolumePreference;->SEEKBAR_UNMUTED_RES_ID:[I

    aget v4, v4, v0

    goto :goto_3

    .line 143
    :cond_4
    iget-object v4, p0, Lcom/android/OriginalSettings/RingerVolumePreference;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v4, v2}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v3

    goto :goto_2

    .line 148
    .end local v1           #muted:Z
    .end local v2           #streamType:I
    :cond_5
    return-void
.end method


# virtual methods
.method public createActionButtons()V
    .locals 1

    .prologue
    .line 123
    const v0, 0x104000a

    invoke-virtual {p0, v0}, Lcom/android/OriginalSettings/RingerVolumePreference;->setPositiveButtonText(I)V

    .line 124
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/OriginalSettings/RingerVolumePreference;->setNegativeButtonText(Ljava/lang/CharSequence;)V

    .line 125
    return-void
.end method

.method public onActivityStop()V
    .locals 4

    .prologue
    .line 270
    invoke-super {p0}, Landroid/preference/VolumePreference;->onActivityStop()V

    .line 272
    iget-object v0, p0, Lcom/android/OriginalSettings/RingerVolumePreference;->mSeekBarVolumizer:[Landroid/preference/VolumePreference$SeekBarVolumizer;

    .local v0, arr$:[Landroid/preference/VolumePreference$SeekBarVolumizer;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    .line 273
    .local v3, vol:Landroid/preference/VolumePreference$SeekBarVolumizer;
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Landroid/preference/VolumePreference$SeekBarVolumizer;->stopSample()V

    .line 272
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 275
    .end local v3           #vol:Landroid/preference/VolumePreference$SeekBarVolumizer;
    :cond_1
    return-void
.end method

.method protected onBindDialogView(Landroid/view/View;)V
    .locals 14
    .parameter "view"

    .prologue
    .line 172
    invoke-super {p0, p1}, Landroid/preference/VolumePreference;->onBindDialogView(Landroid/view/View;)V

    .line 176
    new-instance v11, Landroid/content/IntentFilter;

    invoke-direct {v11}, Landroid/content/IntentFilter;-><init>()V

    .line 177
    .local v11, intentFilterVolume:Landroid/content/IntentFilter;
    const-string v0, "android.intent.action.HEADSET_PLUG"

    invoke-virtual {v11, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 178
    const-string v0, "android.intent.action.DOCK_EVENT"

    invoke-virtual {v11, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 179
    const-string v0, "android.intent.action.USB_ANLG_HEADSET_PLUG"

    invoke-virtual {v11, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 180
    const-string v0, "android.intent.action.USB_DGTL_HEADSET_PLUG"

    invoke-virtual {v11, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 181
    const-string v0, "android.intent.action.HDMI_AUDIO_PLUG"

    invoke-virtual {v11, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 182
    const-string v0, "com.android.internal.telephony.cdma.intent.action.TTY_ENABLED_CHANGE"

    invoke-virtual {v11, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 183
    invoke-virtual {p0}, Lcom/android/OriginalSettings/RingerVolumePreference;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/OriginalSettings/RingerVolumePreference;->mVolumeChangeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1, v11}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 188
    const/4 v9, 0x0

    .local v9, i:I
    :goto_0
    sget-object v0, Lcom/android/OriginalSettings/RingerVolumePreference;->SEEKBAR_ID:[I

    array-length v0, v0

    if-ge v9, v0, :cond_1

    .line 189
    sget-object v0, Lcom/android/OriginalSettings/RingerVolumePreference;->SEEKBAR_ID:[I

    aget v0, v0, v9

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/SeekBar;

    .line 190
    .local v3, seekBar:Landroid/widget/SeekBar;
    iget-object v0, p0, Lcom/android/OriginalSettings/RingerVolumePreference;->mSeekBars:[Landroid/widget/SeekBar;

    aput-object v3, v0, v9

    .line 191
    sget-object v0, Lcom/android/OriginalSettings/RingerVolumePreference;->SEEKBAR_TYPE:[I

    aget v0, v0, v9

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 192
    iget-object v13, p0, Lcom/android/OriginalSettings/RingerVolumePreference;->mSeekBarVolumizer:[Landroid/preference/VolumePreference$SeekBarVolumizer;

    new-instance v0, Landroid/preference/VolumePreference$SeekBarVolumizer;

    invoke-virtual {p0}, Lcom/android/OriginalSettings/RingerVolumePreference;->getContext()Landroid/content/Context;

    move-result-object v2

    sget-object v1, Lcom/android/OriginalSettings/RingerVolumePreference;->SEEKBAR_TYPE:[I

    aget v4, v1, v9

    invoke-virtual {p0}, Lcom/android/OriginalSettings/RingerVolumePreference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/OriginalSettings/RingerVolumePreference;->getMediaVolumeUri(Landroid/content/Context;)Landroid/net/Uri;

    move-result-object v5

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Landroid/preference/VolumePreference$SeekBarVolumizer;-><init>(Landroid/preference/VolumePreference;Landroid/content/Context;Landroid/widget/SeekBar;ILandroid/net/Uri;)V

    aput-object v0, v13, v9

    .line 188
    :goto_1
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 195
    :cond_0
    iget-object v0, p0, Lcom/android/OriginalSettings/RingerVolumePreference;->mSeekBarVolumizer:[Landroid/preference/VolumePreference$SeekBarVolumizer;

    new-instance v1, Landroid/preference/VolumePreference$SeekBarVolumizer;

    invoke-virtual {p0}, Lcom/android/OriginalSettings/RingerVolumePreference;->getContext()Landroid/content/Context;

    move-result-object v2

    sget-object v4, Lcom/android/OriginalSettings/RingerVolumePreference;->SEEKBAR_TYPE:[I

    aget v4, v4, v9

    invoke-direct {v1, p0, v2, v3, v4}, Landroid/preference/VolumePreference$SeekBarVolumizer;-><init>(Landroid/preference/VolumePreference;Landroid/content/Context;Landroid/widget/SeekBar;I)V

    aput-object v1, v0, v9

    goto :goto_1

    .line 200
    .end local v3           #seekBar:Landroid/widget/SeekBar;
    :cond_1
    invoke-virtual {p0}, Lcom/android/OriginalSettings/RingerVolumePreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "mode_ringer_streams_affected"

    const/16 v2, 0x24

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v12

    .line 204
    .local v12, silentableStreams:I
    const/4 v9, 0x0

    :goto_2
    iget-object v0, p0, Lcom/android/OriginalSettings/RingerVolumePreference;->mCheckBoxes:[Landroid/widget/ImageView;

    array-length v0, v0

    if-ge v9, v0, :cond_2

    .line 205
    sget-object v0, Lcom/android/OriginalSettings/RingerVolumePreference;->CHECKBOX_VIEW_ID:[I

    aget v0, v0, v9

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    .line 206
    .local v6, checkbox:Landroid/widget/ImageView;
    iget-object v0, p0, Lcom/android/OriginalSettings/RingerVolumePreference;->mCheckBoxes:[Landroid/widget/ImageView;

    aput-object v6, v0, v9

    .line 204
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    .line 210
    .end local v6           #checkbox:Landroid/widget/ImageView;
    :cond_2
    invoke-direct {p0}, Lcom/android/OriginalSettings/RingerVolumePreference;->updateSlidersAndMutedStates()V

    .line 213
    iget-object v0, p0, Lcom/android/OriginalSettings/RingerVolumePreference;->mRingModeChangedReceiver:Landroid/content/BroadcastReceiver;

    if-nez v0, :cond_3

    .line 214
    new-instance v7, Landroid/content/IntentFilter;

    invoke-direct {v7}, Landroid/content/IntentFilter;-><init>()V

    .line 215
    .local v7, filter:Landroid/content/IntentFilter;
    const-string v0, "android.media.RINGER_MODE_CHANGED"

    invoke-virtual {v7, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 216
    new-instance v0, Lcom/android/OriginalSettings/RingerVolumePreference$2;

    invoke-direct {v0, p0}, Lcom/android/OriginalSettings/RingerVolumePreference$2;-><init>(Lcom/android/OriginalSettings/RingerVolumePreference;)V

    iput-object v0, p0, Lcom/android/OriginalSettings/RingerVolumePreference;->mRingModeChangedReceiver:Landroid/content/BroadcastReceiver;

    .line 225
    invoke-virtual {p0}, Lcom/android/OriginalSettings/RingerVolumePreference;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/OriginalSettings/RingerVolumePreference;->mRingModeChangedReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1, v7}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 230
    .end local v7           #filter:Landroid/content/IntentFilter;
    :cond_3
    invoke-virtual {p0}, Lcom/android/OriginalSettings/RingerVolumePreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/OriginalSettings/Utils;->isVoiceCapable(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 231
    const v10, 0x7f080145

    .line 235
    .local v10, id:I
    :goto_3
    invoke-virtual {p1, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    .line 236
    .local v8, hideSection:Landroid/view/View;
    invoke-virtual {p0}, Lcom/android/OriginalSettings/RingerVolumePreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/OriginalSettings/Utils;->isVoiceCapable(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 237
    const/16 v0, 0x8

    invoke-virtual {v8, v0}, Landroid/view/View;->setVisibility(I)V

    .line 238
    :cond_4
    return-void

    .line 233
    .end local v8           #hideSection:Landroid/view/View;
    .end local v10           #id:I
    :cond_5
    const v10, 0x7f080149

    .restart local v10       #id:I
    goto :goto_3
.end method

.method protected onDialogClosed(Z)V
    .locals 7
    .parameter "positiveResult"

    .prologue
    .line 248
    invoke-super {p0, p1}, Landroid/preference/VolumePreference;->onDialogClosed(Z)V

    .line 253
    :try_start_0
    invoke-virtual {p0}, Lcom/android/OriginalSettings/RingerVolumePreference;->getContext()Landroid/content/Context;

    move-result-object v5

    iget-object v6, p0, Lcom/android/OriginalSettings/RingerVolumePreference;->mVolumeChangeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v5, v6}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 260
    :goto_0
    if-nez p1, :cond_1

    .line 261
    iget-object v0, p0, Lcom/android/OriginalSettings/RingerVolumePreference;->mSeekBarVolumizer:[Landroid/preference/VolumePreference$SeekBarVolumizer;

    .local v0, arr$:[Landroid/preference/VolumePreference$SeekBarVolumizer;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_1
    if-ge v2, v3, :cond_1

    aget-object v4, v0, v2

    .line 262
    .local v4, vol:Landroid/preference/VolumePreference$SeekBarVolumizer;
    if-eqz v4, :cond_0

    invoke-virtual {v4}, Landroid/preference/VolumePreference$SeekBarVolumizer;->revertVolume()V

    .line 261
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 255
    .end local v0           #arr$:[Landroid/preference/VolumePreference$SeekBarVolumizer;
    .end local v2           #i$:I
    .end local v3           #len$:I
    .end local v4           #vol:Landroid/preference/VolumePreference$SeekBarVolumizer;
    :catch_0
    move-exception v1

    .line 256
    .local v1, e:Ljava/lang/IllegalArgumentException;
    const-string v5, "RingerVolumePreference"

    const-string v6, "onDialogClosed : mVolumeChangeReceiver is not registered."

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 265
    .end local v1           #e:Ljava/lang/IllegalArgumentException;
    :cond_1
    invoke-direct {p0}, Lcom/android/OriginalSettings/RingerVolumePreference;->cleanup()V

    .line 266
    return-void
.end method

.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 4
    .parameter "v"
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 279
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v3

    if-nez v3, :cond_0

    move v0, v1

    .line 280
    .local v0, isdown:Z
    :goto_0
    sparse-switch p2, :sswitch_data_0

    move v1, v2

    .line 286
    :sswitch_0
    return v1

    .end local v0           #isdown:Z
    :cond_0
    move v0, v2

    .line 279
    goto :goto_0

    .line 280
    :sswitch_data_0
    .sparse-switch
        0x18 -> :sswitch_0
        0x19 -> :sswitch_0
        0xa4 -> :sswitch_0
    .end sparse-switch
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 4
    .parameter

    .prologue
    .line 337
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lcom/android/OriginalSettings/RingerVolumePreference$SavedState;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 339
    :cond_0
    invoke-super {p0, p1}, Landroid/preference/VolumePreference;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 352
    :cond_1
    return-void

    .line 343
    :cond_2
    check-cast p1, Lcom/android/OriginalSettings/RingerVolumePreference$SavedState;

    .line 344
    invoke-virtual {p1}, Lcom/android/OriginalSettings/RingerVolumePreference$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/preference/VolumePreference;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 345
    sget-object v0, Lcom/android/OriginalSettings/RingerVolumePreference;->SEEKBAR_ID:[I

    array-length v0, v0

    invoke-virtual {p1, v0}, Lcom/android/OriginalSettings/RingerVolumePreference$SavedState;->getVolumeStore(I)[Landroid/preference/VolumePreference$VolumeStore;

    move-result-object v1

    .line 346
    const/4 v0, 0x0

    :goto_0
    sget-object v2, Lcom/android/OriginalSettings/RingerVolumePreference;->SEEKBAR_ID:[I

    array-length v2, v2

    if-ge v0, v2, :cond_1

    .line 347
    iget-object v2, p0, Lcom/android/OriginalSettings/RingerVolumePreference;->mSeekBarVolumizer:[Landroid/preference/VolumePreference$SeekBarVolumizer;

    aget-object v2, v2, v0

    .line 348
    if-eqz v2, :cond_3

    .line 349
    aget-object v3, v1, v0

    invoke-virtual {v2, v3}, Landroid/preference/VolumePreference$SeekBarVolumizer;->onRestoreInstanceState(Landroid/preference/VolumePreference$VolumeStore;)V

    .line 346
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method protected onSampleStarting(Landroid/preference/VolumePreference$SeekBarVolumizer;)V
    .locals 4
    .parameter "volumizer"

    .prologue
    .line 292
    invoke-super {p0, p1}, Landroid/preference/VolumePreference;->onSampleStarting(Landroid/preference/VolumePreference$SeekBarVolumizer;)V

    .line 293
    iget-object v0, p0, Lcom/android/OriginalSettings/RingerVolumePreference;->mSeekBarVolumizer:[Landroid/preference/VolumePreference$SeekBarVolumizer;

    .local v0, arr$:[Landroid/preference/VolumePreference$SeekBarVolumizer;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    .line 294
    .local v3, vol:Landroid/preference/VolumePreference$SeekBarVolumizer;
    if-eqz v3, :cond_0

    if-eq v3, p1, :cond_0

    invoke-virtual {v3}, Landroid/preference/VolumePreference$SeekBarVolumizer;->stopSample()V

    .line 293
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 296
    .end local v3           #vol:Landroid/preference/VolumePreference$SeekBarVolumizer;
    :cond_1
    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 6

    .prologue
    .line 318
    invoke-super {p0}, Landroid/preference/VolumePreference;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v2

    .line 319
    .local v2, superState:Landroid/os/Parcelable;
    invoke-virtual {p0}, Lcom/android/OriginalSettings/RingerVolumePreference;->isPersistent()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 332
    .end local v2           #superState:Landroid/os/Parcelable;
    :goto_0
    return-object v2

    .line 324
    .restart local v2       #superState:Landroid/os/Parcelable;
    :cond_0
    new-instance v1, Lcom/android/OriginalSettings/RingerVolumePreference$SavedState;

    invoke-direct {v1, v2}, Lcom/android/OriginalSettings/RingerVolumePreference$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 325
    .local v1, myState:Lcom/android/OriginalSettings/RingerVolumePreference$SavedState;
    sget-object v5, Lcom/android/OriginalSettings/RingerVolumePreference;->SEEKBAR_ID:[I

    array-length v5, v5

    invoke-virtual {v1, v5}, Lcom/android/OriginalSettings/RingerVolumePreference$SavedState;->getVolumeStore(I)[Landroid/preference/VolumePreference$VolumeStore;

    move-result-object v4

    .line 326
    .local v4, volumeStore:[Landroid/preference/VolumePreference$VolumeStore;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    sget-object v5, Lcom/android/OriginalSettings/RingerVolumePreference;->SEEKBAR_ID:[I

    array-length v5, v5

    if-ge v0, v5, :cond_2

    .line 327
    iget-object v5, p0, Lcom/android/OriginalSettings/RingerVolumePreference;->mSeekBarVolumizer:[Landroid/preference/VolumePreference$SeekBarVolumizer;

    aget-object v3, v5, v0

    .line 328
    .local v3, vol:Landroid/preference/VolumePreference$SeekBarVolumizer;
    if-eqz v3, :cond_1

    .line 329
    aget-object v5, v4, v0

    invoke-virtual {v3, v5}, Landroid/preference/VolumePreference$SeekBarVolumizer;->onSaveInstanceState(Landroid/preference/VolumePreference$VolumeStore;)V

    .line 326
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .end local v3           #vol:Landroid/preference/VolumePreference$SeekBarVolumizer;
    :cond_2
    move-object v2, v1

    .line 332
    goto :goto_0
.end method
