.class public Lcom/android/OriginalSettings/DockSettings;
.super Lcom/android/OriginalSettings/SettingsPreferenceFragment;
.source "DockSettings.java"


# instance fields
.field private mAudioSettings:Landroid/preference/Preference;

.field private mCradleEnable:Landroid/preference/CheckBoxPreference;

.field private mDockIntent:Landroid/content/Intent;

.field private mDockSounds:Landroid/preference/CheckBoxPreference;

.field private mReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/android/OriginalSettings/SettingsPreferenceFragment;-><init>()V

    .line 48
    new-instance v0, Lcom/android/OriginalSettings/DockSettings$1;

    invoke-direct {v0, p0}, Lcom/android/OriginalSettings/DockSettings$1;-><init>(Lcom/android/OriginalSettings/DockSettings;)V

    iput-object v0, p0, Lcom/android/OriginalSettings/DockSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/android/OriginalSettings/DockSettings;Landroid/content/Intent;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 36
    invoke-direct {p0, p1}, Lcom/android/OriginalSettings/DockSettings;->handleDockChange(Landroid/content/Intent;)V

    return-void
.end method

.method private createUndockedMessage()Landroid/app/Dialog;
    .locals 3

    .prologue
    .line 206
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/OriginalSettings/DockSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 207
    .local v0, ab:Landroid/app/AlertDialog$Builder;
    const v1, 0x7f0b0329

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 208
    const v1, 0x7f0b032a

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 209
    const v1, 0x104000a

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 210
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    return-object v1
.end method

.method private handleDockChange(Landroid/content/Intent;)V
    .locals 6
    .parameter "intent"

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 102
    iget-object v5, p0, Lcom/android/OriginalSettings/DockSettings;->mAudioSettings:Landroid/preference/Preference;

    if-eqz v5, :cond_0

    .line 103
    const-string v5, "android.intent.extra.DOCK_STATE"

    invoke-virtual {p1, v5, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 105
    .local v0, dockState:I
    const-string v5, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {p1, v5}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v5

    if-eqz v5, :cond_1

    move v1, v3

    .line 107
    .local v1, isBluetooth:Z
    :goto_0
    if-nez v1, :cond_2

    .line 109
    iget-object v3, p0, Lcom/android/OriginalSettings/DockSettings;->mAudioSettings:Landroid/preference/Preference;

    invoke-virtual {v3, v4}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 110
    iget-object v3, p0, Lcom/android/OriginalSettings/DockSettings;->mAudioSettings:Landroid/preference/Preference;

    const v4, 0x7f0b0328

    invoke-virtual {v3, v4}, Landroid/preference/Preference;->setSummary(I)V

    .line 129
    :goto_1
    if-eqz v0, :cond_0

    .line 132
    const/4 v3, 0x1

    :try_start_0
    invoke-virtual {p0, v3}, Lcom/android/OriginalSettings/DockSettings;->removeDialog(I)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 138
    .end local v0           #dockState:I
    .end local v1           #isBluetooth:Z
    :cond_0
    :goto_2
    return-void

    .restart local v0       #dockState:I
    :cond_1
    move v1, v4

    .line 105
    goto :goto_0

    .line 112
    .restart local v1       #isBluetooth:Z
    :cond_2
    iget-object v4, p0, Lcom/android/OriginalSettings/DockSettings;->mAudioSettings:Landroid/preference/Preference;

    invoke-virtual {v4, v3}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 114
    iput-object p1, p0, Lcom/android/OriginalSettings/DockSettings;->mDockIntent:Landroid/content/Intent;

    .line 115
    const v2, 0x7f0b0328

    .line 116
    .local v2, resId:I
    packed-switch v0, :pswitch_data_0

    .line 126
    :goto_3
    iget-object v3, p0, Lcom/android/OriginalSettings/DockSettings;->mAudioSettings:Landroid/preference/Preference;

    invoke-virtual {v3, v2}, Landroid/preference/Preference;->setSummary(I)V

    goto :goto_1

    .line 118
    :pswitch_0
    const v2, 0x7f0b0326

    .line 119
    goto :goto_3

    .line 121
    :pswitch_1
    const v2, 0x7f0b0325

    .line 122
    goto :goto_3

    .line 124
    :pswitch_2
    const v2, 0x7f0b0327

    goto :goto_3

    .line 133
    .end local v2           #resId:I
    :catch_0
    move-exception v3

    goto :goto_2

    .line 116
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private initDockSettings()V
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 81
    invoke-virtual {p0}, Lcom/android/OriginalSettings/DockSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 83
    .local v0, resolver:Landroid/content/ContentResolver;
    const-string v1, "dock_audio"

    invoke-virtual {p0, v1}, Lcom/android/OriginalSettings/DockSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    iput-object v1, p0, Lcom/android/OriginalSettings/DockSettings;->mAudioSettings:Landroid/preference/Preference;

    .line 84
    iget-object v1, p0, Lcom/android/OriginalSettings/DockSettings;->mAudioSettings:Landroid/preference/Preference;

    if-eqz v1, :cond_0

    .line 85
    iget-object v1, p0, Lcom/android/OriginalSettings/DockSettings;->mAudioSettings:Landroid/preference/Preference;

    const v4, 0x7f0b0327

    invoke-virtual {v1, v4}, Landroid/preference/Preference;->setSummary(I)V

    .line 88
    :cond_0
    const-string v1, "dock_sounds"

    invoke-virtual {p0, v1}, Lcom/android/OriginalSettings/DockSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    iput-object v1, p0, Lcom/android/OriginalSettings/DockSettings;->mDockSounds:Landroid/preference/CheckBoxPreference;

    .line 89
    iget-object v1, p0, Lcom/android/OriginalSettings/DockSettings;->mDockSounds:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v3}, Landroid/preference/CheckBoxPreference;->setPersistent(Z)V

    .line 90
    iget-object v4, p0, Lcom/android/OriginalSettings/DockSettings;->mDockSounds:Landroid/preference/CheckBoxPreference;

    const-string v1, "dock_sounds_enabled"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_1

    move v1, v2

    :goto_0
    invoke-virtual {v4, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 93
    invoke-virtual {p0}, Lcom/android/OriginalSettings/DockSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    const-string v4, "dock_audio"

    invoke-virtual {p0, v4}, Lcom/android/OriginalSettings/DockSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 94
    invoke-virtual {p0}, Lcom/android/OriginalSettings/DockSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    const-string v4, "dock_sounds"

    invoke-virtual {p0, v4}, Lcom/android/OriginalSettings/DockSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 96
    const-string v1, "cradle_enable"

    invoke-virtual {p0, v1}, Lcom/android/OriginalSettings/DockSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    iput-object v1, p0, Lcom/android/OriginalSettings/DockSettings;->mCradleEnable:Landroid/preference/CheckBoxPreference;

    .line 97
    iget-object v1, p0, Lcom/android/OriginalSettings/DockSettings;->mCradleEnable:Landroid/preference/CheckBoxPreference;

    const-string v4, "cradle_enable"

    invoke-static {v0, v4, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-ne v4, v2, :cond_2

    :goto_1
    invoke-virtual {v1, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 99
    return-void

    :cond_1
    move v1, v3

    .line 90
    goto :goto_0

    :cond_2
    move v2, v3

    .line 97
    goto :goto_1
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedInstanceState"

    .prologue
    .line 59
    invoke-super {p0, p1}, Lcom/android/OriginalSettings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 60
    const v0, 0x7f050011

    invoke-virtual {p0, v0}, Lcom/android/OriginalSettings/DockSettings;->addPreferencesFromResource(I)V

    .line 62
    invoke-direct {p0}, Lcom/android/OriginalSettings/DockSettings;->initDockSettings()V

    .line 63
    return-void
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 1
    .parameter "id"

    .prologue
    .line 199
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 200
    invoke-direct {p0}, Lcom/android/OriginalSettings/DockSettings;->createUndockedMessage()Landroid/app/Dialog;

    move-result-object v0

    .line 202
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 75
    invoke-super {p0}, Lcom/android/OriginalSettings/SettingsPreferenceFragment;->onPause()V

    .line 77
    invoke-virtual {p0}, Lcom/android/OriginalSettings/DockSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/OriginalSettings/DockSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 78
    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 6
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 142
    iget-object v2, p0, Lcom/android/OriginalSettings/DockSettings;->mAudioSettings:Landroid/preference/Preference;

    if-ne p2, v2, :cond_3

    .line 143
    iget-object v2, p0, Lcom/android/OriginalSettings/DockSettings;->mDockIntent:Landroid/content/Intent;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/OriginalSettings/DockSettings;->mDockIntent:Landroid/content/Intent;

    const-string v3, "android.intent.extra.DOCK_STATE"

    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 146
    :cond_0
    if-nez v0, :cond_2

    .line 147
    invoke-virtual {p0, v1}, Lcom/android/OriginalSettings/DockSettings;->showDialog(I)V

    .line 194
    :cond_1
    :goto_0
    return v1

    .line 149
    :cond_2
    new-instance v0, Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/OriginalSettings/DockSettings;->mDockIntent:Landroid/content/Intent;

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 150
    const-string v2, "com.android.settings.bluetooth.action.DOCK_SHOW_UI"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 151
    invoke-virtual {p0}, Lcom/android/OriginalSettings/DockSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-class v3, Lcom/android/OriginalSettings/bluetooth/DockEventReceiver;

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 152
    invoke-virtual {p0}, Lcom/android/OriginalSettings/DockSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0

    .line 154
    :cond_3
    iget-object v2, p0, Lcom/android/OriginalSettings/DockSettings;->mDockSounds:Landroid/preference/CheckBoxPreference;

    if-ne p2, v2, :cond_5

    .line 155
    invoke-virtual {p0}, Lcom/android/OriginalSettings/DockSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "dock_sounds_enabled"

    iget-object v4, p0, Lcom/android/OriginalSettings/DockSettings;->mDockSounds:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_4

    move v0, v1

    :cond_4
    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    .line 157
    :cond_5
    iget-object v2, p0, Lcom/android/OriginalSettings/DockSettings;->mCradleEnable:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p2, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 159
    iget-object v2, p0, Lcom/android/OriginalSettings/DockSettings;->mCradleEnable:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v3

    .line 160
    invoke-virtual {p0}, Lcom/android/OriginalSettings/DockSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "cradle_enable"

    if-eqz v3, :cond_7

    move v2, v1

    :goto_1
    invoke-static {v4, v5, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 162
    invoke-virtual {p0}, Lcom/android/OriginalSettings/DockSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v4, "cradle_connect"

    invoke-static {v2, v4, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_8

    .line 166
    const-string v2, "DockSettings"

    const-string v4, "Cradle is connected:"

    invoke-static {v2, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 168
    const-string v4, "com.sec.android.intent.action.INTERNAL_SPEAKER"

    invoke-virtual {v2, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 169
    if-eqz v3, :cond_6

    move v0, v1

    .line 178
    :cond_6
    const-string v3, "state"

    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 179
    invoke-virtual {p0}, Lcom/android/OriginalSettings/DockSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getBaseContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 180
    const-string v2, "DockSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "PhoneSpeakerState(0 Phone, 1 Line out): "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_7
    move v2, v0

    .line 160
    goto :goto_1

    .line 184
    :cond_8
    const-string v2, "DockSettings"

    const-string v3, "Cradle is not connected:"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 186
    const-string v3, "com.sec.android.intent.action.INTERNAL_SPEAKER"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 188
    const-string v3, "state"

    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 189
    invoke-virtual {p0}, Lcom/android/OriginalSettings/DockSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 190
    const-string v2, "DockSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "PhoneSpeakerState(0 Phone, 1 Line out): "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 67
    invoke-super {p0}, Lcom/android/OriginalSettings/SettingsPreferenceFragment;->onResume()V

    .line 69
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.DOCK_EVENT"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 70
    .local v0, filter:Landroid/content/IntentFilter;
    invoke-virtual {p0}, Lcom/android/OriginalSettings/DockSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/android/OriginalSettings/DockSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 71
    return-void
.end method
