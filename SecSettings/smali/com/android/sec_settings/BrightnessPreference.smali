.class public Lcom/android/sec_settings/BrightnessPreference;
.super Landroid/preference/SeekBarDialogPreference;
.source "BrightnessPreference.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/sec_settings/BrightnessPreference$SavedState;
    }
.end annotation


# instance fields
.field auto_detail_custom_layout:Landroid/widget/LinearLayout;

.field auto_detail_seekbar_layout:Landroid/widget/LinearLayout;

.field private currentLevel:I

.field private dissmissflag:Z

.field private isWidget:Ljava/lang/Boolean;

.field private mAutoBrightnessDetailObserver:Landroid/database/ContentObserver;

.field private mAutoDetailSeekBar:Landroid/widget/SeekBar;

.field private mAutoNotiTextView:Landroid/widget/TextView;

.field private mAutomaticAvailable:Z

.field private mAutomaticMode:Z

.field private mBrightness:Lcom/android/sec_settings/DisplaySettings;

.field private mBrightnessModeObserver:Landroid/database/ContentObserver;

.field private mBrightnessObserver:Landroid/database/ContentObserver;

.field private mCheckBox:Landroid/widget/CheckBox;

.field private mCurBrightness:I

.field private mCustomBar:[Landroid/widget/ImageView;

.field private mFlipCloseStatus:Z

.field private mMaxBrightness:I

.field private mOldAutoDetailLevel:I

.field private mOldAutomatic:I

.field private mOldBrightness:I

.field private mOldBrightness_DB:I

.field private mRestoredOldState:Z

.field private mScreenBrightnessDim:I

.field private mSeekBar:Landroid/widget/SeekBar;

.field mSharedPreference:Landroid/content/SharedPreferences;

.field private mSupportFolderType:Z

.field private mTextView:Landroid/widget/TextView;

.field seekbar_layout:Landroid/widget/LinearLayout;

.field supportAutoBrightnessDetail:Z

.field supportDA:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 7
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v6, -0x1

    const/4 v5, 0x0

    .line 150
    invoke-direct {p0, p1, p2}, Landroid/preference/SeekBarDialogPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 70
    iput-boolean v5, p0, Lcom/android/sec_settings/BrightnessPreference;->dissmissflag:Z

    .line 74
    iput-boolean v5, p0, Lcom/android/sec_settings/BrightnessPreference;->mAutomaticAvailable:Z

    .line 75
    iput-boolean v5, p0, Lcom/android/sec_settings/BrightnessPreference;->mFlipCloseStatus:Z

    .line 80
    iput v6, p0, Lcom/android/sec_settings/BrightnessPreference;->mCurBrightness:I

    .line 97
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    iput-object v4, p0, Lcom/android/sec_settings/BrightnessPreference;->isWidget:Ljava/lang/Boolean;

    .line 100
    iput v5, p0, Lcom/android/sec_settings/BrightnessPreference;->currentLevel:I

    .line 102
    iput-boolean v5, p0, Lcom/android/sec_settings/BrightnessPreference;->supportDA:Z

    .line 103
    iput-boolean v5, p0, Lcom/android/sec_settings/BrightnessPreference;->supportAutoBrightnessDetail:Z

    .line 109
    invoke-virtual {p0}, Lcom/android/sec_settings/BrightnessPreference;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x10e0023

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    iput v4, p0, Lcom/android/sec_settings/BrightnessPreference;->mScreenBrightnessDim:I

    .line 115
    new-instance v4, Lcom/android/sec_settings/BrightnessPreference$1;

    new-instance v5, Landroid/os/Handler;

    invoke-direct {v5}, Landroid/os/Handler;-><init>()V

    invoke-direct {v4, p0, v5}, Lcom/android/sec_settings/BrightnessPreference$1;-><init>(Lcom/android/sec_settings/BrightnessPreference;Landroid/os/Handler;)V

    iput-object v4, p0, Lcom/android/sec_settings/BrightnessPreference;->mBrightnessObserver:Landroid/database/ContentObserver;

    .line 123
    new-instance v4, Lcom/android/sec_settings/BrightnessPreference$2;

    new-instance v5, Landroid/os/Handler;

    invoke-direct {v5}, Landroid/os/Handler;-><init>()V

    invoke-direct {v4, p0, v5}, Lcom/android/sec_settings/BrightnessPreference$2;-><init>(Lcom/android/sec_settings/BrightnessPreference;Landroid/os/Handler;)V

    iput-object v4, p0, Lcom/android/sec_settings/BrightnessPreference;->mBrightnessModeObserver:Landroid/database/ContentObserver;

    .line 130
    new-instance v4, Lcom/android/sec_settings/BrightnessPreference$3;

    new-instance v5, Landroid/os/Handler;

    invoke-direct {v5}, Landroid/os/Handler;-><init>()V

    invoke-direct {v4, p0, v5}, Lcom/android/sec_settings/BrightnessPreference$3;-><init>(Lcom/android/sec_settings/BrightnessPreference;Landroid/os/Handler;)V

    iput-object v4, p0, Lcom/android/sec_settings/BrightnessPreference;->mAutoBrightnessDetailObserver:Landroid/database/ContentObserver;

    .line 151
    const-string v4, "BrightnessPreference"

    const-string v5, "getSensorMgr"

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    const-string v4, "sensor"

    invoke-virtual {p1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/SensorManager;

    .line 153
    .local v2, sensorMgr:Landroid/hardware/SensorManager;
    const-string v4, "BrightnessPreference"

    const-string v5, "getsensorList"

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    invoke-virtual {v2, v6}, Landroid/hardware/SensorManager;->getSensorList(I)Ljava/util/List;

    move-result-object v1

    .line 155
    .local v1, sensorList:Ljava/util/List;,"Ljava/util/List<Landroid/hardware/Sensor;>;"
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    if-ge v0, v4, :cond_1

    .line 156
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/Sensor;

    invoke-virtual {v4}, Landroid/hardware/Sensor;->getType()I

    move-result v3

    .line 158
    .local v3, sensorType:I
    const/4 v4, 0x5

    if-ne v3, v4, :cond_0

    .line 160
    const-string v4, "BrightnessPreference"

    const-string v5, "EnableAuto"

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/android/sec_settings/BrightnessPreference;->mAutomaticAvailable:Z

    .line 155
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 167
    .end local v3           #sensorType:I
    :cond_1
    const-string v4, "ro.lcd_min_brightness"

    iget v5, p0, Lcom/android/sec_settings/BrightnessPreference;->mScreenBrightnessDim:I

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v4

    iput v4, p0, Lcom/android/sec_settings/BrightnessPreference;->mScreenBrightnessDim:I

    .line 168
    const-string v4, "BrightnessPreference"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "min Brightness : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/sec_settings/BrightnessPreference;->mScreenBrightnessDim:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    const v4, 0x7f0400af

    invoke-virtual {p0, v4}, Lcom/android/sec_settings/BrightnessPreference;->setDialogLayoutResource(I)V

    .line 172
    invoke-direct {p0}, Lcom/android/sec_settings/BrightnessPreference;->isSupportAutoBrightnessDetail()Z

    move-result v4

    iput-boolean v4, p0, Lcom/android/sec_settings/BrightnessPreference;->supportAutoBrightnessDetail:Z

    .line 173
    invoke-direct {p0}, Lcom/android/sec_settings/BrightnessPreference;->isSupportDA()Z

    move-result v4

    iput-boolean v4, p0, Lcom/android/sec_settings/BrightnessPreference;->supportDA:Z

    .line 174
    return-void
.end method

.method static synthetic access$002(Lcom/android/sec_settings/BrightnessPreference;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 60
    iput p1, p0, Lcom/android/sec_settings/BrightnessPreference;->mCurBrightness:I

    return p1
.end method

.method static synthetic access$100(Lcom/android/sec_settings/BrightnessPreference;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 60
    invoke-direct {p0}, Lcom/android/sec_settings/BrightnessPreference;->onBrightnessChanged()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/sec_settings/BrightnessPreference;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 60
    invoke-direct {p0}, Lcom/android/sec_settings/BrightnessPreference;->onBrightnessModeChanged()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/sec_settings/BrightnessPreference;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 60
    invoke-direct {p0}, Lcom/android/sec_settings/BrightnessPreference;->onAutoBrightnessDetailChanged()V

    return-void
.end method

.method private getBrightness()I
    .locals 5

    .prologue
    .line 405
    const/4 v2, 0x0

    invoke-direct {p0, v2}, Lcom/android/sec_settings/BrightnessPreference;->getBrightnessMode(I)I

    move-result v1

    .line 406
    .local v1, mode:I
    const/4 v0, 0x0

    .line 412
    .local v0, brightness:F
    iget v2, p0, Lcom/android/sec_settings/BrightnessPreference;->mCurBrightness:I

    if-gez v2, :cond_0

    .line 413
    invoke-virtual {p0}, Lcom/android/sec_settings/BrightnessPreference;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "screen_brightness"

    const/16 v4, 0x64

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    int-to-float v0, v2

    .line 418
    :goto_0
    iget v2, p0, Lcom/android/sec_settings/BrightnessPreference;->mScreenBrightnessDim:I

    int-to-float v2, v2

    sub-float v2, v0, v2

    iget v3, p0, Lcom/android/sec_settings/BrightnessPreference;->mScreenBrightnessDim:I

    rsub-int v3, v3, 0xff

    int-to-float v3, v3

    div-float v0, v2, v3

    .line 421
    const v2, 0x461c4000

    mul-float/2addr v2, v0

    float-to-int v2, v2

    return v2

    .line 416
    :cond_0
    iget v2, p0, Lcom/android/sec_settings/BrightnessPreference;->mCurBrightness:I

    int-to-float v0, v2

    goto :goto_0
.end method

.method private getBrightnessMode(I)I
    .locals 3
    .parameter "defaultValue"

    .prologue
    .line 425
    move v0, p1

    .line 427
    .local v0, brightnessMode:I
    :try_start_0
    invoke-virtual {p0}, Lcom/android/sec_settings/BrightnessPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "screen_brightness_mode"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 431
    :goto_0
    return v0

    .line 429
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private isSupportAutoBrightnessDetail()Z
    .locals 1

    .prologue
    .line 436
    const/4 v0, 0x0

    return v0
.end method

.method private isSupportDA()Z
    .locals 1

    .prologue
    .line 441
    const/4 v0, 0x0

    return v0
.end method

.method private onAutoBrightnessDetailChanged()V
    .locals 4

    .prologue
    .line 449
    invoke-virtual {p0}, Lcom/android/sec_settings/BrightnessPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "auto_brightness_detail"

    const/16 v3, 0x64

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 450
    .local v0, value:I
    iget-object v1, p0, Lcom/android/sec_settings/BrightnessPreference;->mAutoDetailSeekBar:Landroid/widget/SeekBar;

    if-eqz v1, :cond_0

    .line 451
    iget-object v1, p0, Lcom/android/sec_settings/BrightnessPreference;->mAutoDetailSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v1, v0}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 453
    iget-boolean v1, p0, Lcom/android/sec_settings/BrightnessPreference;->supportDA:Z

    if-eqz v1, :cond_0

    .line 454
    invoke-virtual {p0}, Lcom/android/sec_settings/BrightnessPreference;->updateCustomBar()V

    .line 456
    :cond_0
    return-void
.end method

.method private onBrightnessChanged()V
    .locals 2

    .prologue
    .line 445
    iget-object v0, p0, Lcom/android/sec_settings/BrightnessPreference;->mSeekBar:Landroid/widget/SeekBar;

    invoke-direct {p0}, Lcom/android/sec_settings/BrightnessPreference;->getBrightness()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 446
    return-void
.end method

.method private onBrightnessModeChanged()V
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/16 v5, 0x8

    const/4 v2, 0x0

    .line 459
    invoke-direct {p0, v2}, Lcom/android/sec_settings/BrightnessPreference;->getBrightnessMode(I)I

    move-result v3

    if-ne v3, v1, :cond_1

    move v0, v1

    .line 461
    .local v0, checked:Z
    :goto_0
    iget-object v3, p0, Lcom/android/sec_settings/BrightnessPreference;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v3, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 462
    iget-object v3, p0, Lcom/android/sec_settings/BrightnessPreference;->mSeekBar:Landroid/widget/SeekBar;

    invoke-direct {p0}, Lcom/android/sec_settings/BrightnessPreference;->getBrightness()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 463
    iget-object v3, p0, Lcom/android/sec_settings/BrightnessPreference;->mSeekBar:Landroid/widget/SeekBar;

    if-nez v0, :cond_2

    :goto_1
    invoke-virtual {v3, v1}, Landroid/widget/SeekBar;->setEnabled(Z)V

    .line 465
    if-eqz v0, :cond_4

    .line 466
    iget-boolean v1, p0, Lcom/android/sec_settings/BrightnessPreference;->supportAutoBrightnessDetail:Z

    if-eqz v1, :cond_0

    .line 467
    iget-object v1, p0, Lcom/android/sec_settings/BrightnessPreference;->seekbar_layout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 468
    iget-boolean v1, p0, Lcom/android/sec_settings/BrightnessPreference;->supportDA:Z

    if-nez v1, :cond_3

    .line 469
    const-string v1, "BrightnessPreference"

    const-string v3, "setMode : auto_detail_seekbar_layout.setVisibility(View.VISIBLE)"

    invoke-static {v1, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 470
    iget-object v1, p0, Lcom/android/sec_settings/BrightnessPreference;->auto_detail_seekbar_layout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 503
    :cond_0
    :goto_2
    return-void

    .end local v0           #checked:Z
    :cond_1
    move v0, v2

    .line 459
    goto :goto_0

    .restart local v0       #checked:Z
    :cond_2
    move v1, v2

    .line 463
    goto :goto_1

    .line 473
    :cond_3
    const-string v1, "BrightnessPreference"

    const-string v3, "setMode : auto_detail_custom_layout.setVisibility(View.VISIBLE)"

    invoke-static {v1, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 476
    :try_start_0
    invoke-virtual {p0}, Lcom/android/sec_settings/BrightnessPreference;->getDialog()Landroid/app/Dialog;

    move-result-object v1

    check-cast v1, Landroid/app/AlertDialog;

    const/4 v3, -0x2

    invoke-virtual {v1, v3}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v1

    const/16 v3, 0x8

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 477
    invoke-virtual {p0}, Lcom/android/sec_settings/BrightnessPreference;->getDialog()Landroid/app/Dialog;

    move-result-object v1

    check-cast v1, Landroid/app/AlertDialog;

    const/4 v3, -0x1

    invoke-virtual {v1, v3}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v1

    const v3, 0x7f0902cf

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setText(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 481
    :goto_3
    iget-object v1, p0, Lcom/android/sec_settings/BrightnessPreference;->auto_detail_custom_layout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_2

    .line 485
    :cond_4
    iget-boolean v1, p0, Lcom/android/sec_settings/BrightnessPreference;->supportAutoBrightnessDetail:Z

    if-eqz v1, :cond_0

    .line 486
    iget-object v1, p0, Lcom/android/sec_settings/BrightnessPreference;->seekbar_layout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 487
    iget-boolean v1, p0, Lcom/android/sec_settings/BrightnessPreference;->supportDA:Z

    if-nez v1, :cond_5

    .line 488
    const-string v1, "BrightnessPreference"

    const-string v2, "setMode : auto_detail_seekbar_layout.setVisibility(View.GONE)"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 489
    iget-object v1, p0, Lcom/android/sec_settings/BrightnessPreference;->auto_detail_seekbar_layout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_2

    .line 492
    :cond_5
    const-string v1, "BrightnessPreference"

    const-string v2, "setMode : auto_detaauto_detail_custom_layoutil_seekbar_layout.setVisibility(View.GONE)"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 494
    :try_start_1
    invoke-virtual {p0}, Lcom/android/sec_settings/BrightnessPreference;->getDialog()Landroid/app/Dialog;

    move-result-object v1

    check-cast v1, Landroid/app/AlertDialog;

    const/4 v2, -0x2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 495
    invoke-virtual {p0}, Lcom/android/sec_settings/BrightnessPreference;->getDialog()Landroid/app/Dialog;

    move-result-object v1

    check-cast v1, Landroid/app/AlertDialog;

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v1

    const v2, 0x7f0905e3

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 499
    :goto_4
    iget-object v1, p0, Lcom/android/sec_settings/BrightnessPreference;->auto_detail_custom_layout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_2

    .line 496
    :catch_0
    move-exception v1

    goto :goto_4

    .line 478
    :catch_1
    move-exception v1

    goto :goto_3
.end method

.method private restoreOldState()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 531
    iget-boolean v0, p0, Lcom/android/sec_settings/BrightnessPreference;->mRestoredOldState:Z

    if-eqz v0, :cond_0

    .line 548
    :goto_0
    return-void

    .line 533
    :cond_0
    iget-boolean v0, p0, Lcom/android/sec_settings/BrightnessPreference;->mAutomaticAvailable:Z

    if-eqz v0, :cond_1

    .line 534
    iget v0, p0, Lcom/android/sec_settings/BrightnessPreference;->mOldAutomatic:I

    invoke-direct {p0, v0}, Lcom/android/sec_settings/BrightnessPreference;->setMode(I)V

    .line 536
    :cond_1
    iget v0, p0, Lcom/android/sec_settings/BrightnessPreference;->mOldBrightness:I

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/sec_settings/BrightnessPreference;->setBrightness(IZ)V

    .line 538
    invoke-virtual {p0}, Lcom/android/sec_settings/BrightnessPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "screen_brightness"

    iget v2, p0, Lcom/android/sec_settings/BrightnessPreference;->mOldBrightness_DB:I

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 541
    iget-boolean v0, p0, Lcom/android/sec_settings/BrightnessPreference;->supportAutoBrightnessDetail:Z

    if-eqz v0, :cond_2

    .line 542
    invoke-virtual {p0}, Lcom/android/sec_settings/BrightnessPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "auto_brightness_detail"

    iget v2, p0, Lcom/android/sec_settings/BrightnessPreference;->mOldAutoDetailLevel:I

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 545
    :cond_2
    iput-boolean v3, p0, Lcom/android/sec_settings/BrightnessPreference;->mRestoredOldState:Z

    .line 546
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/sec_settings/BrightnessPreference;->mCurBrightness:I

    .line 547
    iput-boolean v3, p0, Lcom/android/sec_settings/BrightnessPreference;->dissmissflag:Z

    goto :goto_0
.end method

.method private setBrightness(IZ)V
    .locals 5
    .parameter "brightness"
    .parameter "write"

    .prologue
    .line 551
    iget-boolean v3, p0, Lcom/android/sec_settings/BrightnessPreference;->mAutomaticMode:Z

    if-eqz v3, :cond_0

    .line 588
    :goto_0
    return-void

    .line 569
    :cond_0
    iget v3, p0, Lcom/android/sec_settings/BrightnessPreference;->mScreenBrightnessDim:I

    rsub-int v1, v3, 0xff

    .line 570
    .local v1, range:I
    mul-int v3, p1, v1

    int-to-float v3, v3

    const v4, 0x461c4000

    div-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    iget v4, p0, Lcom/android/sec_settings/BrightnessPreference;->mScreenBrightnessDim:I

    add-int p1, v3, v4

    .line 572
    :try_start_0
    const-string v3, "power"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/os/IPowerManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IPowerManager;

    move-result-object v0

    .line 574
    .local v0, power:Landroid/os/IPowerManager;
    if-eqz v0, :cond_1

    .line 575
    invoke-interface {v0, p1}, Landroid/os/IPowerManager;->setBacklightBrightness(I)V

    .line 577
    :cond_1
    if-eqz p2, :cond_2

    .line 578
    const/4 v3, -0x1

    iput v3, p0, Lcom/android/sec_settings/BrightnessPreference;->mCurBrightness:I

    .line 579
    invoke-virtual {p0}, Lcom/android/sec_settings/BrightnessPreference;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 580
    .local v2, resolver:Landroid/content/ContentResolver;
    const-string v3, "screen_brightness"

    invoke-static {v2, v3, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    .line 585
    .end local v0           #power:Landroid/os/IPowerManager;
    .end local v2           #resolver:Landroid/content/ContentResolver;
    :catch_0
    move-exception v3

    goto :goto_0

    .line 583
    .restart local v0       #power:Landroid/os/IPowerManager;
    :cond_2
    iput p1, p0, Lcom/android/sec_settings/BrightnessPreference;->mCurBrightness:I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0
.end method

.method private setMode(I)V
    .locals 3
    .parameter "mode"

    .prologue
    const/4 v1, 0x1

    .line 591
    if-ne p1, v1, :cond_1

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/android/sec_settings/BrightnessPreference;->mAutomaticMode:Z

    .line 592
    invoke-virtual {p0}, Lcom/android/sec_settings/BrightnessPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "screen_brightness_mode"

    invoke-static {v0, v2, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 595
    iget-boolean v0, p0, Lcom/android/sec_settings/BrightnessPreference;->mSupportFolderType:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/sec_settings/BrightnessPreference;->mFlipCloseStatus:Z

    if-eqz v0, :cond_0

    .line 596
    iget-object v0, p0, Lcom/android/sec_settings/BrightnessPreference;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setEnabled(Z)V

    .line 598
    :cond_0
    return-void

    .line 591
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public directBrightness()V
    .locals 1

    .prologue
    .line 139
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/android/sec_settings/BrightnessPreference;->isWidget:Ljava/lang/Boolean;

    .line 140
    invoke-super {p0}, Landroid/preference/SeekBarDialogPreference;->onClick()V

    .line 141
    return-void
.end method

.method initCustomBar(Landroid/view/View;)V
    .locals 3
    .parameter "view"

    .prologue
    .line 304
    const/16 v0, 0xa

    new-array v0, v0, [Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/sec_settings/BrightnessPreference;->mCustomBar:[Landroid/widget/ImageView;

    .line 305
    iget-object v1, p0, Lcom/android/sec_settings/BrightnessPreference;->mCustomBar:[Landroid/widget/ImageView;

    const/4 v2, 0x0

    const v0, 0x7f0b01e4

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    aput-object v0, v1, v2

    .line 306
    iget-object v1, p0, Lcom/android/sec_settings/BrightnessPreference;->mCustomBar:[Landroid/widget/ImageView;

    const/4 v2, 0x1

    const v0, 0x7f0b01e5

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    aput-object v0, v1, v2

    .line 307
    iget-object v1, p0, Lcom/android/sec_settings/BrightnessPreference;->mCustomBar:[Landroid/widget/ImageView;

    const/4 v2, 0x2

    const v0, 0x7f0b01e6

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    aput-object v0, v1, v2

    .line 308
    iget-object v1, p0, Lcom/android/sec_settings/BrightnessPreference;->mCustomBar:[Landroid/widget/ImageView;

    const/4 v2, 0x3

    const v0, 0x7f0b01e7

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    aput-object v0, v1, v2

    .line 309
    iget-object v1, p0, Lcom/android/sec_settings/BrightnessPreference;->mCustomBar:[Landroid/widget/ImageView;

    const/4 v2, 0x4

    const v0, 0x7f0b01e8

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    aput-object v0, v1, v2

    .line 310
    iget-object v1, p0, Lcom/android/sec_settings/BrightnessPreference;->mCustomBar:[Landroid/widget/ImageView;

    const/4 v2, 0x5

    const v0, 0x7f0b01e9

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    aput-object v0, v1, v2

    .line 311
    iget-object v1, p0, Lcom/android/sec_settings/BrightnessPreference;->mCustomBar:[Landroid/widget/ImageView;

    const/4 v2, 0x6

    const v0, 0x7f0b01ea

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    aput-object v0, v1, v2

    .line 312
    iget-object v1, p0, Lcom/android/sec_settings/BrightnessPreference;->mCustomBar:[Landroid/widget/ImageView;

    const/4 v2, 0x7

    const v0, 0x7f0b01eb

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    aput-object v0, v1, v2

    .line 313
    iget-object v1, p0, Lcom/android/sec_settings/BrightnessPreference;->mCustomBar:[Landroid/widget/ImageView;

    const/16 v2, 0x8

    const v0, 0x7f0b01ec

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    aput-object v0, v1, v2

    .line 314
    iget-object v1, p0, Lcom/android/sec_settings/BrightnessPreference;->mCustomBar:[Landroid/widget/ImageView;

    const/16 v2, 0x9

    const v0, 0x7f0b01ed

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    aput-object v0, v1, v2

    .line 315
    return-void
.end method

.method protected onBindDialogView(Landroid/view/View;)V
    .locals 10
    .parameter "view"

    .prologue
    const/16 v9, 0x2710

    const/16 v8, 0x64

    const/4 v3, 0x1

    const/16 v7, 0x8

    const/4 v4, 0x0

    .line 201
    invoke-super {p0, p1}, Landroid/preference/SeekBarDialogPreference;->onBindDialogView(Landroid/view/View;)V

    .line 202
    iput-boolean v4, p0, Lcom/android/sec_settings/BrightnessPreference;->dissmissflag:Z

    .line 203
    invoke-static {p1}, Lcom/android/sec_settings/BrightnessPreference;->getSeekBar(Landroid/view/View;)Landroid/widget/SeekBar;

    move-result-object v2

    iput-object v2, p0, Lcom/android/sec_settings/BrightnessPreference;->mSeekBar:Landroid/widget/SeekBar;

    .line 205
    iget-object v2, p0, Lcom/android/sec_settings/BrightnessPreference;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v2, v9}, Landroid/widget/SeekBar;->setMax(I)V

    .line 207
    iget-boolean v2, p0, Lcom/android/sec_settings/BrightnessPreference;->supportAutoBrightnessDetail:Z

    if-eqz v2, :cond_0

    .line 208
    const v2, 0x7f0b01e1

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/android/sec_settings/BrightnessPreference;->auto_detail_seekbar_layout:Landroid/widget/LinearLayout;

    .line 209
    const v2, 0x7f0b01e3

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/android/sec_settings/BrightnessPreference;->auto_detail_custom_layout:Landroid/widget/LinearLayout;

    .line 210
    const v2, 0x7f0b01df

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/android/sec_settings/BrightnessPreference;->seekbar_layout:Landroid/widget/LinearLayout;

    .line 211
    iget-object v2, p0, Lcom/android/sec_settings/BrightnessPreference;->auto_detail_seekbar_layout:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 212
    iget-object v2, p0, Lcom/android/sec_settings/BrightnessPreference;->auto_detail_custom_layout:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 214
    invoke-direct {p0, v4}, Lcom/android/sec_settings/BrightnessPreference;->getBrightnessMode(I)I

    move-result v2

    if-eqz v2, :cond_3

    .line 215
    iget-object v2, p0, Lcom/android/sec_settings/BrightnessPreference;->seekbar_layout:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 216
    iget-boolean v2, p0, Lcom/android/sec_settings/BrightnessPreference;->supportDA:Z

    if-nez v2, :cond_2

    .line 217
    const-string v2, "BrightnessPreference"

    const-string v5, "onBindDialogView : auto_detail_seekbar_layout.setVisibility(View.VISIBLE)"

    invoke-static {v2, v5}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 218
    iget-object v2, p0, Lcom/android/sec_settings/BrightnessPreference;->auto_detail_seekbar_layout:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 227
    :goto_0
    const v2, 0x7f0b01e2

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/SeekBar;

    iput-object v2, p0, Lcom/android/sec_settings/BrightnessPreference;->mAutoDetailSeekBar:Landroid/widget/SeekBar;

    .line 228
    iget-object v2, p0, Lcom/android/sec_settings/BrightnessPreference;->mAutoDetailSeekBar:Landroid/widget/SeekBar;

    const/16 v5, 0xc8

    invoke-virtual {v2, v5}, Landroid/widget/SeekBar;->setMax(I)V

    .line 229
    invoke-virtual {p0}, Lcom/android/sec_settings/BrightnessPreference;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v5, "auto_brightness_detail"

    invoke-static {v2, v5, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/android/sec_settings/BrightnessPreference;->mOldAutoDetailLevel:I

    .line 230
    iget v2, p0, Lcom/android/sec_settings/BrightnessPreference;->mOldAutoDetailLevel:I

    iput v2, p0, Lcom/android/sec_settings/BrightnessPreference;->currentLevel:I

    .line 231
    iget-object v2, p0, Lcom/android/sec_settings/BrightnessPreference;->mAutoDetailSeekBar:Landroid/widget/SeekBar;

    iget v5, p0, Lcom/android/sec_settings/BrightnessPreference;->mOldAutoDetailLevel:I

    invoke-virtual {v2, v5}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 232
    iget-object v2, p0, Lcom/android/sec_settings/BrightnessPreference;->mAutoDetailSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v2, p0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 236
    iget-boolean v2, p0, Lcom/android/sec_settings/BrightnessPreference;->supportDA:Z

    if-eqz v2, :cond_0

    .line 237
    invoke-virtual {p1, p0}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 238
    invoke-virtual {p1, v3}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    .line 239
    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    .line 240
    invoke-virtual {p0, p1}, Lcom/android/sec_settings/BrightnessPreference;->initCustomBar(Landroid/view/View;)V

    .line 241
    invoke-virtual {p0}, Lcom/android/sec_settings/BrightnessPreference;->updateCustomBar()V

    .line 245
    :cond_0
    invoke-direct {p0}, Lcom/android/sec_settings/BrightnessPreference;->getBrightness()I

    move-result v2

    iput v2, p0, Lcom/android/sec_settings/BrightnessPreference;->mOldBrightness:I

    .line 247
    invoke-virtual {p0}, Lcom/android/sec_settings/BrightnessPreference;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v5, "screen_brightness"

    invoke-static {v2, v5, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/android/sec_settings/BrightnessPreference;->mOldBrightness_DB:I

    .line 252
    const v2, 0x7f0b01ef

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/sec_settings/BrightnessPreference;->mTextView:Landroid/widget/TextView;

    .line 253
    const v2, 0x7f0b01de

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/sec_settings/BrightnessPreference;->mAutoNotiTextView:Landroid/widget/TextView;

    .line 255
    invoke-virtual {p0}, Lcom/android/sec_settings/BrightnessPreference;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    iput-object v2, p0, Lcom/android/sec_settings/BrightnessPreference;->mSharedPreference:Landroid/content/SharedPreferences;

    .line 257
    iget-object v2, p0, Lcom/android/sec_settings/BrightnessPreference;->mSharedPreference:Landroid/content/SharedPreferences;

    const-string v5, "pref_siop_brightness"

    const/4 v6, -0x1

    invoke-interface {v2, v5, v6}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/android/sec_settings/BrightnessPreference;->mMaxBrightness:I

    .line 259
    iget v2, p0, Lcom/android/sec_settings/BrightnessPreference;->mMaxBrightness:I

    invoke-virtual {p0, v2}, Lcom/android/sec_settings/BrightnessPreference;->returnMaxBrightness(I)I

    move-result v2

    iput v2, p0, Lcom/android/sec_settings/BrightnessPreference;->mMaxBrightness:I

    .line 260
    invoke-virtual {p0}, Lcom/android/sec_settings/BrightnessPreference;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v5, "screen_brightness"

    invoke-static {v2, v5, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    iget v5, p0, Lcom/android/sec_settings/BrightnessPreference;->mMaxBrightness:I

    if-le v2, v5, :cond_4

    .line 262
    iget-object v2, p0, Lcom/android/sec_settings/BrightnessPreference;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v2, v9}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 265
    :goto_1
    iget v2, p0, Lcom/android/sec_settings/BrightnessPreference;->mMaxBrightness:I

    const/16 v5, 0xff

    if-ne v2, v5, :cond_1

    .line 266
    iget-object v2, p0, Lcom/android/sec_settings/BrightnessPreference;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 269
    :cond_1
    const v2, 0x7f0b01dd

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    iput-object v2, p0, Lcom/android/sec_settings/BrightnessPreference;->mCheckBox:Landroid/widget/CheckBox;

    .line 270
    iget-boolean v2, p0, Lcom/android/sec_settings/BrightnessPreference;->mAutomaticAvailable:Z

    if-eqz v2, :cond_7

    .line 271
    iget-object v2, p0, Lcom/android/sec_settings/BrightnessPreference;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v2, p0}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 272
    invoke-direct {p0, v4}, Lcom/android/sec_settings/BrightnessPreference;->getBrightnessMode(I)I

    move-result v2

    iput v2, p0, Lcom/android/sec_settings/BrightnessPreference;->mOldAutomatic:I

    .line 273
    iget v2, p0, Lcom/android/sec_settings/BrightnessPreference;->mOldAutomatic:I

    if-ne v2, v3, :cond_5

    move v2, v3

    :goto_2
    iput-boolean v2, p0, Lcom/android/sec_settings/BrightnessPreference;->mAutomaticMode:Z

    .line 274
    iget-object v2, p0, Lcom/android/sec_settings/BrightnessPreference;->mCheckBox:Landroid/widget/CheckBox;

    iget-boolean v5, p0, Lcom/android/sec_settings/BrightnessPreference;->mAutomaticMode:Z

    invoke-virtual {v2, v5}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 275
    iget-object v5, p0, Lcom/android/sec_settings/BrightnessPreference;->mSeekBar:Landroid/widget/SeekBar;

    iget-boolean v2, p0, Lcom/android/sec_settings/BrightnessPreference;->mAutomaticMode:Z

    if-nez v2, :cond_6

    move v2, v3

    :goto_3
    invoke-virtual {v5, v2}, Landroid/widget/SeekBar;->setEnabled(Z)V

    .line 282
    :goto_4
    iget-object v2, p0, Lcom/android/sec_settings/BrightnessPreference;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v2, p0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 285
    iget-boolean v2, p0, Lcom/android/sec_settings/BrightnessPreference;->mSupportFolderType:Z

    if-eqz v2, :cond_9

    .line 287
    invoke-virtual {p0}, Lcom/android/sec_settings/BrightnessPreference;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    .line 288
    .local v1, config:Landroid/content/res/Configuration;
    iget v2, v1, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    const/4 v5, 0x2

    if-ne v2, v5, :cond_8

    .line 289
    iput-boolean v3, p0, Lcom/android/sec_settings/BrightnessPreference;->mFlipCloseStatus:Z

    .line 293
    :goto_5
    iget-boolean v2, p0, Lcom/android/sec_settings/BrightnessPreference;->mFlipCloseStatus:Z

    invoke-virtual {p0, v2}, Lcom/android/sec_settings/BrightnessPreference;->setFlipCloseStatus(Z)V

    .line 294
    const v2, 0x7f0b01e0

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 295
    .local v0, bright_level:Landroid/widget/TextView;
    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 300
    .end local v0           #bright_level:Landroid/widget/TextView;
    .end local v1           #config:Landroid/content/res/Configuration;
    :goto_6
    return-void

    .line 221
    :cond_2
    iget-object v2, p0, Lcom/android/sec_settings/BrightnessPreference;->auto_detail_custom_layout:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_0

    .line 224
    :cond_3
    iget-object v2, p0, Lcom/android/sec_settings/BrightnessPreference;->seekbar_layout:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_0

    .line 264
    :cond_4
    iget-object v2, p0, Lcom/android/sec_settings/BrightnessPreference;->mSeekBar:Landroid/widget/SeekBar;

    iget v5, p0, Lcom/android/sec_settings/BrightnessPreference;->mOldBrightness:I

    invoke-virtual {v2, v5}, Landroid/widget/SeekBar;->setProgress(I)V

    goto :goto_1

    :cond_5
    move v2, v4

    .line 273
    goto :goto_2

    :cond_6
    move v2, v4

    .line 275
    goto :goto_3

    .line 278
    :cond_7
    iget-object v2, p0, Lcom/android/sec_settings/BrightnessPreference;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v2, v7}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 280
    iget-object v2, p0, Lcom/android/sec_settings/BrightnessPreference;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v2, v3}, Landroid/widget/SeekBar;->setEnabled(Z)V

    goto :goto_4

    .line 291
    .restart local v1       #config:Landroid/content/res/Configuration;
    :cond_8
    iput-boolean v4, p0, Lcom/android/sec_settings/BrightnessPreference;->mFlipCloseStatus:Z

    goto :goto_5

    .line 298
    .end local v1           #config:Landroid/content/res/Configuration;
    :cond_9
    iget-object v2, p0, Lcom/android/sec_settings/BrightnessPreference;->mAutoNotiTextView:Landroid/widget/TextView;

    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_6
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 5
    .parameter "buttonView"
    .parameter "isChecked"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 387
    iget-boolean v0, p0, Lcom/android/sec_settings/BrightnessPreference;->dissmissflag:Z

    if-nez v0, :cond_0

    .line 388
    if-eqz p2, :cond_1

    move v0, v1

    :goto_0
    invoke-direct {p0, v0}, Lcom/android/sec_settings/BrightnessPreference;->setMode(I)V

    .line 392
    invoke-virtual {p0}, Lcom/android/sec_settings/BrightnessPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "screen_brightness"

    const/16 v4, 0x64

    invoke-static {v0, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iget v3, p0, Lcom/android/sec_settings/BrightnessPreference;->mMaxBrightness:I

    if-le v0, v3, :cond_2

    .line 394
    iget-object v0, p0, Lcom/android/sec_settings/BrightnessPreference;->mSeekBar:Landroid/widget/SeekBar;

    const/16 v3, 0x2710

    invoke-virtual {v0, v3}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 399
    :goto_1
    iget-object v0, p0, Lcom/android/sec_settings/BrightnessPreference;->mSeekBar:Landroid/widget/SeekBar;

    iget-boolean v3, p0, Lcom/android/sec_settings/BrightnessPreference;->mAutomaticMode:Z

    if-nez v3, :cond_3

    :goto_2
    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setEnabled(Z)V

    .line 400
    iget-object v0, p0, Lcom/android/sec_settings/BrightnessPreference;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0}, Landroid/widget/SeekBar;->getProgress()I

    move-result v0

    invoke-direct {p0, v0, v2}, Lcom/android/sec_settings/BrightnessPreference;->setBrightness(IZ)V

    .line 402
    :cond_0
    return-void

    :cond_1
    move v0, v2

    .line 388
    goto :goto_0

    .line 396
    :cond_2
    iget-object v0, p0, Lcom/android/sec_settings/BrightnessPreference;->mSeekBar:Landroid/widget/SeekBar;

    invoke-direct {p0}, Lcom/android/sec_settings/BrightnessPreference;->getBrightness()I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/widget/SeekBar;->setProgress(I)V

    goto :goto_1

    :cond_3
    move v1, v2

    .line 399
    goto :goto_2
.end method

.method protected onDialogClosed(Z)V
    .locals 3
    .parameter "positiveResult"

    .prologue
    .line 507
    invoke-super {p0, p1}, Landroid/preference/SeekBarDialogPreference;->onDialogClosed(Z)V

    .line 509
    invoke-virtual {p0}, Lcom/android/sec_settings/BrightnessPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 511
    .local v0, resolver:Landroid/content/ContentResolver;
    if-eqz p1, :cond_1

    .line 512
    iget-object v1, p0, Lcom/android/sec_settings/BrightnessPreference;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v1

    const/4 v2, 0x1

    invoke-direct {p0, v1, v2}, Lcom/android/sec_settings/BrightnessPreference;->setBrightness(IZ)V

    .line 517
    :goto_0
    iget-object v1, p0, Lcom/android/sec_settings/BrightnessPreference;->mBrightnessObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 518
    iget-object v1, p0, Lcom/android/sec_settings/BrightnessPreference;->mBrightnessModeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 519
    iget-object v1, p0, Lcom/android/sec_settings/BrightnessPreference;->mAutoBrightnessDetailObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 522
    iget-object v1, p0, Lcom/android/sec_settings/BrightnessPreference;->isWidget:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 523
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/android/sec_settings/BrightnessPreference;->isWidget:Ljava/lang/Boolean;

    .line 524
    iget-object v1, p0, Lcom/android/sec_settings/BrightnessPreference;->mBrightness:Lcom/android/sec_settings/DisplaySettings;

    if-eqz v1, :cond_0

    .line 525
    iget-object v1, p0, Lcom/android/sec_settings/BrightnessPreference;->mBrightness:Lcom/android/sec_settings/DisplaySettings;

    invoke-virtual {v1}, Lcom/android/sec_settings/DisplaySettings;->finish()V

    .line 528
    :cond_0
    return-void

    .line 514
    :cond_1
    invoke-direct {p0}, Lcom/android/sec_settings/BrightnessPreference;->restoreOldState()V

    goto :goto_0
.end method

.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 5
    .parameter "v"
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 330
    iget-boolean v3, p0, Lcom/android/sec_settings/BrightnessPreference;->supportDA:Z

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/sec_settings/BrightnessPreference;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v3}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v3

    if-nez v3, :cond_2

    :cond_0
    move v1, v2

    .line 352
    :cond_1
    :goto_0
    return v1

    .line 333
    :cond_2
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v3

    if-nez v3, :cond_3

    move v0, v1

    .line 334
    .local v0, isdown:Z
    :goto_1
    packed-switch p2, :pswitch_data_0

    move v1, v2

    .line 352
    goto :goto_0

    .end local v0           #isdown:Z
    :cond_3
    move v0, v2

    .line 333
    goto :goto_1

    .line 336
    .restart local v0       #isdown:Z
    :pswitch_0
    if-eqz v0, :cond_1

    iget v2, p0, Lcom/android/sec_settings/BrightnessPreference;->currentLevel:I

    if-lez v2, :cond_1

    .line 337
    iget v2, p0, Lcom/android/sec_settings/BrightnessPreference;->currentLevel:I

    add-int/lit8 v2, v2, -0x14

    iput v2, p0, Lcom/android/sec_settings/BrightnessPreference;->currentLevel:I

    .line 338
    iget-object v2, p0, Lcom/android/sec_settings/BrightnessPreference;->mAutoDetailSeekBar:Landroid/widget/SeekBar;

    iget v3, p0, Lcom/android/sec_settings/BrightnessPreference;->currentLevel:I

    invoke-virtual {v2, v3}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 339
    invoke-virtual {p0}, Lcom/android/sec_settings/BrightnessPreference;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "auto_brightness_detail"

    iget v4, p0, Lcom/android/sec_settings/BrightnessPreference;->currentLevel:I

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 340
    invoke-virtual {p0}, Lcom/android/sec_settings/BrightnessPreference;->updateCustomBar()V

    goto :goto_0

    .line 344
    :pswitch_1
    if-eqz v0, :cond_1

    iget v2, p0, Lcom/android/sec_settings/BrightnessPreference;->currentLevel:I

    const/16 v3, 0xc8

    if-ge v2, v3, :cond_1

    .line 345
    iget v2, p0, Lcom/android/sec_settings/BrightnessPreference;->currentLevel:I

    add-int/lit8 v2, v2, 0x14

    iput v2, p0, Lcom/android/sec_settings/BrightnessPreference;->currentLevel:I

    .line 346
    iget-object v2, p0, Lcom/android/sec_settings/BrightnessPreference;->mAutoDetailSeekBar:Landroid/widget/SeekBar;

    iget v3, p0, Lcom/android/sec_settings/BrightnessPreference;->currentLevel:I

    invoke-virtual {v2, v3}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 347
    invoke-virtual {p0}, Lcom/android/sec_settings/BrightnessPreference;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "auto_brightness_detail"

    iget v4, p0, Lcom/android/sec_settings/BrightnessPreference;->currentLevel:I

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 348
    invoke-virtual {p0}, Lcom/android/sec_settings/BrightnessPreference;->updateCustomBar()V

    goto :goto_0

    .line 334
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
    .line 369
    iget-object v0, p0, Lcom/android/sec_settings/BrightnessPreference;->mSeekBar:Landroid/widget/SeekBar;

    if-ne p1, v0, :cond_1

    .line 370
    const/4 v0, 0x0

    invoke-direct {p0, p2, v0}, Lcom/android/sec_settings/BrightnessPreference;->setBrightness(IZ)V

    .line 376
    :cond_0
    :goto_0
    return-void

    .line 371
    :cond_1
    iget-object v0, p0, Lcom/android/sec_settings/BrightnessPreference;->mAutoDetailSeekBar:Landroid/widget/SeekBar;

    if-ne p1, v0, :cond_0

    .line 372
    iput p2, p0, Lcom/android/sec_settings/BrightnessPreference;->currentLevel:I

    .line 373
    invoke-virtual {p0}, Lcom/android/sec_settings/BrightnessPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "auto_brightness_detail"

    iget v2, p0, Lcom/android/sec_settings/BrightnessPreference;->currentLevel:I

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 374
    const-string v0, "BrightnessPreference"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "auto_brightness_detail : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/sec_settings/BrightnessPreference;->currentLevel:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 4
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 639
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v3, Lcom/android/sec_settings/BrightnessPreference$SavedState;

    invoke-virtual {v0, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 641
    :cond_0
    invoke-super {p0, p1}, Landroid/preference/SeekBarDialogPreference;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 652
    :goto_0
    return-void

    .line 645
    :cond_1
    check-cast p1, Lcom/android/sec_settings/BrightnessPreference$SavedState;

    .line 646
    invoke-virtual {p1}, Lcom/android/sec_settings/BrightnessPreference$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/preference/SeekBarDialogPreference;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 647
    iget v0, p1, Lcom/android/sec_settings/BrightnessPreference$SavedState;->oldProgress:I

    iput v0, p0, Lcom/android/sec_settings/BrightnessPreference;->mOldBrightness:I

    .line 648
    iget-boolean v0, p1, Lcom/android/sec_settings/BrightnessPreference$SavedState;->oldAutomatic:Z

    if-eqz v0, :cond_2

    move v0, v1

    :goto_1
    iput v0, p0, Lcom/android/sec_settings/BrightnessPreference;->mOldAutomatic:I

    .line 649
    iget-boolean v0, p1, Lcom/android/sec_settings/BrightnessPreference$SavedState;->automatic:Z

    if-eqz v0, :cond_3

    :goto_2
    invoke-direct {p0, v1}, Lcom/android/sec_settings/BrightnessPreference;->setMode(I)V

    .line 650
    iget v0, p1, Lcom/android/sec_settings/BrightnessPreference$SavedState;->progress:I

    invoke-direct {p0, v0, v2}, Lcom/android/sec_settings/BrightnessPreference;->setBrightness(IZ)V

    .line 651
    iget v0, p1, Lcom/android/sec_settings/BrightnessPreference$SavedState;->curBrightness:I

    iput v0, p0, Lcom/android/sec_settings/BrightnessPreference;->mCurBrightness:I

    goto :goto_0

    :cond_2
    move v0, v2

    .line 648
    goto :goto_1

    :cond_3
    move v1, v2

    .line 649
    goto :goto_2
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 4

    .prologue
    const/4 v2, 0x1

    .line 619
    invoke-super {p0}, Landroid/preference/SeekBarDialogPreference;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    .line 620
    .local v1, superState:Landroid/os/Parcelable;
    invoke-virtual {p0}, Lcom/android/sec_settings/BrightnessPreference;->getDialog()Landroid/app/Dialog;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {p0}, Lcom/android/sec_settings/BrightnessPreference;->getDialog()Landroid/app/Dialog;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Dialog;->isShowing()Z

    move-result v3

    if-nez v3, :cond_1

    :cond_0
    move-object v0, v1

    .line 634
    :goto_0
    return-object v0

    .line 623
    :cond_1
    new-instance v0, Lcom/android/sec_settings/BrightnessPreference$SavedState;

    invoke-direct {v0, v1}, Lcom/android/sec_settings/BrightnessPreference$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 624
    .local v0, myState:Lcom/android/sec_settings/BrightnessPreference$SavedState;
    iget-object v3, p0, Lcom/android/sec_settings/BrightnessPreference;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v3}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v3

    iput-boolean v3, v0, Lcom/android/sec_settings/BrightnessPreference$SavedState;->automatic:Z

    .line 625
    iget-object v3, p0, Lcom/android/sec_settings/BrightnessPreference;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v3}, Landroid/widget/SeekBar;->getProgress()I

    move-result v3

    iput v3, v0, Lcom/android/sec_settings/BrightnessPreference$SavedState;->progress:I

    .line 626
    iget v3, p0, Lcom/android/sec_settings/BrightnessPreference;->mOldAutomatic:I

    if-ne v3, v2, :cond_2

    :goto_1
    iput-boolean v2, v0, Lcom/android/sec_settings/BrightnessPreference$SavedState;->oldAutomatic:Z

    .line 627
    iget v2, p0, Lcom/android/sec_settings/BrightnessPreference;->mOldBrightness:I

    iput v2, v0, Lcom/android/sec_settings/BrightnessPreference$SavedState;->oldProgress:I

    .line 628
    iget v2, p0, Lcom/android/sec_settings/BrightnessPreference;->mCurBrightness:I

    iput v2, v0, Lcom/android/sec_settings/BrightnessPreference$SavedState;->curBrightness:I

    goto :goto_0

    .line 626
    :cond_2
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0
    .parameter "seekBar"

    .prologue
    .line 380
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0
    .parameter "seekBar"

    .prologue
    .line 384
    return-void
.end method

.method public returnMaxBrightness(I)I
    .locals 1
    .parameter "max"

    .prologue
    .line 359
    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    .line 362
    .end local p1
    :goto_0
    return p1

    .restart local p1
    :cond_0
    const/16 p1, 0xff

    goto :goto_0
.end method

.method public setFlipCloseStatus(Z)V
    .locals 4
    .parameter "status"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 601
    iput-boolean p1, p0, Lcom/android/sec_settings/BrightnessPreference;->mFlipCloseStatus:Z

    .line 602
    iget-object v3, p0, Lcom/android/sec_settings/BrightnessPreference;->mCheckBox:Landroid/widget/CheckBox;

    if-eqz v3, :cond_0

    .line 603
    iget-object v3, p0, Lcom/android/sec_settings/BrightnessPreference;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v3}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_1

    move v0, v1

    .line 605
    .local v0, mode:I
    :goto_0
    if-ne v0, v1, :cond_3

    .line 606
    iget-boolean v3, p0, Lcom/android/sec_settings/BrightnessPreference;->mSupportFolderType:Z

    if-eqz v3, :cond_2

    iget-boolean v3, p0, Lcom/android/sec_settings/BrightnessPreference;->mFlipCloseStatus:Z

    if-eqz v3, :cond_2

    .line 607
    iget-object v2, p0, Lcom/android/sec_settings/BrightnessPreference;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v2, v1}, Landroid/widget/SeekBar;->setEnabled(Z)V

    .line 615
    .end local v0           #mode:I
    :cond_0
    :goto_1
    return-void

    :cond_1
    move v0, v2

    .line 603
    goto :goto_0

    .line 609
    .restart local v0       #mode:I
    :cond_2
    iget-object v1, p0, Lcom/android/sec_settings/BrightnessPreference;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v1, v2}, Landroid/widget/SeekBar;->setEnabled(Z)V

    goto :goto_1

    .line 612
    :cond_3
    iget-object v2, p0, Lcom/android/sec_settings/BrightnessPreference;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v2, v1}, Landroid/widget/SeekBar;->setEnabled(Z)V

    goto :goto_1
.end method

.method public setObject(Lcom/android/sec_settings/DisplaySettings;)V
    .locals 0
    .parameter "displaySettings"

    .prologue
    .line 145
    iput-object p1, p0, Lcom/android/sec_settings/BrightnessPreference;->mBrightness:Lcom/android/sec_settings/DisplaySettings;

    .line 146
    return-void
.end method

.method protected showDialog(Landroid/os/Bundle;)V
    .locals 5
    .parameter "state"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 178
    invoke-super {p0, p1}, Landroid/preference/SeekBarDialogPreference;->showDialog(Landroid/os/Bundle;)V

    .line 180
    invoke-virtual {p0}, Lcom/android/sec_settings/BrightnessPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "screen_brightness"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/sec_settings/BrightnessPreference;->mBrightnessObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 184
    invoke-virtual {p0}, Lcom/android/sec_settings/BrightnessPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "screen_brightness_mode"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/sec_settings/BrightnessPreference;->mBrightnessModeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 187
    invoke-virtual {p0}, Lcom/android/sec_settings/BrightnessPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "auto_brightness_detail"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/sec_settings/BrightnessPreference;->mAutoBrightnessDetailObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 191
    iput-boolean v4, p0, Lcom/android/sec_settings/BrightnessPreference;->mRestoredOldState:Z

    .line 193
    invoke-direct {p0, v4}, Lcom/android/sec_settings/BrightnessPreference;->getBrightnessMode(I)I

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/sec_settings/BrightnessPreference;->supportDA:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/sec_settings/BrightnessPreference;->supportAutoBrightnessDetail:Z

    if-eqz v0, :cond_0

    .line 194
    invoke-virtual {p0}, Lcom/android/sec_settings/BrightnessPreference;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    check-cast v0, Landroid/app/AlertDialog;

    const/4 v1, -0x2

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 195
    invoke-virtual {p0}, Lcom/android/sec_settings/BrightnessPreference;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    check-cast v0, Landroid/app/AlertDialog;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    const v1, 0x7f0902cf

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 197
    :cond_0
    return-void
.end method

.method updateCustomBar()V
    .locals 4

    .prologue
    .line 318
    const-string v1, "BrightnessPreference"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateCustomBar(),  currentLevel : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/sec_settings/BrightnessPreference;->currentLevel:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 320
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    const/16 v1, 0xa

    if-ge v0, v1, :cond_1

    .line 321
    iget v1, p0, Lcom/android/sec_settings/BrightnessPreference;->currentLevel:I

    mul-int/lit8 v2, v0, 0x14

    if-gt v1, v2, :cond_0

    .line 322
    iget-object v1, p0, Lcom/android/sec_settings/BrightnessPreference;->mCustomBar:[Landroid/widget/ImageView;

    aget-object v1, v1, v0

    invoke-virtual {p0}, Lcom/android/sec_settings/BrightnessPreference;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f02003b

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 320
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 324
    :cond_0
    iget-object v1, p0, Lcom/android/sec_settings/BrightnessPreference;->mCustomBar:[Landroid/widget/ImageView;

    aget-object v1, v1, v0

    invoke-virtual {p0}, Lcom/android/sec_settings/BrightnessPreference;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f02003a

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    .line 327
    :cond_1
    return-void
.end method
