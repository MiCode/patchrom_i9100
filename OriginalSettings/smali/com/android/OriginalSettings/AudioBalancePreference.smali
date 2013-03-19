.class public Lcom/android/settings/AudioBalancePreference;
.super Landroid/preference/SeekBarDialogPreference;
.source "AudioBalancePreference.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnPreparedListener;
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/AudioBalancePreference$SavedState;
    }
.end annotation


# instance fields
.field private mAudioManager:Landroid/media/AudioManager;

.field private mCurrentProgress:I

.field private mMediaPlayer:Landroid/media/MediaPlayer;

.field private mMediaPlayerisPrepared:Z

.field private mOldAudioBalance:I

.field private mRestoredOldState:Z

.field private mSeekBar:Landroid/widget/SeekBar;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v0, 0x0

    .line 60
    invoke-direct {p0, p1, p2}, Landroid/preference/SeekBarDialogPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 42
    iput-object v0, p0, Lcom/android/settings/AudioBalancePreference;->mAudioManager:Landroid/media/AudioManager;

    .line 47
    iput-object v0, p0, Lcom/android/settings/AudioBalancePreference;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 49
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/AudioBalancePreference;->mMediaPlayerisPrepared:Z

    .line 62
    const v0, 0x7f0400ae

    invoke-virtual {p0, v0}, Lcom/android/settings/AudioBalancePreference;->setDialogLayoutResource(I)V

    .line 63
    iget-object v0, p0, Lcom/android/settings/AudioBalancePreference;->mAudioManager:Landroid/media/AudioManager;

    if-nez v0, :cond_0

    .line 64
    const-string v0, "audio"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/android/settings/AudioBalancePreference;->mAudioManager:Landroid/media/AudioManager;

    .line 66
    :cond_0
    return-void
.end method

.method private getAudioBalanceFromDB(I)I
    .locals 4
    .parameter "defaultValue"

    .prologue
    .line 165
    move v0, p1

    .line 166
    .local v0, audiobalance:I
    const-string v1, "AudioBalancePreference"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getAudioBalanceFromDB() defaultValue : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings/AudioBalancePreference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "audio_balance"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v0

    .line 170
    const-string v1, "AudioBalancePreference"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getAudioBalanceFromDB() audiobalance : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 173
    :goto_0
    return v0

    .line 171
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private pauseMediaPlayer()V
    .locals 3

    .prologue
    .line 116
    const-string v0, "AudioBalancePreference"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "pauseMediaPlayer() mMediaPlayer : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/AudioBalancePreference;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    iget-object v0, p0, Lcom/android/settings/AudioBalancePreference;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 118
    iget-object v0, p0, Lcom/android/settings/AudioBalancePreference;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->pause()V

    .line 120
    :cond_0
    return-void
.end method

.method private prepareMediaPlayer()V
    .locals 4

    .prologue
    .line 95
    new-instance v1, Landroid/media/MediaPlayer;

    invoke-direct {v1}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v1, p0, Lcom/android/settings/AudioBalancePreference;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 98
    :try_start_0
    iget-object v1, p0, Lcom/android/settings/AudioBalancePreference;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1, p0}, Landroid/media/MediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 99
    iget-object v1, p0, Lcom/android/settings/AudioBalancePreference;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {p0}, Lcom/android/settings/AudioBalancePreference;->getContext()Landroid/content/Context;

    move-result-object v2

    sget-object v3, Landroid/provider/Settings$System;->DEFAULT_RINGTONE_URI:Landroid/net/Uri;

    invoke-virtual {v1, v2, v3}, Landroid/media/MediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V

    .line 100
    iget-object v1, p0, Lcom/android/settings/AudioBalancePreference;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->prepare()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 105
    :goto_0
    const-string v1, "AudioBalancePreference"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "prepareMediaPlayer() mMediaPlayer : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/AudioBalancePreference;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    return-void

    .line 102
    :catch_0
    move-exception v0

    .line 103
    .local v0, localIOException:Ljava/io/IOException;
    const-string v1, "AudioBalancePreference"

    const-string v2, "Exception thrown during preparing sound."

    invoke-static {v1, v2, v0}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private releaseMediaPlayer()V
    .locals 3

    .prologue
    .line 123
    const-string v0, "AudioBalancePreference"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "releaseMediaPlayer() mMediaPlayer : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/AudioBalancePreference;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    iget-object v0, p0, Lcom/android/settings/AudioBalancePreference;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 125
    iget-object v0, p0, Lcom/android/settings/AudioBalancePreference;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 126
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/AudioBalancePreference;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 127
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/AudioBalancePreference;->mMediaPlayerisPrepared:Z

    .line 129
    :cond_0
    return-void
.end method

.method private restoreOldState()V
    .locals 3

    .prologue
    .line 197
    iget-boolean v0, p0, Lcom/android/settings/AudioBalancePreference;->mRestoredOldState:Z

    if-eqz v0, :cond_0

    .line 204
    :goto_0
    return-void

    .line 200
    :cond_0
    const-string v0, "AudioBalancePreference"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "restoreOldState() mOldAudioBalance : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/settings/AudioBalancePreference;->mOldAudioBalance:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 201
    iget v0, p0, Lcom/android/settings/AudioBalancePreference;->mOldAudioBalance:I

    invoke-direct {p0, v0}, Lcom/android/settings/AudioBalancePreference;->setAudioBalance(I)V

    .line 203
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/AudioBalancePreference;->mRestoredOldState:Z

    goto :goto_0
.end method

.method private setAudioBalance(I)V
    .locals 3
    .parameter "audiobalance"

    .prologue
    .line 207
    const-string v0, "AudioBalancePreference"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setAudioBalance() : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 209
    iget-object v0, p0, Lcom/android/settings/AudioBalancePreference;->mAudioManager:Landroid/media/AudioManager;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sound_balance="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    .line 210
    return-void
.end method

.method private startMediaPlayer()V
    .locals 3

    .prologue
    .line 109
    iget-object v0, p0, Lcom/android/settings/AudioBalancePreference;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/settings/AudioBalancePreference;->mMediaPlayerisPrepared:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/AudioBalancePreference;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-nez v0, :cond_0

    .line 110
    const-string v0, "AudioBalancePreference"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startMediaPlayer() mMediaPlayer : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/AudioBalancePreference;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    iget-object v0, p0, Lcom/android/settings/AudioBalancePreference;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    .line 113
    :cond_0
    return-void
.end method


# virtual methods
.method protected onBindDialogView(Landroid/view/View;)V
    .locals 4
    .parameter "view"

    .prologue
    const/16 v3, 0x64

    .line 77
    invoke-super {p0, p1}, Landroid/preference/SeekBarDialogPreference;->onBindDialogView(Landroid/view/View;)V

    .line 79
    const/16 v0, 0x32

    invoke-direct {p0, v0}, Lcom/android/settings/AudioBalancePreference;->getAudioBalanceFromDB(I)I

    move-result v0

    iput v0, p0, Lcom/android/settings/AudioBalancePreference;->mOldAudioBalance:I

    .line 81
    const-string v0, "AudioBalancePreference"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onBindDialogView() mOldAudioBalance : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/settings/AudioBalancePreference;->mOldAudioBalance:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    const v0, 0x7f0b01dc

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    iput-object v0, p0, Lcom/android/settings/AudioBalancePreference;->mSeekBar:Landroid/widget/SeekBar;

    .line 84
    iget-object v0, p0, Lcom/android/settings/AudioBalancePreference;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0, v3}, Landroid/widget/SeekBar;->setMax(I)V

    .line 85
    iget-object v0, p0, Lcom/android/settings/AudioBalancePreference;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0, p0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 86
    iget v0, p0, Lcom/android/settings/AudioBalancePreference;->mOldAudioBalance:I

    if-gt v0, v3, :cond_0

    .line 87
    iget-object v0, p0, Lcom/android/settings/AudioBalancePreference;->mSeekBar:Landroid/widget/SeekBar;

    iget v1, p0, Lcom/android/settings/AudioBalancePreference;->mOldAudioBalance:I

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 91
    :goto_0
    invoke-direct {p0}, Lcom/android/settings/AudioBalancePreference;->prepareMediaPlayer()V

    .line 92
    return-void

    .line 89
    :cond_0
    iget-object v0, p0, Lcom/android/settings/AudioBalancePreference;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0, v3}, Landroid/widget/SeekBar;->setProgress(I)V

    goto :goto_0
.end method

.method protected onDialogClosed(Z)V
    .locals 4
    .parameter "positiveResult"

    .prologue
    .line 178
    invoke-super {p0, p1}, Landroid/preference/SeekBarDialogPreference;->onDialogClosed(Z)V

    .line 180
    invoke-virtual {p0}, Lcom/android/settings/AudioBalancePreference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 182
    .local v0, resolver:Landroid/content/ContentResolver;
    if-eqz p1, :cond_1

    .line 183
    iget-object v1, p0, Lcom/android/settings/AudioBalancePreference;->mSeekBar:Landroid/widget/SeekBar;

    if-eqz v1, :cond_0

    .line 184
    const-string v1, "AudioBalancePreference"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onDialogClosed() : mSeekBar.getProgress()"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/AudioBalancePreference;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v3}, Landroid/widget/SeekBar;->getProgress()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    iget-object v1, p0, Lcom/android/settings/AudioBalancePreference;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/settings/AudioBalancePreference;->setAudioBalance(I)V

    .line 186
    const-string v1, "audio_balance"

    iget-object v2, p0, Lcom/android/settings/AudioBalancePreference;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v2}, Landroid/widget/SeekBar;->getProgress()I

    move-result v2

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 193
    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/android/settings/AudioBalancePreference;->releaseMediaPlayer()V

    .line 194
    return-void

    .line 190
    :cond_1
    invoke-direct {p0}, Lcom/android/settings/AudioBalancePreference;->restoreOldState()V

    goto :goto_0
.end method

.method public onPrepared(Landroid/media/MediaPlayer;)V
    .locals 2
    .parameter "paramMediaPlayer"

    .prologue
    .line 132
    const-string v0, "AudioBalancePreference"

    const-string v1, "onPrepared() mMediaPlayer"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/AudioBalancePreference;->mMediaPlayerisPrepared:Z

    .line 134
    return-void
.end method

.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 2
    .parameter "seekBar"
    .parameter "progress"
    .parameter "fromTouch"

    .prologue
    const/16 v1, 0x32

    .line 138
    iput p2, p0, Lcom/android/settings/AudioBalancePreference;->mCurrentProgress:I

    .line 139
    const/16 v0, 0x64

    if-gt p2, v0, :cond_0

    .line 140
    if-eq p2, v1, :cond_1

    const/16 v0, 0x35

    if-gt p2, v0, :cond_1

    const/16 v0, 0x2f

    if-lt p2, v0, :cond_1

    .line 141
    iget-object v0, p0, Lcom/android/settings/AudioBalancePreference;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 149
    :cond_0
    :goto_0
    return-void

    .line 144
    :cond_1
    invoke-direct {p0, p2}, Lcom/android/settings/AudioBalancePreference;->setAudioBalance(I)V

    .line 145
    iget-object v0, p0, Lcom/android/settings/AudioBalancePreference;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->isMusicActive()Z

    move-result v0

    if-nez v0, :cond_0

    .line 146
    invoke-direct {p0}, Lcom/android/settings/AudioBalancePreference;->startMediaPlayer()V

    goto :goto_0
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 2
    .parameter

    .prologue
    .line 230
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lcom/android/settings/AudioBalancePreference$SavedState;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 232
    :cond_0
    invoke-super {p0, p1}, Landroid/preference/SeekBarDialogPreference;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 241
    :goto_0
    return-void

    .line 236
    :cond_1
    check-cast p1, Lcom/android/settings/AudioBalancePreference$SavedState;

    .line 237
    invoke-virtual {p1}, Lcom/android/settings/AudioBalancePreference$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/preference/SeekBarDialogPreference;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 239
    iget v0, p1, Lcom/android/settings/AudioBalancePreference$SavedState;->oldProgress:I

    iput v0, p0, Lcom/android/settings/AudioBalancePreference;->mOldAudioBalance:I

    .line 240
    iget v0, p1, Lcom/android/settings/AudioBalancePreference$SavedState;->progress:I

    invoke-direct {p0, v0}, Lcom/android/settings/AudioBalancePreference;->setAudioBalance(I)V

    goto :goto_0
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    .prologue
    .line 214
    invoke-super {p0}, Landroid/preference/SeekBarDialogPreference;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    .line 215
    .local v1, superState:Landroid/os/Parcelable;
    invoke-virtual {p0}, Lcom/android/settings/AudioBalancePreference;->getDialog()Landroid/app/Dialog;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/AudioBalancePreference;->getDialog()Landroid/app/Dialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Dialog;->isShowing()Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    move-object v0, v1

    .line 225
    :goto_0
    return-object v0

    .line 219
    :cond_1
    new-instance v0, Lcom/android/settings/AudioBalancePreference$SavedState;

    invoke-direct {v0, v1}, Lcom/android/settings/AudioBalancePreference$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 220
    .local v0, myState:Lcom/android/settings/AudioBalancePreference$SavedState;
    iget-object v2, p0, Lcom/android/settings/AudioBalancePreference;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v2}, Landroid/widget/SeekBar;->getProgress()I

    move-result v2

    iput v2, v0, Lcom/android/settings/AudioBalancePreference$SavedState;->progress:I

    .line 221
    iget v2, p0, Lcom/android/settings/AudioBalancePreference;->mOldAudioBalance:I

    iput v2, v0, Lcom/android/settings/AudioBalancePreference$SavedState;->oldProgress:I

    .line 223
    invoke-direct {p0}, Lcom/android/settings/AudioBalancePreference;->pauseMediaPlayer()V

    goto :goto_0
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0
    .parameter "seekBar"

    .prologue
    .line 153
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 2
    .parameter "seekBar"

    .prologue
    const/16 v1, 0x64

    .line 156
    iget v0, p0, Lcom/android/settings/AudioBalancePreference;->mCurrentProgress:I

    if-gt v0, v1, :cond_0

    .line 157
    const-string v0, "AudioBalancePreference"

    const-string v1, "onStopTrackingTouch() : Current progress is below than MaxAudioBalance"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    :goto_0
    return-void

    .line 159
    :cond_0
    invoke-virtual {p1, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 160
    const-string v0, "AudioBalancePreference"

    const-string v1, "onStopTrackingTouch() : Current progress is over than MaxAudioBalance"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected showDialog(Landroid/os/Bundle;)V
    .locals 1
    .parameter "state"

    .prologue
    .line 70
    invoke-super {p0, p1}, Landroid/preference/SeekBarDialogPreference;->showDialog(Landroid/os/Bundle;)V

    .line 72
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/AudioBalancePreference;->mRestoredOldState:Z

    .line 73
    return-void
.end method
