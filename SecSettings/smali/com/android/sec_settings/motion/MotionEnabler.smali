.class public final Lcom/android/sec_settings/motion/MotionEnabler;
.super Ljava/lang/Object;
.source "MotionEnabler.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mMotionUnlockDialog:Landroid/app/AlertDialog;

.field private mSwitch:Landroid/widget/Switch;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/widget/Switch;)V
    .locals 1
    .parameter "context"
    .parameter "switch_"

    .prologue
    const/4 v0, 0x0

    .line 41
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object v0, p0, Lcom/android/sec_settings/motion/MotionEnabler;->mSwitch:Landroid/widget/Switch;

    .line 39
    iput-object v0, p0, Lcom/android/sec_settings/motion/MotionEnabler;->mMotionUnlockDialog:Landroid/app/AlertDialog;

    .line 42
    iput-object p1, p0, Lcom/android/sec_settings/motion/MotionEnabler;->mContext:Landroid/content/Context;

    .line 43
    iput-object p2, p0, Lcom/android/sec_settings/motion/MotionEnabler;->mSwitch:Landroid/widget/Switch;

    .line 44
    return-void
.end method

.method static synthetic access$000(Lcom/android/sec_settings/motion/MotionEnabler;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 35
    iget-object v0, p0, Lcom/android/sec_settings/motion/MotionEnabler;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/sec_settings/motion/MotionEnabler;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 35
    invoke-direct {p0, p1}, Lcom/android/sec_settings/motion/MotionEnabler;->broadcastMotionChanged(Z)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/sec_settings/motion/MotionEnabler;)Landroid/widget/Switch;
    .locals 1
    .parameter "x0"

    .prologue
    .line 35
    iget-object v0, p0, Lcom/android/sec_settings/motion/MotionEnabler;->mSwitch:Landroid/widget/Switch;

    return-object v0
.end method

.method private broadcastMotionChanged(Z)V
    .locals 2
    .parameter "isEnable"

    .prologue
    .line 133
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.sec.motions.MOTIONS_SETTINGS_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 134
    .local v0, motion_changed:Landroid/content/Intent;
    const-string v1, "isEnable"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 135
    iget-object v1, p0, Lcom/android/sec_settings/motion/MotionEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 136
    return-void
.end method

.method private showMotionUnlockDialog(I)V
    .locals 4
    .parameter "message_res_id"

    .prologue
    const/4 v3, 0x0

    .line 106
    iget-object v0, p0, Lcom/android/sec_settings/motion/MotionEnabler;->mMotionUnlockDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 107
    iget-object v0, p0, Lcom/android/sec_settings/motion/MotionEnabler;->mMotionUnlockDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 108
    iput-object v3, p0, Lcom/android/sec_settings/motion/MotionEnabler;->mMotionUnlockDialog:Landroid/app/AlertDialog;

    .line 111
    :cond_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/android/sec_settings/motion/MotionEnabler;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f090a5c

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x1010355

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0905e3

    new-instance v2, Lcom/android/sec_settings/motion/MotionEnabler$1;

    invoke-direct {v2, p0}, Lcom/android/sec_settings/motion/MotionEnabler$1;-><init>(Lcom/android/sec_settings/motion/MotionEnabler;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f09012d

    invoke-virtual {v0, v1, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/sec_settings/motion/MotionEnabler;->mMotionUnlockDialog:Landroid/app/AlertDialog;

    .line 125
    iget-object v0, p0, Lcom/android/sec_settings/motion/MotionEnabler;->mMotionUnlockDialog:Landroid/app/AlertDialog;

    new-instance v1, Lcom/android/sec_settings/motion/MotionEnabler$2;

    invoke-direct {v1, p0}, Lcom/android/sec_settings/motion/MotionEnabler$2;-><init>(Lcom/android/sec_settings/motion/MotionEnabler;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 130
    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 7
    .parameter "buttonView"
    .parameter "desiredState"

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 74
    if-nez p2, :cond_6

    .line 75
    new-instance v1, Lcom/android/internal/widget/LockPatternUtils;

    iget-object v5, p0, Lcom/android/sec_settings/motion/MotionEnabler;->mContext:Landroid/content/Context;

    invoke-direct {v1, v5}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    .line 76
    .local v1, lockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;
    const/4 v2, 0x0

    .line 77
    .local v2, motion_unlock:Z
    const/4 v0, 0x0

    .line 78
    .local v0, camera_short_cut:Z
    invoke-virtual {v1}, Lcom/android/internal/widget/LockPatternUtils;->isSecure()Z

    move-result v5

    if-nez v5, :cond_0

    .line 79
    invoke-virtual {v1}, Lcom/android/internal/widget/LockPatternUtils;->isLockScreenDisabled()Z

    move-result v5

    if-nez v5, :cond_0

    .line 80
    iget-object v5, p0, Lcom/android/sec_settings/motion/MotionEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "lock_motion_tilt_to_unlock"

    invoke-static {v5, v6, v4}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-eqz v5, :cond_0

    .line 81
    const/4 v2, 0x1

    .line 85
    :cond_0
    iget-object v5, p0, Lcom/android/sec_settings/motion/MotionEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "motion_unlock_camera_short_cut"

    invoke-static {v5, v6, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-eqz v5, :cond_1

    .line 86
    const/4 v0, 0x1

    .line 88
    :cond_1
    if-eqz v2, :cond_2

    if-eqz v0, :cond_2

    .line 89
    const v3, 0x7f090aaf

    invoke-direct {p0, v3}, Lcom/android/sec_settings/motion/MotionEnabler;->showMotionUnlockDialog(I)V

    .line 102
    .end local v0           #camera_short_cut:Z
    .end local v1           #lockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;
    .end local v2           #motion_unlock:Z
    :goto_0
    return-void

    .line 90
    .restart local v0       #camera_short_cut:Z
    .restart local v1       #lockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;
    .restart local v2       #motion_unlock:Z
    :cond_2
    if-nez v2, :cond_3

    if-eqz v0, :cond_3

    .line 91
    const v3, 0x7f090aae

    invoke-direct {p0, v3}, Lcom/android/sec_settings/motion/MotionEnabler;->showMotionUnlockDialog(I)V

    goto :goto_0

    .line 92
    :cond_3
    if-eqz v2, :cond_4

    if-nez v0, :cond_4

    .line 93
    const v3, 0x7f090aad

    invoke-direct {p0, v3}, Lcom/android/sec_settings/motion/MotionEnabler;->showMotionUnlockDialog(I)V

    goto :goto_0

    .line 95
    :cond_4
    iget-object v5, p0, Lcom/android/sec_settings/motion/MotionEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "motion_engine"

    if-eqz p2, :cond_5

    :goto_1
    invoke-static {v5, v6, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 96
    invoke-direct {p0, p2}, Lcom/android/sec_settings/motion/MotionEnabler;->broadcastMotionChanged(Z)V

    goto :goto_0

    :cond_5
    move v3, v4

    .line 95
    goto :goto_1

    .line 99
    .end local v0           #camera_short_cut:Z
    .end local v1           #lockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;
    .end local v2           #motion_unlock:Z
    :cond_6
    iget-object v5, p0, Lcom/android/sec_settings/motion/MotionEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "motion_engine"

    if-eqz p2, :cond_7

    :goto_2
    invoke-static {v5, v6, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 100
    invoke-direct {p0, p2}, Lcom/android/sec_settings/motion/MotionEnabler;->broadcastMotionChanged(Z)V

    goto :goto_0

    :cond_7
    move v3, v4

    .line 99
    goto :goto_2
.end method

.method public pause()V
    .locals 2

    .prologue
    .line 51
    iget-object v0, p0, Lcom/android/sec_settings/motion/MotionEnabler;->mSwitch:Landroid/widget/Switch;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 52
    return-void
.end method

.method public resume()V
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/android/sec_settings/motion/MotionEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, p0}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 48
    return-void
.end method

.method public setSwitch(Landroid/widget/Switch;)V
    .locals 5
    .parameter "switch_"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 55
    iget-object v1, p0, Lcom/android/sec_settings/motion/MotionEnabler;->mSwitch:Landroid/widget/Switch;

    if-ne v1, p1, :cond_0

    .line 70
    :goto_0
    return-void

    .line 58
    :cond_0
    iget-object v1, p0, Lcom/android/sec_settings/motion/MotionEnabler;->mSwitch:Landroid/widget/Switch;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 59
    iput-object p1, p0, Lcom/android/sec_settings/motion/MotionEnabler;->mSwitch:Landroid/widget/Switch;

    .line 60
    iget-object v1, p0, Lcom/android/sec_settings/motion/MotionEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v1, p0}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 62
    iget-object v1, p0, Lcom/android/sec_settings/motion/MotionEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "motion_engine"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 64
    .local v0, motionState:I
    if-ne v0, v4, :cond_1

    .line 65
    iget-object v1, p0, Lcom/android/sec_settings/motion/MotionEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v1, v4}, Landroid/widget/Switch;->setChecked(Z)V

    goto :goto_0

    .line 67
    :cond_1
    iget-object v1, p0, Lcom/android/sec_settings/motion/MotionEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v1, v3}, Landroid/widget/Switch;->setChecked(Z)V

    goto :goto_0
.end method
