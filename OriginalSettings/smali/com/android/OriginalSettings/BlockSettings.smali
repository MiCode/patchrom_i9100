.class public Lcom/android/settings/BlockSettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "BlockSettings.java"


# static fields
.field private static mIsCallSeparate:Z


# instance fields
.field private mCallBlockMode:Landroid/preference/PreferenceScreen;

.field private mListIndex:I

.field private mMessageBlockMode:Landroid/preference/PreferenceScreen;

.field private mRejectModeDlgId:I

.field private mVideoCallBlockMode:Landroid/preference/PreferenceScreen;

.field private mVoiceCallBlockMode:Landroid/preference/PreferenceScreen;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/BlockSettings;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 42
    iget v0, p0, Lcom/android/settings/BlockSettings;->mListIndex:I

    return v0
.end method

.method static synthetic access$002(Lcom/android/settings/BlockSettings;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 42
    iput p1, p0, Lcom/android/settings/BlockSettings;->mListIndex:I

    return p1
.end method

.method static synthetic access$100(Lcom/android/settings/BlockSettings;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 42
    invoke-direct {p0, p1}, Lcom/android/settings/BlockSettings;->setBlockMode(I)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/settings/BlockSettings;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/android/settings/BlockSettings;->updateSummary()V

    return-void
.end method

.method private getCallBlockMode()I
    .locals 3

    .prologue
    .line 131
    invoke-virtual {p0}, Lcom/android/settings/BlockSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "autoreject_mode"

    const/4 v2, 0x2

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method private getIndexFromValue(I)I
    .locals 2
    .parameter "id"

    .prologue
    .line 212
    const/4 v0, 0x0

    .line 214
    .local v0, current:I
    const/4 v1, 0x1

    if-ne p1, v1, :cond_1

    .line 215
    invoke-direct {p0}, Lcom/android/settings/BlockSettings;->getCallBlockMode()I

    move-result v0

    .line 223
    :cond_0
    :goto_0
    return v0

    .line 216
    :cond_1
    const/4 v1, 0x2

    if-ne p1, v1, :cond_2

    .line 217
    invoke-direct {p0}, Lcom/android/settings/BlockSettings;->getCallBlockMode()I

    move-result v0

    goto :goto_0

    .line 218
    :cond_2
    const/4 v1, 0x3

    if-ne p1, v1, :cond_3

    .line 219
    invoke-direct {p0}, Lcom/android/settings/BlockSettings;->getVideoBlockMode()I

    move-result v0

    goto :goto_0

    .line 220
    :cond_3
    const/4 v1, 0x4

    if-ne p1, v1, :cond_0

    .line 221
    invoke-direct {p0}, Lcom/android/settings/BlockSettings;->getMessageBlockMode()I

    move-result v0

    goto :goto_0
.end method

.method private getMessageBlockMode()I
    .locals 3

    .prologue
    .line 154
    invoke-virtual {p0}, Lcom/android/settings/BlockSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "messageblock_mode"

    const/4 v2, 0x2

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method private getModeDialogId()I
    .locals 1

    .prologue
    .line 227
    iget v0, p0, Lcom/android/settings/BlockSettings;->mRejectModeDlgId:I

    return v0
.end method

.method private getVideoBlockMode()I
    .locals 3

    .prologue
    .line 149
    invoke-virtual {p0}, Lcom/android/settings/BlockSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "autoreject_videocall_mode"

    const/4 v2, 0x2

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method private makeCallBlockDialog(I)Landroid/app/Dialog;
    .locals 5
    .parameter "id"

    .prologue
    const/4 v3, 0x0

    .line 235
    invoke-direct {p0, p1}, Lcom/android/settings/BlockSettings;->getIndexFromValue(I)I

    move-result v1

    iput v1, p0, Lcom/android/settings/BlockSettings;->mListIndex:I

    .line 236
    invoke-direct {p0, p1}, Lcom/android/settings/BlockSettings;->setModeDialogId(I)V

    .line 237
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/BlockSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f090c1a

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v3, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const/high16 v2, 0x104

    new-instance v3, Lcom/android/settings/BlockSettings$2;

    invoke-direct {v3, p0}, Lcom/android/settings/BlockSettings$2;-><init>(Lcom/android/settings/BlockSettings;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0a0062

    iget v3, p0, Lcom/android/settings/BlockSettings;->mListIndex:I

    new-instance v4, Lcom/android/settings/BlockSettings$1;

    invoke-direct {v4, p0}, Lcom/android/settings/BlockSettings$1;-><init>(Lcom/android/settings/BlockSettings;)V

    invoke-virtual {v1, v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems(IILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 253
    .local v0, callBlockDialog:Landroid/app/Dialog;
    return-object v0
.end method

.method private makeMessageBlockDialog(I)Landroid/app/Dialog;
    .locals 5
    .parameter "id"

    .prologue
    const/4 v3, 0x0

    .line 301
    invoke-direct {p0, p1}, Lcom/android/settings/BlockSettings;->getIndexFromValue(I)I

    move-result v1

    iput v1, p0, Lcom/android/settings/BlockSettings;->mListIndex:I

    .line 302
    invoke-direct {p0, p1}, Lcom/android/settings/BlockSettings;->setModeDialogId(I)V

    .line 303
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/BlockSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f090c24

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v3, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const/high16 v2, 0x104

    new-instance v3, Lcom/android/settings/BlockSettings$8;

    invoke-direct {v3, p0}, Lcom/android/settings/BlockSettings$8;-><init>(Lcom/android/settings/BlockSettings;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0a0065

    iget v3, p0, Lcom/android/settings/BlockSettings;->mListIndex:I

    new-instance v4, Lcom/android/settings/BlockSettings$7;

    invoke-direct {v4, p0}, Lcom/android/settings/BlockSettings$7;-><init>(Lcom/android/settings/BlockSettings;)V

    invoke-virtual {v1, v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems(IILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 319
    .local v0, messageBlockDialog:Landroid/app/Dialog;
    return-object v0
.end method

.method private makeVideoCallBlockDialog(I)Landroid/app/Dialog;
    .locals 5
    .parameter "id"

    .prologue
    const/4 v3, 0x0

    .line 279
    invoke-direct {p0, p1}, Lcom/android/settings/BlockSettings;->getIndexFromValue(I)I

    move-result v1

    iput v1, p0, Lcom/android/settings/BlockSettings;->mListIndex:I

    .line 280
    invoke-direct {p0, p1}, Lcom/android/settings/BlockSettings;->setModeDialogId(I)V

    .line 281
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/BlockSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f090c21

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v3, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const/high16 v2, 0x104

    new-instance v3, Lcom/android/settings/BlockSettings$6;

    invoke-direct {v3, p0}, Lcom/android/settings/BlockSettings$6;-><init>(Lcom/android/settings/BlockSettings;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0a0064

    iget v3, p0, Lcom/android/settings/BlockSettings;->mListIndex:I

    new-instance v4, Lcom/android/settings/BlockSettings$5;

    invoke-direct {v4, p0}, Lcom/android/settings/BlockSettings$5;-><init>(Lcom/android/settings/BlockSettings;)V

    invoke-virtual {v1, v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems(IILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 297
    .local v0, videoCallBlockDialog:Landroid/app/Dialog;
    return-object v0
.end method

.method private makeVoiceCallBlockDialog(I)Landroid/app/Dialog;
    .locals 5
    .parameter "id"

    .prologue
    const/4 v3, 0x0

    .line 257
    invoke-direct {p0, p1}, Lcom/android/settings/BlockSettings;->getIndexFromValue(I)I

    move-result v1

    iput v1, p0, Lcom/android/settings/BlockSettings;->mListIndex:I

    .line 258
    invoke-direct {p0, p1}, Lcom/android/settings/BlockSettings;->setModeDialogId(I)V

    .line 259
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/BlockSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f090c1e

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v3, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const/high16 v2, 0x104

    new-instance v3, Lcom/android/settings/BlockSettings$4;

    invoke-direct {v3, p0}, Lcom/android/settings/BlockSettings$4;-><init>(Lcom/android/settings/BlockSettings;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0a0063

    iget v3, p0, Lcom/android/settings/BlockSettings;->mListIndex:I

    new-instance v4, Lcom/android/settings/BlockSettings$3;

    invoke-direct {v4, p0}, Lcom/android/settings/BlockSettings$3;-><init>(Lcom/android/settings/BlockSettings;)V

    invoke-virtual {v1, v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems(IILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 275
    .local v0, voiceCallBlockDialog:Landroid/app/Dialog;
    return-object v0
.end method

.method private setBlockMode(I)V
    .locals 3
    .parameter "mode"

    .prologue
    .line 136
    invoke-direct {p0}, Lcom/android/settings/BlockSettings;->getModeDialogId()I

    move-result v0

    .line 138
    .local v0, id:I
    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 139
    invoke-virtual {p0}, Lcom/android/settings/BlockSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "autoreject_mode"

    invoke-static {v1, v2, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 146
    :cond_0
    :goto_0
    return-void

    .line 140
    :cond_1
    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 141
    invoke-virtual {p0}, Lcom/android/settings/BlockSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "autoreject_mode"

    invoke-static {v1, v2, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    .line 142
    :cond_2
    const/4 v1, 0x3

    if-ne v0, v1, :cond_3

    .line 143
    invoke-virtual {p0}, Lcom/android/settings/BlockSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "autoreject_videocall_mode"

    invoke-static {v1, v2, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    .line 144
    :cond_3
    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 145
    invoke-virtual {p0}, Lcom/android/settings/BlockSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "messageblock_mode"

    invoke-static {v1, v2, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0
.end method

.method private setModeDialogId(I)V
    .locals 0
    .parameter "id"

    .prologue
    .line 231
    iput p1, p0, Lcom/android/settings/BlockSettings;->mRejectModeDlgId:I

    .line 232
    return-void
.end method

.method private updateSummary()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 162
    iget-object v2, p0, Lcom/android/settings/BlockSettings;->mCallBlockMode:Landroid/preference/PreferenceScreen;

    if-eqz v2, :cond_0

    .line 163
    invoke-direct {p0}, Lcom/android/settings/BlockSettings;->getCallBlockMode()I

    move-result v0

    .line 164
    .local v0, mBlockMode:I
    if-ne v0, v3, :cond_4

    .line 165
    const v1, 0x7f090c29

    .line 171
    .local v1, res_id:I
    :goto_0
    iget-object v2, p0, Lcom/android/settings/BlockSettings;->mCallBlockMode:Landroid/preference/PreferenceScreen;

    invoke-virtual {v2, v1}, Landroid/preference/PreferenceScreen;->setSummary(I)V

    .line 174
    .end local v0           #mBlockMode:I
    .end local v1           #res_id:I
    :cond_0
    iget-object v2, p0, Lcom/android/settings/BlockSettings;->mVoiceCallBlockMode:Landroid/preference/PreferenceScreen;

    if-eqz v2, :cond_1

    .line 175
    invoke-direct {p0}, Lcom/android/settings/BlockSettings;->getCallBlockMode()I

    move-result v0

    .line 176
    .restart local v0       #mBlockMode:I
    if-ne v0, v3, :cond_6

    .line 177
    const v1, 0x7f090c2a

    .line 183
    .restart local v1       #res_id:I
    :goto_1
    iget-object v2, p0, Lcom/android/settings/BlockSettings;->mVoiceCallBlockMode:Landroid/preference/PreferenceScreen;

    invoke-virtual {v2, v1}, Landroid/preference/PreferenceScreen;->setSummary(I)V

    .line 186
    .end local v0           #mBlockMode:I
    .end local v1           #res_id:I
    :cond_1
    iget-object v2, p0, Lcom/android/settings/BlockSettings;->mVideoCallBlockMode:Landroid/preference/PreferenceScreen;

    if-eqz v2, :cond_2

    .line 187
    invoke-direct {p0}, Lcom/android/settings/BlockSettings;->getVideoBlockMode()I

    move-result v0

    .line 188
    .restart local v0       #mBlockMode:I
    if-ne v0, v3, :cond_8

    .line 189
    const v1, 0x7f090c2b

    .line 195
    .restart local v1       #res_id:I
    :goto_2
    iget-object v2, p0, Lcom/android/settings/BlockSettings;->mVideoCallBlockMode:Landroid/preference/PreferenceScreen;

    invoke-virtual {v2, v1}, Landroid/preference/PreferenceScreen;->setSummary(I)V

    .line 198
    .end local v0           #mBlockMode:I
    .end local v1           #res_id:I
    :cond_2
    iget-object v2, p0, Lcom/android/settings/BlockSettings;->mMessageBlockMode:Landroid/preference/PreferenceScreen;

    if-eqz v2, :cond_3

    .line 199
    invoke-direct {p0}, Lcom/android/settings/BlockSettings;->getMessageBlockMode()I

    move-result v0

    .line 200
    .restart local v0       #mBlockMode:I
    if-ne v0, v3, :cond_a

    .line 201
    const v1, 0x7f090c2d

    .line 207
    .restart local v1       #res_id:I
    :goto_3
    iget-object v2, p0, Lcom/android/settings/BlockSettings;->mMessageBlockMode:Landroid/preference/PreferenceScreen;

    invoke-virtual {v2, v1}, Landroid/preference/PreferenceScreen;->setSummary(I)V

    .line 209
    .end local v0           #mBlockMode:I
    .end local v1           #res_id:I
    :cond_3
    return-void

    .line 166
    .restart local v0       #mBlockMode:I
    :cond_4
    if-ne v0, v4, :cond_5

    .line 167
    const v1, 0x7f090c2c

    .restart local v1       #res_id:I
    goto :goto_0

    .line 169
    .end local v1           #res_id:I
    :cond_5
    const v1, 0x7f090c2f

    .restart local v1       #res_id:I
    goto :goto_0

    .line 178
    .end local v1           #res_id:I
    :cond_6
    if-ne v0, v4, :cond_7

    .line 179
    const v1, 0x7f090c2c

    .restart local v1       #res_id:I
    goto :goto_1

    .line 181
    .end local v1           #res_id:I
    :cond_7
    const v1, 0x7f090c2f

    .restart local v1       #res_id:I
    goto :goto_1

    .line 190
    .end local v1           #res_id:I
    :cond_8
    if-ne v0, v4, :cond_9

    .line 191
    const v1, 0x7f090c2c

    .restart local v1       #res_id:I
    goto :goto_2

    .line 193
    .end local v1           #res_id:I
    :cond_9
    const v1, 0x7f090c2f

    .restart local v1       #res_id:I
    goto :goto_2

    .line 202
    .end local v1           #res_id:I
    :cond_a
    if-ne v0, v4, :cond_b

    .line 203
    const v1, 0x7f090c2e

    .restart local v1       #res_id:I
    goto :goto_3

    .line 205
    .end local v1           #res_id:I
    :cond_b
    const v1, 0x7f090c2f

    .restart local v1       #res_id:I
    goto :goto_3
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    const/4 v2, 0x0

    .line 83
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 84
    const v0, 0x7f070014

    invoke-virtual {p0, v0}, Lcom/android/settings/BlockSettings;->addPreferencesFromResource(I)V

    .line 94
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v1, "CscFeature_VoiceCall_EnableSeparateCallReject"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 97
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/settings/BlockSettings;->mIsCallSeparate:Z

    .line 103
    :goto_0
    sget-boolean v0, Lcom/android/settings/BlockSettings;->mIsCallSeparate:Z

    if-eqz v0, :cond_1

    .line 104
    invoke-virtual {p0}, Lcom/android/settings/BlockSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    const-string v1, "call_block"

    invoke-virtual {p0, v1}, Lcom/android/settings/BlockSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 105
    const-string v0, "voice_callblock_mode_preference"

    invoke-virtual {p0, v0}, Lcom/android/settings/BlockSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceScreen;

    iput-object v0, p0, Lcom/android/settings/BlockSettings;->mVoiceCallBlockMode:Landroid/preference/PreferenceScreen;

    .line 106
    const-string v0, "video_callblock_mode_preference"

    invoke-virtual {p0, v0}, Lcom/android/settings/BlockSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceScreen;

    iput-object v0, p0, Lcom/android/settings/BlockSettings;->mVideoCallBlockMode:Landroid/preference/PreferenceScreen;

    .line 107
    iput-object v2, p0, Lcom/android/settings/BlockSettings;->mCallBlockMode:Landroid/preference/PreferenceScreen;

    .line 117
    :goto_1
    const-string v0, "messageblock_mode_preference"

    invoke-virtual {p0, v0}, Lcom/android/settings/BlockSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceScreen;

    iput-object v0, p0, Lcom/android/settings/BlockSettings;->mMessageBlockMode:Landroid/preference/PreferenceScreen;

    .line 118
    return-void

    .line 99
    :cond_0
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/settings/BlockSettings;->mIsCallSeparate:Z

    goto :goto_0

    .line 109
    :cond_1
    const-string v0, "callblock_mode_preference"

    invoke-virtual {p0, v0}, Lcom/android/settings/BlockSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceScreen;

    iput-object v0, p0, Lcom/android/settings/BlockSettings;->mCallBlockMode:Landroid/preference/PreferenceScreen;

    .line 110
    iput-object v2, p0, Lcom/android/settings/BlockSettings;->mVoiceCallBlockMode:Landroid/preference/PreferenceScreen;

    .line 111
    iput-object v2, p0, Lcom/android/settings/BlockSettings;->mVideoCallBlockMode:Landroid/preference/PreferenceScreen;

    .line 112
    invoke-virtual {p0}, Lcom/android/settings/BlockSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    const-string v1, "voice_call_block"

    invoke-virtual {p0, v1}, Lcom/android/settings/BlockSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 113
    invoke-virtual {p0}, Lcom/android/settings/BlockSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    const-string v1, "video_call_block"

    invoke-virtual {p0, v1}, Lcom/android/settings/BlockSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_1
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 1
    .parameter "id"

    .prologue
    .line 323
    packed-switch p1, :pswitch_data_0

    .line 333
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 325
    :pswitch_0
    invoke-direct {p0, p1}, Lcom/android/settings/BlockSettings;->makeCallBlockDialog(I)Landroid/app/Dialog;

    move-result-object v0

    goto :goto_0

    .line 327
    :pswitch_1
    invoke-direct {p0, p1}, Lcom/android/settings/BlockSettings;->makeVoiceCallBlockDialog(I)Landroid/app/Dialog;

    move-result-object v0

    goto :goto_0

    .line 329
    :pswitch_2
    invoke-direct {p0, p1}, Lcom/android/settings/BlockSettings;->makeVideoCallBlockDialog(I)Landroid/app/Dialog;

    move-result-object v0

    goto :goto_0

    .line 331
    :pswitch_3
    invoke-direct {p0, p1}, Lcom/android/settings/BlockSettings;->makeMessageBlockDialog(I)Landroid/app/Dialog;

    move-result-object v0

    goto :goto_0

    .line 323
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 2
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    const/4 v0, 0x1

    .line 338
    iget-object v1, p0, Lcom/android/settings/BlockSettings;->mCallBlockMode:Landroid/preference/PreferenceScreen;

    if-ne p2, v1, :cond_0

    .line 339
    invoke-virtual {p0, v0}, Lcom/android/settings/BlockSettings;->showDialog(I)V

    .line 351
    :goto_0
    return v0

    .line 341
    :cond_0
    iget-object v1, p0, Lcom/android/settings/BlockSettings;->mVoiceCallBlockMode:Landroid/preference/PreferenceScreen;

    if-ne p2, v1, :cond_1

    .line 342
    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Lcom/android/settings/BlockSettings;->showDialog(I)V

    goto :goto_0

    .line 344
    :cond_1
    iget-object v1, p0, Lcom/android/settings/BlockSettings;->mVideoCallBlockMode:Landroid/preference/PreferenceScreen;

    if-ne p2, v1, :cond_2

    .line 345
    const/4 v1, 0x3

    invoke-virtual {p0, v1}, Lcom/android/settings/BlockSettings;->showDialog(I)V

    goto :goto_0

    .line 347
    :cond_2
    iget-object v1, p0, Lcom/android/settings/BlockSettings;->mMessageBlockMode:Landroid/preference/PreferenceScreen;

    if-ne p2, v1, :cond_3

    .line 348
    const/4 v1, 0x4

    invoke-virtual {p0, v1}, Lcom/android/settings/BlockSettings;->showDialog(I)V

    goto :goto_0

    .line 351
    :cond_3
    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v0

    goto :goto_0
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 122
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 123
    invoke-direct {p0}, Lcom/android/settings/BlockSettings;->updateSummary()V

    .line 124
    return-void
.end method
