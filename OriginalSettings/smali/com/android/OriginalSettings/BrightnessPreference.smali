.class public Lcom/android/OriginalSettings/BrightnessPreference;
.super Landroid/preference/SeekBarDialogPreference;
.source "BrightnessPreference.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/OriginalSettings/BrightnessPreference$SavedState;
    }
.end annotation


# instance fields
.field private mAutomaticAvailable:Z

.field private mBrightnessModeObserver:Landroid/database/ContentObserver;

.field private mBrightnessObserver:Landroid/database/ContentObserver;

.field private mCheckBox:Landroid/widget/CheckBox;

.field private mContext:Landroid/content/Context;

.field private mCurrentProgress:I

.field private mMaxBrightness:I

.field private mOldAutomatic:I

.field private mOldBrightness:I

.field private mRestoredOldState:Z

.field private mSeekBar:Landroid/widget/SeekBar;

.field mSharedPreference:Landroid/content/SharedPreferences;

.field private mTemperature:Z

.field private mTextView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 94
    invoke-direct {p0, p1, p2}, Landroid/preference/SeekBarDialogPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 79
    new-instance v0, Lcom/android/OriginalSettings/BrightnessPreference$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/OriginalSettings/BrightnessPreference$1;-><init>(Lcom/android/OriginalSettings/BrightnessPreference;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/OriginalSettings/BrightnessPreference;->mBrightnessObserver:Landroid/database/ContentObserver;

    .line 86
    new-instance v0, Lcom/android/OriginalSettings/BrightnessPreference$2;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/OriginalSettings/BrightnessPreference$2;-><init>(Lcom/android/OriginalSettings/BrightnessPreference;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/OriginalSettings/BrightnessPreference;->mBrightnessModeObserver:Landroid/database/ContentObserver;

    .line 97
    iput-object p1, p0, Lcom/android/OriginalSettings/BrightnessPreference;->mContext:Landroid/content/Context;

    .line 99
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x111000f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/OriginalSettings/BrightnessPreference;->mAutomaticAvailable:Z

    .line 102
    const v0, 0x7f040069

    invoke-virtual {p0, v0}, Lcom/android/OriginalSettings/BrightnessPreference;->setDialogLayoutResource(I)V

    .line 104
    return-void
.end method

.method static synthetic access$000(Lcom/android/OriginalSettings/BrightnessPreference;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/android/OriginalSettings/BrightnessPreference;->onBrightnessChanged()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/OriginalSettings/BrightnessPreference;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/android/OriginalSettings/BrightnessPreference;->onBrightnessModeChanged()V

    return-void
.end method

.method private getBrightness(I)I
    .locals 3
    .parameter "defaultValue"

    .prologue
    .line 205
    move v0, p1

    .line 207
    .local v0, brightness:I
    :try_start_0
    invoke-virtual {p0}, Lcom/android/OriginalSettings/BrightnessPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "screen_brightness"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 211
    :goto_0
    return v0

    .line 209
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private getBrightnessMode(I)I
    .locals 3
    .parameter "defaultValue"

    .prologue
    .line 215
    move v0, p1

    .line 217
    .local v0, brightnessMode:I
    :try_start_0
    invoke-virtual {p0}, Lcom/android/OriginalSettings/BrightnessPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "screen_brightness_mode"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 221
    :goto_0
    return v0

    .line 219
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private onBrightnessChanged()V
    .locals 3

    .prologue
    .line 225
    const/16 v1, 0xff

    invoke-direct {p0, v1}, Lcom/android/OriginalSettings/BrightnessPreference;->getBrightness(I)I

    move-result v0

    .line 226
    .local v0, brightness:I
    iget-object v1, p0, Lcom/android/OriginalSettings/BrightnessPreference;->mSeekBar:Landroid/widget/SeekBar;

    add-int/lit8 v2, v0, -0x1e

    invoke-virtual {v1, v2}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 227
    return-void
.end method

.method private onBrightnessModeChanged()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 230
    invoke-direct {p0, v0}, Lcom/android/OriginalSettings/BrightnessPreference;->getBrightnessMode(I)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    .line 231
    .local v0, checked:Z
    :cond_0
    iget-object v1, p0, Lcom/android/OriginalSettings/BrightnessPreference;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v1, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 232
    return-void
.end method

.method private restoreOldState()V
    .locals 1

    .prologue
    .line 253
    iget-boolean v0, p0, Lcom/android/OriginalSettings/BrightnessPreference;->mRestoredOldState:Z

    if-eqz v0, :cond_0

    .line 262
    :goto_0
    return-void

    .line 255
    :cond_0
    iget-boolean v0, p0, Lcom/android/OriginalSettings/BrightnessPreference;->mAutomaticAvailable:Z

    if-eqz v0, :cond_1

    .line 256
    iget v0, p0, Lcom/android/OriginalSettings/BrightnessPreference;->mOldAutomatic:I

    invoke-direct {p0, v0}, Lcom/android/OriginalSettings/BrightnessPreference;->setMode(I)V

    .line 258
    :cond_1
    iget-boolean v0, p0, Lcom/android/OriginalSettings/BrightnessPreference;->mAutomaticAvailable:Z

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/android/OriginalSettings/BrightnessPreference;->mOldAutomatic:I

    if-nez v0, :cond_3

    .line 259
    :cond_2
    iget v0, p0, Lcom/android/OriginalSettings/BrightnessPreference;->mOldBrightness:I

    invoke-direct {p0, v0}, Lcom/android/OriginalSettings/BrightnessPreference;->setBrightness(I)V

    .line 261
    :cond_3
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/OriginalSettings/BrightnessPreference;->mRestoredOldState:Z

    goto :goto_0
.end method

.method private setBrightness(I)V
    .locals 2
    .parameter "brightness"

    .prologue
    .line 266
    :try_start_0
    const-string v1, "power"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/os/IPowerManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IPowerManager;

    move-result-object v0

    .line 268
    .local v0, power:Landroid/os/IPowerManager;
    if-eqz v0, :cond_0

    .line 269
    invoke-interface {v0, p1}, Landroid/os/IPowerManager;->setBacklightBrightness(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 274
    .end local v0           #power:Landroid/os/IPowerManager;
    :cond_0
    :goto_0
    return-void

    .line 271
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private setMode(I)V
    .locals 2
    .parameter "mode"

    .prologue
    const/4 v1, 0x1

    .line 277
    if-ne p1, v1, :cond_0

    .line 279
    iget-object v0, p0, Lcom/android/OriginalSettings/BrightnessPreference;->mSeekBar:Landroid/widget/SeekBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setEnabled(Z)V

    .line 284
    :goto_0
    invoke-virtual {p0}, Lcom/android/OriginalSettings/BrightnessPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "screen_brightness_mode"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 286
    return-void

    .line 282
    :cond_0
    iget-object v0, p0, Lcom/android/OriginalSettings/BrightnessPreference;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setEnabled(Z)V

    goto :goto_0
.end method


# virtual methods
.method protected onBindDialogView(Landroid/view/View;)V
    .locals 5
    .parameter "view"

    .prologue
    const/16 v4, 0x8

    const/4 v1, 0x0

    .line 122
    invoke-super {p0, p1}, Landroid/preference/SeekBarDialogPreference;->onBindDialogView(Landroid/view/View;)V

    .line 124
    invoke-static {p1}, Lcom/android/OriginalSettings/BrightnessPreference;->getSeekBar(Landroid/view/View;)Landroid/widget/SeekBar;

    move-result-object v0

    iput-object v0, p0, Lcom/android/OriginalSettings/BrightnessPreference;->mSeekBar:Landroid/widget/SeekBar;

    .line 125
    iget-object v0, p0, Lcom/android/OriginalSettings/BrightnessPreference;->mSeekBar:Landroid/widget/SeekBar;

    const/16 v2, 0xe1

    invoke-virtual {v0, v2}, Landroid/widget/SeekBar;->setMax(I)V

    .line 126
    invoke-direct {p0, v1}, Lcom/android/OriginalSettings/BrightnessPreference;->getBrightness(I)I

    move-result v0

    iput v0, p0, Lcom/android/OriginalSettings/BrightnessPreference;->mOldBrightness:I

    .line 129
    const v0, 0x7f080142

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/OriginalSettings/BrightnessPreference;->mTextView:Landroid/widget/TextView;

    .line 131
    iget-object v0, p0, Lcom/android/OriginalSettings/BrightnessPreference;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/android/OriginalSettings/BrightnessPreference;->mSharedPreference:Landroid/content/SharedPreferences;

    .line 133
    iget-object v0, p0, Lcom/android/OriginalSettings/BrightnessPreference;->mSharedPreference:Landroid/content/SharedPreferences;

    const-string v2, "pref_siop_brightness"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/OriginalSettings/BrightnessPreference;->mTemperature:Z

    .line 135
    const-string v0, "BrightnessPreference"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SIOP :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/OriginalSettings/BrightnessPreference;->mTemperature:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    iget-boolean v0, p0, Lcom/android/OriginalSettings/BrightnessPreference;->mTemperature:Z

    invoke-virtual {p0, v0}, Lcom/android/OriginalSettings/BrightnessPreference;->returnMaxBrightness(Z)I

    move-result v0

    iput v0, p0, Lcom/android/OriginalSettings/BrightnessPreference;->mMaxBrightness:I

    .line 137
    iget v0, p0, Lcom/android/OriginalSettings/BrightnessPreference;->mOldBrightness:I

    iget v2, p0, Lcom/android/OriginalSettings/BrightnessPreference;->mMaxBrightness:I

    if-le v0, v2, :cond_1

    .line 138
    iget-object v0, p0, Lcom/android/OriginalSettings/BrightnessPreference;->mSeekBar:Landroid/widget/SeekBar;

    iget v2, p0, Lcom/android/OriginalSettings/BrightnessPreference;->mMaxBrightness:I

    add-int/lit8 v2, v2, -0x1e

    invoke-virtual {v0, v2}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 141
    :goto_0
    iget-boolean v0, p0, Lcom/android/OriginalSettings/BrightnessPreference;->mTemperature:Z

    if-nez v0, :cond_0

    .line 142
    iget-object v0, p0, Lcom/android/OriginalSettings/BrightnessPreference;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 145
    :cond_0
    const v0, 0x7f080141

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/android/OriginalSettings/BrightnessPreference;->mCheckBox:Landroid/widget/CheckBox;

    .line 146
    iget-boolean v0, p0, Lcom/android/OriginalSettings/BrightnessPreference;->mAutomaticAvailable:Z

    if-eqz v0, :cond_3

    .line 147
    iget-object v0, p0, Lcom/android/OriginalSettings/BrightnessPreference;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v0, p0}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 148
    invoke-direct {p0, v1}, Lcom/android/OriginalSettings/BrightnessPreference;->getBrightnessMode(I)I

    move-result v0

    iput v0, p0, Lcom/android/OriginalSettings/BrightnessPreference;->mOldAutomatic:I

    .line 149
    iget-object v2, p0, Lcom/android/OriginalSettings/BrightnessPreference;->mCheckBox:Landroid/widget/CheckBox;

    iget v0, p0, Lcom/android/OriginalSettings/BrightnessPreference;->mOldAutomatic:I

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    :goto_1
    invoke-virtual {v2, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 153
    :goto_2
    iget-object v0, p0, Lcom/android/OriginalSettings/BrightnessPreference;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0, p0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 154
    return-void

    .line 140
    :cond_1
    iget-object v0, p0, Lcom/android/OriginalSettings/BrightnessPreference;->mSeekBar:Landroid/widget/SeekBar;

    iget v2, p0, Lcom/android/OriginalSettings/BrightnessPreference;->mOldBrightness:I

    add-int/lit8 v2, v2, -0x1e

    invoke-virtual {v0, v2}, Landroid/widget/SeekBar;->setProgress(I)V

    goto :goto_0

    :cond_2
    move v0, v1

    .line 149
    goto :goto_1

    .line 151
    :cond_3
    iget-object v0, p0, Lcom/android/OriginalSettings/BrightnessPreference;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v0, v4}, Landroid/widget/CheckBox;->setVisibility(I)V

    goto :goto_2
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 1
    .parameter "buttonView"
    .parameter "isChecked"

    .prologue
    .line 197
    if-eqz p2, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-direct {p0, v0}, Lcom/android/OriginalSettings/BrightnessPreference;->setMode(I)V

    .line 199
    if-nez p2, :cond_0

    .line 200
    iget-object v0, p0, Lcom/android/OriginalSettings/BrightnessPreference;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0}, Landroid/widget/SeekBar;->getProgress()I

    move-result v0

    add-int/lit8 v0, v0, 0x1e

    invoke-direct {p0, v0}, Lcom/android/OriginalSettings/BrightnessPreference;->setBrightness(I)V

    .line 202
    :cond_0
    return-void

    .line 197
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onDialogClosed(Z)V
    .locals 3
    .parameter "positiveResult"

    .prologue
    .line 236
    invoke-super {p0, p1}, Landroid/preference/SeekBarDialogPreference;->onDialogClosed(Z)V

    .line 238
    invoke-virtual {p0}, Lcom/android/OriginalSettings/BrightnessPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 240
    .local v0, resolver:Landroid/content/ContentResolver;
    if-eqz p1, :cond_0

    .line 241
    const-string v1, "screen_brightness"

    iget-object v2, p0, Lcom/android/OriginalSettings/BrightnessPreference;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v2}, Landroid/widget/SeekBar;->getProgress()I

    move-result v2

    add-int/lit8 v2, v2, 0x1e

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 248
    :goto_0
    iget-object v1, p0, Lcom/android/OriginalSettings/BrightnessPreference;->mBrightnessObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 249
    iget-object v1, p0, Lcom/android/OriginalSettings/BrightnessPreference;->mBrightnessModeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 250
    return-void

    .line 245
    :cond_0
    invoke-direct {p0}, Lcom/android/OriginalSettings/BrightnessPreference;->restoreOldState()V

    goto :goto_0
.end method

.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 2
    .parameter "seekBar"
    .parameter "progress"
    .parameter "fromTouch"

    .prologue
    .line 169
    iput p2, p0, Lcom/android/OriginalSettings/BrightnessPreference;->mCurrentProgress:I

    .line 170
    add-int/lit8 v0, p2, 0x1e

    .line 171
    .local v0, mCurrentBrightness:I
    iget v1, p0, Lcom/android/OriginalSettings/BrightnessPreference;->mMaxBrightness:I

    if-gt v0, v1, :cond_0

    .line 173
    add-int/lit8 v1, p2, 0x1e

    invoke-direct {p0, v1}, Lcom/android/OriginalSettings/BrightnessPreference;->setBrightness(I)V

    .line 174
    :cond_0
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 4
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 307
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v3, Lcom/android/OriginalSettings/BrightnessPreference$SavedState;

    invoke-virtual {v0, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 309
    :cond_0
    invoke-super {p0, p1}, Landroid/preference/SeekBarDialogPreference;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 319
    :goto_0
    return-void

    .line 313
    :cond_1
    check-cast p1, Lcom/android/OriginalSettings/BrightnessPreference$SavedState;

    .line 314
    invoke-virtual {p1}, Lcom/android/OriginalSettings/BrightnessPreference$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/preference/SeekBarDialogPreference;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 315
    iget v0, p1, Lcom/android/OriginalSettings/BrightnessPreference$SavedState;->oldProgress:I

    iput v0, p0, Lcom/android/OriginalSettings/BrightnessPreference;->mOldBrightness:I

    .line 316
    iget-boolean v0, p1, Lcom/android/OriginalSettings/BrightnessPreference$SavedState;->oldAutomatic:Z

    if-eqz v0, :cond_2

    move v0, v1

    :goto_1
    iput v0, p0, Lcom/android/OriginalSettings/BrightnessPreference;->mOldAutomatic:I

    .line 317
    iget-boolean v0, p1, Lcom/android/OriginalSettings/BrightnessPreference$SavedState;->automatic:Z

    if-eqz v0, :cond_3

    :goto_2
    invoke-direct {p0, v1}, Lcom/android/OriginalSettings/BrightnessPreference;->setMode(I)V

    .line 318
    iget v0, p1, Lcom/android/OriginalSettings/BrightnessPreference$SavedState;->progress:I

    add-int/lit8 v0, v0, 0x1e

    invoke-direct {p0, v0}, Lcom/android/OriginalSettings/BrightnessPreference;->setBrightness(I)V

    goto :goto_0

    :cond_2
    move v0, v2

    .line 316
    goto :goto_1

    :cond_3
    move v1, v2

    .line 317
    goto :goto_2
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 4

    .prologue
    const/4 v2, 0x1

    .line 290
    invoke-super {p0}, Landroid/preference/SeekBarDialogPreference;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    .line 291
    .local v1, superState:Landroid/os/Parcelable;
    invoke-virtual {p0}, Lcom/android/OriginalSettings/BrightnessPreference;->getDialog()Landroid/app/Dialog;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {p0}, Lcom/android/OriginalSettings/BrightnessPreference;->getDialog()Landroid/app/Dialog;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Dialog;->isShowing()Z

    move-result v3

    if-nez v3, :cond_1

    :cond_0
    move-object v0, v1

    .line 302
    :goto_0
    return-object v0

    .line 294
    :cond_1
    new-instance v0, Lcom/android/OriginalSettings/BrightnessPreference$SavedState;

    invoke-direct {v0, v1}, Lcom/android/OriginalSettings/BrightnessPreference$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 295
    .local v0, myState:Lcom/android/OriginalSettings/BrightnessPreference$SavedState;
    iget-object v3, p0, Lcom/android/OriginalSettings/BrightnessPreference;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v3}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v3

    iput-boolean v3, v0, Lcom/android/OriginalSettings/BrightnessPreference$SavedState;->automatic:Z

    .line 296
    iget-object v3, p0, Lcom/android/OriginalSettings/BrightnessPreference;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v3}, Landroid/widget/SeekBar;->getProgress()I

    move-result v3

    iput v3, v0, Lcom/android/OriginalSettings/BrightnessPreference$SavedState;->progress:I

    .line 297
    iget v3, p0, Lcom/android/OriginalSettings/BrightnessPreference;->mOldAutomatic:I

    if-ne v3, v2, :cond_2

    :goto_1
    iput-boolean v2, v0, Lcom/android/OriginalSettings/BrightnessPreference$SavedState;->oldAutomatic:Z

    .line 298
    iget v2, p0, Lcom/android/OriginalSettings/BrightnessPreference;->mOldBrightness:I

    iput v2, v0, Lcom/android/OriginalSettings/BrightnessPreference$SavedState;->oldProgress:I

    .line 301
    invoke-direct {p0}, Lcom/android/OriginalSettings/BrightnessPreference;->restoreOldState()V

    goto :goto_0

    .line 297
    :cond_2
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0
    .parameter "seekBar"

    .prologue
    .line 178
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 3
    .parameter "seekBar"

    .prologue
    .line 183
    const-string v0, "BrightnessPreference"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onStopTrackingTouch() : Current progress : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/OriginalSettings/BrightnessPreference;->mCurrentProgress:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    iget v0, p0, Lcom/android/OriginalSettings/BrightnessPreference;->mCurrentProgress:I

    add-int/lit8 v0, v0, 0x1e

    iget v1, p0, Lcom/android/OriginalSettings/BrightnessPreference;->mMaxBrightness:I

    if-gt v0, v1, :cond_0

    .line 186
    const-string v0, "BrightnessPreference"

    const-string v1, "onStopTrackingTouch() : Current progress is below than MaxBrightness"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    :goto_0
    return-void

    .line 190
    :cond_0
    iget v0, p0, Lcom/android/OriginalSettings/BrightnessPreference;->mMaxBrightness:I

    add-int/lit8 v0, v0, -0x1e

    invoke-virtual {p1, v0}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 191
    const-string v0, "BrightnessPreference"

    const-string v1, "onStopTrackingTouch() : Current progress is over than MaxBrightness"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public returnMaxBrightness(Z)I
    .locals 1
    .parameter "isLimit"

    .prologue
    .line 159
    if-eqz p1, :cond_0

    .line 160
    const/16 v0, 0xbb

    .line 162
    :goto_0
    return v0

    :cond_0
    const/16 v0, 0xff

    goto :goto_0
.end method

.method protected showDialog(Landroid/os/Bundle;)V
    .locals 4
    .parameter "state"

    .prologue
    const/4 v3, 0x1

    .line 108
    invoke-super {p0, p1}, Landroid/preference/SeekBarDialogPreference;->showDialog(Landroid/os/Bundle;)V

    .line 110
    invoke-virtual {p0}, Lcom/android/OriginalSettings/BrightnessPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "screen_brightness"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/OriginalSettings/BrightnessPreference;->mBrightnessObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 114
    invoke-virtual {p0}, Lcom/android/OriginalSettings/BrightnessPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "screen_brightness_mode"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/OriginalSettings/BrightnessPreference;->mBrightnessModeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 117
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/OriginalSettings/BrightnessPreference;->mRestoredOldState:Z

    .line 118
    return-void
.end method
