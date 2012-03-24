.class public Lcom/android/phone/OverturnTutorialIncallScreen;
.super Landroid/app/Activity;
.source "OverturnTutorialIncallScreen.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/OverturnTutorialIncallScreen$VibratorThread;
    }
.end annotation


# static fields
.field private static final mOverturnDrawable:[I


# instance fields
.field private InfoButton:Landroid/widget/ImageButton;

.field private mAlertDialog:Landroid/app/AlertDialog;

.field private mAnimationIndex:I

.field private mContinueRinging:Z

.field private mImgView:Landroid/widget/ImageView;

.field private mIsForegroundActivity:Z

.field private mMotionListener:Landroid/hardware/motion/MRListener;

.field private mMotionSensorManager:Landroid/hardware/motion/MotionRecognitionManager;

.field private mOkGoodJobDialog:Landroid/app/AlertDialog$Builder;

.field private mOverturnHandler:Landroid/os/Handler;

.field private mOverturnLayout:Landroid/view/View;

.field private mPreviousMsg:I

.field private mRingerType:Z

.field private mRingtone:Landroid/media/Ringtone;

.field private mTutorialDialogON:I

.field mVibrator:Landroid/os/Vibrator;

.field mVibratorThread:Lcom/android/phone/OverturnTutorialIncallScreen$VibratorThread;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 57
    const/4 v0, 0x5

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/phone/OverturnTutorialIncallScreen;->mOverturnDrawable:[I

    return-void

    nop

    :array_0
    .array-data 0x4
        0x37t 0x3t 0x2t 0x7ft
        0x38t 0x3t 0x2t 0x7ft
        0x39t 0x3t 0x2t 0x7ft
        0x3at 0x3t 0x2t 0x7ft
        0x3bt 0x3t 0x2t 0x7ft
    .end array-data
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 47
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 61
    iput v1, p0, Lcom/android/phone/OverturnTutorialIncallScreen;->mPreviousMsg:I

    .line 62
    iput v1, p0, Lcom/android/phone/OverturnTutorialIncallScreen;->mTutorialDialogON:I

    .line 63
    iput-boolean v1, p0, Lcom/android/phone/OverturnTutorialIncallScreen;->mRingerType:Z

    .line 64
    iput-boolean v1, p0, Lcom/android/phone/OverturnTutorialIncallScreen;->mContinueRinging:Z

    .line 66
    iput-object v0, p0, Lcom/android/phone/OverturnTutorialIncallScreen;->mOverturnLayout:Landroid/view/View;

    .line 67
    iput-object v0, p0, Lcom/android/phone/OverturnTutorialIncallScreen;->InfoButton:Landroid/widget/ImageButton;

    .line 68
    iput-object v0, p0, Lcom/android/phone/OverturnTutorialIncallScreen;->mRingtone:Landroid/media/Ringtone;

    .line 69
    iput-object v0, p0, Lcom/android/phone/OverturnTutorialIncallScreen;->mAlertDialog:Landroid/app/AlertDialog;

    .line 70
    iput-object v0, p0, Lcom/android/phone/OverturnTutorialIncallScreen;->mOkGoodJobDialog:Landroid/app/AlertDialog$Builder;

    .line 72
    iput-object v0, p0, Lcom/android/phone/OverturnTutorialIncallScreen;->mMotionSensorManager:Landroid/hardware/motion/MotionRecognitionManager;

    .line 73
    iput-object v0, p0, Lcom/android/phone/OverturnTutorialIncallScreen;->mMotionListener:Landroid/hardware/motion/MRListener;

    .line 75
    iput-boolean v1, p0, Lcom/android/phone/OverturnTutorialIncallScreen;->mIsForegroundActivity:Z

    .line 78
    new-instance v0, Landroid/os/Vibrator;

    invoke-direct {v0}, Landroid/os/Vibrator;-><init>()V

    iput-object v0, p0, Lcom/android/phone/OverturnTutorialIncallScreen;->mVibrator:Landroid/os/Vibrator;

    .line 81
    new-instance v0, Lcom/android/phone/OverturnTutorialIncallScreen$1;

    invoke-direct {v0, p0}, Lcom/android/phone/OverturnTutorialIncallScreen$1;-><init>(Lcom/android/phone/OverturnTutorialIncallScreen;)V

    iput-object v0, p0, Lcom/android/phone/OverturnTutorialIncallScreen;->mOverturnHandler:Landroid/os/Handler;

    .line 246
    return-void
.end method

.method static synthetic access$000(Lcom/android/phone/OverturnTutorialIncallScreen;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 47
    iget v0, p0, Lcom/android/phone/OverturnTutorialIncallScreen;->mPreviousMsg:I

    return v0
.end method

.method static synthetic access$002(Lcom/android/phone/OverturnTutorialIncallScreen;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 47
    iput p1, p0, Lcom/android/phone/OverturnTutorialIncallScreen;->mPreviousMsg:I

    return p1
.end method

.method static synthetic access$100(Lcom/android/phone/OverturnTutorialIncallScreen;)Landroid/app/AlertDialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 47
    iget-object v0, p0, Lcom/android/phone/OverturnTutorialIncallScreen;->mAlertDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/phone/OverturnTutorialIncallScreen;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/android/phone/OverturnTutorialIncallScreen;->isForegroundActivity()Z

    move-result v0

    return v0
.end method

.method static synthetic access$102(Lcom/android/phone/OverturnTutorialIncallScreen;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 47
    iput-object p1, p0, Lcom/android/phone/OverturnTutorialIncallScreen;->mAlertDialog:Landroid/app/AlertDialog;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/android/phone/OverturnTutorialIncallScreen;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/android/phone/OverturnTutorialIncallScreen;->startIncomingSound()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/phone/OverturnTutorialIncallScreen;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 47
    iget v0, p0, Lcom/android/phone/OverturnTutorialIncallScreen;->mAnimationIndex:I

    return v0
.end method

.method static synthetic access$300(Lcom/android/phone/OverturnTutorialIncallScreen;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 47
    invoke-direct {p0, p1}, Lcom/android/phone/OverturnTutorialIncallScreen;->updateAnimation(I)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/phone/OverturnTutorialIncallScreen;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 47
    iget-object v0, p0, Lcom/android/phone/OverturnTutorialIncallScreen;->mOverturnHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/phone/OverturnTutorialIncallScreen;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/android/phone/OverturnTutorialIncallScreen;->stopRingingOrVibration()V

    return-void
.end method

.method static synthetic access$700(Lcom/android/phone/OverturnTutorialIncallScreen;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/android/phone/OverturnTutorialIncallScreen;->stopAnimation()V

    return-void
.end method

.method static synthetic access$802(Lcom/android/phone/OverturnTutorialIncallScreen;Landroid/widget/ImageView;)Landroid/widget/ImageView;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 47
    iput-object p1, p0, Lcom/android/phone/OverturnTutorialIncallScreen;->mImgView:Landroid/widget/ImageView;

    return-object p1
.end method

.method static synthetic access$902(Lcom/android/phone/OverturnTutorialIncallScreen;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 47
    iput p1, p0, Lcom/android/phone/OverturnTutorialIncallScreen;->mTutorialDialogON:I

    return p1
.end method

.method private controlRing(Z)V
    .locals 4
    .parameter "mContinueRinging"

    .prologue
    .line 213
    sget-object v0, Landroid/provider/Settings$System;->DEFAULT_RINGTONE_URI:Landroid/net/Uri;

    .line 217
    .local v0, ringtoneUri:Landroid/net/Uri;
    iget-object v1, p0, Lcom/android/phone/OverturnTutorialIncallScreen;->mRingtone:Landroid/media/Ringtone;

    if-nez v1, :cond_0

    .line 218
    invoke-static {p0, v0}, Landroid/media/RingtoneManager;->getRingtone(Landroid/content/Context;Landroid/net/Uri;)Landroid/media/Ringtone;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/OverturnTutorialIncallScreen;->mRingtone:Landroid/media/Ringtone;

    .line 222
    :cond_0
    const/4 v1, 0x1

    if-ne p1, v1, :cond_3

    .line 223
    iget-object v1, p0, Lcom/android/phone/OverturnTutorialIncallScreen;->mRingtone:Landroid/media/Ringtone;

    if-eqz v1, :cond_2

    .line 224
    iget-object v1, p0, Lcom/android/phone/OverturnTutorialIncallScreen;->mRingtone:Landroid/media/Ringtone;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/media/Ringtone;->setStreamType(I)V

    .line 225
    iget-object v1, p0, Lcom/android/phone/OverturnTutorialIncallScreen;->mRingtone:Landroid/media/Ringtone;

    invoke-virtual {v1}, Landroid/media/Ringtone;->play()V

    .line 234
    :cond_1
    :goto_0
    return-void

    .line 227
    :cond_2
    const-string v1, "OverturnTutorialIncallScreen"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "playRingtones: failed to load ringtone from uri: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 230
    :cond_3
    iget-object v1, p0, Lcom/android/phone/OverturnTutorialIncallScreen;->mRingtone:Landroid/media/Ringtone;

    if-eqz v1, :cond_1

    .line 231
    iget-object v1, p0, Lcom/android/phone/OverturnTutorialIncallScreen;->mRingtone:Landroid/media/Ringtone;

    invoke-virtual {v1}, Landroid/media/Ringtone;->stop()V

    goto :goto_0
.end method

.method private controlVibration()V
    .locals 3

    .prologue
    .line 238
    iget-object v0, p0, Lcom/android/phone/OverturnTutorialIncallScreen;->mVibratorThread:Lcom/android/phone/OverturnTutorialIncallScreen$VibratorThread;

    if-nez v0, :cond_0

    .line 239
    new-instance v0, Lcom/android/phone/OverturnTutorialIncallScreen$VibratorThread;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/phone/OverturnTutorialIncallScreen$VibratorThread;-><init>(Lcom/android/phone/OverturnTutorialIncallScreen;Lcom/android/phone/OverturnTutorialIncallScreen$1;)V

    iput-object v0, p0, Lcom/android/phone/OverturnTutorialIncallScreen;->mVibratorThread:Lcom/android/phone/OverturnTutorialIncallScreen$VibratorThread;

    .line 240
    const-string v0, "OverturnTutorialIncallScreen"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Vibrator Start: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/OverturnTutorialIncallScreen;->mVibratorThread:Lcom/android/phone/OverturnTutorialIncallScreen$VibratorThread;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 241
    iget-object v0, p0, Lcom/android/phone/OverturnTutorialIncallScreen;->mVibratorThread:Lcom/android/phone/OverturnTutorialIncallScreen$VibratorThread;

    invoke-virtual {v0}, Lcom/android/phone/OverturnTutorialIncallScreen$VibratorThread;->start()V

    .line 243
    :cond_0
    return-void
.end method

.method private isForegroundActivity()Z
    .locals 1

    .prologue
    .line 200
    iget-boolean v0, p0, Lcom/android/phone/OverturnTutorialIncallScreen;->mIsForegroundActivity:Z

    return v0
.end method

.method private startAnimation()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 426
    const-string v0, "OverturnTutorialIncallScreen"

    const-string v1, "startAnimation()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 427
    iget-object v0, p0, Lcom/android/phone/OverturnTutorialIncallScreen;->mOverturnHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 428
    iput v2, p0, Lcom/android/phone/OverturnTutorialIncallScreen;->mAnimationIndex:I

    .line 429
    invoke-direct {p0, v2}, Lcom/android/phone/OverturnTutorialIncallScreen;->updateAnimation(I)V

    .line 431
    :cond_0
    return-void
.end method

.method private startIncomingSound()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 289
    iget-boolean v0, p0, Lcom/android/phone/OverturnTutorialIncallScreen;->mRingerType:Z

    if-ne v0, v1, :cond_0

    .line 290
    iput-boolean v1, p0, Lcom/android/phone/OverturnTutorialIncallScreen;->mContinueRinging:Z

    .line 291
    iget-boolean v0, p0, Lcom/android/phone/OverturnTutorialIncallScreen;->mContinueRinging:Z

    invoke-direct {p0, v0}, Lcom/android/phone/OverturnTutorialIncallScreen;->controlRing(Z)V

    .line 295
    :goto_0
    return-void

    .line 294
    :cond_0
    invoke-direct {p0}, Lcom/android/phone/OverturnTutorialIncallScreen;->controlVibration()V

    goto :goto_0
.end method

.method private stopAnimation()V
    .locals 2

    .prologue
    .line 435
    const-string v0, "OverturnTutorialIncallScreen"

    const-string v1, "stopAnimation()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 436
    iget-object v0, p0, Lcom/android/phone/OverturnTutorialIncallScreen;->mOverturnHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 437
    iget-object v0, p0, Lcom/android/phone/OverturnTutorialIncallScreen;->mOverturnHandler:Landroid/os/Handler;

    const/16 v1, 0x14

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 439
    :cond_0
    return-void
.end method

.method private stopRingingOrVibration()V
    .locals 3

    .prologue
    .line 257
    const-string v0, "OverturnTutorialIncallScreen"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Stop Ring or Vibration, mRingerType = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/phone/OverturnTutorialIncallScreen;->mRingerType:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 258
    iget-boolean v0, p0, Lcom/android/phone/OverturnTutorialIncallScreen;->mRingerType:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 259
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/phone/OverturnTutorialIncallScreen;->mContinueRinging:Z

    .line 260
    iget-boolean v0, p0, Lcom/android/phone/OverturnTutorialIncallScreen;->mContinueRinging:Z

    invoke-direct {p0, v0}, Lcom/android/phone/OverturnTutorialIncallScreen;->controlRing(Z)V

    .line 265
    :goto_0
    return-void

    .line 262
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/phone/OverturnTutorialIncallScreen;->mVibratorThread:Lcom/android/phone/OverturnTutorialIncallScreen$VibratorThread;

    .line 263
    iget-object v0, p0, Lcom/android/phone/OverturnTutorialIncallScreen;->mVibrator:Landroid/os/Vibrator;

    invoke-virtual {v0}, Landroid/os/Vibrator;->cancel()V

    goto :goto_0
.end method

.method private updateAnimation(I)V
    .locals 5
    .parameter "index"

    .prologue
    const/16 v4, 0x14

    .line 407
    const/4 v0, 0x0

    .line 408
    .local v0, animation_size:I
    iget-object v1, p0, Lcom/android/phone/OverturnTutorialIncallScreen;->mImgView:Landroid/widget/ImageView;

    if-eqz v1, :cond_0

    .line 409
    sget-object v1, Lcom/android/phone/OverturnTutorialIncallScreen;->mOverturnDrawable:[I

    array-length v0, v1

    .line 410
    iget-object v1, p0, Lcom/android/phone/OverturnTutorialIncallScreen;->mImgView:Landroid/widget/ImageView;

    sget-object v2, Lcom/android/phone/OverturnTutorialIncallScreen;->mOverturnDrawable:[I

    aget v2, v2, p1

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 413
    :cond_0
    add-int/lit8 v1, p1, 0x1

    iput v1, p0, Lcom/android/phone/OverturnTutorialIncallScreen;->mAnimationIndex:I

    .line 414
    iget-object v1, p0, Lcom/android/phone/OverturnTutorialIncallScreen;->mOverturnHandler:Landroid/os/Handler;

    if-eqz v1, :cond_1

    .line 415
    iget v1, p0, Lcom/android/phone/OverturnTutorialIncallScreen;->mAnimationIndex:I

    if-lt v1, v0, :cond_2

    .line 416
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/phone/OverturnTutorialIncallScreen;->mAnimationIndex:I

    .line 417
    iget-object v1, p0, Lcom/android/phone/OverturnTutorialIncallScreen;->mOverturnHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x7d0

    invoke-virtual {v1, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 422
    :cond_1
    :goto_0
    return-void

    .line 419
    :cond_2
    iget-object v1, p0, Lcom/android/phone/OverturnTutorialIncallScreen;->mOverturnHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v1, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0
.end method


# virtual methods
.method public finish()V
    .locals 2

    .prologue
    .line 270
    invoke-super {p0}, Landroid/app/Activity;->finish()V

    .line 271
    invoke-direct {p0}, Lcom/android/phone/OverturnTutorialIncallScreen;->stopRingingOrVibration()V

    .line 272
    iget-object v0, p0, Lcom/android/phone/OverturnTutorialIncallScreen;->mMotionSensorManager:Landroid/hardware/motion/MotionRecognitionManager;

    if-eqz v0, :cond_0

    .line 273
    iget-object v0, p0, Lcom/android/phone/OverturnTutorialIncallScreen;->mMotionSensorManager:Landroid/hardware/motion/MotionRecognitionManager;

    iget-object v1, p0, Lcom/android/phone/OverturnTutorialIncallScreen;->mMotionListener:Landroid/hardware/motion/MRListener;

    invoke-virtual {v0, v1}, Landroid/hardware/motion/MotionRecognitionManager;->unregisterListener(Landroid/hardware/motion/MRListener;)V

    .line 275
    :cond_0
    return-void
.end method

.method public onBackPressed()V
    .locals 2

    .prologue
    .line 280
    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    .line 281
    invoke-direct {p0}, Lcom/android/phone/OverturnTutorialIncallScreen;->stopRingingOrVibration()V

    .line 283
    iget-object v0, p0, Lcom/android/phone/OverturnTutorialIncallScreen;->mMotionSensorManager:Landroid/hardware/motion/MotionRecognitionManager;

    if-eqz v0, :cond_0

    .line 284
    iget-object v0, p0, Lcom/android/phone/OverturnTutorialIncallScreen;->mMotionSensorManager:Landroid/hardware/motion/MotionRecognitionManager;

    iget-object v1, p0, Lcom/android/phone/OverturnTutorialIncallScreen;->mMotionListener:Landroid/hardware/motion/MRListener;

    invoke-virtual {v0, v1}, Landroid/hardware/motion/MotionRecognitionManager;->unregisterListener(Landroid/hardware/motion/MRListener;)V

    .line 286
    :cond_0
    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    .line 444
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3
    .parameter "newConfig"

    .prologue
    .line 301
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 302
    const-string v0, "OverturnTutorialIncallScreen"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onConfigurationChanged(), mPreviousMsg = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/phone/OverturnTutorialIncallScreen;->mPreviousMsg:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 303
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 8
    .parameter "savedInstanceState"

    .prologue
    const/4 v7, -0x1

    .line 106
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 109
    const v5, 0x7f04003b

    invoke-virtual {p0, v5}, Lcom/android/phone/OverturnTutorialIncallScreen;->setContentView(I)V

    .line 110
    const v5, 0x7f090167

    invoke-virtual {p0, v5}, Lcom/android/phone/OverturnTutorialIncallScreen;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    .line 111
    .local v2, information:Landroid/widget/Button;
    const/16 v5, 0x8

    invoke-virtual {v2, v5}, Landroid/widget/Button;->setVisibility(I)V

    .line 113
    const v5, 0x7f090168

    invoke-virtual {p0, v5}, Lcom/android/phone/OverturnTutorialIncallScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 114
    .local v0, done:Landroid/widget/Button;
    new-instance v5, Lcom/android/phone/OverturnTutorialIncallScreen$2;

    invoke-direct {v5, p0}, Lcom/android/phone/OverturnTutorialIncallScreen$2;-><init>(Lcom/android/phone/OverturnTutorialIncallScreen;)V

    invoke-virtual {v0, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 120
    const-string v5, "layout_inflater"

    invoke-virtual {p0, v5}, Lcom/android/phone/OverturnTutorialIncallScreen;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    .line 121
    .local v1, inflater:Landroid/view/LayoutInflater;
    const v5, 0x7f04002f

    const/4 v6, 0x0

    invoke-virtual {v1, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 122
    .local v3, mOverturnLayout:Landroid/view/View;
    const v5, 0x7f090166

    invoke-virtual {p0, v5}, Lcom/android/phone/OverturnTutorialIncallScreen;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/FrameLayout;

    .line 123
    .local v4, mainframe:Landroid/widget/FrameLayout;
    invoke-virtual {v4, v3, v7, v7}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;II)V

    .line 125
    const v5, 0x7f09013d

    invoke-virtual {p0, v5}, Lcom/android/phone/OverturnTutorialIncallScreen;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageButton;

    iput-object v5, p0, Lcom/android/phone/OverturnTutorialIncallScreen;->InfoButton:Landroid/widget/ImageButton;

    .line 126
    iget-object v5, p0, Lcom/android/phone/OverturnTutorialIncallScreen;->InfoButton:Landroid/widget/ImageButton;

    new-instance v6, Lcom/android/phone/OverturnTutorialIncallScreen$3;

    invoke-direct {v6, p0}, Lcom/android/phone/OverturnTutorialIncallScreen$3;-><init>(Lcom/android/phone/OverturnTutorialIncallScreen;)V

    invoke-virtual {v5, v6}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 133
    const-string v5, "motion_recognition"

    invoke-virtual {p0, v5}, Lcom/android/phone/OverturnTutorialIncallScreen;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/hardware/motion/MotionRecognitionManager;

    iput-object v5, p0, Lcom/android/phone/OverturnTutorialIncallScreen;->mMotionSensorManager:Landroid/hardware/motion/MotionRecognitionManager;

    .line 134
    new-instance v5, Lcom/android/phone/OverturnTutorialIncallScreen$4;

    invoke-direct {v5, p0}, Lcom/android/phone/OverturnTutorialIncallScreen$4;-><init>(Lcom/android/phone/OverturnTutorialIncallScreen;)V

    iput-object v5, p0, Lcom/android/phone/OverturnTutorialIncallScreen;->mMotionListener:Landroid/hardware/motion/MRListener;

    .line 160
    if-eqz v3, :cond_0

    .line 161
    iget-object v5, p0, Lcom/android/phone/OverturnTutorialIncallScreen;->mMotionSensorManager:Landroid/hardware/motion/MotionRecognitionManager;

    if-eqz v5, :cond_0

    .line 162
    iget-object v5, p0, Lcom/android/phone/OverturnTutorialIncallScreen;->mMotionSensorManager:Landroid/hardware/motion/MotionRecognitionManager;

    iget-object v6, p0, Lcom/android/phone/OverturnTutorialIncallScreen;->mMotionListener:Landroid/hardware/motion/MRListener;

    const/4 v7, 0x1

    invoke-virtual {v5, v6, v7}, Landroid/hardware/motion/MotionRecognitionManager;->registerListener(Landroid/hardware/motion/MRListener;I)V

    .line 165
    :cond_0
    return-void
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 9
    .parameter "id"

    .prologue
    const/4 v8, 0x0

    .line 310
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 311
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    iget-object v6, p0, Lcom/android/phone/OverturnTutorialIncallScreen;->mAlertDialog:Landroid/app/AlertDialog;

    if-eqz v6, :cond_0

    .line 312
    iget-object v6, p0, Lcom/android/phone/OverturnTutorialIncallScreen;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v6}, Landroid/app/AlertDialog;->dismiss()V

    .line 313
    iput-object v8, p0, Lcom/android/phone/OverturnTutorialIncallScreen;->mAlertDialog:Landroid/app/AlertDialog;

    .line 316
    :cond_0
    sparse-switch p1, :sswitch_data_0

    .line 387
    :goto_0
    iget-object v6, p0, Lcom/android/phone/OverturnTutorialIncallScreen;->mAlertDialog:Landroid/app/AlertDialog;

    return-object v6

    .line 318
    :sswitch_0
    const-string v6, "OverturnTutorialIncallScreen"

    const-string v7, "Get in the SHOW_TUTORIAL"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 319
    invoke-virtual {p0}, Lcom/android/phone/OverturnTutorialIncallScreen;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    .line 320
    .local v3, mContext:Landroid/content/Context;
    const-string v6, "layout_inflater"

    invoke-virtual {v3, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    .line 321
    .local v1, inflater:Landroid/view/LayoutInflater;
    const v6, 0x7f04000d

    invoke-virtual {v1, v6, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 322
    .local v2, layout:Landroid/view/View;
    const v6, 0x7f09006b

    invoke-virtual {v2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    iput-object v6, p0, Lcom/android/phone/OverturnTutorialIncallScreen;->mImgView:Landroid/widget/ImageView;

    .line 323
    const v6, 0x7f09006a

    invoke-virtual {v2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 324
    .local v4, message:Landroid/widget/TextView;
    const v6, 0x7f0e049e

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setText(I)V

    .line 325
    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 326
    const v6, 0x7f0e049f

    invoke-virtual {v0, v6}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 327
    new-instance v5, Lcom/android/phone/OverturnTutorialIncallScreen$5;

    invoke-direct {v5, p0}, Lcom/android/phone/OverturnTutorialIncallScreen$5;-><init>(Lcom/android/phone/OverturnTutorialIncallScreen;)V

    .line 335
    .local v5, restartListener:Landroid/content/DialogInterface$OnClickListener;
    const v6, 0x7f0e04a0

    invoke-virtual {v0, v6, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 336
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v6

    iput-object v6, p0, Lcom/android/phone/OverturnTutorialIncallScreen;->mAlertDialog:Landroid/app/AlertDialog;

    .line 337
    invoke-direct {p0}, Lcom/android/phone/OverturnTutorialIncallScreen;->stopRingingOrVibration()V

    .line 338
    const/16 v6, 0x32

    iput v6, p0, Lcom/android/phone/OverturnTutorialIncallScreen;->mTutorialDialogON:I

    .line 339
    iget-object v6, p0, Lcom/android/phone/OverturnTutorialIncallScreen;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v6}, Landroid/app/AlertDialog;->show()V

    .line 340
    invoke-direct {p0}, Lcom/android/phone/OverturnTutorialIncallScreen;->startAnimation()V

    .line 341
    iget-object v6, p0, Lcom/android/phone/OverturnTutorialIncallScreen;->mAlertDialog:Landroid/app/AlertDialog;

    new-instance v7, Lcom/android/phone/OverturnTutorialIncallScreen$6;

    invoke-direct {v7, p0}, Lcom/android/phone/OverturnTutorialIncallScreen$6;-><init>(Lcom/android/phone/OverturnTutorialIncallScreen;)V

    invoke-virtual {v6, v7}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    goto :goto_0

    .line 357
    .end local v1           #inflater:Landroid/view/LayoutInflater;
    .end local v2           #layout:Landroid/view/View;
    .end local v3           #mContext:Landroid/content/Context;
    .end local v4           #message:Landroid/widget/TextView;
    .end local v5           #restartListener:Landroid/content/DialogInterface$OnClickListener;
    :sswitch_1
    const-string v6, "OverturnTutorialIncallScreen"

    const-string v7, "Get in the ShowOkGoodJob"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 358
    const v6, 0x7f0e04a4

    invoke-virtual {v0, v6}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    const v7, 0x7f0e04a3

    new-instance v8, Lcom/android/phone/OverturnTutorialIncallScreen$8;

    invoke-direct {v8, p0}, Lcom/android/phone/OverturnTutorialIncallScreen$8;-><init>(Lcom/android/phone/OverturnTutorialIncallScreen;)V

    invoke-virtual {v6, v7, v8}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    const v7, 0x7f0e0181

    new-instance v8, Lcom/android/phone/OverturnTutorialIncallScreen$7;

    invoke-direct {v8, p0}, Lcom/android/phone/OverturnTutorialIncallScreen$7;-><init>(Lcom/android/phone/OverturnTutorialIncallScreen;)V

    invoke-virtual {v6, v7, v8}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 373
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v6

    iput-object v6, p0, Lcom/android/phone/OverturnTutorialIncallScreen;->mAlertDialog:Landroid/app/AlertDialog;

    .line 374
    iget-object v6, p0, Lcom/android/phone/OverturnTutorialIncallScreen;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v6}, Landroid/app/AlertDialog;->show()V

    .line 375
    iget-object v6, p0, Lcom/android/phone/OverturnTutorialIncallScreen;->mAlertDialog:Landroid/app/AlertDialog;

    new-instance v7, Lcom/android/phone/OverturnTutorialIncallScreen$9;

    invoke-direct {v7, p0}, Lcom/android/phone/OverturnTutorialIncallScreen$9;-><init>(Lcom/android/phone/OverturnTutorialIncallScreen;)V

    invoke-virtual {v6, v7}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    goto/16 :goto_0

    .line 316
    nop

    :sswitch_data_0
    .sparse-switch
        0x1e -> :sswitch_0
        0x28 -> :sswitch_1
    .end sparse-switch
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 190
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 191
    const-string v0, "OverturnTutorialIncallScreen"

    const-string v1, "onPause()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/phone/OverturnTutorialIncallScreen;->mIsForegroundActivity:Z

    .line 193
    invoke-direct {p0}, Lcom/android/phone/OverturnTutorialIncallScreen;->stopRingingOrVibration()V

    .line 194
    iget-object v0, p0, Lcom/android/phone/OverturnTutorialIncallScreen;->mMotionSensorManager:Landroid/hardware/motion/MotionRecognitionManager;

    if-eqz v0, :cond_0

    .line 195
    iget-object v0, p0, Lcom/android/phone/OverturnTutorialIncallScreen;->mMotionSensorManager:Landroid/hardware/motion/MotionRecognitionManager;

    iget-object v1, p0, Lcom/android/phone/OverturnTutorialIncallScreen;->mMotionListener:Landroid/hardware/motion/MRListener;

    invoke-virtual {v0, v1}, Landroid/hardware/motion/MotionRecognitionManager;->unregisterListener(Landroid/hardware/motion/MRListener;)V

    .line 197
    :cond_0
    return-void
.end method

.method protected onResume()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 169
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 170
    const-string v0, "OverturnTutorialIncallScreen"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onResume(), mPreviousMsg = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/phone/OverturnTutorialIncallScreen;->mPreviousMsg:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    iput-boolean v3, p0, Lcom/android/phone/OverturnTutorialIncallScreen;->mIsForegroundActivity:Z

    .line 173
    iget-object v0, p0, Lcom/android/phone/OverturnTutorialIncallScreen;->mMotionSensorManager:Landroid/hardware/motion/MotionRecognitionManager;

    if-eqz v0, :cond_0

    .line 174
    iget-object v0, p0, Lcom/android/phone/OverturnTutorialIncallScreen;->mMotionSensorManager:Landroid/hardware/motion/MotionRecognitionManager;

    iget-object v1, p0, Lcom/android/phone/OverturnTutorialIncallScreen;->mMotionListener:Landroid/hardware/motion/MRListener;

    invoke-virtual {v0, v1, v3}, Landroid/hardware/motion/MotionRecognitionManager;->registerListener(Landroid/hardware/motion/MRListener;I)V

    .line 178
    :cond_0
    iget v0, p0, Lcom/android/phone/OverturnTutorialIncallScreen;->mPreviousMsg:I

    const/16 v1, 0xa

    if-eq v0, v1, :cond_1

    iget v0, p0, Lcom/android/phone/OverturnTutorialIncallScreen;->mTutorialDialogON:I

    const/16 v1, 0x32

    if-eq v0, v1, :cond_1

    .line 180
    invoke-virtual {p0}, Lcom/android/phone/OverturnTutorialIncallScreen;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "UseRing"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/phone/OverturnTutorialIncallScreen;->mRingerType:Z

    .line 181
    const-string v0, "OverturnTutorialIncallScreen"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mRingerType in onResume = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/phone/OverturnTutorialIncallScreen;->mRingerType:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    invoke-direct {p0}, Lcom/android/phone/OverturnTutorialIncallScreen;->startIncomingSound()V

    .line 184
    :cond_1
    return-void
.end method
