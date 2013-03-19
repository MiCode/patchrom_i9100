.class public final Lcom/android/settings/powersavingmode/PowerSavingEnabler;
.super Ljava/lang/Object;
.source "PowerSavingEnabler.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field private mCheck:I

.field private final mContext:Landroid/content/Context;

.field private final mIntentFilter:Landroid/content/IntentFilter;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mSupportBrowser:Z

.field private mSwitch:Landroid/widget/Switch;

.field private mSwitchPref:Landroid/preference/SwitchPreference;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/preference/SwitchPreference;)V
    .locals 2
    .parameter "context"
    .parameter "switch_"

    .prologue
    const/4 v0, 0x0

    .line 101
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object v0, p0, Lcom/android/settings/powersavingmode/PowerSavingEnabler;->mSwitch:Landroid/widget/Switch;

    .line 43
    iput-object v0, p0, Lcom/android/settings/powersavingmode/PowerSavingEnabler;->mSwitchPref:Landroid/preference/SwitchPreference;

    .line 49
    new-instance v0, Lcom/android/settings/powersavingmode/PowerSavingEnabler$1;

    invoke-direct {v0, p0}, Lcom/android/settings/powersavingmode/PowerSavingEnabler$1;-><init>(Lcom/android/settings/powersavingmode/PowerSavingEnabler;)V

    iput-object v0, p0, Lcom/android/settings/powersavingmode/PowerSavingEnabler;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 102
    iput-object p1, p0, Lcom/android/settings/powersavingmode/PowerSavingEnabler;->mContext:Landroid/content/Context;

    .line 103
    iput-object p2, p0, Lcom/android/settings/powersavingmode/PowerSavingEnabler;->mSwitchPref:Landroid/preference/SwitchPreference;

    .line 104
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.settings.POWERSAVING_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/settings/powersavingmode/PowerSavingEnabler;->mIntentFilter:Landroid/content/IntentFilter;

    .line 106
    iget-object v0, p0, Lcom/android/settings/powersavingmode/PowerSavingEnabler;->mContext:Landroid/content/Context;

    const-string v1, "com.android.browser"

    invoke-static {v0, v1}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/powersavingmode/PowerSavingEnabler;->mSupportBrowser:Z

    .line 108
    iget-object v0, p0, Lcom/android/settings/powersavingmode/PowerSavingEnabler;->mSwitchPref:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, p0}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 110
    invoke-virtual {p0}, Lcom/android/settings/powersavingmode/PowerSavingEnabler;->refresh_SwitchPreference()V

    .line 111
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/widget/Switch;)V
    .locals 2
    .parameter "context"
    .parameter "switch_"

    .prologue
    const/4 v0, 0x0

    .line 93
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object v0, p0, Lcom/android/settings/powersavingmode/PowerSavingEnabler;->mSwitch:Landroid/widget/Switch;

    .line 43
    iput-object v0, p0, Lcom/android/settings/powersavingmode/PowerSavingEnabler;->mSwitchPref:Landroid/preference/SwitchPreference;

    .line 49
    new-instance v0, Lcom/android/settings/powersavingmode/PowerSavingEnabler$1;

    invoke-direct {v0, p0}, Lcom/android/settings/powersavingmode/PowerSavingEnabler$1;-><init>(Lcom/android/settings/powersavingmode/PowerSavingEnabler;)V

    iput-object v0, p0, Lcom/android/settings/powersavingmode/PowerSavingEnabler;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 94
    iput-object p1, p0, Lcom/android/settings/powersavingmode/PowerSavingEnabler;->mContext:Landroid/content/Context;

    .line 95
    iput-object p2, p0, Lcom/android/settings/powersavingmode/PowerSavingEnabler;->mSwitch:Landroid/widget/Switch;

    .line 96
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.settings.POWERSAVING_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/settings/powersavingmode/PowerSavingEnabler;->mIntentFilter:Landroid/content/IntentFilter;

    .line 98
    iget-object v0, p0, Lcom/android/settings/powersavingmode/PowerSavingEnabler;->mContext:Landroid/content/Context;

    const-string v1, "com.android.browser"

    invoke-static {v0, v1}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/powersavingmode/PowerSavingEnabler;->mSupportBrowser:Z

    .line 99
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/powersavingmode/PowerSavingEnabler;)Landroid/widget/Switch;
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    iget-object v0, p0, Lcom/android/settings/powersavingmode/PowerSavingEnabler;->mSwitch:Landroid/widget/Switch;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings/powersavingmode/PowerSavingEnabler;)Landroid/preference/SwitchPreference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    iget-object v0, p0, Lcom/android/settings/powersavingmode/PowerSavingEnabler;->mSwitchPref:Landroid/preference/SwitchPreference;

    return-object v0
.end method


# virtual methods
.method public isAllOptionDisabled()Z
    .locals 11

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 229
    iget-object v6, p0, Lcom/android/settings/powersavingmode/PowerSavingEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v9, "psm_switch"

    invoke-static {v6, v9, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    .line 230
    .local v4, powersavingState:I
    iget-object v6, p0, Lcom/android/settings/powersavingmode/PowerSavingEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v9, "psm_cpu_clock"

    invoke-static {v6, v9, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 231
    .local v1, cpu:I
    iget-object v6, p0, Lcom/android/settings/powersavingmode/PowerSavingEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v9, "psm_display"

    invoke-static {v6, v9, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 232
    .local v2, display:I
    iget-object v6, p0, Lcom/android/settings/powersavingmode/PowerSavingEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v9, "psm_background_colour"

    invoke-static {v6, v9, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 233
    .local v0, back:I
    iget-object v6, p0, Lcom/android/settings/powersavingmode/PowerSavingEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v9, "psm_haptic_feedback"

    invoke-static {v6, v9, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    .line 236
    .local v3, haptic:I
    const-string v6, "PowerSavingEnabler"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "isAllOptionDisabled(), powersavingState : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", cpu : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", display : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", back : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", haptic : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v6, v9}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 239
    if-nez v1, :cond_2

    if-nez v2, :cond_2

    move v5, v7

    .line 241
    .local v5, retVal:Z
    :goto_0
    iget-object v6, p0, Lcom/android/settings/powersavingmode/PowerSavingEnabler;->mContext:Landroid/content/Context;

    const-string v9, "vibrator"

    invoke-virtual {v6, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/Vibrator;

    invoke-virtual {v6}, Landroid/os/Vibrator;->hasVibrator()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 242
    if-eqz v5, :cond_3

    if-nez v3, :cond_3

    move v5, v7

    .line 244
    :cond_0
    :goto_1
    iget-boolean v6, p0, Lcom/android/settings/powersavingmode/PowerSavingEnabler;->mSupportBrowser:Z

    if-eqz v6, :cond_1

    .line 245
    if-eqz v5, :cond_4

    if-nez v0, :cond_4

    move v5, v7

    .line 248
    :cond_1
    :goto_2
    return v5

    .end local v5           #retVal:Z
    :cond_2
    move v5, v8

    .line 239
    goto :goto_0

    .restart local v5       #retVal:Z
    :cond_3
    move v5, v8

    .line 242
    goto :goto_1

    :cond_4
    move v5, v8

    .line 245
    goto :goto_2
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 5
    .parameter "buttonView"
    .parameter "isChecked"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 252
    iget-object v1, p0, Lcom/android/settings/powersavingmode/PowerSavingEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "psm_switch"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 260
    .local v0, powersavingState:I
    if-eqz p2, :cond_1

    if-nez v0, :cond_1

    .line 261
    iget-object v1, p0, Lcom/android/settings/powersavingmode/PowerSavingEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v1, v4}, Landroid/widget/Switch;->setChecked(Z)V

    .line 262
    iget-object v1, p0, Lcom/android/settings/powersavingmode/PowerSavingEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "psm_switch"

    invoke-static {v1, v2, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 265
    const-string v1, "PowerSavingEnabler"

    const-string v2, "switch is on"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 273
    :cond_0
    :goto_0
    return-void

    .line 266
    :cond_1
    if-nez p2, :cond_0

    if-ne v0, v4, :cond_0

    .line 267
    iget-object v1, p0, Lcom/android/settings/powersavingmode/PowerSavingEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v1, v3}, Landroid/widget/Switch;->setChecked(Z)V

    .line 268
    iget-object v1, p0, Lcom/android/settings/powersavingmode/PowerSavingEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "psm_switch"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 271
    const-string v1, "PowerSavingEnabler"

    const-string v2, "switch is off"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 6
    .parameter "preference"
    .parameter "newValue"

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 277
    iget-object v2, p0, Lcom/android/settings/powersavingmode/PowerSavingEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "psm_switch"

    invoke-static {v2, v3, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 279
    .local v1, powersavingState:I
    check-cast p2, Ljava/lang/Boolean;

    .end local p2
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 287
    .local v0, isChecked:Z
    if-eqz v0, :cond_1

    if-nez v1, :cond_1

    .line 288
    iget-object v2, p0, Lcom/android/settings/powersavingmode/PowerSavingEnabler;->mSwitchPref:Landroid/preference/SwitchPreference;

    invoke-virtual {v2, v4}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 289
    iget-object v2, p0, Lcom/android/settings/powersavingmode/PowerSavingEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "psm_switch"

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 292
    const-string v2, "PowerSavingEnabler"

    const-string v3, "switch is on"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 301
    :cond_0
    :goto_0
    return v4

    .line 293
    :cond_1
    if-nez v0, :cond_0

    if-ne v1, v4, :cond_0

    .line 294
    iget-object v2, p0, Lcom/android/settings/powersavingmode/PowerSavingEnabler;->mSwitchPref:Landroid/preference/SwitchPreference;

    invoke-virtual {v2, v5}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 295
    iget-object v2, p0, Lcom/android/settings/powersavingmode/PowerSavingEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "psm_switch"

    invoke-static {v2, v3, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 298
    const-string v2, "PowerSavingEnabler"

    const-string v3, "switch is off"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public pause()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 169
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.POWERSAVING_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 170
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "PowerSavingEnabler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mCheck = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/settings/powersavingmode/PowerSavingEnabler;->mCheck:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    const-string v1, "PowerSavingEnabler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "PSM_SWITCH = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/powersavingmode/PowerSavingEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "psm_switch"

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    iget v1, p0, Lcom/android/settings/powersavingmode/PowerSavingEnabler;->mCheck:I

    iget-object v2, p0, Lcom/android/settings/powersavingmode/PowerSavingEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "psm_switch"

    invoke-static {v2, v3, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eq v1, v2, :cond_1

    .line 173
    const-string v1, "changed"

    const-string v2, "true"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 176
    :goto_0
    iget-object v1, p0, Lcom/android/settings/powersavingmode/PowerSavingEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 177
    iget-object v1, p0, Lcom/android/settings/powersavingmode/PowerSavingEnabler;->mSwitch:Landroid/widget/Switch;

    if-eqz v1, :cond_0

    .line 178
    iget-object v1, p0, Lcom/android/settings/powersavingmode/PowerSavingEnabler;->mSwitch:Landroid/widget/Switch;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 181
    :cond_0
    iget-object v1, p0, Lcom/android/settings/powersavingmode/PowerSavingEnabler;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/settings/powersavingmode/PowerSavingEnabler;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 182
    return-void

    .line 175
    :cond_1
    const-string v1, "changed"

    const-string v2, "false"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0
.end method

.method public refresh_SwitchPreference()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 185
    iget-object v1, p0, Lcom/android/settings/powersavingmode/PowerSavingEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "psm_switch"

    invoke-static {v1, v2, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 187
    .local v0, powersavingState:I
    if-ne v0, v3, :cond_1

    .line 188
    iget-object v1, p0, Lcom/android/settings/powersavingmode/PowerSavingEnabler;->mSwitchPref:Landroid/preference/SwitchPreference;

    invoke-virtual {v1, v3}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    .line 189
    iget-object v1, p0, Lcom/android/settings/powersavingmode/PowerSavingEnabler;->mSwitchPref:Landroid/preference/SwitchPreference;

    invoke-virtual {v1, v3}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 199
    :cond_0
    :goto_0
    const-string v1, "PowerSavingEnabler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "powersavingState ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    return-void

    .line 191
    :cond_1
    iget-object v1, p0, Lcom/android/settings/powersavingmode/PowerSavingEnabler;->mSwitchPref:Landroid/preference/SwitchPreference;

    invoke-virtual {v1, v4}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 193
    invoke-virtual {p0}, Lcom/android/settings/powersavingmode/PowerSavingEnabler;->isAllOptionDisabled()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/settings/powersavingmode/PowerSavingEnabler;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 196
    :cond_2
    iget-object v1, p0, Lcom/android/settings/powersavingmode/PowerSavingEnabler;->mSwitchPref:Landroid/preference/SwitchPreference;

    invoke-virtual {v1, v3}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    goto :goto_0
.end method

.method public resume()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 114
    iget-object v1, p0, Lcom/android/settings/powersavingmode/PowerSavingEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "psm_switch"

    invoke-static {v1, v2, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 115
    .local v0, powersavingState:I
    const-string v1, "PowerSavingEnabler"

    const-string v2, "resume()"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    iget-object v1, p0, Lcom/android/settings/powersavingmode/PowerSavingEnabler;->mSwitch:Landroid/widget/Switch;

    if-nez v1, :cond_0

    const-string v1, "PowerSavingEnabler"

    const-string v2, "mSwitch == null"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    :cond_0
    iget-object v1, p0, Lcom/android/settings/powersavingmode/PowerSavingEnabler;->mSwitchPref:Landroid/preference/SwitchPreference;

    if-nez v1, :cond_1

    const-string v1, "PowerSavingEnabler"

    const-string v2, "mSwitchPref == null"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    :cond_1
    iput v0, p0, Lcom/android/settings/powersavingmode/PowerSavingEnabler;->mCheck:I

    .line 119
    if-ne v0, v3, :cond_6

    .line 120
    iget-object v1, p0, Lcom/android/settings/powersavingmode/PowerSavingEnabler;->mSwitch:Landroid/widget/Switch;

    if-eqz v1, :cond_2

    .line 121
    iget-object v1, p0, Lcom/android/settings/powersavingmode/PowerSavingEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v1, v3}, Landroid/widget/Switch;->setEnabled(Z)V

    .line 122
    iget-object v1, p0, Lcom/android/settings/powersavingmode/PowerSavingEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v1, v3}, Landroid/widget/Switch;->setChecked(Z)V

    .line 124
    :cond_2
    iget-object v1, p0, Lcom/android/settings/powersavingmode/PowerSavingEnabler;->mSwitchPref:Landroid/preference/SwitchPreference;

    if-eqz v1, :cond_3

    .line 125
    iget-object v1, p0, Lcom/android/settings/powersavingmode/PowerSavingEnabler;->mSwitchPref:Landroid/preference/SwitchPreference;

    invoke-virtual {v1, v3}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    .line 126
    iget-object v1, p0, Lcom/android/settings/powersavingmode/PowerSavingEnabler;->mSwitchPref:Landroid/preference/SwitchPreference;

    invoke-virtual {v1, v3}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 128
    :cond_3
    const-string v1, "PowerSavingEnabler"

    const-string v2, "resume"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    :cond_4
    :goto_0
    iget-object v1, p0, Lcom/android/settings/powersavingmode/PowerSavingEnabler;->mSwitch:Landroid/widget/Switch;

    if-eqz v1, :cond_5

    .line 161
    iget-object v1, p0, Lcom/android/settings/powersavingmode/PowerSavingEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v1, p0}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 164
    :cond_5
    iget-object v1, p0, Lcom/android/settings/powersavingmode/PowerSavingEnabler;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/settings/powersavingmode/PowerSavingEnabler;->mReceiver:Landroid/content/BroadcastReceiver;

    iget-object v3, p0, Lcom/android/settings/powersavingmode/PowerSavingEnabler;->mIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 165
    iget-object v1, p0, Lcom/android/settings/powersavingmode/PowerSavingEnabler;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/settings/powersavingmode/PowerSavingEnabler;->mReceiver:Landroid/content/BroadcastReceiver;

    new-instance v3, Landroid/content/IntentFilter;

    const-string v4, "android.settings.POWERSAVING_SWITCH_CHANGED"

    invoke-direct {v3, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 166
    return-void

    .line 130
    :cond_6
    iget-object v1, p0, Lcom/android/settings/powersavingmode/PowerSavingEnabler;->mSwitch:Landroid/widget/Switch;

    if-eqz v1, :cond_7

    .line 131
    iget-object v1, p0, Lcom/android/settings/powersavingmode/PowerSavingEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v1, v4}, Landroid/widget/Switch;->setChecked(Z)V

    .line 133
    :cond_7
    iget-object v1, p0, Lcom/android/settings/powersavingmode/PowerSavingEnabler;->mSwitchPref:Landroid/preference/SwitchPreference;

    if-eqz v1, :cond_8

    .line 134
    iget-object v1, p0, Lcom/android/settings/powersavingmode/PowerSavingEnabler;->mSwitchPref:Landroid/preference/SwitchPreference;

    invoke-virtual {v1, v4}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 137
    :cond_8
    invoke-virtual {p0}, Lcom/android/settings/powersavingmode/PowerSavingEnabler;->isAllOptionDisabled()Z

    move-result v1

    if-eqz v1, :cond_a

    iget-object v1, p0, Lcom/android/settings/powersavingmode/PowerSavingEnabler;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_a

    .line 138
    const-string v1, "PowerSavingEnabler"

    const-string v2, "dong"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    iget-object v1, p0, Lcom/android/settings/powersavingmode/PowerSavingEnabler;->mSwitch:Landroid/widget/Switch;

    if-eqz v1, :cond_9

    .line 140
    iget-object v1, p0, Lcom/android/settings/powersavingmode/PowerSavingEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v1, v4}, Landroid/widget/Switch;->setEnabled(Z)V

    .line 142
    :cond_9
    iget-object v1, p0, Lcom/android/settings/powersavingmode/PowerSavingEnabler;->mSwitchPref:Landroid/preference/SwitchPreference;

    if-eqz v1, :cond_4

    goto :goto_0

    .line 146
    :cond_a
    iget-object v1, p0, Lcom/android/settings/powersavingmode/PowerSavingEnabler;->mSwitch:Landroid/widget/Switch;

    if-eqz v1, :cond_b

    .line 147
    iget-object v1, p0, Lcom/android/settings/powersavingmode/PowerSavingEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v1, v3}, Landroid/widget/Switch;->setEnabled(Z)V

    .line 149
    :cond_b
    iget-object v1, p0, Lcom/android/settings/powersavingmode/PowerSavingEnabler;->mSwitchPref:Landroid/preference/SwitchPreference;

    if-eqz v1, :cond_4

    .line 150
    iget-object v1, p0, Lcom/android/settings/powersavingmode/PowerSavingEnabler;->mSwitchPref:Landroid/preference/SwitchPreference;

    invoke-virtual {v1, v3}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    goto :goto_0
.end method

.method public setSwitch(Landroid/widget/Switch;)V
    .locals 5
    .parameter "switch_"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 203
    iget-object v1, p0, Lcom/android/settings/powersavingmode/PowerSavingEnabler;->mSwitch:Landroid/widget/Switch;

    if-ne v1, p1, :cond_0

    .line 225
    :goto_0
    return-void

    .line 206
    :cond_0
    iget-object v1, p0, Lcom/android/settings/powersavingmode/PowerSavingEnabler;->mSwitch:Landroid/widget/Switch;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 207
    iput-object p1, p0, Lcom/android/settings/powersavingmode/PowerSavingEnabler;->mSwitch:Landroid/widget/Switch;

    .line 208
    iget-object v1, p0, Lcom/android/settings/powersavingmode/PowerSavingEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v1, p0}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 210
    iget-object v1, p0, Lcom/android/settings/powersavingmode/PowerSavingEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "psm_switch"

    invoke-static {v1, v2, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 212
    .local v0, powersavingState:I
    if-ne v0, v3, :cond_1

    .line 213
    iget-object v1, p0, Lcom/android/settings/powersavingmode/PowerSavingEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v1, v3}, Landroid/widget/Switch;->setEnabled(Z)V

    .line 214
    iget-object v1, p0, Lcom/android/settings/powersavingmode/PowerSavingEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v1, v3}, Landroid/widget/Switch;->setChecked(Z)V

    .line 224
    :goto_1
    const-string v1, "PowerSavingEnabler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "powersavingState ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 216
    :cond_1
    iget-object v1, p0, Lcom/android/settings/powersavingmode/PowerSavingEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v1, v4}, Landroid/widget/Switch;->setChecked(Z)V

    .line 218
    invoke-virtual {p0}, Lcom/android/settings/powersavingmode/PowerSavingEnabler;->isAllOptionDisabled()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/settings/powersavingmode/PowerSavingEnabler;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 219
    iget-object v1, p0, Lcom/android/settings/powersavingmode/PowerSavingEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v1, v4}, Landroid/widget/Switch;->setEnabled(Z)V

    goto :goto_1

    .line 221
    :cond_2
    iget-object v1, p0, Lcom/android/settings/powersavingmode/PowerSavingEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v1, v3}, Landroid/widget/Switch;->setEnabled(Z)V

    goto :goto_1
.end method
