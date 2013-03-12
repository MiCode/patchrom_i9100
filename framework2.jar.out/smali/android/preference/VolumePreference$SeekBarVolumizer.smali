.class public Landroid/preference/VolumePreference$SeekBarVolumizer;
.super Ljava/lang/Object;
.source "VolumePreference.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;
.implements Landroid/widget/SeekBar$OnSeekBarChangeKeyListener;
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/preference/VolumePreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SeekBarVolumizer"
.end annotation


# instance fields
.field private mAudioManager:Landroid/media/AudioManager;

.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mLastProgress:I

.field private mLastWaitingToneVolume:I

.field private mOriginalMusicStreamVolumeHPH:I

.field private mOriginalNotificationVolume:I

.field private mOriginalRingerMode:I

.field private mOriginalStreamVolume:I

.field private mOriginalSystemVolume:I

.field private mRingtone:Landroid/media/Ringtone;

.field private mSeekBar:Landroid/widget/SeekBar;

.field private mStreamType:I

.field private mToneGenerator:Landroid/media/ToneGenerator;

.field private mVolumeBeforeMute:I

.field private mVolumeObserver:Landroid/database/ContentObserver;

.field final synthetic this$0:Landroid/preference/VolumePreference;


# direct methods
.method public constructor <init>(Landroid/preference/VolumePreference;Landroid/content/Context;Landroid/widget/SeekBar;I)V
    .locals 6
    .parameter
    .parameter "context"
    .parameter "seekBar"
    .parameter "streamType"

    .prologue
    .line 324
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Landroid/preference/VolumePreference$SeekBarVolumizer;-><init>(Landroid/preference/VolumePreference;Landroid/content/Context;Landroid/widget/SeekBar;ILandroid/net/Uri;)V

    .line 325
    return-void
.end method

.method public constructor <init>(Landroid/preference/VolumePreference;Landroid/content/Context;Landroid/widget/SeekBar;ILandroid/net/Uri;)V
    .locals 2
    .parameter
    .parameter "context"
    .parameter "seekBar"
    .parameter "streamType"
    .parameter "defaultUri"

    .prologue
    const/4 v1, -0x1

    .line 327
    iput-object p1, p0, Landroid/preference/VolumePreference$SeekBarVolumizer;->this$0:Landroid/preference/VolumePreference;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 278
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Landroid/preference/VolumePreference$SeekBarVolumizer;->mHandler:Landroid/os/Handler;

    .line 289
    iput v1, p0, Landroid/preference/VolumePreference$SeekBarVolumizer;->mLastProgress:I

    .line 291
    iput v1, p0, Landroid/preference/VolumePreference$SeekBarVolumizer;->mVolumeBeforeMute:I

    .line 292
    iput v1, p0, Landroid/preference/VolumePreference$SeekBarVolumizer;->mLastWaitingToneVolume:I

    .line 293
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/preference/VolumePreference$SeekBarVolumizer;->mToneGenerator:Landroid/media/ToneGenerator;

    .line 300
    new-instance v0, Landroid/preference/VolumePreference$SeekBarVolumizer$1;

    iget-object v1, p0, Landroid/preference/VolumePreference$SeekBarVolumizer;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Landroid/preference/VolumePreference$SeekBarVolumizer$1;-><init>(Landroid/preference/VolumePreference$SeekBarVolumizer;Landroid/os/Handler;)V

    iput-object v0, p0, Landroid/preference/VolumePreference$SeekBarVolumizer;->mVolumeObserver:Landroid/database/ContentObserver;

    .line 328
    iput-object p2, p0, Landroid/preference/VolumePreference$SeekBarVolumizer;->mContext:Landroid/content/Context;

    .line 329
    const-string v0, "audio"

    invoke-virtual {p2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Landroid/preference/VolumePreference$SeekBarVolumizer;->mAudioManager:Landroid/media/AudioManager;

    .line 330
    iput p4, p0, Landroid/preference/VolumePreference$SeekBarVolumizer;->mStreamType:I

    .line 331
    iput-object p3, p0, Landroid/preference/VolumePreference$SeekBarVolumizer;->mSeekBar:Landroid/widget/SeekBar;

    .line 333
    invoke-direct {p0, p3, p5}, Landroid/preference/VolumePreference$SeekBarVolumizer;->initSeekBar(Landroid/widget/SeekBar;Landroid/net/Uri;)V

    .line 334
    return-void
.end method

.method static synthetic access$300(Landroid/preference/VolumePreference$SeekBarVolumizer;)Landroid/widget/SeekBar;
    .locals 1
    .parameter "x0"

    .prologue
    .line 275
    iget-object v0, p0, Landroid/preference/VolumePreference$SeekBarVolumizer;->mSeekBar:Landroid/widget/SeekBar;

    return-object v0
.end method

.method static synthetic access$400(Landroid/preference/VolumePreference$SeekBarVolumizer;)Landroid/media/AudioManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 275
    iget-object v0, p0, Landroid/preference/VolumePreference$SeekBarVolumizer;->mAudioManager:Landroid/media/AudioManager;

    return-object v0
.end method

.method static synthetic access$500(Landroid/preference/VolumePreference$SeekBarVolumizer;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 275
    iget v0, p0, Landroid/preference/VolumePreference$SeekBarVolumizer;->mStreamType:I

    return v0
.end method

.method private getTelephonyService()Lcom/android/internal/telephony/ITelephony;
    .locals 3

    .prologue
    .line 566
    const-string v1, "phone"

    invoke-static {v1}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    .line 567
    .local v0, telephonyService:Lcom/android/internal/telephony/ITelephony;
    if-nez v0, :cond_0

    .line 568
    const-string v1, "VolumePreference"

    const-string v2, "Unable to find ITelephony interface."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 570
    :cond_0
    return-object v0
.end method

.method private initSeekBar(Landroid/widget/SeekBar;Landroid/net/Uri;)V
    .locals 7
    .parameter "seekBar"
    .parameter "defaultUri"

    .prologue
    const/16 v3, 0x8

    const/4 v6, 0x0

    const/4 v5, 0x5

    const/4 v4, 0x2

    .line 337
    iget v0, p0, Landroid/preference/VolumePreference$SeekBarVolumizer;->mStreamType:I

    if-ne v0, v3, :cond_5

    .line 338
    const-string v0, "VolumePreference"

    const-string v1, "initSeekBar: waiting tone"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 339
    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/widget/SeekBar;->setMax(I)V

    .line 340
    iget-object v0, p0, Landroid/preference/VolumePreference$SeekBarVolumizer;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "volume_waiting_tone"

    invoke-static {v0, v1, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Landroid/preference/VolumePreference$SeekBarVolumizer;->mLastWaitingToneVolume:I

    .line 341
    iget v0, p0, Landroid/preference/VolumePreference$SeekBarVolumizer;->mLastWaitingToneVolume:I

    invoke-virtual {p1, v0}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 342
    invoke-virtual {p1, p0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 343
    invoke-virtual {p1, p0}, Landroid/widget/SeekBar;->setOnSeekBarChangeKeyListener(Landroid/widget/SeekBar$OnSeekBarChangeKeyListener;)V

    .line 345
    iget-object v0, p0, Landroid/preference/VolumePreference$SeekBarVolumizer;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/Settings$System;->VOLUME_SETTINGS:[Ljava/lang/String;

    iget v2, p0, Landroid/preference/VolumePreference$SeekBarVolumizer;->mStreamType:I

    aget-object v1, v1, v2

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Landroid/preference/VolumePreference$SeekBarVolumizer;->mVolumeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v6, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 349
    if-nez p2, :cond_0

    .line 350
    iget v0, p0, Landroid/preference/VolumePreference$SeekBarVolumizer;->mStreamType:I

    if-ne v0, v4, :cond_2

    .line 351
    sget-object p2, Landroid/provider/Settings$System;->DEFAULT_RINGTONE_URI:Landroid/net/Uri;

    .line 361
    :cond_0
    :goto_0
    iget-object v0, p0, Landroid/preference/VolumePreference$SeekBarVolumizer;->mContext:Landroid/content/Context;

    invoke-static {v0, p2}, Landroid/media/RingtoneManager;->getRingtone(Landroid/content/Context;Landroid/net/Uri;)Landroid/media/Ringtone;

    move-result-object v0

    iput-object v0, p0, Landroid/preference/VolumePreference$SeekBarVolumizer;->mRingtone:Landroid/media/Ringtone;

    .line 362
    iget-object v0, p0, Landroid/preference/VolumePreference$SeekBarVolumizer;->mRingtone:Landroid/media/Ringtone;

    if-eqz v0, :cond_1

    .line 363
    iget-object v0, p0, Landroid/preference/VolumePreference$SeekBarVolumizer;->mRingtone:Landroid/media/Ringtone;

    iget v1, p0, Landroid/preference/VolumePreference$SeekBarVolumizer;->mStreamType:I

    invoke-virtual {v0, v1}, Landroid/media/Ringtone;->setStreamType(I)V

    .line 409
    :cond_1
    :goto_1
    return-void

    .line 352
    :cond_2
    iget v0, p0, Landroid/preference/VolumePreference$SeekBarVolumizer;->mStreamType:I

    if-ne v0, v5, :cond_3

    .line 353
    sget-object p2, Landroid/provider/Settings$System;->DEFAULT_NOTIFICATION_URI:Landroid/net/Uri;

    goto :goto_0

    .line 354
    :cond_3
    iget v0, p0, Landroid/preference/VolumePreference$SeekBarVolumizer;->mStreamType:I

    if-ne v0, v3, :cond_4

    .line 355
    const/4 p2, 0x0

    goto :goto_0

    .line 357
    :cond_4
    sget-object p2, Landroid/provider/Settings$System;->DEFAULT_ALARM_ALERT_URI:Landroid/net/Uri;

    goto :goto_0

    .line 366
    :cond_5
    iget-object v0, p0, Landroid/preference/VolumePreference$SeekBarVolumizer;->mAudioManager:Landroid/media/AudioManager;

    iget v1, p0, Landroid/preference/VolumePreference$SeekBarVolumizer;->mStreamType:I

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/SeekBar;->setMax(I)V

    .line 367
    const-string v0, "CTC"

    const-string v1, "ro.csc.sales_code"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    const-string v0, "CHM"

    const-string v1, "ro.csc.sales_code"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 369
    :cond_6
    invoke-direct {p0, p1, p2}, Landroid/preference/VolumePreference$SeekBarVolumizer;->initSeekBarSetVolume(Landroid/widget/SeekBar;Landroid/net/Uri;)V

    goto :goto_1

    .line 372
    :cond_7
    const-string v0, "VolumePreference"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "initSeekBar : seekBar.setMax : mAudioManager.getStreamMaxVolume(mStreamType) : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/preference/VolumePreference$SeekBarVolumizer;->mAudioManager:Landroid/media/AudioManager;

    iget v3, p0, Landroid/preference/VolumePreference$SeekBarVolumizer;->mStreamType:I

    invoke-virtual {v2, v3}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 373
    const-string v0, "VolumePreference"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "initSeekBar : mStreamType : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/preference/VolumePreference$SeekBarVolumizer;->mStreamType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 374
    iget-object v0, p0, Landroid/preference/VolumePreference$SeekBarVolumizer;->mAudioManager:Landroid/media/AudioManager;

    iget v1, p0, Landroid/preference/VolumePreference$SeekBarVolumizer;->mStreamType:I

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v0

    iput v0, p0, Landroid/preference/VolumePreference$SeekBarVolumizer;->mOriginalStreamVolume:I

    .line 375
    iget-object v0, p0, Landroid/preference/VolumePreference$SeekBarVolumizer;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v0

    iput v0, p0, Landroid/preference/VolumePreference$SeekBarVolumizer;->mOriginalRingerMode:I

    .line 377
    iget v0, p0, Landroid/preference/VolumePreference$SeekBarVolumizer;->mOriginalStreamVolume:I

    invoke-virtual {p1, v0}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 378
    invoke-virtual {p1, p0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 379
    invoke-virtual {p1, p0}, Landroid/widget/SeekBar;->setOnSeekBarChangeKeyListener(Landroid/widget/SeekBar$OnSeekBarChangeKeyListener;)V

    .line 381
    iget-object v0, p0, Landroid/preference/VolumePreference$SeekBarVolumizer;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/Settings$System;->VOLUME_SETTINGS:[Ljava/lang/String;

    iget v2, p0, Landroid/preference/VolumePreference$SeekBarVolumizer;->mStreamType:I

    aget-object v1, v1, v2

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Landroid/preference/VolumePreference$SeekBarVolumizer;->mVolumeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v6, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 385
    if-nez p2, :cond_8

    .line 386
    iget v0, p0, Landroid/preference/VolumePreference$SeekBarVolumizer;->mStreamType:I

    if-ne v0, v4, :cond_a

    .line 387
    sget-object p2, Landroid/provider/Settings$System;->DEFAULT_RINGTONE_URI:Landroid/net/Uri;

    .line 395
    :cond_8
    :goto_2
    iget-object v0, p0, Landroid/preference/VolumePreference$SeekBarVolumizer;->mContext:Landroid/content/Context;

    invoke-static {v0, p2}, Landroid/media/RingtoneManager;->getRingtone(Landroid/content/Context;Landroid/net/Uri;)Landroid/media/Ringtone;

    move-result-object v0

    iput-object v0, p0, Landroid/preference/VolumePreference$SeekBarVolumizer;->mRingtone:Landroid/media/Ringtone;

    .line 397
    iget-object v0, p0, Landroid/preference/VolumePreference$SeekBarVolumizer;->mRingtone:Landroid/media/Ringtone;

    if-eqz v0, :cond_9

    .line 398
    iget-object v0, p0, Landroid/preference/VolumePreference$SeekBarVolumizer;->mRingtone:Landroid/media/Ringtone;

    iget v1, p0, Landroid/preference/VolumePreference$SeekBarVolumizer;->mStreamType:I

    invoke-virtual {v0, v1}, Landroid/media/Ringtone;->setStreamType(I)V

    .line 401
    :cond_9
    iget v0, p0, Landroid/preference/VolumePreference$SeekBarVolumizer;->mStreamType:I

    if-ne v0, v5, :cond_c

    iget-object v0, p0, Landroid/preference/VolumePreference$SeekBarVolumizer;->mAudioManager:Landroid/media/AudioManager;

    iget v1, p0, Landroid/preference/VolumePreference$SeekBarVolumizer;->mStreamType:I

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->isStreamMute(I)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 402
    iget-object v0, p0, Landroid/preference/VolumePreference$SeekBarVolumizer;->mAudioManager:Landroid/media/AudioManager;

    iget v1, p0, Landroid/preference/VolumePreference$SeekBarVolumizer;->mStreamType:I

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getLastAudibleStreamVolume(I)I

    move-result v0

    iput v0, p0, Landroid/preference/VolumePreference$SeekBarVolumizer;->mOriginalNotificationVolume:I

    goto/16 :goto_1

    .line 388
    :cond_a
    iget v0, p0, Landroid/preference/VolumePreference$SeekBarVolumizer;->mStreamType:I

    if-ne v0, v5, :cond_b

    .line 389
    sget-object p2, Landroid/provider/Settings$System;->DEFAULT_NOTIFICATION_URI:Landroid/net/Uri;

    goto :goto_2

    .line 391
    :cond_b
    sget-object p2, Landroid/provider/Settings$System;->DEFAULT_ALARM_ALERT_URI:Landroid/net/Uri;

    goto :goto_2

    .line 403
    :cond_c
    iget v0, p0, Landroid/preference/VolumePreference$SeekBarVolumizer;->mStreamType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Landroid/preference/VolumePreference$SeekBarVolumizer;->mAudioManager:Landroid/media/AudioManager;

    iget v1, p0, Landroid/preference/VolumePreference$SeekBarVolumizer;->mStreamType:I

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->isStreamMute(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 404
    iget-object v0, p0, Landroid/preference/VolumePreference$SeekBarVolumizer;->mAudioManager:Landroid/media/AudioManager;

    iget v1, p0, Landroid/preference/VolumePreference$SeekBarVolumizer;->mStreamType:I

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getLastAudibleStreamVolume(I)I

    move-result v0

    iput v0, p0, Landroid/preference/VolumePreference$SeekBarVolumizer;->mOriginalSystemVolume:I

    goto/16 :goto_1
.end method

.method private initSeekBarSetVolume(Landroid/widget/SeekBar;Landroid/net/Uri;)V
    .locals 23
    .parameter "seekBar"
    .parameter "defaultUri"

    .prologue
    .line 623
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/preference/VolumePreference$SeekBarVolumizer;->this$0:Landroid/preference/VolumePreference;

    #getter for: Landroid/preference/VolumePreference;->mDisplayType:I
    invoke-static {v4}, Landroid/preference/VolumePreference;->access$000(Landroid/preference/VolumePreference;)I

    move-result v4

    if-nez v4, :cond_4

    .line 624
    const-string v4, "VolumePreference"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "initSeekBar : seekBar.setMax : mAudioManager.getStreamMaxVolume(mStreamType) : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/preference/VolumePreference$SeekBarVolumizer;->mAudioManager:Landroid/media/AudioManager;

    move-object/from16 v0, p0

    iget v7, v0, Landroid/preference/VolumePreference$SeekBarVolumizer;->mStreamType:I

    invoke-virtual {v6, v7}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 625
    const-string v4, "VolumePreference"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "initSeekBar : mStreamType : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget v6, v0, Landroid/preference/VolumePreference$SeekBarVolumizer;->mStreamType:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 626
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/preference/VolumePreference$SeekBarVolumizer;->mAudioManager:Landroid/media/AudioManager;

    move-object/from16 v0, p0

    iget v5, v0, Landroid/preference/VolumePreference$SeekBarVolumizer;->mStreamType:I

    invoke-virtual {v4, v5}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v4

    move-object/from16 v0, p0

    iput v4, v0, Landroid/preference/VolumePreference$SeekBarVolumizer;->mOriginalStreamVolume:I

    .line 627
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/preference/VolumePreference$SeekBarVolumizer;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v4}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v4

    move-object/from16 v0, p0

    iput v4, v0, Landroid/preference/VolumePreference$SeekBarVolumizer;->mOriginalRingerMode:I

    .line 630
    move-object/from16 v0, p0

    iget v4, v0, Landroid/preference/VolumePreference$SeekBarVolumizer;->mOriginalStreamVolume:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 631
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 632
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setOnSeekBarChangeKeyListener(Landroid/widget/SeekBar$OnSeekBarChangeKeyListener;)V

    .line 634
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/preference/VolumePreference$SeekBarVolumizer;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    sget-object v5, Landroid/provider/Settings$System;->VOLUME_SETTINGS:[Ljava/lang/String;

    move-object/from16 v0, p0

    iget v6, v0, Landroid/preference/VolumePreference$SeekBarVolumizer;->mStreamType:I

    aget-object v5, v5, v6

    invoke-static {v5}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget-object v7, v0, Landroid/preference/VolumePreference$SeekBarVolumizer;->mVolumeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v4, v5, v6, v7}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 638
    if-nez p2, :cond_0

    .line 639
    move-object/from16 v0, p0

    iget v4, v0, Landroid/preference/VolumePreference$SeekBarVolumizer;->mStreamType:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_2

    .line 640
    sget-object p2, Landroid/provider/Settings$System;->DEFAULT_RINGTONE_URI:Landroid/net/Uri;

    .line 648
    :cond_0
    :goto_0
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/preference/VolumePreference$SeekBarVolumizer;->mContext:Landroid/content/Context;

    move-object/from16 v0, p2

    invoke-static {v4, v0}, Landroid/media/RingtoneManager;->getRingtone(Landroid/content/Context;Landroid/net/Uri;)Landroid/media/Ringtone;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Landroid/preference/VolumePreference$SeekBarVolumizer;->mRingtone:Landroid/media/Ringtone;

    .line 650
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/preference/VolumePreference$SeekBarVolumizer;->mRingtone:Landroid/media/Ringtone;

    if-eqz v4, :cond_1

    .line 651
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/preference/VolumePreference$SeekBarVolumizer;->mRingtone:Landroid/media/Ringtone;

    move-object/from16 v0, p0

    iget v5, v0, Landroid/preference/VolumePreference$SeekBarVolumizer;->mStreamType:I

    invoke-virtual {v4, v5}, Landroid/media/Ringtone;->setStreamType(I)V

    .line 764
    :cond_1
    :goto_1
    return-void

    .line 641
    :cond_2
    move-object/from16 v0, p0

    iget v4, v0, Landroid/preference/VolumePreference$SeekBarVolumizer;->mStreamType:I

    const/4 v5, 0x5

    if-ne v4, v5, :cond_3

    .line 642
    sget-object p2, Landroid/provider/Settings$System;->DEFAULT_NOTIFICATION_URI:Landroid/net/Uri;

    goto :goto_0

    .line 644
    :cond_3
    sget-object p2, Landroid/provider/Settings$System;->DEFAULT_ALARM_ALERT_URI:Landroid/net/Uri;

    goto :goto_0

    .line 656
    :cond_4
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/preference/VolumePreference$SeekBarVolumizer;->this$0:Landroid/preference/VolumePreference;

    invoke-virtual {v4}, Landroid/preference/VolumePreference;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "sound_profile_edit_mode"

    const/4 v6, 0x0

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v19

    .line 658
    .local v19, editMode:I
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/preference/VolumePreference$SeekBarVolumizer;->this$0:Landroid/preference/VolumePreference;

    invoke-virtual {v4}, Landroid/preference/VolumePreference;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "sound_profile_mode"

    const/4 v6, 0x0

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v17

    .line 661
    .local v17, currentMode:I
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/preference/VolumePreference$SeekBarVolumizer;->mAudioManager:Landroid/media/AudioManager;

    const-string v5, "audioParam;curDevice"

    invoke-virtual {v4, v5}, Landroid/media/AudioManager;->getParameters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    .line 662
    .local v20, isMusicHPH:Ljava/lang/String;
    const/16 v22, 0x0

    .line 663
    .local v22, useEarPhone:Z
    const-string v4, "HPH"

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 664
    const/16 v22, 0x1

    .line 667
    :cond_5
    const-string v8, "com.android.settings"

    .line 668
    .local v8, AUTHORITY:Ljava/lang/String;
    const-string v16, "profile"

    .line 669
    .local v16, PROFILE_TABLE:Ljava/lang/String;
    const-string v4, "content://com.android.settings/profile"

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 670
    .local v3, PROFILE_CONTENT_URI:Landroid/net/Uri;
    const-string v14, "profile_ring_volume"

    .line 671
    .local v14, PROFILE_RING_VOLUME:Ljava/lang/String;
    const-string v15, "profile_system_volume"

    .line 672
    .local v15, PROFILE_SYSTEM_VOLUME:Ljava/lang/String;
    const-string v10, "profile_music_volume"

    .line 673
    .local v10, PROFILE_MUSIC_VOLUME:Ljava/lang/String;
    const-string v12, "profile_notification_volume"

    .line 674
    .local v12, PROFILE_NOTIFICATION_VOLUME:Ljava/lang/String;
    const-string v9, "profile_hph_music_volume"

    .line 675
    .local v9, PROFILE_HPH_MUSIC_VOLUME:Ljava/lang/String;
    const-string v13, "profile_ringtone"

    .line 676
    .local v13, PROFILE_RINGTONE:Ljava/lang/String;
    const-string v11, "profile_notification_tone"

    .line 678
    .local v11, PROFILE_NOTIFICATION_TONE:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/preference/VolumePreference$SeekBarVolumizer;->this$0:Landroid/preference/VolumePreference;

    invoke-virtual {v4}, Landroid/preference/VolumePreference;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 679
    .local v2, cr:Landroid/content/ContentResolver;
    const/4 v4, 0x0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "_id="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    add-int/lit8 v6, v19, 0x1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v18

    .line 680
    .local v18, cursor:Landroid/database/Cursor;
    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->moveToFirst()Z

    .line 682
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/preference/VolumePreference$SeekBarVolumizer;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v4}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v4

    move-object/from16 v0, p0

    iput v4, v0, Landroid/preference/VolumePreference$SeekBarVolumizer;->mOriginalRingerMode:I

    .line 684
    move-object/from16 v0, p0

    iget v4, v0, Landroid/preference/VolumePreference$SeekBarVolumizer;->mStreamType:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_9

    .line 685
    const-string v4, "profile_ring_volume"

    move-object/from16 v0, v18

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    move-object/from16 v0, v18

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    move-object/from16 v0, p0

    iput v4, v0, Landroid/preference/VolumePreference$SeekBarVolumizer;->mOriginalStreamVolume:I

    .line 697
    :cond_6
    :goto_2
    const-string v4, "profile_hph_music_volume"

    move-object/from16 v0, v18

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    move-object/from16 v0, v18

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    move-object/from16 v0, p0

    iput v4, v0, Landroid/preference/VolumePreference$SeekBarVolumizer;->mOriginalMusicStreamVolumeHPH:I

    .line 699
    const-string v4, "VolumePreference"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "initSeekBar : mStreamType : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget v6, v0, Landroid/preference/VolumePreference$SeekBarVolumizer;->mStreamType:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "  volume :"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget v6, v0, Landroid/preference/VolumePreference$SeekBarVolumizer;->mOriginalStreamVolume:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 701
    move-object/from16 v0, p0

    iget v4, v0, Landroid/preference/VolumePreference$SeekBarVolumizer;->mStreamType:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_c

    .line 702
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/preference/VolumePreference$SeekBarVolumizer;->mAudioManager:Landroid/media/AudioManager;

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/preference/VolumePreference$SeekBarVolumizer;->mAudioManager:Landroid/media/AudioManager;

    const/4 v5, 0x2

    move-object/from16 v0, p0

    iget v6, v0, Landroid/preference/VolumePreference$SeekBarVolumizer;->mOriginalStreamVolume:I

    const/4 v7, 0x0

    invoke-virtual {v4, v5, v6, v7}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 710
    :cond_7
    :goto_3
    if-eqz v22, :cond_e

    move-object/from16 v0, p0

    iget v4, v0, Landroid/preference/VolumePreference$SeekBarVolumizer;->mStreamType:I

    const/4 v5, 0x3

    if-ne v4, v5, :cond_e

    .line 711
    move-object/from16 v0, p0

    iget v4, v0, Landroid/preference/VolumePreference$SeekBarVolumizer;->mOriginalMusicStreamVolumeHPH:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 716
    :goto_4
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 717
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setOnSeekBarChangeKeyListener(Landroid/widget/SeekBar$OnSeekBarChangeKeyListener;)V

    .line 719
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/preference/VolumePreference$SeekBarVolumizer;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    sget-object v5, Landroid/provider/Settings$System;->VOLUME_SETTINGS:[Ljava/lang/String;

    move-object/from16 v0, p0

    iget v6, v0, Landroid/preference/VolumePreference$SeekBarVolumizer;->mStreamType:I

    aget-object v5, v5, v6

    invoke-static {v5}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget-object v7, v0, Landroid/preference/VolumePreference$SeekBarVolumizer;->mVolumeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v4, v5, v6, v7}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 725
    move-object/from16 v0, p0

    iget v4, v0, Landroid/preference/VolumePreference$SeekBarVolumizer;->mStreamType:I

    packed-switch v4, :pswitch_data_0

    .line 758
    :cond_8
    :goto_5
    :pswitch_0
    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->close()V

    .line 760
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/preference/VolumePreference$SeekBarVolumizer;->mRingtone:Landroid/media/Ringtone;

    if-eqz v4, :cond_1

    .line 761
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/preference/VolumePreference$SeekBarVolumizer;->mRingtone:Landroid/media/Ringtone;

    move-object/from16 v0, p0

    iget v5, v0, Landroid/preference/VolumePreference$SeekBarVolumizer;->mStreamType:I

    invoke-virtual {v4, v5}, Landroid/media/Ringtone;->setStreamType(I)V

    goto/16 :goto_1

    .line 687
    :cond_9
    move-object/from16 v0, p0

    iget v4, v0, Landroid/preference/VolumePreference$SeekBarVolumizer;->mStreamType:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_a

    .line 688
    const-string v4, "profile_system_volume"

    move-object/from16 v0, v18

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    move-object/from16 v0, v18

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    move-object/from16 v0, p0

    iput v4, v0, Landroid/preference/VolumePreference$SeekBarVolumizer;->mOriginalStreamVolume:I

    goto/16 :goto_2

    .line 690
    :cond_a
    move-object/from16 v0, p0

    iget v4, v0, Landroid/preference/VolumePreference$SeekBarVolumizer;->mStreamType:I

    const/4 v5, 0x3

    if-ne v4, v5, :cond_b

    .line 691
    const-string v4, "profile_music_volume"

    move-object/from16 v0, v18

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    move-object/from16 v0, v18

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    move-object/from16 v0, p0

    iput v4, v0, Landroid/preference/VolumePreference$SeekBarVolumizer;->mOriginalStreamVolume:I

    goto/16 :goto_2

    .line 693
    :cond_b
    move-object/from16 v0, p0

    iget v4, v0, Landroid/preference/VolumePreference$SeekBarVolumizer;->mStreamType:I

    const/4 v5, 0x5

    if-ne v4, v5, :cond_6

    .line 694
    const-string v4, "profile_notification_volume"

    move-object/from16 v0, v18

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    move-object/from16 v0, v18

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    move-object/from16 v0, p0

    iput v4, v0, Landroid/preference/VolumePreference$SeekBarVolumizer;->mOriginalStreamVolume:I

    goto/16 :goto_2

    .line 703
    :cond_c
    move-object/from16 v0, p0

    iget v4, v0, Landroid/preference/VolumePreference$SeekBarVolumizer;->mStreamType:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_d

    .line 704
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/preference/VolumePreference$SeekBarVolumizer;->mAudioManager:Landroid/media/AudioManager;

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/preference/VolumePreference$SeekBarVolumizer;->mAudioManager:Landroid/media/AudioManager;

    const/4 v5, 0x1

    move-object/from16 v0, p0

    iget v6, v0, Landroid/preference/VolumePreference$SeekBarVolumizer;->mOriginalStreamVolume:I

    const/4 v7, 0x0

    invoke-virtual {v4, v5, v6, v7}, Landroid/media/AudioManager;->setStreamVolume(III)V

    goto/16 :goto_3

    .line 706
    :cond_d
    move-object/from16 v0, p0

    iget v4, v0, Landroid/preference/VolumePreference$SeekBarVolumizer;->mStreamType:I

    const/4 v5, 0x5

    if-ne v4, v5, :cond_7

    .line 707
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/preference/VolumePreference$SeekBarVolumizer;->mAudioManager:Landroid/media/AudioManager;

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/preference/VolumePreference$SeekBarVolumizer;->mAudioManager:Landroid/media/AudioManager;

    const/4 v5, 0x5

    move-object/from16 v0, p0

    iget v6, v0, Landroid/preference/VolumePreference$SeekBarVolumizer;->mOriginalStreamVolume:I

    const/4 v7, 0x0

    invoke-virtual {v4, v5, v6, v7}, Landroid/media/AudioManager;->setStreamVolume(III)V

    goto/16 :goto_3

    .line 714
    :cond_e
    move-object/from16 v0, p0

    iget v4, v0, Landroid/preference/VolumePreference$SeekBarVolumizer;->mOriginalStreamVolume:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/widget/SeekBar;->setProgress(I)V

    goto/16 :goto_4

    .line 727
    :pswitch_1
    const-string v4, "profile_ringtone"

    move-object/from16 v0, v18

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    move-object/from16 v0, v18

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v21

    .line 728
    .local v21, ringtoneName:Ljava/lang/String;
    if-eqz v21, :cond_f

    .line 729
    invoke-static/range {v21 .. v21}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    .line 731
    :cond_f
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/preference/VolumePreference$SeekBarVolumizer;->mContext:Landroid/content/Context;

    move-object/from16 v0, p2

    invoke-static {v4, v0}, Landroid/media/RingtoneManager;->getRingtone(Landroid/content/Context;Landroid/net/Uri;)Landroid/media/Ringtone;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Landroid/preference/VolumePreference$SeekBarVolumizer;->mRingtone:Landroid/media/Ringtone;

    goto/16 :goto_5

    .line 738
    .end local v21           #ringtoneName:Ljava/lang/String;
    :pswitch_2
    const-string v4, "profile_notification_tone"

    move-object/from16 v0, v18

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    move-object/from16 v0, v18

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v21

    .line 739
    .restart local v21       #ringtoneName:Ljava/lang/String;
    if-eqz v21, :cond_10

    .line 740
    invoke-static/range {v21 .. v21}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    .line 742
    :cond_10
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/preference/VolumePreference$SeekBarVolumizer;->mContext:Landroid/content/Context;

    move-object/from16 v0, p2

    invoke-static {v4, v0}, Landroid/media/RingtoneManager;->getRingtone(Landroid/content/Context;Landroid/net/Uri;)Landroid/media/Ringtone;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Landroid/preference/VolumePreference$SeekBarVolumizer;->mRingtone:Landroid/media/Ringtone;

    goto/16 :goto_5

    .line 749
    .end local v21           #ringtoneName:Ljava/lang/String;
    :pswitch_3
    if-eqz p2, :cond_8

    .line 750
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/preference/VolumePreference$SeekBarVolumizer;->mContext:Landroid/content/Context;

    move-object/from16 v0, p2

    invoke-static {v4, v0}, Landroid/media/RingtoneManager;->getRingtone(Landroid/content/Context;Landroid/net/Uri;)Landroid/media/Ringtone;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Landroid/preference/VolumePreference$SeekBarVolumizer;->mRingtone:Landroid/media/Ringtone;

    goto/16 :goto_5

    .line 725
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_3
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private stopToneGenerator()V
    .locals 2

    .prologue
    .line 493
    iget-object v0, p0, Landroid/preference/VolumePreference$SeekBarVolumizer;->mToneGenerator:Landroid/media/ToneGenerator;

    if-eqz v0, :cond_0

    .line 494
    iget-object v0, p0, Landroid/preference/VolumePreference$SeekBarVolumizer;->mToneGenerator:Landroid/media/ToneGenerator;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/media/ToneGenerator;->setVolume(F)V

    .line 496
    iget-object v0, p0, Landroid/preference/VolumePreference$SeekBarVolumizer;->mToneGenerator:Landroid/media/ToneGenerator;

    invoke-virtual {v0}, Landroid/media/ToneGenerator;->stopTone()V

    .line 497
    iget-object v0, p0, Landroid/preference/VolumePreference$SeekBarVolumizer;->mToneGenerator:Landroid/media/ToneGenerator;

    invoke-virtual {v0}, Landroid/media/ToneGenerator;->release()V

    .line 498
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/preference/VolumePreference$SeekBarVolumizer;->mToneGenerator:Landroid/media/ToneGenerator;

    .line 500
    :cond_0
    return-void
.end method


# virtual methods
.method public changeVolumeBy(I)V
    .locals 3
    .parameter "amount"

    .prologue
    .line 584
    iget-object v0, p0, Landroid/preference/VolumePreference$SeekBarVolumizer;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0, p1}, Landroid/widget/SeekBar;->incrementProgressBy(I)V

    .line 585
    invoke-virtual {p0}, Landroid/preference/VolumePreference$SeekBarVolumizer;->isSamplePlaying()Z

    move-result v0

    if-nez v0, :cond_0

    .line 586
    const-string v0, "VolumePreference"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "changeVolumeBy : (!isSamplePlaying()) amount:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 587
    invoke-virtual {p0}, Landroid/preference/VolumePreference$SeekBarVolumizer;->startSample()V

    .line 589
    :cond_0
    iget-object v0, p0, Landroid/preference/VolumePreference$SeekBarVolumizer;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0}, Landroid/widget/SeekBar;->getProgress()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/preference/VolumePreference$SeekBarVolumizer;->postSetVolume(I)V

    .line 590
    const/4 v0, -0x1

    iput v0, p0, Landroid/preference/VolumePreference$SeekBarVolumizer;->mVolumeBeforeMute:I

    .line 591
    return-void
.end method

.method public getSeekBar()Landroid/widget/SeekBar;
    .locals 1

    .prologue
    .line 580
    iget-object v0, p0, Landroid/preference/VolumePreference$SeekBarVolumizer;->mSeekBar:Landroid/widget/SeekBar;

    return-object v0
.end method

.method public isSamplePlaying()Z
    .locals 1

    .prologue
    .line 538
    iget-object v0, p0, Landroid/preference/VolumePreference$SeekBarVolumizer;->mRingtone:Landroid/media/Ringtone;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/preference/VolumePreference$SeekBarVolumizer;->mRingtone:Landroid/media/Ringtone;

    invoke-virtual {v0}, Landroid/media/Ringtone;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public muteVolume()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    const/4 v2, -0x1

    .line 594
    iget v0, p0, Landroid/preference/VolumePreference$SeekBarVolumizer;->mVolumeBeforeMute:I

    if-eq v0, v2, :cond_0

    .line 595
    iget-object v0, p0, Landroid/preference/VolumePreference$SeekBarVolumizer;->mSeekBar:Landroid/widget/SeekBar;

    iget v1, p0, Landroid/preference/VolumePreference$SeekBarVolumizer;->mVolumeBeforeMute:I

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 596
    invoke-virtual {p0}, Landroid/preference/VolumePreference$SeekBarVolumizer;->startSample()V

    .line 597
    iget v0, p0, Landroid/preference/VolumePreference$SeekBarVolumizer;->mVolumeBeforeMute:I

    invoke-virtual {p0, v0}, Landroid/preference/VolumePreference$SeekBarVolumizer;->postSetVolume(I)V

    .line 598
    iput v2, p0, Landroid/preference/VolumePreference$SeekBarVolumizer;->mVolumeBeforeMute:I

    .line 605
    :goto_0
    return-void

    .line 600
    :cond_0
    iget-object v0, p0, Landroid/preference/VolumePreference$SeekBarVolumizer;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0}, Landroid/widget/SeekBar;->getProgress()I

    move-result v0

    iput v0, p0, Landroid/preference/VolumePreference$SeekBarVolumizer;->mVolumeBeforeMute:I

    .line 601
    iget-object v0, p0, Landroid/preference/VolumePreference$SeekBarVolumizer;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 602
    invoke-virtual {p0}, Landroid/preference/VolumePreference$SeekBarVolumizer;->stopSample()V

    .line 603
    invoke-virtual {p0, v1}, Landroid/preference/VolumePreference$SeekBarVolumizer;->postSetVolume(I)V

    goto :goto_0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 4
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v3, 0x1

    .line 767
    const-string v0, "VolumePreference"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " onKeyDown:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 768
    packed-switch p1, :pswitch_data_0

    .line 785
    :cond_0
    :goto_0
    return v3

    .line 771
    :pswitch_0
    invoke-virtual {p0}, Landroid/preference/VolumePreference$SeekBarVolumizer;->stopSample()V

    goto :goto_0

    .line 776
    :pswitch_1
    const-string v0, "VolumePreference"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " getProgress:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/preference/VolumePreference$SeekBarVolumizer;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v2}, Landroid/widget/SeekBar;->getProgress()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 777
    invoke-virtual {p0}, Landroid/preference/VolumePreference$SeekBarVolumizer;->isSamplePlaying()Z

    move-result v0

    if-nez v0, :cond_0

    .line 778
    invoke-virtual {p0}, Landroid/preference/VolumePreference$SeekBarVolumizer;->startSample()V

    goto :goto_0

    .line 768
    nop

    :pswitch_data_0
    .packed-switch 0x13
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 8
    .parameter "seekBar"
    .parameter "progress"
    .parameter "fromTouch"

    .prologue
    const/16 v7, 0x8

    const/4 v5, 0x0

    const/4 v6, 0x1

    .line 443
    if-nez p3, :cond_0

    .line 490
    :goto_0
    return-void

    .line 446
    :cond_0
    invoke-direct {p0}, Landroid/preference/VolumePreference$SeekBarVolumizer;->stopToneGenerator()V

    .line 448
    iget v3, p0, Landroid/preference/VolumePreference$SeekBarVolumizer;->mStreamType:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_3

    .line 449
    const-string v3, "CTC"

    const-string v4, "ro.csc.sales_code"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "CHM"

    const-string v4, "ro.csc.sales_code"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 451
    :cond_1
    iget-object v3, p0, Landroid/preference/VolumePreference$SeekBarVolumizer;->this$0:Landroid/preference/VolumePreference;

    #getter for: Landroid/preference/VolumePreference;->mDisplayType:I
    invoke-static {v3}, Landroid/preference/VolumePreference;->access$000(Landroid/preference/VolumePreference;)I

    move-result v3

    if-ne v3, v6, :cond_2

    .line 452
    if-ge p2, v6, :cond_2

    .line 453
    const/4 p2, 0x1

    .line 458
    :cond_2
    invoke-virtual {p0, p2}, Landroid/preference/VolumePreference$SeekBarVolumizer;->setSeekBarVolume(I)V

    goto :goto_0

    .line 459
    :cond_3
    iget v3, p0, Landroid/preference/VolumePreference$SeekBarVolumizer;->mStreamType:I

    const/4 v4, 0x5

    if-ne v3, v4, :cond_4

    .line 460
    invoke-virtual {p0, p2}, Landroid/preference/VolumePreference$SeekBarVolumizer;->postSetVolume(I)V

    goto :goto_0

    .line 461
    :cond_4
    iget v3, p0, Landroid/preference/VolumePreference$SeekBarVolumizer;->mStreamType:I

    if-ne v3, v6, :cond_8

    .line 462
    iget-object v3, p0, Landroid/preference/VolumePreference$SeekBarVolumizer;->this$0:Landroid/preference/VolumePreference;

    invoke-virtual {v3, p0}, Landroid/preference/VolumePreference;->onSampleStarting(Landroid/preference/VolumePreference$SeekBarVolumizer;)V

    .line 463
    iget-object v3, p0, Landroid/preference/VolumePreference$SeekBarVolumizer;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v3, v6, p2, v5}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 465
    invoke-direct {p0}, Landroid/preference/VolumePreference$SeekBarVolumizer;->getTelephonyService()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    .line 466
    .local v1, telephonyService:Lcom/android/internal/telephony/ITelephony;
    if-eqz v1, :cond_6

    .line 468
    :try_start_0
    const-string v3, "VolumePreference"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isRinging : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v1}, Lcom/android/internal/telephony/ITelephony;->isRinging()Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 469
    const-string v3, "VolumePreference"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isOffhook : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v1}, Lcom/android/internal/telephony/ITelephony;->isOffhook()Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 470
    invoke-interface {v1}, Lcom/android/internal/telephony/ITelephony;->isRinging()Z

    move-result v3

    if-nez v3, :cond_5

    invoke-interface {v1}, Lcom/android/internal/telephony/ITelephony;->isOffhook()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 471
    :cond_5
    const-string v3, "VolumePreference"

    const-string v4, "don\'t play STREAM_SYSTEM in volumepreference."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 479
    :cond_6
    :goto_1
    const-string v3, "VolumePreference"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onProgressChanged : AudioManager.STREAM_SYSTEM["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Landroid/preference/VolumePreference$SeekBarVolumizer;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v5, v6}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 473
    :cond_7
    :try_start_1
    iget-object v3, p0, Landroid/preference/VolumePreference$SeekBarVolumizer;->mAudioManager:Landroid/media/AudioManager;

    const/16 v4, 0x9

    int-to-float v5, p2

    invoke-virtual {v3, v4, v5}, Landroid/media/AudioManager;->playSoundEffect(IF)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 475
    :catch_0
    move-exception v0

    .line 476
    .local v0, ex:Landroid/os/RemoteException;
    const-string v3, "VolumePreference"

    const-string v4, "ITelephony threw RemoteException"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 480
    .end local v0           #ex:Landroid/os/RemoteException;
    .end local v1           #telephonyService:Lcom/android/internal/telephony/ITelephony;
    :cond_8
    iget v3, p0, Landroid/preference/VolumePreference$SeekBarVolumizer;->mStreamType:I

    if-ne v3, v7, :cond_9

    .line 481
    iget-object v3, p0, Landroid/preference/VolumePreference$SeekBarVolumizer;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "volume_waiting_tone"

    invoke-static {v3, v4, p2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 483
    new-instance v3, Landroid/media/ToneGenerator;

    invoke-direct {v3, v7, v5}, Landroid/media/ToneGenerator;-><init>(II)V

    iput-object v3, p0, Landroid/preference/VolumePreference$SeekBarVolumizer;->mToneGenerator:Landroid/media/ToneGenerator;

    .line 484
    const-wide/high16 v3, 0x4000

    add-int/lit8 v5, p2, -0x2

    int-to-double v5, v5

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v3

    double-to-float v2, v3

    .line 485
    .local v2, volFloat:F
    iget-object v3, p0, Landroid/preference/VolumePreference$SeekBarVolumizer;->mToneGenerator:Landroid/media/ToneGenerator;

    iget-object v4, p0, Landroid/preference/VolumePreference$SeekBarVolumizer;->mAudioManager:Landroid/media/AudioManager;

    const-string v5, "situation=15;device=0"

    invoke-virtual {v4, v5}, Landroid/media/AudioManager;->getParameters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v4

    mul-float/2addr v4, v2

    invoke-virtual {v3, v4}, Landroid/media/ToneGenerator;->setVolume(F)V

    .line 486
    iget-object v3, p0, Landroid/preference/VolumePreference$SeekBarVolumizer;->mToneGenerator:Landroid/media/ToneGenerator;

    const/16 v4, 0x16

    const/16 v5, 0x12c

    invoke-virtual {v3, v4, v5}, Landroid/media/ToneGenerator;->startTone(II)Z

    goto/16 :goto_0

    .line 488
    .end local v2           #volFloat:F
    :cond_9
    invoke-virtual {p0, p2}, Landroid/preference/VolumePreference$SeekBarVolumizer;->postSetVolume(I)V

    goto/16 :goto_0
.end method

.method public onRestoreInstanceState(Landroid/preference/VolumePreference$VolumeStore;)V
    .locals 2
    .parameter "volumeStore"

    .prologue
    .line 615
    iget v0, p1, Landroid/preference/VolumePreference$VolumeStore;->volume:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 616
    iget v0, p1, Landroid/preference/VolumePreference$VolumeStore;->originalVolume:I

    iput v0, p0, Landroid/preference/VolumePreference$SeekBarVolumizer;->mOriginalStreamVolume:I

    .line 617
    iget v0, p1, Landroid/preference/VolumePreference$VolumeStore;->volume:I

    iput v0, p0, Landroid/preference/VolumePreference$SeekBarVolumizer;->mLastProgress:I

    .line 618
    iget v0, p0, Landroid/preference/VolumePreference$SeekBarVolumizer;->mLastProgress:I

    invoke-virtual {p0, v0}, Landroid/preference/VolumePreference$SeekBarVolumizer;->postSetVolume(I)V

    .line 620
    :cond_0
    return-void
.end method

.method public onSaveInstanceState(Landroid/preference/VolumePreference$VolumeStore;)V
    .locals 1
    .parameter "volumeStore"

    .prologue
    .line 608
    iget v0, p0, Landroid/preference/VolumePreference$SeekBarVolumizer;->mLastProgress:I

    if-ltz v0, :cond_0

    .line 609
    iget v0, p0, Landroid/preference/VolumePreference$SeekBarVolumizer;->mLastProgress:I

    iput v0, p1, Landroid/preference/VolumePreference$VolumeStore;->volume:I

    .line 610
    iget v0, p0, Landroid/preference/VolumePreference$SeekBarVolumizer;->mOriginalStreamVolume:I

    iput v0, p1, Landroid/preference/VolumePreference$VolumeStore;->originalVolume:I

    .line 612
    :cond_0
    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 1
    .parameter "seekBar"

    .prologue
    .line 510
    invoke-virtual {p0}, Landroid/preference/VolumePreference$SeekBarVolumizer;->isSamplePlaying()Z

    move-result v0

    if-nez v0, :cond_0

    .line 511
    invoke-virtual {p0}, Landroid/preference/VolumePreference$SeekBarVolumizer;->startSample()V

    .line 513
    :cond_0
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 3
    .parameter "seekBar"

    .prologue
    const/4 v2, 0x1

    .line 516
    invoke-virtual {p0}, Landroid/preference/VolumePreference$SeekBarVolumizer;->isSamplePlaying()Z

    move-result v0

    if-nez v0, :cond_0

    .line 517
    invoke-virtual {p0}, Landroid/preference/VolumePreference$SeekBarVolumizer;->startSample()V

    .line 520
    :cond_0
    const-string v0, "CTC"

    const-string v1, "ro.csc.sales_code"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "CHM"

    const-string v1, "ro.csc.sales_code"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 522
    :cond_1
    iget-object v0, p0, Landroid/preference/VolumePreference$SeekBarVolumizer;->this$0:Landroid/preference/VolumePreference;

    #getter for: Landroid/preference/VolumePreference;->mDisplayType:I
    invoke-static {v0}, Landroid/preference/VolumePreference;->access$000(Landroid/preference/VolumePreference;)I

    move-result v0

    if-ne v0, v2, :cond_2

    .line 523
    iget v0, p0, Landroid/preference/VolumePreference$SeekBarVolumizer;->mStreamType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 524
    iget v0, p0, Landroid/preference/VolumePreference$SeekBarVolumizer;->mLastProgress:I

    if-ge v0, v2, :cond_2

    .line 525
    iput v2, p0, Landroid/preference/VolumePreference$SeekBarVolumizer;->mLastProgress:I

    .line 526
    iget-object v0, p0, Landroid/preference/VolumePreference$SeekBarVolumizer;->mSeekBar:Landroid/widget/SeekBar;

    iget v1, p0, Landroid/preference/VolumePreference$SeekBarVolumizer;->mLastProgress:I

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 531
    :cond_2
    return-void
.end method

.method postSetVolume(I)V
    .locals 1
    .parameter "progress"

    .prologue
    .line 504
    iput p1, p0, Landroid/preference/VolumePreference$SeekBarVolumizer;->mLastProgress:I

    .line 505
    iget-object v0, p0, Landroid/preference/VolumePreference$SeekBarVolumizer;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 506
    iget-object v0, p0, Landroid/preference/VolumePreference$SeekBarVolumizer;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 507
    return-void
.end method

.method public revertVolume()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 427
    iget v0, p0, Landroid/preference/VolumePreference$SeekBarVolumizer;->mStreamType:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    .line 428
    iget-object v0, p0, Landroid/preference/VolumePreference$SeekBarVolumizer;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "volume_waiting_tone"

    iget v2, p0, Landroid/preference/VolumePreference$SeekBarVolumizer;->mLastWaitingToneVolume:I

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 439
    :goto_0
    return-void

    .line 429
    :cond_0
    iget v0, p0, Landroid/preference/VolumePreference$SeekBarVolumizer;->mStreamType:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Landroid/preference/VolumePreference$SeekBarVolumizer;->mAudioManager:Landroid/media/AudioManager;

    iget v1, p0, Landroid/preference/VolumePreference$SeekBarVolumizer;->mStreamType:I

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->isStreamMute(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 430
    iget-object v0, p0, Landroid/preference/VolumePreference$SeekBarVolumizer;->mAudioManager:Landroid/media/AudioManager;

    iget v1, p0, Landroid/preference/VolumePreference$SeekBarVolumizer;->mStreamType:I

    iget v2, p0, Landroid/preference/VolumePreference$SeekBarVolumizer;->mOriginalNotificationVolume:I

    invoke-virtual {v0, v1, v2, v3}, Landroid/media/AudioManager;->setStreamVolume(III)V

    goto :goto_0

    .line 431
    :cond_1
    iget v0, p0, Landroid/preference/VolumePreference$SeekBarVolumizer;->mStreamType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Landroid/preference/VolumePreference$SeekBarVolumizer;->mAudioManager:Landroid/media/AudioManager;

    iget v1, p0, Landroid/preference/VolumePreference$SeekBarVolumizer;->mStreamType:I

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->isStreamMute(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 432
    iget-object v0, p0, Landroid/preference/VolumePreference$SeekBarVolumizer;->mAudioManager:Landroid/media/AudioManager;

    iget v1, p0, Landroid/preference/VolumePreference$SeekBarVolumizer;->mStreamType:I

    iget v2, p0, Landroid/preference/VolumePreference$SeekBarVolumizer;->mOriginalSystemVolume:I

    invoke-virtual {v0, v1, v2, v3}, Landroid/media/AudioManager;->setStreamVolume(III)V

    goto :goto_0

    .line 434
    :cond_2
    iget v0, p0, Landroid/preference/VolumePreference$SeekBarVolumizer;->mOriginalStreamVolume:I

    if-nez v0, :cond_3

    iget v0, p0, Landroid/preference/VolumePreference$SeekBarVolumizer;->mOriginalRingerMode:I

    if-nez v0, :cond_3

    .line 435
    iget-object v0, p0, Landroid/preference/VolumePreference$SeekBarVolumizer;->mAudioManager:Landroid/media/AudioManager;

    iget v1, p0, Landroid/preference/VolumePreference$SeekBarVolumizer;->mStreamType:I

    iget v2, p0, Landroid/preference/VolumePreference$SeekBarVolumizer;->mOriginalStreamVolume:I

    const/16 v3, 0x40

    invoke-virtual {v0, v1, v2, v3}, Landroid/media/AudioManager;->setStreamVolume(III)V

    goto :goto_0

    .line 437
    :cond_3
    iget-object v0, p0, Landroid/preference/VolumePreference$SeekBarVolumizer;->mAudioManager:Landroid/media/AudioManager;

    iget v1, p0, Landroid/preference/VolumePreference$SeekBarVolumizer;->mStreamType:I

    iget v2, p0, Landroid/preference/VolumePreference$SeekBarVolumizer;->mOriginalStreamVolume:I

    invoke-virtual {v0, v1, v2, v3}, Landroid/media/AudioManager;->setStreamVolume(III)V

    goto :goto_0
.end method

.method public run()V
    .locals 4

    .prologue
    .line 534
    iget-object v0, p0, Landroid/preference/VolumePreference$SeekBarVolumizer;->mAudioManager:Landroid/media/AudioManager;

    iget v1, p0, Landroid/preference/VolumePreference$SeekBarVolumizer;->mStreamType:I

    iget v2, p0, Landroid/preference/VolumePreference$SeekBarVolumizer;->mLastProgress:I

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 535
    return-void
.end method

.method public setSeekBarVolume(I)V
    .locals 1
    .parameter "volume"

    .prologue
    .line 413
    iget-object v0, p0, Landroid/preference/VolumePreference$SeekBarVolumizer;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0, p1}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 414
    invoke-virtual {p0, p1}, Landroid/preference/VolumePreference$SeekBarVolumizer;->postSetVolume(I)V

    .line 415
    return-void
.end method

.method public startSample()V
    .locals 5

    .prologue
    .line 542
    invoke-direct {p0}, Landroid/preference/VolumePreference$SeekBarVolumizer;->getTelephonyService()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    .line 543
    .local v1, telephonyService:Lcom/android/internal/telephony/ITelephony;
    if-eqz v1, :cond_2

    .line 545
    :try_start_0
    const-string v2, "VolumePreference"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isRinging : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {v1}, Lcom/android/internal/telephony/ITelephony;->isRinging()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 546
    const-string v2, "VolumePreference"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isOffhook : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {v1}, Lcom/android/internal/telephony/ITelephony;->isOffhook()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 547
    invoke-interface {v1}, Lcom/android/internal/telephony/ITelephony;->isRinging()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-interface {v1}, Lcom/android/internal/telephony/ITelephony;->isOffhook()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 548
    :cond_0
    const-string v2, "VolumePreference"

    const-string v3, "don\'t play ringtone in volumepreference: return called"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 563
    :cond_1
    :goto_0
    return-void

    .line 551
    :catch_0
    move-exception v0

    .line 552
    .local v0, ex:Landroid/os/RemoteException;
    const-string v2, "VolumePreference"

    const-string v3, "ITelephony threw RemoteException"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 556
    .end local v0           #ex:Landroid/os/RemoteException;
    :cond_2
    iget-object v2, p0, Landroid/preference/VolumePreference$SeekBarVolumizer;->this$0:Landroid/preference/VolumePreference;

    invoke-virtual {v2, p0}, Landroid/preference/VolumePreference;->onSampleStarting(Landroid/preference/VolumePreference$SeekBarVolumizer;)V

    .line 557
    iget-object v2, p0, Landroid/preference/VolumePreference$SeekBarVolumizer;->mRingtone:Landroid/media/Ringtone;

    if-eqz v2, :cond_1

    .line 558
    iget v2, p0, Landroid/preference/VolumePreference$SeekBarVolumizer;->mStreamType:I

    const/4 v3, 0x1

    if-eq v2, v3, :cond_1

    iget v2, p0, Landroid/preference/VolumePreference$SeekBarVolumizer;->mStreamType:I

    const/16 v3, 0x8

    if-eq v2, v3, :cond_1

    .line 559
    iget-object v2, p0, Landroid/preference/VolumePreference$SeekBarVolumizer;->mRingtone:Landroid/media/Ringtone;

    invoke-virtual {v2}, Landroid/media/Ringtone;->play()V

    .line 560
    const-string v2, "VolumePreference"

    const-string v3, "sample : mRingtone.play()"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public stop()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 419
    invoke-virtual {p0}, Landroid/preference/VolumePreference$SeekBarVolumizer;->stopSample()V

    .line 420
    invoke-direct {p0}, Landroid/preference/VolumePreference$SeekBarVolumizer;->stopToneGenerator()V

    .line 421
    iget-object v0, p0, Landroid/preference/VolumePreference$SeekBarVolumizer;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Landroid/preference/VolumePreference$SeekBarVolumizer;->mVolumeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 422
    iget-object v0, p0, Landroid/preference/VolumePreference$SeekBarVolumizer;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0, v2}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 423
    iget-object v0, p0, Landroid/preference/VolumePreference$SeekBarVolumizer;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0, v2}, Landroid/widget/SeekBar;->setOnSeekBarChangeKeyListener(Landroid/widget/SeekBar$OnSeekBarChangeKeyListener;)V

    .line 424
    return-void
.end method

.method public stopSample()V
    .locals 1

    .prologue
    .line 574
    iget-object v0, p0, Landroid/preference/VolumePreference$SeekBarVolumizer;->mRingtone:Landroid/media/Ringtone;

    if-eqz v0, :cond_0

    .line 575
    iget-object v0, p0, Landroid/preference/VolumePreference$SeekBarVolumizer;->mRingtone:Landroid/media/Ringtone;

    invoke-virtual {v0}, Landroid/media/Ringtone;->stop()V

    .line 577
    :cond_0
    return-void
.end method
