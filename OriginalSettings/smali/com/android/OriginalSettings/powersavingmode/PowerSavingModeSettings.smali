.class public Lcom/android/OriginalSettings/powersavingmode/PowerSavingModeSettings;
.super Lcom/android/OriginalSettings/SettingsPreferenceFragment;
.source "PowerSavingModeSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private mAdjustBrightness:Landroid/preference/CheckBoxPreference;

.field private mBrightnessSetting:Landroid/preference/ListPreference;

.field private mCancelButton:Landroid/widget/Button;

.field private mContentResolver:Landroid/content/ContentResolver;

.field private mDisableBluetooth:Landroid/preference/CheckBoxPreference;

.field private mDisableGps:Landroid/preference/CheckBoxPreference;

.field private mDisableSync:Landroid/preference/CheckBoxPreference;

.field private mDisableWifi:Landroid/preference/CheckBoxPreference;

.field private mModeValueSetting:Landroid/preference/ListPreference;

.field private mNew_battery_level:I

.field private mNew_brightness_level:I

.field private mNew_screen_timeout:I

.field private mOkButton:Landroid/widget/Button;

.field private mSaved_battery_level:I

.field private mSaved_brightness_level:I

.field private mSaved_screen_timeout:I

.field private mScreentimeout:Landroid/preference/ListPreference;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/16 v0, 0x3a98

    .line 38
    invoke-direct {p0}, Lcom/android/OriginalSettings/SettingsPreferenceFragment;-><init>()V

    .line 108
    iput v0, p0, Lcom/android/OriginalSettings/powersavingmode/PowerSavingModeSettings;->mNew_screen_timeout:I

    .line 109
    iput v0, p0, Lcom/android/OriginalSettings/powersavingmode/PowerSavingModeSettings;->mSaved_screen_timeout:I

    return-void
.end method

.method private toggleBrightnessSetting(Z)V
    .locals 2
    .parameter "enableMode"

    .prologue
    .line 336
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/OriginalSettings/powersavingmode/PowerSavingModeSettings;->mAdjustBrightness:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 337
    iget-object v0, p0, Lcom/android/OriginalSettings/powersavingmode/PowerSavingModeSettings;->mBrightnessSetting:Landroid/preference/ListPreference;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setEnabled(Z)V

    .line 341
    :goto_0
    return-void

    .line 339
    :cond_0
    iget-object v0, p0, Lcom/android/OriginalSettings/powersavingmode/PowerSavingModeSettings;->mBrightnessSetting:Landroid/preference/ListPreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setEnabled(Z)V

    goto :goto_0
.end method

.method private updateUIFromPreferences()V
    .locals 15

    .prologue
    const/16 v14, 0x32

    const/16 v13, 0x1e

    const/16 v12, 0xa

    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 233
    iget-object v7, p0, Lcom/android/OriginalSettings/powersavingmode/PowerSavingModeSettings;->mContentResolver:Landroid/content/ContentResolver;

    const-string v10, "psm_battery_level"

    invoke-static {v7, v10, v13}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 234
    .local v0, batteryValue:I
    const/4 v1, 0x0

    .line 235
    .local v1, batteryValueIndex:I
    if-ne v0, v12, :cond_2

    .line 236
    const/4 v1, 0x0

    .line 248
    :goto_0
    if-ne v0, v12, :cond_7

    .line 249
    iget-object v7, p0, Lcom/android/OriginalSettings/powersavingmode/PowerSavingModeSettings;->mModeValueSetting:Landroid/preference/ListPreference;

    invoke-virtual {p0}, Lcom/android/OriginalSettings/powersavingmode/PowerSavingModeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v10

    const v11, 0x7f0b07a8

    invoke-virtual {v10, v11}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 260
    :cond_0
    :goto_1
    iget-object v7, p0, Lcom/android/OriginalSettings/powersavingmode/PowerSavingModeSettings;->mModeValueSetting:Landroid/preference/ListPreference;

    invoke-virtual {v7, v1}, Landroid/preference/ListPreference;->setValueIndex(I)V

    .line 261
    iput v0, p0, Lcom/android/OriginalSettings/powersavingmode/PowerSavingModeSettings;->mSaved_battery_level:I

    iput v0, p0, Lcom/android/OriginalSettings/powersavingmode/PowerSavingModeSettings;->mNew_battery_level:I

    .line 263
    iget-object v7, p0, Lcom/android/OriginalSettings/powersavingmode/PowerSavingModeSettings;->mContentResolver:Landroid/content/ContentResolver;

    const-string v10, "psm_brightness_level"

    invoke-static {v7, v10, v12}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 264
    .local v2, brightnessValue:I
    const/4 v3, 0x0

    .line 267
    .local v3, brightnessValueIndex:I
    if-ne v2, v12, :cond_b

    .line 268
    const/4 v3, 0x0

    .line 279
    :goto_2
    iget-object v7, p0, Lcom/android/OriginalSettings/powersavingmode/PowerSavingModeSettings;->mBrightnessSetting:Landroid/preference/ListPreference;

    invoke-virtual {v7, v3}, Landroid/preference/ListPreference;->setValueIndex(I)V

    .line 280
    iput v2, p0, Lcom/android/OriginalSettings/powersavingmode/PowerSavingModeSettings;->mSaved_brightness_level:I

    iput v2, p0, Lcom/android/OriginalSettings/powersavingmode/PowerSavingModeSettings;->mNew_brightness_level:I

    .line 282
    if-ne v2, v12, :cond_10

    .line 283
    iget-object v7, p0, Lcom/android/OriginalSettings/powersavingmode/PowerSavingModeSettings;->mBrightnessSetting:Landroid/preference/ListPreference;

    invoke-virtual {p0}, Lcom/android/OriginalSettings/powersavingmode/PowerSavingModeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v10

    const v11, 0x7f0b07ad

    invoke-virtual {v10, v11}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 294
    :cond_1
    :goto_3
    iget-object v7, p0, Lcom/android/OriginalSettings/powersavingmode/PowerSavingModeSettings;->mContentResolver:Landroid/content/ContentResolver;

    const-string v10, "psm_screen_timeout"

    const/16 v11, 0x3a98

    invoke-static {v7, v10, v11}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    .line 295
    .local v5, screen_timeout_Value:I
    const/4 v6, 0x0

    .line 297
    .local v6, screen_timeout_ValueIndex:I
    const/16 v7, 0x3a98

    if-ne v5, v7, :cond_14

    .line 298
    const/4 v6, 0x0

    .line 311
    :goto_4
    iput v5, p0, Lcom/android/OriginalSettings/powersavingmode/PowerSavingModeSettings;->mSaved_screen_timeout:I

    iput v5, p0, Lcom/android/OriginalSettings/powersavingmode/PowerSavingModeSettings;->mNew_screen_timeout:I

    .line 313
    iget-object v7, p0, Lcom/android/OriginalSettings/powersavingmode/PowerSavingModeSettings;->mScreentimeout:Landroid/preference/ListPreference;

    invoke-virtual {v7, v6}, Landroid/preference/ListPreference;->setValueIndex(I)V

    .line 317
    const/4 v4, 0x1

    .line 319
    .local v4, enable:Z
    iget-object v7, p0, Lcom/android/OriginalSettings/powersavingmode/PowerSavingModeSettings;->mModeValueSetting:Landroid/preference/ListPreference;

    invoke-virtual {v7, v4}, Landroid/preference/ListPreference;->setEnabled(Z)V

    .line 320
    iget-object v7, p0, Lcom/android/OriginalSettings/powersavingmode/PowerSavingModeSettings;->mDisableWifi:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v7, v4}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 321
    iget-object v7, p0, Lcom/android/OriginalSettings/powersavingmode/PowerSavingModeSettings;->mDisableBluetooth:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v7, v4}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 322
    iget-object v7, p0, Lcom/android/OriginalSettings/powersavingmode/PowerSavingModeSettings;->mDisableGps:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v7, v4}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 323
    iget-object v7, p0, Lcom/android/OriginalSettings/powersavingmode/PowerSavingModeSettings;->mDisableSync:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v7, v4}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 324
    iget-object v7, p0, Lcom/android/OriginalSettings/powersavingmode/PowerSavingModeSettings;->mAdjustBrightness:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v7, v4}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 325
    invoke-direct {p0, v4}, Lcom/android/OriginalSettings/powersavingmode/PowerSavingModeSettings;->toggleBrightnessSetting(Z)V

    .line 326
    iget-object v7, p0, Lcom/android/OriginalSettings/powersavingmode/PowerSavingModeSettings;->mScreentimeout:Landroid/preference/ListPreference;

    invoke-virtual {v7, v4}, Landroid/preference/ListPreference;->setEnabled(Z)V

    .line 328
    iget-object v10, p0, Lcom/android/OriginalSettings/powersavingmode/PowerSavingModeSettings;->mDisableWifi:Landroid/preference/CheckBoxPreference;

    iget-object v7, p0, Lcom/android/OriginalSettings/powersavingmode/PowerSavingModeSettings;->mContentResolver:Landroid/content/ContentResolver;

    const-string v11, "psm_wifi"

    invoke-static {v7, v11, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    if-ne v7, v8, :cond_1a

    move v7, v8

    :goto_5
    invoke-virtual {v10, v7}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 329
    iget-object v10, p0, Lcom/android/OriginalSettings/powersavingmode/PowerSavingModeSettings;->mDisableBluetooth:Landroid/preference/CheckBoxPreference;

    iget-object v7, p0, Lcom/android/OriginalSettings/powersavingmode/PowerSavingModeSettings;->mContentResolver:Landroid/content/ContentResolver;

    const-string v11, "psm_bluetooth"

    invoke-static {v7, v11, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    if-ne v7, v8, :cond_1b

    move v7, v8

    :goto_6
    invoke-virtual {v10, v7}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 330
    iget-object v10, p0, Lcom/android/OriginalSettings/powersavingmode/PowerSavingModeSettings;->mDisableGps:Landroid/preference/CheckBoxPreference;

    iget-object v7, p0, Lcom/android/OriginalSettings/powersavingmode/PowerSavingModeSettings;->mContentResolver:Landroid/content/ContentResolver;

    const-string v11, "psm_gps"

    invoke-static {v7, v11, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    if-ne v7, v8, :cond_1c

    move v7, v8

    :goto_7
    invoke-virtual {v10, v7}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 331
    iget-object v10, p0, Lcom/android/OriginalSettings/powersavingmode/PowerSavingModeSettings;->mDisableSync:Landroid/preference/CheckBoxPreference;

    iget-object v7, p0, Lcom/android/OriginalSettings/powersavingmode/PowerSavingModeSettings;->mContentResolver:Landroid/content/ContentResolver;

    const-string v11, "psm_sync"

    invoke-static {v7, v11, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    if-ne v7, v8, :cond_1d

    move v7, v8

    :goto_8
    invoke-virtual {v10, v7}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 332
    iget-object v7, p0, Lcom/android/OriginalSettings/powersavingmode/PowerSavingModeSettings;->mAdjustBrightness:Landroid/preference/CheckBoxPreference;

    iget-object v10, p0, Lcom/android/OriginalSettings/powersavingmode/PowerSavingModeSettings;->mContentResolver:Landroid/content/ContentResolver;

    const-string v11, "psm_brightness"

    invoke-static {v10, v11, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v10

    if-ne v10, v8, :cond_1e

    :goto_9
    invoke-virtual {v7, v8}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 333
    return-void

    .line 237
    .end local v2           #brightnessValue:I
    .end local v3           #brightnessValueIndex:I
    .end local v4           #enable:Z
    .end local v5           #screen_timeout_Value:I
    .end local v6           #screen_timeout_ValueIndex:I
    :cond_2
    const/16 v7, 0x14

    if-ne v0, v7, :cond_3

    .line 238
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 239
    :cond_3
    if-ne v0, v13, :cond_4

    .line 240
    const/4 v1, 0x2

    goto/16 :goto_0

    .line 241
    :cond_4
    const/16 v7, 0x28

    if-ne v0, v7, :cond_5

    .line 242
    const/4 v1, 0x3

    goto/16 :goto_0

    .line 243
    :cond_5
    if-ne v0, v14, :cond_6

    .line 244
    const/4 v1, 0x4

    goto/16 :goto_0

    .line 246
    :cond_6
    const/4 v1, 0x0

    goto/16 :goto_0

    .line 250
    :cond_7
    const/16 v7, 0x14

    if-ne v0, v7, :cond_8

    .line 251
    iget-object v7, p0, Lcom/android/OriginalSettings/powersavingmode/PowerSavingModeSettings;->mModeValueSetting:Landroid/preference/ListPreference;

    invoke-virtual {p0}, Lcom/android/OriginalSettings/powersavingmode/PowerSavingModeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v10

    const v11, 0x7f0b07a9

    invoke-virtual {v10, v11}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 252
    :cond_8
    if-ne v0, v13, :cond_9

    .line 253
    iget-object v7, p0, Lcom/android/OriginalSettings/powersavingmode/PowerSavingModeSettings;->mModeValueSetting:Landroid/preference/ListPreference;

    invoke-virtual {p0}, Lcom/android/OriginalSettings/powersavingmode/PowerSavingModeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v10

    const v11, 0x7f0b07aa

    invoke-virtual {v10, v11}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 254
    :cond_9
    const/16 v7, 0x28

    if-ne v0, v7, :cond_a

    .line 255
    iget-object v7, p0, Lcom/android/OriginalSettings/powersavingmode/PowerSavingModeSettings;->mModeValueSetting:Landroid/preference/ListPreference;

    invoke-virtual {p0}, Lcom/android/OriginalSettings/powersavingmode/PowerSavingModeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v10

    const v11, 0x7f0b07ab

    invoke-virtual {v10, v11}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 256
    :cond_a
    if-ne v0, v14, :cond_0

    .line 257
    iget-object v7, p0, Lcom/android/OriginalSettings/powersavingmode/PowerSavingModeSettings;->mModeValueSetting:Landroid/preference/ListPreference;

    invoke-virtual {p0}, Lcom/android/OriginalSettings/powersavingmode/PowerSavingModeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v10

    const v11, 0x7f0b07ac

    invoke-virtual {v10, v11}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 269
    .restart local v2       #brightnessValue:I
    .restart local v3       #brightnessValueIndex:I
    :cond_b
    if-ne v2, v13, :cond_c

    .line 270
    const/4 v3, 0x1

    goto/16 :goto_2

    .line 271
    :cond_c
    if-ne v2, v14, :cond_d

    .line 272
    const/4 v3, 0x2

    goto/16 :goto_2

    .line 273
    :cond_d
    const/16 v7, 0x46

    if-ne v2, v7, :cond_e

    .line 274
    const/4 v3, 0x3

    goto/16 :goto_2

    .line 275
    :cond_e
    const/16 v7, 0x64

    if-ne v2, v7, :cond_f

    .line 276
    const/4 v3, 0x4

    goto/16 :goto_2

    .line 278
    :cond_f
    const/4 v3, 0x0

    goto/16 :goto_2

    .line 284
    :cond_10
    if-ne v2, v13, :cond_11

    .line 285
    iget-object v7, p0, Lcom/android/OriginalSettings/powersavingmode/PowerSavingModeSettings;->mBrightnessSetting:Landroid/preference/ListPreference;

    invoke-virtual {p0}, Lcom/android/OriginalSettings/powersavingmode/PowerSavingModeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v10

    const v11, 0x7f0b07ae

    invoke-virtual {v10, v11}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_3

    .line 286
    :cond_11
    if-ne v2, v14, :cond_12

    .line 287
    iget-object v7, p0, Lcom/android/OriginalSettings/powersavingmode/PowerSavingModeSettings;->mBrightnessSetting:Landroid/preference/ListPreference;

    invoke-virtual {p0}, Lcom/android/OriginalSettings/powersavingmode/PowerSavingModeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v10

    const v11, 0x7f0b07af

    invoke-virtual {v10, v11}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_3

    .line 288
    :cond_12
    const/16 v7, 0x46

    if-ne v2, v7, :cond_13

    .line 289
    iget-object v7, p0, Lcom/android/OriginalSettings/powersavingmode/PowerSavingModeSettings;->mBrightnessSetting:Landroid/preference/ListPreference;

    invoke-virtual {p0}, Lcom/android/OriginalSettings/powersavingmode/PowerSavingModeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v10

    const v11, 0x7f0b07b0

    invoke-virtual {v10, v11}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_3

    .line 290
    :cond_13
    const/16 v7, 0x64

    if-ne v2, v7, :cond_1

    .line 291
    iget-object v7, p0, Lcom/android/OriginalSettings/powersavingmode/PowerSavingModeSettings;->mBrightnessSetting:Landroid/preference/ListPreference;

    invoke-virtual {p0}, Lcom/android/OriginalSettings/powersavingmode/PowerSavingModeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v10

    const v11, 0x7f0b07b1

    invoke-virtual {v10, v11}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_3

    .line 299
    .restart local v5       #screen_timeout_Value:I
    .restart local v6       #screen_timeout_ValueIndex:I
    :cond_14
    const/16 v7, 0x7530

    if-ne v5, v7, :cond_15

    .line 300
    const/4 v6, 0x1

    goto/16 :goto_4

    .line 301
    :cond_15
    const v7, 0xea60

    if-ne v5, v7, :cond_16

    .line 302
    const/4 v6, 0x2

    goto/16 :goto_4

    .line 303
    :cond_16
    const v7, 0x1d4c0

    if-ne v5, v7, :cond_17

    .line 304
    const/4 v6, 0x3

    goto/16 :goto_4

    .line 305
    :cond_17
    const v7, 0x493e0

    if-ne v5, v7, :cond_18

    .line 306
    const/4 v6, 0x4

    goto/16 :goto_4

    .line 307
    :cond_18
    const v7, 0x927c0

    if-ne v5, v7, :cond_19

    .line 308
    const/4 v6, 0x5

    goto/16 :goto_4

    .line 310
    :cond_19
    const/4 v6, 0x0

    goto/16 :goto_4

    .restart local v4       #enable:Z
    :cond_1a
    move v7, v9

    .line 328
    goto/16 :goto_5

    :cond_1b
    move v7, v9

    .line 329
    goto/16 :goto_6

    :cond_1c
    move v7, v9

    .line 330
    goto/16 :goto_7

    :cond_1d
    move v7, v9

    .line 331
    goto/16 :goto_8

    :cond_1e
    move v8, v9

    .line 332
    goto/16 :goto_9
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .parameter "v"

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 343
    iget-object v1, p0, Lcom/android/OriginalSettings/powersavingmode/PowerSavingModeSettings;->mOkButton:Landroid/widget/Button;

    if-ne p1, v1, :cond_6

    .line 345
    iget v1, p0, Lcom/android/OriginalSettings/powersavingmode/PowerSavingModeSettings;->mNew_battery_level:I

    iput v1, p0, Lcom/android/OriginalSettings/powersavingmode/PowerSavingModeSettings;->mSaved_battery_level:I

    .line 346
    iget v1, p0, Lcom/android/OriginalSettings/powersavingmode/PowerSavingModeSettings;->mNew_brightness_level:I

    iput v1, p0, Lcom/android/OriginalSettings/powersavingmode/PowerSavingModeSettings;->mSaved_brightness_level:I

    .line 347
    iget v1, p0, Lcom/android/OriginalSettings/powersavingmode/PowerSavingModeSettings;->mNew_screen_timeout:I

    iput v1, p0, Lcom/android/OriginalSettings/powersavingmode/PowerSavingModeSettings;->mSaved_screen_timeout:I

    .line 349
    iget-object v1, p0, Lcom/android/OriginalSettings/powersavingmode/PowerSavingModeSettings;->mContentResolver:Landroid/content/ContentResolver;

    const-string v4, "psm_battery_level"

    iget v5, p0, Lcom/android/OriginalSettings/powersavingmode/PowerSavingModeSettings;->mSaved_battery_level:I

    invoke-static {v1, v4, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 350
    iget-object v1, p0, Lcom/android/OriginalSettings/powersavingmode/PowerSavingModeSettings;->mContentResolver:Landroid/content/ContentResolver;

    const-string v4, "psm_brightness_level"

    iget v5, p0, Lcom/android/OriginalSettings/powersavingmode/PowerSavingModeSettings;->mSaved_brightness_level:I

    invoke-static {v1, v4, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 351
    iget-object v1, p0, Lcom/android/OriginalSettings/powersavingmode/PowerSavingModeSettings;->mContentResolver:Landroid/content/ContentResolver;

    const-string v4, "psm_screen_timeout"

    iget v5, p0, Lcom/android/OriginalSettings/powersavingmode/PowerSavingModeSettings;->mSaved_screen_timeout:I

    invoke-static {v1, v4, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 353
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.POWERSAVING_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 354
    .local v0, intent:Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/android/OriginalSettings/powersavingmode/PowerSavingModeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 357
    iget-object v4, p0, Lcom/android/OriginalSettings/powersavingmode/PowerSavingModeSettings;->mContentResolver:Landroid/content/ContentResolver;

    const-string v5, "psm_wifi"

    iget-object v1, p0, Lcom/android/OriginalSettings/powersavingmode/PowerSavingModeSettings;->mDisableWifi:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_1

    move v1, v2

    :goto_0
    invoke-static {v4, v5, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 358
    iget-object v4, p0, Lcom/android/OriginalSettings/powersavingmode/PowerSavingModeSettings;->mContentResolver:Landroid/content/ContentResolver;

    const-string v5, "psm_bluetooth"

    iget-object v1, p0, Lcom/android/OriginalSettings/powersavingmode/PowerSavingModeSettings;->mDisableBluetooth:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_2

    move v1, v2

    :goto_1
    invoke-static {v4, v5, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 360
    iget-object v4, p0, Lcom/android/OriginalSettings/powersavingmode/PowerSavingModeSettings;->mContentResolver:Landroid/content/ContentResolver;

    const-string v5, "psm_gps"

    iget-object v1, p0, Lcom/android/OriginalSettings/powersavingmode/PowerSavingModeSettings;->mDisableGps:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_3

    move v1, v2

    :goto_2
    invoke-static {v4, v5, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 361
    iget-object v4, p0, Lcom/android/OriginalSettings/powersavingmode/PowerSavingModeSettings;->mContentResolver:Landroid/content/ContentResolver;

    const-string v5, "psm_sync"

    iget-object v1, p0, Lcom/android/OriginalSettings/powersavingmode/PowerSavingModeSettings;->mDisableSync:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_4

    move v1, v2

    :goto_3
    invoke-static {v4, v5, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 362
    iget-object v1, p0, Lcom/android/OriginalSettings/powersavingmode/PowerSavingModeSettings;->mContentResolver:Landroid/content/ContentResolver;

    const-string v4, "psm_brightness"

    iget-object v5, p0, Lcom/android/OriginalSettings/powersavingmode/PowerSavingModeSettings;->mAdjustBrightness:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v5}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v5

    if-eqz v5, :cond_5

    :goto_4
    invoke-static {v1, v4, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 366
    invoke-virtual {p0}, Lcom/android/OriginalSettings/powersavingmode/PowerSavingModeSettings;->finish()V

    .line 374
    .end local v0           #intent:Landroid/content/Intent;
    :cond_0
    :goto_5
    return-void

    .restart local v0       #intent:Landroid/content/Intent;
    :cond_1
    move v1, v3

    .line 357
    goto :goto_0

    :cond_2
    move v1, v3

    .line 358
    goto :goto_1

    :cond_3
    move v1, v3

    .line 360
    goto :goto_2

    :cond_4
    move v1, v3

    .line 361
    goto :goto_3

    :cond_5
    move v2, v3

    .line 362
    goto :goto_4

    .line 367
    .end local v0           #intent:Landroid/content/Intent;
    :cond_6
    iget-object v1, p0, Lcom/android/OriginalSettings/powersavingmode/PowerSavingModeSettings;->mCancelButton:Landroid/widget/Button;

    if-ne p1, v1, :cond_0

    .line 369
    iget-object v1, p0, Lcom/android/OriginalSettings/powersavingmode/PowerSavingModeSettings;->mContentResolver:Landroid/content/ContentResolver;

    const-string v2, "psm_battery_level"

    iget v3, p0, Lcom/android/OriginalSettings/powersavingmode/PowerSavingModeSettings;->mSaved_battery_level:I

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 370
    iget-object v1, p0, Lcom/android/OriginalSettings/powersavingmode/PowerSavingModeSettings;->mContentResolver:Landroid/content/ContentResolver;

    const-string v2, "psm_brightness_level"

    iget v3, p0, Lcom/android/OriginalSettings/powersavingmode/PowerSavingModeSettings;->mSaved_brightness_level:I

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 371
    iget-object v1, p0, Lcom/android/OriginalSettings/powersavingmode/PowerSavingModeSettings;->mContentResolver:Landroid/content/ContentResolver;

    const-string v2, "psm_screen_timeout"

    iget v3, p0, Lcom/android/OriginalSettings/powersavingmode/PowerSavingModeSettings;->mSaved_screen_timeout:I

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 372
    invoke-virtual {p0}, Lcom/android/OriginalSettings/powersavingmode/PowerSavingModeSettings;->finish()V

    goto :goto_5
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5
    .parameter "savedInstanceState"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 117
    invoke-super {p0, p1}, Lcom/android/OriginalSettings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 119
    const v0, 0x7f050023

    invoke-virtual {p0, v0}, Lcom/android/OriginalSettings/powersavingmode/PowerSavingModeSettings;->addPreferencesFromResource(I)V

    .line 121
    invoke-virtual {p0}, Lcom/android/OriginalSettings/powersavingmode/PowerSavingModeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/OriginalSettings/powersavingmode/PowerSavingModeSettings;->mContentResolver:Landroid/content/ContentResolver;

    .line 125
    const-string v0, "on_battery_level"

    invoke-virtual {p0, v0}, Lcom/android/OriginalSettings/powersavingmode/PowerSavingModeSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/ListPreference;

    iput-object v0, p0, Lcom/android/OriginalSettings/powersavingmode/PowerSavingModeSettings;->mModeValueSetting:Landroid/preference/ListPreference;

    .line 126
    iget-object v0, p0, Lcom/android/OriginalSettings/powersavingmode/PowerSavingModeSettings;->mModeValueSetting:Landroid/preference/ListPreference;

    invoke-virtual {v0, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 127
    const-string v0, "disable_wifi"

    invoke-virtual {p0, v0}, Lcom/android/OriginalSettings/powersavingmode/PowerSavingModeSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/OriginalSettings/powersavingmode/PowerSavingModeSettings;->mDisableWifi:Landroid/preference/CheckBoxPreference;

    .line 128
    const-string v0, "disable_bluetooth"

    invoke-virtual {p0, v0}, Lcom/android/OriginalSettings/powersavingmode/PowerSavingModeSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/OriginalSettings/powersavingmode/PowerSavingModeSettings;->mDisableBluetooth:Landroid/preference/CheckBoxPreference;

    .line 129
    const-string v0, "disable_gps"

    invoke-virtual {p0, v0}, Lcom/android/OriginalSettings/powersavingmode/PowerSavingModeSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/OriginalSettings/powersavingmode/PowerSavingModeSettings;->mDisableGps:Landroid/preference/CheckBoxPreference;

    .line 130
    const-string v0, "disable_sync"

    invoke-virtual {p0, v0}, Lcom/android/OriginalSettings/powersavingmode/PowerSavingModeSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/OriginalSettings/powersavingmode/PowerSavingModeSettings;->mDisableSync:Landroid/preference/CheckBoxPreference;

    .line 131
    const-string v0, "disable_brightness"

    invoke-virtual {p0, v0}, Lcom/android/OriginalSettings/powersavingmode/PowerSavingModeSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/OriginalSettings/powersavingmode/PowerSavingModeSettings;->mAdjustBrightness:Landroid/preference/CheckBoxPreference;

    .line 132
    const-string v0, "brightness_setting"

    invoke-virtual {p0, v0}, Lcom/android/OriginalSettings/powersavingmode/PowerSavingModeSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/ListPreference;

    iput-object v0, p0, Lcom/android/OriginalSettings/powersavingmode/PowerSavingModeSettings;->mBrightnessSetting:Landroid/preference/ListPreference;

    .line 133
    iget-object v0, p0, Lcom/android/OriginalSettings/powersavingmode/PowerSavingModeSettings;->mBrightnessSetting:Landroid/preference/ListPreference;

    invoke-virtual {v0, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 134
    const-string v0, "screentimeout_setting"

    invoke-virtual {p0, v0}, Lcom/android/OriginalSettings/powersavingmode/PowerSavingModeSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/ListPreference;

    iput-object v0, p0, Lcom/android/OriginalSettings/powersavingmode/PowerSavingModeSettings;->mScreentimeout:Landroid/preference/ListPreference;

    .line 136
    iget-object v3, p0, Lcom/android/OriginalSettings/powersavingmode/PowerSavingModeSettings;->mDisableWifi:Landroid/preference/CheckBoxPreference;

    iget-object v0, p0, Lcom/android/OriginalSettings/powersavingmode/PowerSavingModeSettings;->mContentResolver:Landroid/content/ContentResolver;

    const-string v4, "psm_wifi"

    invoke-static {v0, v4, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v1, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 137
    iget-object v3, p0, Lcom/android/OriginalSettings/powersavingmode/PowerSavingModeSettings;->mDisableBluetooth:Landroid/preference/CheckBoxPreference;

    iget-object v0, p0, Lcom/android/OriginalSettings/powersavingmode/PowerSavingModeSettings;->mContentResolver:Landroid/content/ContentResolver;

    const-string v4, "psm_bluetooth"

    invoke-static {v0, v4, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v1, :cond_1

    move v0, v1

    :goto_1
    invoke-virtual {v3, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 138
    iget-object v3, p0, Lcom/android/OriginalSettings/powersavingmode/PowerSavingModeSettings;->mDisableGps:Landroid/preference/CheckBoxPreference;

    iget-object v0, p0, Lcom/android/OriginalSettings/powersavingmode/PowerSavingModeSettings;->mContentResolver:Landroid/content/ContentResolver;

    const-string v4, "psm_gps"

    invoke-static {v0, v4, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v1, :cond_2

    move v0, v1

    :goto_2
    invoke-virtual {v3, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 139
    iget-object v3, p0, Lcom/android/OriginalSettings/powersavingmode/PowerSavingModeSettings;->mDisableSync:Landroid/preference/CheckBoxPreference;

    iget-object v0, p0, Lcom/android/OriginalSettings/powersavingmode/PowerSavingModeSettings;->mContentResolver:Landroid/content/ContentResolver;

    const-string v4, "psm_sync"

    invoke-static {v0, v4, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v1, :cond_3

    move v0, v1

    :goto_3
    invoke-virtual {v3, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 140
    iget-object v0, p0, Lcom/android/OriginalSettings/powersavingmode/PowerSavingModeSettings;->mAdjustBrightness:Landroid/preference/CheckBoxPreference;

    iget-object v3, p0, Lcom/android/OriginalSettings/powersavingmode/PowerSavingModeSettings;->mContentResolver:Landroid/content/ContentResolver;

    const-string v4, "psm_brightness"

    invoke-static {v3, v4, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v1, :cond_4

    :goto_4
    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 142
    iget-object v0, p0, Lcom/android/OriginalSettings/powersavingmode/PowerSavingModeSettings;->mModeValueSetting:Landroid/preference/ListPreference;

    invoke-virtual {v0, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 143
    iget-object v0, p0, Lcom/android/OriginalSettings/powersavingmode/PowerSavingModeSettings;->mBrightnessSetting:Landroid/preference/ListPreference;

    invoke-virtual {v0, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 144
    iget-object v0, p0, Lcom/android/OriginalSettings/powersavingmode/PowerSavingModeSettings;->mScreentimeout:Landroid/preference/ListPreference;

    invoke-virtual {v0, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 145
    invoke-direct {p0}, Lcom/android/OriginalSettings/powersavingmode/PowerSavingModeSettings;->updateUIFromPreferences()V

    .line 146
    return-void

    :cond_0
    move v0, v2

    .line 136
    goto :goto_0

    :cond_1
    move v0, v2

    .line 137
    goto :goto_1

    :cond_2
    move v0, v2

    .line 138
    goto :goto_2

    :cond_3
    move v0, v2

    .line 139
    goto :goto_3

    :cond_4
    move v1, v2

    .line 140
    goto :goto_4
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    .line 151
    const v1, 0x7f040032

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 153
    .local v0, mContentView:Landroid/view/View;
    const v1, 0x7f080060

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/android/OriginalSettings/powersavingmode/PowerSavingModeSettings;->mOkButton:Landroid/widget/Button;

    .line 154
    iget-object v1, p0, Lcom/android/OriginalSettings/powersavingmode/PowerSavingModeSettings;->mOkButton:Landroid/widget/Button;

    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 155
    const v1, 0x7f080034

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/android/OriginalSettings/powersavingmode/PowerSavingModeSettings;->mCancelButton:Landroid/widget/Button;

    .line 156
    iget-object v1, p0, Lcom/android/OriginalSettings/powersavingmode/PowerSavingModeSettings;->mCancelButton:Landroid/widget/Button;

    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 158
    return-object v0
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 166
    invoke-super {p0}, Lcom/android/OriginalSettings/SettingsPreferenceFragment;->onDestroy()V

    .line 167
    const-string v0, "menupowersaving"

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 6
    .parameter "preference"
    .parameter "newValue"

    .prologue
    const/16 v5, 0x32

    const/16 v4, 0x1e

    const/16 v3, 0xa

    const/4 v0, 0x1

    .line 187
    iget-object v1, p0, Lcom/android/OriginalSettings/powersavingmode/PowerSavingModeSettings;->mModeValueSetting:Landroid/preference/ListPreference;

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 188
    const-string v1, "PowerSavingModeSettings"

    const-string v2, "set battery level is changed"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    check-cast p2, Ljava/lang/String;

    .end local p2
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/android/OriginalSettings/powersavingmode/PowerSavingModeSettings;->mNew_battery_level:I

    .line 191
    iget v1, p0, Lcom/android/OriginalSettings/powersavingmode/PowerSavingModeSettings;->mNew_battery_level:I

    if-ne v1, v3, :cond_1

    .line 192
    iget-object v1, p0, Lcom/android/OriginalSettings/powersavingmode/PowerSavingModeSettings;->mModeValueSetting:Landroid/preference/ListPreference;

    invoke-virtual {p0}, Lcom/android/OriginalSettings/powersavingmode/PowerSavingModeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const v3, 0x7f0b07a8

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 228
    :cond_0
    :goto_0
    return v0

    .line 193
    :cond_1
    iget v1, p0, Lcom/android/OriginalSettings/powersavingmode/PowerSavingModeSettings;->mNew_battery_level:I

    const/16 v2, 0x14

    if-ne v1, v2, :cond_2

    .line 194
    iget-object v1, p0, Lcom/android/OriginalSettings/powersavingmode/PowerSavingModeSettings;->mModeValueSetting:Landroid/preference/ListPreference;

    invoke-virtual {p0}, Lcom/android/OriginalSettings/powersavingmode/PowerSavingModeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const v3, 0x7f0b07a9

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 195
    :cond_2
    iget v1, p0, Lcom/android/OriginalSettings/powersavingmode/PowerSavingModeSettings;->mNew_battery_level:I

    if-ne v1, v4, :cond_3

    .line 196
    iget-object v1, p0, Lcom/android/OriginalSettings/powersavingmode/PowerSavingModeSettings;->mModeValueSetting:Landroid/preference/ListPreference;

    invoke-virtual {p0}, Lcom/android/OriginalSettings/powersavingmode/PowerSavingModeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const v3, 0x7f0b07aa

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 197
    :cond_3
    iget v1, p0, Lcom/android/OriginalSettings/powersavingmode/PowerSavingModeSettings;->mNew_battery_level:I

    const/16 v2, 0x28

    if-ne v1, v2, :cond_4

    .line 198
    iget-object v1, p0, Lcom/android/OriginalSettings/powersavingmode/PowerSavingModeSettings;->mModeValueSetting:Landroid/preference/ListPreference;

    invoke-virtual {p0}, Lcom/android/OriginalSettings/powersavingmode/PowerSavingModeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const v3, 0x7f0b07ab

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 199
    :cond_4
    iget v1, p0, Lcom/android/OriginalSettings/powersavingmode/PowerSavingModeSettings;->mNew_battery_level:I

    if-ne v1, v5, :cond_0

    .line 200
    iget-object v1, p0, Lcom/android/OriginalSettings/powersavingmode/PowerSavingModeSettings;->mModeValueSetting:Landroid/preference/ListPreference;

    invoke-virtual {p0}, Lcom/android/OriginalSettings/powersavingmode/PowerSavingModeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const v3, 0x7f0b07ac

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 205
    .restart local p2
    :cond_5
    iget-object v1, p0, Lcom/android/OriginalSettings/powersavingmode/PowerSavingModeSettings;->mBrightnessSetting:Landroid/preference/ListPreference;

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 206
    const-string v1, "PowerSavingModeSettings"

    const-string v2, "Brightness level is changed"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 208
    check-cast p2, Ljava/lang/String;

    .end local p2
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/android/OriginalSettings/powersavingmode/PowerSavingModeSettings;->mNew_brightness_level:I

    .line 209
    iget v1, p0, Lcom/android/OriginalSettings/powersavingmode/PowerSavingModeSettings;->mNew_brightness_level:I

    if-ne v1, v3, :cond_6

    .line 210
    iget-object v1, p0, Lcom/android/OriginalSettings/powersavingmode/PowerSavingModeSettings;->mBrightnessSetting:Landroid/preference/ListPreference;

    invoke-virtual {p0}, Lcom/android/OriginalSettings/powersavingmode/PowerSavingModeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const v3, 0x7f0b07ad

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 211
    :cond_6
    iget v1, p0, Lcom/android/OriginalSettings/powersavingmode/PowerSavingModeSettings;->mNew_brightness_level:I

    if-ne v1, v4, :cond_7

    .line 212
    iget-object v1, p0, Lcom/android/OriginalSettings/powersavingmode/PowerSavingModeSettings;->mBrightnessSetting:Landroid/preference/ListPreference;

    invoke-virtual {p0}, Lcom/android/OriginalSettings/powersavingmode/PowerSavingModeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const v3, 0x7f0b07ae

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 213
    :cond_7
    iget v1, p0, Lcom/android/OriginalSettings/powersavingmode/PowerSavingModeSettings;->mNew_brightness_level:I

    if-ne v1, v5, :cond_8

    .line 214
    iget-object v1, p0, Lcom/android/OriginalSettings/powersavingmode/PowerSavingModeSettings;->mBrightnessSetting:Landroid/preference/ListPreference;

    invoke-virtual {p0}, Lcom/android/OriginalSettings/powersavingmode/PowerSavingModeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const v3, 0x7f0b07af

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 215
    :cond_8
    iget v1, p0, Lcom/android/OriginalSettings/powersavingmode/PowerSavingModeSettings;->mNew_brightness_level:I

    const/16 v2, 0x46

    if-ne v1, v2, :cond_9

    .line 216
    iget-object v1, p0, Lcom/android/OriginalSettings/powersavingmode/PowerSavingModeSettings;->mBrightnessSetting:Landroid/preference/ListPreference;

    invoke-virtual {p0}, Lcom/android/OriginalSettings/powersavingmode/PowerSavingModeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const v3, 0x7f0b07b0

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 217
    :cond_9
    iget v1, p0, Lcom/android/OriginalSettings/powersavingmode/PowerSavingModeSettings;->mNew_brightness_level:I

    const/16 v2, 0x64

    if-ne v1, v2, :cond_0

    .line 218
    iget-object v1, p0, Lcom/android/OriginalSettings/powersavingmode/PowerSavingModeSettings;->mBrightnessSetting:Landroid/preference/ListPreference;

    invoke-virtual {p0}, Lcom/android/OriginalSettings/powersavingmode/PowerSavingModeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const v3, 0x7f0b07b1

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 221
    .restart local p2
    :cond_a
    iget-object v1, p0, Lcom/android/OriginalSettings/powersavingmode/PowerSavingModeSettings;->mScreentimeout:Landroid/preference/ListPreference;

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 222
    const-string v1, "PowerSavingModeSettings"

    const-string v2, "Screentimeout is changed"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 224
    check-cast p2, Ljava/lang/String;

    .end local p2
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/android/OriginalSettings/powersavingmode/PowerSavingModeSettings;->mNew_screen_timeout:I

    goto/16 :goto_0

    .line 228
    .restart local p2
    :cond_b
    const/4 v0, 0x0

    goto/16 :goto_0
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 2
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    const/4 v0, 0x1

    .line 171
    iget-object v1, p0, Lcom/android/OriginalSettings/powersavingmode/PowerSavingModeSettings;->mDisableWifi:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 183
    :cond_0
    :goto_0
    return v0

    .line 173
    :cond_1
    iget-object v1, p0, Lcom/android/OriginalSettings/powersavingmode/PowerSavingModeSettings;->mDisableBluetooth:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 175
    iget-object v1, p0, Lcom/android/OriginalSettings/powersavingmode/PowerSavingModeSettings;->mDisableGps:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 177
    iget-object v1, p0, Lcom/android/OriginalSettings/powersavingmode/PowerSavingModeSettings;->mDisableSync:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 179
    iget-object v1, p0, Lcom/android/OriginalSettings/powersavingmode/PowerSavingModeSettings;->mAdjustBrightness:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 180
    invoke-direct {p0, v0}, Lcom/android/OriginalSettings/powersavingmode/PowerSavingModeSettings;->toggleBrightnessSetting(Z)V

    goto :goto_0

    .line 183
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 162
    invoke-super {p0}, Lcom/android/OriginalSettings/SettingsPreferenceFragment;->onResume()V

    .line 163
    return-void
.end method
