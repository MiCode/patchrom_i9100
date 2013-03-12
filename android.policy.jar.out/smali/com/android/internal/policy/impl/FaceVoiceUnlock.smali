.class public Lcom/android/internal/policy/impl/FaceVoiceUnlock;
.super Ljava/lang/Object;
.source "FaceVoiceUnlock.java"

# interfaces
.implements Lcom/android/internal/policy/impl/BiometricSensorUnlock;
.implements Landroid/os/Handler$Callback;
.implements Lcom/samsung/voiceshell/VoiceEngineResultListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/policy/impl/FaceVoiceUnlock$VoiceUnlockView;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "FULLockscreen"


# instance fields
.field private final BACKUP_LOCK_TIMEOUT:I

.field private final MSG_CANCEL:I

.field private final MSG_DESTROY_WAKEUP_CMD:I

.field private final MSG_EXPOSE_FALLBACK:I

.field private final MSG_HIDE_FACE_UNLOCK_VIEW:I

.field private final MSG_HIDE_VOICE_LAYOUT:I

.field private final MSG_INIT_WAKEUP_CMD:I

.field private final MSG_POKE_WAKELOCK:I

.field private final MSG_REPORT_FAILED_ATTEMPT:I

.field private final MSG_SERVICE_CONNECTED:I

.field private final MSG_SERVICE_DISCONNECTED:I

.field private final MSG_SHOW_FACE_UNLOCK_VIEW:I

.field private final MSG_SHOW_VOICE_LAYOUT:I

.field private final MSG_SHOW_VOICE_LAYOUT_ERROR_MSG:I

.field private final MSG_SHOW_VOICE_LAYOUT_RECOGNITION_MSG:I

.field private final MSG_SHOW_VOICE_LAYOUT_SUCCESS_MSG:I

.field private final MSG_START_VERIFY_CMD:I

.field private final MSG_TERMINATE_VERIFY_CMD:I

.field private final MSG_UNLOCK:I

.field private final MSG_VOICE_LAYOUT_VOLUME_UPDATE:I

.field private final SERVICE_STARTUP_VIEW_TIMEOUT:I

.field private mBoundToService:Z

.field private mConfiguration:Landroid/content/res/Configuration;

.field private mConnection:Landroid/content/ServiceConnection;

.field private final mContext:Landroid/content/Context;

.field private final mFaceUnlockCallback:Lcom/android/internal/policy/IFaceLockCallback;

.field private mFaceUnlockView:Landroid/view/View;

.field protected mFaceUnlocked:Z

.field private mHandler:Landroid/os/Handler;

.field private volatile mIsRunning:Z

.field private mIsVoiceUnlockOn:Z

.field mKeyguardScreenCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

.field private final mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mService:Lcom/android/internal/policy/IFaceLockInterface;

.field private mServiceRunning:Z

.field private final mServiceRunningLock:Ljava/lang/Object;

.field private mTalkbackEnabled:Z

.field private final mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

.field private mVoiceUnlockView:Lcom/android/internal/policy/impl/FaceVoiceUnlock$VoiceUnlockView;

.field mVoiceUnlockViewCallback:Lcom/android/internal/policy/impl/LockPatternKeyguardView$VoiceUnlockViewCallback;

.field private mVoiceVerifyStarted:Z

.field protected mWakeUnlocked:Z

.field private mWakeUpCmdRecognizer:Lcom/samsung/voiceshell/WakeUpCmdRecognizer;

.field private mWakeUpHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;Lcom/android/internal/widget/LockPatternUtils;Lcom/android/internal/policy/impl/KeyguardScreenCallback;Landroid/content/res/Configuration;Lcom/android/internal/policy/impl/LockPatternKeyguardView$VoiceUnlockViewCallback;)V
    .locals 9
    .parameter "context"
    .parameter "updateMonitor"
    .parameter "lockPatternUtils"
    .parameter "keyguardScreenCallback"
    .parameter "configuration"
    .parameter "voiceUnlockViewCallback"

    .prologue
    const/16 v8, 0xc

    const/16 v7, 0xb

    const/16 v6, 0xa

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 123
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 60
    iput-boolean v4, p0, Lcom/android/internal/policy/impl/FaceVoiceUnlock;->mServiceRunning:Z

    .line 63
    new-instance v5, Ljava/lang/Object;

    invoke-direct/range {v5 .. v5}, Ljava/lang/Object;-><init>()V

    iput-object v5, p0, Lcom/android/internal/policy/impl/FaceVoiceUnlock;->mServiceRunningLock:Ljava/lang/Object;

    .line 65
    iput-boolean v4, p0, Lcom/android/internal/policy/impl/FaceVoiceUnlock;->mBoundToService:Z

    .line 69
    iput v4, p0, Lcom/android/internal/policy/impl/FaceVoiceUnlock;->MSG_SHOW_FACE_UNLOCK_VIEW:I

    .line 70
    iput v3, p0, Lcom/android/internal/policy/impl/FaceVoiceUnlock;->MSG_HIDE_FACE_UNLOCK_VIEW:I

    .line 71
    const/4 v5, 0x2

    iput v5, p0, Lcom/android/internal/policy/impl/FaceVoiceUnlock;->MSG_SERVICE_CONNECTED:I

    .line 72
    const/4 v5, 0x3

    iput v5, p0, Lcom/android/internal/policy/impl/FaceVoiceUnlock;->MSG_SERVICE_DISCONNECTED:I

    .line 73
    const/4 v5, 0x4

    iput v5, p0, Lcom/android/internal/policy/impl/FaceVoiceUnlock;->MSG_UNLOCK:I

    .line 74
    const/4 v5, 0x5

    iput v5, p0, Lcom/android/internal/policy/impl/FaceVoiceUnlock;->MSG_CANCEL:I

    .line 75
    const/4 v5, 0x6

    iput v5, p0, Lcom/android/internal/policy/impl/FaceVoiceUnlock;->MSG_REPORT_FAILED_ATTEMPT:I

    .line 76
    const/4 v5, 0x7

    iput v5, p0, Lcom/android/internal/policy/impl/FaceVoiceUnlock;->MSG_EXPOSE_FALLBACK:I

    .line 77
    const/16 v5, 0x8

    iput v5, p0, Lcom/android/internal/policy/impl/FaceVoiceUnlock;->MSG_POKE_WAKELOCK:I

    .line 79
    iput v6, p0, Lcom/android/internal/policy/impl/FaceVoiceUnlock;->MSG_SHOW_VOICE_LAYOUT:I

    .line 80
    iput v7, p0, Lcom/android/internal/policy/impl/FaceVoiceUnlock;->MSG_SHOW_VOICE_LAYOUT_RECOGNITION_MSG:I

    .line 81
    iput v8, p0, Lcom/android/internal/policy/impl/FaceVoiceUnlock;->MSG_SHOW_VOICE_LAYOUT_ERROR_MSG:I

    .line 82
    const/16 v5, 0xd

    iput v5, p0, Lcom/android/internal/policy/impl/FaceVoiceUnlock;->MSG_SHOW_VOICE_LAYOUT_SUCCESS_MSG:I

    .line 83
    const/16 v5, 0xe

    iput v5, p0, Lcom/android/internal/policy/impl/FaceVoiceUnlock;->MSG_HIDE_VOICE_LAYOUT:I

    .line 84
    const/16 v5, 0xf

    iput v5, p0, Lcom/android/internal/policy/impl/FaceVoiceUnlock;->MSG_VOICE_LAYOUT_VOLUME_UPDATE:I

    .line 89
    iput-boolean v4, p0, Lcom/android/internal/policy/impl/FaceVoiceUnlock;->mIsRunning:Z

    .line 94
    const/16 v5, 0xbb8

    iput v5, p0, Lcom/android/internal/policy/impl/FaceVoiceUnlock;->SERVICE_STARTUP_VIEW_TIMEOUT:I

    .line 98
    const/16 v5, 0x1388

    iput v5, p0, Lcom/android/internal/policy/impl/FaceVoiceUnlock;->BACKUP_LOCK_TIMEOUT:I

    .line 105
    iput-boolean v4, p0, Lcom/android/internal/policy/impl/FaceVoiceUnlock;->mVoiceVerifyStarted:Z

    .line 106
    iput-boolean v4, p0, Lcom/android/internal/policy/impl/FaceVoiceUnlock;->mWakeUnlocked:Z

    .line 107
    iput-boolean v4, p0, Lcom/android/internal/policy/impl/FaceVoiceUnlock;->mIsVoiceUnlockOn:Z

    .line 108
    iput-boolean v4, p0, Lcom/android/internal/policy/impl/FaceVoiceUnlock;->mTalkbackEnabled:Z

    .line 109
    iput-boolean v4, p0, Lcom/android/internal/policy/impl/FaceVoiceUnlock;->mFaceUnlocked:Z

    .line 113
    iput v6, p0, Lcom/android/internal/policy/impl/FaceVoiceUnlock;->MSG_INIT_WAKEUP_CMD:I

    .line 114
    iput v7, p0, Lcom/android/internal/policy/impl/FaceVoiceUnlock;->MSG_START_VERIFY_CMD:I

    .line 115
    iput v8, p0, Lcom/android/internal/policy/impl/FaceVoiceUnlock;->MSG_TERMINATE_VERIFY_CMD:I

    .line 116
    const/16 v5, 0xd

    iput v5, p0, Lcom/android/internal/policy/impl/FaceVoiceUnlock;->MSG_DESTROY_WAKEUP_CMD:I

    .line 728
    new-instance v5, Lcom/android/internal/policy/impl/FaceVoiceUnlock$2;

    invoke-direct {v5, p0}, Lcom/android/internal/policy/impl/FaceVoiceUnlock$2;-><init>(Lcom/android/internal/policy/impl/FaceVoiceUnlock;)V

    iput-object v5, p0, Lcom/android/internal/policy/impl/FaceVoiceUnlock;->mConnection:Landroid/content/ServiceConnection;

    .line 803
    new-instance v5, Lcom/android/internal/policy/impl/FaceVoiceUnlock$3;

    invoke-direct {v5, p0}, Lcom/android/internal/policy/impl/FaceVoiceUnlock$3;-><init>(Lcom/android/internal/policy/impl/FaceVoiceUnlock;)V

    iput-object v5, p0, Lcom/android/internal/policy/impl/FaceVoiceUnlock;->mFaceUnlockCallback:Lcom/android/internal/policy/IFaceLockCallback;

    .line 124
    iput-object p1, p0, Lcom/android/internal/policy/impl/FaceVoiceUnlock;->mContext:Landroid/content/Context;

    .line 125
    iput-object p2, p0, Lcom/android/internal/policy/impl/FaceVoiceUnlock;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    .line 126
    iput-object p3, p0, Lcom/android/internal/policy/impl/FaceVoiceUnlock;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 127
    iput-object p4, p0, Lcom/android/internal/policy/impl/FaceVoiceUnlock;->mKeyguardScreenCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    .line 128
    iput-object p5, p0, Lcom/android/internal/policy/impl/FaceVoiceUnlock;->mConfiguration:Landroid/content/res/Configuration;

    .line 129
    iput-object p6, p0, Lcom/android/internal/policy/impl/FaceVoiceUnlock;->mVoiceUnlockViewCallback:Lcom/android/internal/policy/impl/LockPatternKeyguardView$VoiceUnlockViewCallback;

    .line 130
    new-instance v5, Landroid/os/Handler;

    invoke-direct {v5, p0}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    iput-object v5, p0, Lcom/android/internal/policy/impl/FaceVoiceUnlock;->mHandler:Landroid/os/Handler;

    .line 133
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "enabled_accessibility_services"

    invoke-static {v5, v6}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 134
    .local v0, accesibilityService:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 135
    const-string v5, "(?i).*talkback.*"

    invoke-virtual {v0, v5}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v5

    iput-boolean v5, p0, Lcom/android/internal/policy/impl/FaceVoiceUnlock;->mTalkbackEnabled:Z

    .line 136
    iget-boolean v5, p0, Lcom/android/internal/policy/impl/FaceVoiceUnlock;->mTalkbackEnabled:Z

    if-eqz v5, :cond_2

    .line 137
    const-string v5, "FULLockscreen"

    const-string v6, "tb on"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    :cond_0
    :goto_0
    iget-boolean v5, p0, Lcom/android/internal/policy/impl/FaceVoiceUnlock;->mTalkbackEnabled:Z

    if-nez v5, :cond_1

    .line 144
    iget-object v5, p0, Lcom/android/internal/policy/impl/FaceVoiceUnlock;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "driving_mode_on"

    invoke-static {v5, v6, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 145
    .local v1, drivingMode:I
    iget-object v5, p0, Lcom/android/internal/policy/impl/FaceVoiceUnlock;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "driving_mode_unlock_screen_contents"

    invoke-static {v5, v6, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 147
    .local v2, unlockDrivingMode:I
    if-ne v1, v3, :cond_3

    if-ne v2, v3, :cond_3

    .line 148
    iput-boolean v3, p0, Lcom/android/internal/policy/impl/FaceVoiceUnlock;->mTalkbackEnabled:Z

    .line 149
    const-string v5, "FULLockscreen"

    const-string v6, "drv mode on"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    .end local v1           #drivingMode:I
    .end local v2           #unlockDrivingMode:I
    :cond_1
    :goto_1
    const-string v5, "FULLockscreen"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "mTalkbackEnabled ="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-boolean v7, p0, Lcom/android/internal/policy/impl/FaceVoiceUnlock;->mTalkbackEnabled:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "lock_screen_face_with_voice"

    invoke-static {v5, v6, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-ne v5, v3, :cond_4

    :goto_2
    iput-boolean v3, p0, Lcom/android/internal/policy/impl/FaceVoiceUnlock;->mIsVoiceUnlockOn:Z

    .line 157
    const-string v3, "FULLockscreen"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mIsVoiceUnlockOn="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/android/internal/policy/impl/FaceVoiceUnlock;->mIsVoiceUnlockOn:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    invoke-direct {p0}, Lcom/android/internal/policy/impl/FaceVoiceUnlock;->initWakeUpHandler()V

    .line 161
    new-instance v3, Lcom/android/internal/policy/impl/FaceVoiceUnlock$VoiceUnlockView;

    iget-object v4, p0, Lcom/android/internal/policy/impl/FaceVoiceUnlock;->mConfiguration:Landroid/content/res/Configuration;

    iget-object v5, p0, Lcom/android/internal/policy/impl/FaceVoiceUnlock;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v5}, Lcom/android/internal/widget/LockPatternUtils;->isLockPatternEnabled()Z

    move-result v5

    invoke-direct {v3, p0, p1, v4, v5}, Lcom/android/internal/policy/impl/FaceVoiceUnlock$VoiceUnlockView;-><init>(Lcom/android/internal/policy/impl/FaceVoiceUnlock;Landroid/content/Context;Landroid/content/res/Configuration;Z)V

    iput-object v3, p0, Lcom/android/internal/policy/impl/FaceVoiceUnlock;->mVoiceUnlockView:Lcom/android/internal/policy/impl/FaceVoiceUnlock$VoiceUnlockView;

    .line 162
    return-void

    .line 139
    :cond_2
    const-string v5, "FULLockscreen"

    const-string v6, "tb off"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 151
    .restart local v1       #drivingMode:I
    .restart local v2       #unlockDrivingMode:I
    :cond_3
    const-string v5, "FULLockscreen"

    const-string v6, "drv mode off"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .end local v1           #drivingMode:I
    .end local v2           #unlockDrivingMode:I
    :cond_4
    move v3, v4

    .line 156
    goto :goto_2
.end method

.method static synthetic access$000(Lcom/android/internal/policy/impl/FaceVoiceUnlock;)Lcom/samsung/voiceshell/WakeUpCmdRecognizer;
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    iget-object v0, p0, Lcom/android/internal/policy/impl/FaceVoiceUnlock;->mWakeUpCmdRecognizer:Lcom/samsung/voiceshell/WakeUpCmdRecognizer;

    return-object v0
.end method

.method static synthetic access$002(Lcom/android/internal/policy/impl/FaceVoiceUnlock;Lcom/samsung/voiceshell/WakeUpCmdRecognizer;)Lcom/samsung/voiceshell/WakeUpCmdRecognizer;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 50
    iput-object p1, p0, Lcom/android/internal/policy/impl/FaceVoiceUnlock;->mWakeUpCmdRecognizer:Lcom/samsung/voiceshell/WakeUpCmdRecognizer;

    return-object p1
.end method

.method static synthetic access$100(Lcom/android/internal/policy/impl/FaceVoiceUnlock;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    iget-object v0, p0, Lcom/android/internal/policy/impl/FaceVoiceUnlock;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/internal/policy/impl/FaceVoiceUnlock;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/FaceVoiceUnlock;->mVoiceVerifyStarted:Z

    return v0
.end method

.method static synthetic access$202(Lcom/android/internal/policy/impl/FaceVoiceUnlock;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 50
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/FaceVoiceUnlock;->mVoiceVerifyStarted:Z

    return p1
.end method

.method static synthetic access$302(Lcom/android/internal/policy/impl/FaceVoiceUnlock;Lcom/android/internal/policy/IFaceLockInterface;)Lcom/android/internal/policy/IFaceLockInterface;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 50
    iput-object p1, p0, Lcom/android/internal/policy/impl/FaceVoiceUnlock;->mService:Lcom/android/internal/policy/IFaceLockInterface;

    return-object p1
.end method

.method static synthetic access$400(Lcom/android/internal/policy/impl/FaceVoiceUnlock;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    iget-object v0, p0, Lcom/android/internal/policy/impl/FaceVoiceUnlock;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private checkIfVoiceUnlockErrorShowed()Z
    .locals 1

    .prologue
    .line 905
    iget-object v0, p0, Lcom/android/internal/policy/impl/FaceVoiceUnlock;->mVoiceUnlockView:Lcom/android/internal/policy/impl/FaceVoiceUnlock$VoiceUnlockView;

    if-nez v0, :cond_0

    .line 906
    const/4 v0, 0x0

    .line 908
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/FaceVoiceUnlock;->mVoiceUnlockView:Lcom/android/internal/policy/impl/FaceVoiceUnlock$VoiceUnlockView;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/FaceVoiceUnlock$VoiceUnlockView;->isErrorShowed()Z

    move-result v0

    goto :goto_0
.end method

.method private displayPrepareMsg()V
    .locals 2

    .prologue
    .line 237
    invoke-direct {p0}, Lcom/android/internal/policy/impl/FaceVoiceUnlock;->removeWakeupCmdDisplayMessages()V

    .line 239
    iget-object v0, p0, Lcom/android/internal/policy/impl/FaceVoiceUnlock;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 240
    return-void
.end method

.method private displayRecognitionMsg(J)V
    .locals 2
    .parameter "millis"

    .prologue
    .line 245
    invoke-direct {p0}, Lcom/android/internal/policy/impl/FaceVoiceUnlock;->removeWakeupCmdDisplayMessages()V

    .line 247
    iget-object v0, p0, Lcom/android/internal/policy/impl/FaceVoiceUnlock;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xb

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 248
    return-void
.end method

.method private displayVerifyFailMsg()V
    .locals 4

    .prologue
    .line 267
    invoke-direct {p0}, Lcom/android/internal/policy/impl/FaceVoiceUnlock;->removeWakeupCmdDisplayMessages()V

    .line 268
    iget-object v0, p0, Lcom/android/internal/policy/impl/FaceVoiceUnlock;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 269
    iget-object v0, p0, Lcom/android/internal/policy/impl/FaceVoiceUnlock;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xe

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 270
    return-void
.end method

.method private displayVerifyFailMsgDelayed(J)V
    .locals 7
    .parameter "timeoutMillis"

    .prologue
    const-wide/16 v5, 0xbb8

    .line 255
    invoke-direct {p0}, Lcom/android/internal/policy/impl/FaceVoiceUnlock;->removeWakeupCmdDisplayMessages()V

    .line 256
    iget-object v1, p0, Lcom/android/internal/policy/impl/FaceVoiceUnlock;->mHandler:Landroid/os/Handler;

    const/16 v2, 0xc

    invoke-virtual {v1, v2, p1, p2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 257
    iget-object v1, p0, Lcom/android/internal/policy/impl/FaceVoiceUnlock;->mHandler:Landroid/os/Handler;

    const/16 v2, 0xe

    add-long v3, p1, v5

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 258
    iget-object v1, p0, Lcom/android/internal/policy/impl/FaceVoiceUnlock;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x8

    const/16 v3, 0x1388

    const/4 v4, -0x1

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    .line 259
    .local v0, message:Landroid/os/Message;
    iget-object v1, p0, Lcom/android/internal/policy/impl/FaceVoiceUnlock;->mHandler:Landroid/os/Handler;

    add-long v2, p1, v5

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 260
    return-void
.end method

.method private displayVerifySuccessMsg()V
    .locals 4

    .prologue
    .line 277
    invoke-direct {p0}, Lcom/android/internal/policy/impl/FaceVoiceUnlock;->removeWakeupCmdDisplayMessages()V

    .line 278
    iget-object v0, p0, Lcom/android/internal/policy/impl/FaceVoiceUnlock;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 279
    iget-object v0, p0, Lcom/android/internal/policy/impl/FaceVoiceUnlock;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x4

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 280
    return-void
.end method

.method private hideVoiceLayout()V
    .locals 2

    .prologue
    .line 287
    invoke-direct {p0}, Lcom/android/internal/policy/impl/FaceVoiceUnlock;->removeWakeupCmdDisplayMessages()V

    .line 288
    iget-object v0, p0, Lcom/android/internal/policy/impl/FaceVoiceUnlock;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xe

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 289
    return-void
.end method

.method private initWakeUpHandler()V
    .locals 2

    .prologue
    .line 166
    new-instance v0, Landroid/os/Handler;

    new-instance v1, Lcom/android/internal/policy/impl/FaceVoiceUnlock$1;

    invoke-direct {v1, p0}, Lcom/android/internal/policy/impl/FaceVoiceUnlock$1;-><init>(Lcom/android/internal/policy/impl/FaceVoiceUnlock;)V

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/FaceVoiceUnlock;->mWakeUpHandler:Landroid/os/Handler;

    .line 222
    iget-object v0, p0, Lcom/android/internal/policy/impl/FaceVoiceUnlock;->mWakeUpHandler:Landroid/os/Handler;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 223
    return-void
.end method

.method private removeDisplayMessages()V
    .locals 2

    .prologue
    .line 721
    iget-object v0, p0, Lcom/android/internal/policy/impl/FaceVoiceUnlock;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 722
    iget-object v0, p0, Lcom/android/internal/policy/impl/FaceVoiceUnlock;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 723
    return-void
.end method

.method private removeWakeupCmdDisplayMessages()V
    .locals 2

    .prologue
    .line 227
    iget-object v0, p0, Lcom/android/internal/policy/impl/FaceVoiceUnlock;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 228
    iget-object v0, p0, Lcom/android/internal/policy/impl/FaceVoiceUnlock;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 229
    iget-object v0, p0, Lcom/android/internal/policy/impl/FaceVoiceUnlock;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 230
    iget-object v0, p0, Lcom/android/internal/policy/impl/FaceVoiceUnlock;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 231
    iget-object v0, p0, Lcom/android/internal/policy/impl/FaceVoiceUnlock;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xe

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 232
    return-void
.end method

.method private startUi(Landroid/os/IBinder;IIII)V
    .locals 9
    .parameter "windowToken"
    .parameter "x"
    .parameter "y"
    .parameter "w"
    .parameter "h"

    .prologue
    .line 754
    iget-object v8, p0, Lcom/android/internal/policy/impl/FaceVoiceUnlock;->mServiceRunningLock:Ljava/lang/Object;

    monitor-enter v8

    .line 755
    :try_start_0
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/FaceVoiceUnlock;->mServiceRunning:Z

    if-nez v0, :cond_0

    .line 756
    const-string v0, "FULLockscreen"

    const-string v1, "Starting Face Unlock"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 758
    :try_start_1
    iget-object v0, p0, Lcom/android/internal/policy/impl/FaceVoiceUnlock;->mService:Lcom/android/internal/policy/IFaceLockInterface;

    iget-object v1, p0, Lcom/android/internal/policy/impl/FaceVoiceUnlock;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v1}, Lcom/android/internal/widget/LockPatternUtils;->isBiometricWeakLivelinessEnabled()Z

    move-result v6

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-interface/range {v0 .. v6}, Lcom/android/internal/policy/IFaceLockInterface;->startUi(Landroid/os/IBinder;IIIIZ)V

    .line 762
    iget-object v0, p0, Lcom/android/internal/policy/impl/FaceVoiceUnlock;->mWakeUpHandler:Landroid/os/Handler;

    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 767
    const/4 v0, 0x1

    :try_start_2
    iput-boolean v0, p0, Lcom/android/internal/policy/impl/FaceVoiceUnlock;->mServiceRunning:Z

    .line 771
    :goto_0
    monitor-exit v8

    .line 772
    :goto_1
    return-void

    .line 763
    :catch_0
    move-exception v7

    .line 764
    .local v7, e:Landroid/os/RemoteException;
    const-string v0, "FULLockscreen"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Caught exception starting Face Unlock: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v7}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 765
    monitor-exit v8

    goto :goto_1

    .line 771
    .end local v7           #e:Landroid/os/RemoteException;
    :catchall_0
    move-exception v0

    monitor-exit v8
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 769
    :cond_0
    :try_start_3
    const-string v0, "FULLockscreen"

    const-string v1, "startUi() attempted while running"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0
.end method

.method private stopUi()V
    .locals 5

    .prologue
    .line 782
    iget-object v2, p0, Lcom/android/internal/policy/impl/FaceVoiceUnlock;->mServiceRunningLock:Ljava/lang/Object;

    monitor-enter v2

    .line 783
    :try_start_0
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/FaceVoiceUnlock;->mServiceRunning:Z

    if-eqz v1, :cond_0

    .line 784
    const-string v1, "FULLockscreen"

    const-string v3, "Stopping Face Unlock"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 786
    :try_start_1
    iget-object v1, p0, Lcom/android/internal/policy/impl/FaceVoiceUnlock;->mService:Lcom/android/internal/policy/IFaceLockInterface;

    invoke-interface {v1}, Lcom/android/internal/policy/IFaceLockInterface;->stopUi()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 790
    :goto_0
    const/4 v1, 0x0

    :try_start_2
    iput-boolean v1, p0, Lcom/android/internal/policy/impl/FaceVoiceUnlock;->mServiceRunning:Z

    .line 797
    :cond_0
    monitor-exit v2

    .line 798
    return-void

    .line 787
    :catch_0
    move-exception v0

    .line 788
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "FULLockscreen"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Caught exception stopping Face Unlock: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 797
    .end local v0           #e:Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method private updateVolume(I)V
    .locals 5
    .parameter "rmsValue"

    .prologue
    .line 915
    const/4 v0, 0x0

    .line 916
    .local v0, img:I
    const/16 v2, 0x1c

    if-ge p1, v2, :cond_0

    .line 917
    const v0, 0x108044e

    .line 960
    :goto_0
    iget-object v2, p0, Lcom/android/internal/policy/impl/FaceVoiceUnlock;->mHandler:Landroid/os/Handler;

    const/16 v3, 0xf

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v0, v4}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    .line 961
    .local v1, msg:Landroid/os/Message;
    iget-object v2, p0, Lcom/android/internal/policy/impl/FaceVoiceUnlock;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 962
    return-void

    .line 918
    .end local v1           #msg:Landroid/os/Message;
    :cond_0
    const/16 v2, 0x1f

    if-ge p1, v2, :cond_1

    .line 919
    const v0, 0x108044f

    goto :goto_0

    .line 920
    :cond_1
    const/16 v2, 0x22

    if-ge p1, v2, :cond_2

    .line 921
    const v0, 0x108045a

    goto :goto_0

    .line 922
    :cond_2
    const/16 v2, 0x25

    if-ge p1, v2, :cond_3

    .line 923
    const v0, 0x108045c

    goto :goto_0

    .line 924
    :cond_3
    const/16 v2, 0x28

    if-ge p1, v2, :cond_4

    .line 925
    const v0, 0x108045d

    goto :goto_0

    .line 926
    :cond_4
    const/16 v2, 0x2b

    if-ge p1, v2, :cond_5

    .line 927
    const v0, 0x108045e

    goto :goto_0

    .line 928
    :cond_5
    const/16 v2, 0x2e

    if-ge p1, v2, :cond_6

    .line 929
    const v0, 0x108045f

    goto :goto_0

    .line 930
    :cond_6
    const/16 v2, 0x31

    if-ge p1, v2, :cond_7

    .line 931
    const v0, 0x1080460

    goto :goto_0

    .line 932
    :cond_7
    const/16 v2, 0x34

    if-ge p1, v2, :cond_8

    .line 933
    const v0, 0x1080461

    goto :goto_0

    .line 934
    :cond_8
    const/16 v2, 0x37

    if-ge p1, v2, :cond_9

    .line 935
    const v0, 0x1080462

    goto :goto_0

    .line 936
    :cond_9
    const/16 v2, 0x3a

    if-ge p1, v2, :cond_a

    .line 937
    const v0, 0x1080450

    goto :goto_0

    .line 938
    :cond_a
    const/16 v2, 0x3d

    if-ge p1, v2, :cond_b

    .line 939
    const v0, 0x1080451

    goto :goto_0

    .line 940
    :cond_b
    const/16 v2, 0x40

    if-ge p1, v2, :cond_c

    .line 941
    const v0, 0x1080452

    goto :goto_0

    .line 942
    :cond_c
    const/16 v2, 0x43

    if-ge p1, v2, :cond_d

    .line 943
    const v0, 0x1080453

    goto :goto_0

    .line 944
    :cond_d
    const/16 v2, 0x46

    if-ge p1, v2, :cond_e

    .line 945
    const v0, 0x1080454

    goto :goto_0

    .line 946
    :cond_e
    const/16 v2, 0x49

    if-ge p1, v2, :cond_f

    .line 947
    const v0, 0x1080455

    goto/16 :goto_0

    .line 948
    :cond_f
    const/16 v2, 0x4c

    if-ge p1, v2, :cond_10

    .line 949
    const v0, 0x1080456

    goto/16 :goto_0

    .line 950
    :cond_10
    const/16 v2, 0x4f

    if-ge p1, v2, :cond_11

    .line 951
    const v0, 0x1080457

    goto/16 :goto_0

    .line 952
    :cond_11
    const/16 v2, 0x52

    if-ge p1, v2, :cond_12

    .line 953
    const v0, 0x1080458

    goto/16 :goto_0

    .line 954
    :cond_12
    const/16 v2, 0x55

    if-ge p1, v2, :cond_13

    .line 955
    const v0, 0x1080459

    goto/16 :goto_0

    .line 957
    :cond_13
    const v0, 0x108045b

    goto/16 :goto_0
.end method


# virtual methods
.method public OnEnrollResult(III)V
    .locals 0
    .parameter "job"
    .parameter "count"
    .parameter "check"

    .prologue
    .line 896
    return-void
.end method

.method public OnRmsForWave(I)V
    .locals 0
    .parameter "value"

    .prologue
    .line 900
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/FaceVoiceUnlock;->updateVolume(I)V

    .line 901
    return-void
.end method

.method public OnVerifyResult(IS)V
    .locals 4
    .parameter "verifyResult"
    .parameter "commandResult"

    .prologue
    const/4 v3, 0x1

    .line 856
    const-string v0, "FULLockscreen"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "OnVerifyResult : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 859
    if-ne p1, v3, :cond_2

    iput-boolean v3, p0, Lcom/android/internal/policy/impl/FaceVoiceUnlock;->mWakeUnlocked:Z

    .line 876
    :cond_0
    if-ne p1, v3, :cond_6

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/FaceVoiceUnlock;->mFaceUnlocked:Z

    if-eqz v0, :cond_6

    .line 878
    invoke-direct {p0}, Lcom/android/internal/policy/impl/FaceVoiceUnlock;->checkIfVoiceUnlockErrorShowed()Z

    move-result v0

    if-nez v0, :cond_5

    .line 879
    const-string v0, "FULLockscreen"

    const-string v1, "Wakeup + Face Success"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 880
    invoke-direct {p0}, Lcom/android/internal/policy/impl/FaceVoiceUnlock;->displayVerifySuccessMsg()V

    .line 891
    :cond_1
    :goto_0
    return-void

    .line 860
    :cond_2
    const/4 v0, -0x3

    if-ne p1, v0, :cond_3

    .line 861
    const-string v0, "FULLockscreen"

    const-string v1, "OnVerifyResult() verify cancel result returned"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 863
    :cond_3
    const/16 v0, -0xa

    if-eq p1, v0, :cond_4

    const/16 v0, -0xb

    if-ne p1, v0, :cond_0

    .line 864
    :cond_4
    const-string v0, "FULLockscreen"

    const-string v1, "OnVerifyResult() failed due to data file exception"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 882
    :cond_5
    const-string v0, "FULLockscreen"

    const-string v1, "Error already has showed due to timeout"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 885
    :cond_6
    if-eq p1, v3, :cond_1

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/FaceVoiceUnlock;->mFaceUnlocked:Z

    if-eqz v0, :cond_1

    .line 886
    const-string v0, "FULLockscreen"

    const-string v1, "Wakeup Fail after FaceLock recognition successed"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 888
    const-wide/16 v0, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/internal/policy/impl/FaceVoiceUnlock;->displayVerifyFailMsgDelayed(J)V

    goto :goto_0
.end method

.method public cleanUp()V
    .locals 2

    .prologue
    .line 457
    iget-object v0, p0, Lcom/android/internal/policy/impl/FaceVoiceUnlock;->mVoiceUnlockView:Lcom/android/internal/policy/impl/FaceVoiceUnlock$VoiceUnlockView;

    if-eqz v0, :cond_0

    .line 458
    invoke-direct {p0}, Lcom/android/internal/policy/impl/FaceVoiceUnlock;->hideVoiceLayout()V

    .line 459
    iget-object v0, p0, Lcom/android/internal/policy/impl/FaceVoiceUnlock;->mVoiceUnlockView:Lcom/android/internal/policy/impl/FaceVoiceUnlock$VoiceUnlockView;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/FaceVoiceUnlock$VoiceUnlockView;->cleanUp()V

    .line 461
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/FaceVoiceUnlock;->mWakeUpHandler:Landroid/os/Handler;

    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 463
    iget-object v0, p0, Lcom/android/internal/policy/impl/FaceVoiceUnlock;->mService:Lcom/android/internal/policy/IFaceLockInterface;

    if-eqz v0, :cond_1

    .line 465
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/FaceVoiceUnlock;->mService:Lcom/android/internal/policy/IFaceLockInterface;

    iget-object v1, p0, Lcom/android/internal/policy/impl/FaceVoiceUnlock;->mFaceUnlockCallback:Lcom/android/internal/policy/IFaceLockCallback;

    invoke-interface {v0, v1}, Lcom/android/internal/policy/IFaceLockInterface;->unregisterCallback(Lcom/android/internal/policy/IFaceLockCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 469
    :goto_0
    invoke-direct {p0}, Lcom/android/internal/policy/impl/FaceVoiceUnlock;->stopUi()V

    .line 470
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/policy/impl/FaceVoiceUnlock;->mService:Lcom/android/internal/policy/IFaceLockInterface;

    .line 472
    :cond_1
    return-void

    .line 466
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public getQuality()I
    .locals 1

    .prologue
    .line 478
    const v0, 0x8000

    return v0
.end method

.method handleCancel()V
    .locals 2

    .prologue
    .line 678
    iget-object v0, p0, Lcom/android/internal/policy/impl/FaceVoiceUnlock;->mFaceUnlockView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 679
    iget-object v0, p0, Lcom/android/internal/policy/impl/FaceVoiceUnlock;->mFaceUnlockView:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 683
    :goto_0
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/FaceVoiceUnlock;->stop()Z

    .line 684
    iget-object v0, p0, Lcom/android/internal/policy/impl/FaceVoiceUnlock;->mKeyguardScreenCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    const/16 v1, 0x1388

    invoke-interface {v0, v1}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->pokeWakelock(I)V

    .line 685
    return-void

    .line 681
    :cond_0
    const-string v0, "FULLockscreen"

    const-string v1, "mFaceUnlockView is null in handleCancel()"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method handleExposeFallback()V
    .locals 2

    .prologue
    .line 702
    iget-object v0, p0, Lcom/android/internal/policy/impl/FaceVoiceUnlock;->mFaceUnlockView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 703
    iget-object v0, p0, Lcom/android/internal/policy/impl/FaceVoiceUnlock;->mFaceUnlockView:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 707
    :goto_0
    return-void

    .line 705
    :cond_0
    const-string v0, "FULLockscreen"

    const-string v1, "mFaceUnlockView is null in handleExposeFallback()"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method handleHideFaceUnlockView()V
    .locals 2

    .prologue
    .line 568
    iget-object v0, p0, Lcom/android/internal/policy/impl/FaceVoiceUnlock;->mFaceUnlockView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 569
    iget-object v0, p0, Lcom/android/internal/policy/impl/FaceVoiceUnlock;->mFaceUnlockView:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 573
    :goto_0
    return-void

    .line 571
    :cond_0
    const-string v0, "FULLockscreen"

    const-string v1, "mFaceUnlockView is null in handleHideFaceUnlockView()"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 3
    .parameter "msg"

    .prologue
    const/16 v2, 0x1388

    .line 488
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 545
    :pswitch_0
    const-string v0, "FULLockscreen"

    const-string v1, "Unhandled message"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 546
    const/4 v0, 0x0

    .line 548
    :goto_0
    return v0

    .line 490
    :pswitch_1
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/FaceVoiceUnlock;->handleShowFaceUnlockView()V

    .line 548
    :goto_1
    const/4 v0, 0x1

    goto :goto_0

    .line 493
    :pswitch_2
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/FaceVoiceUnlock;->handleHideFaceUnlockView()V

    goto :goto_1

    .line 496
    :pswitch_3
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/FaceVoiceUnlock;->handleServiceConnected()V

    goto :goto_1

    .line 499
    :pswitch_4
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/FaceVoiceUnlock;->handleServiceDisconnected()V

    goto :goto_1

    .line 502
    :pswitch_5
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/FaceVoiceUnlock;->handleUnlock()V

    goto :goto_1

    .line 505
    :pswitch_6
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/FaceVoiceUnlock;->handleCancel()V

    goto :goto_1

    .line 508
    :pswitch_7
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/FaceVoiceUnlock;->handleReportFailedAttempt()V

    goto :goto_1

    .line 511
    :pswitch_8
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/FaceVoiceUnlock;->handleExposeFallback()V

    goto :goto_1

    .line 514
    :pswitch_9
    iget v0, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/FaceVoiceUnlock;->handlePokeWakelock(I)V

    goto :goto_1

    .line 518
    :pswitch_a
    iget-object v0, p0, Lcom/android/internal/policy/impl/FaceVoiceUnlock;->mVoiceUnlockViewCallback:Lcom/android/internal/policy/impl/LockPatternKeyguardView$VoiceUnlockViewCallback;

    iget-object v1, p0, Lcom/android/internal/policy/impl/FaceVoiceUnlock;->mVoiceUnlockView:Lcom/android/internal/policy/impl/FaceVoiceUnlock$VoiceUnlockView;

    invoke-interface {v0, v1}, Lcom/android/internal/policy/impl/LockPatternKeyguardView$VoiceUnlockViewCallback;->removeVoiceUnlockView(Landroid/view/View;)V

    .line 519
    iget-object v0, p0, Lcom/android/internal/policy/impl/FaceVoiceUnlock;->mVoiceUnlockView:Lcom/android/internal/policy/impl/FaceVoiceUnlock$VoiceUnlockView;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/FaceVoiceUnlock$VoiceUnlockView;->setPrepareMsg()V

    .line 520
    iget-object v0, p0, Lcom/android/internal/policy/impl/FaceVoiceUnlock;->mVoiceUnlockViewCallback:Lcom/android/internal/policy/impl/LockPatternKeyguardView$VoiceUnlockViewCallback;

    iget-object v1, p0, Lcom/android/internal/policy/impl/FaceVoiceUnlock;->mVoiceUnlockView:Lcom/android/internal/policy/impl/FaceVoiceUnlock$VoiceUnlockView;

    invoke-interface {v0, v1}, Lcom/android/internal/policy/impl/LockPatternKeyguardView$VoiceUnlockViewCallback;->addVoiceUnlockView(Landroid/view/View;)V

    .line 521
    const-wide/16 v0, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/internal/policy/impl/FaceVoiceUnlock;->displayRecognitionMsg(J)V

    goto :goto_1

    .line 524
    :pswitch_b
    iget-object v0, p0, Lcom/android/internal/policy/impl/FaceVoiceUnlock;->mVoiceUnlockViewCallback:Lcom/android/internal/policy/impl/LockPatternKeyguardView$VoiceUnlockViewCallback;

    iget-object v1, p0, Lcom/android/internal/policy/impl/FaceVoiceUnlock;->mVoiceUnlockView:Lcom/android/internal/policy/impl/FaceVoiceUnlock$VoiceUnlockView;

    invoke-interface {v0, v1}, Lcom/android/internal/policy/impl/LockPatternKeyguardView$VoiceUnlockViewCallback;->removeVoiceUnlockView(Landroid/view/View;)V

    goto :goto_1

    .line 527
    :pswitch_c
    iget-object v0, p0, Lcom/android/internal/policy/impl/FaceVoiceUnlock;->mKeyguardScreenCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    const/16 v1, 0x1b58

    invoke-interface {v0, v1}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->pokeWakelock(I)V

    .line 528
    iget-object v0, p0, Lcom/android/internal/policy/impl/FaceVoiceUnlock;->mVoiceUnlockView:Lcom/android/internal/policy/impl/FaceVoiceUnlock$VoiceUnlockView;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/FaceVoiceUnlock$VoiceUnlockView;->setRecognitionMsg()V

    .line 529
    const-wide/16 v0, 0x1770

    invoke-direct {p0, v0, v1}, Lcom/android/internal/policy/impl/FaceVoiceUnlock;->displayVerifyFailMsgDelayed(J)V

    goto :goto_1

    .line 532
    :pswitch_d
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/FaceVoiceUnlock;->mIsVoiceUnlockOn:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/FaceVoiceUnlock;->mTalkbackEnabled:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/FaceVoiceUnlock;->mWakeUpHandler:Landroid/os/Handler;

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 533
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/FaceVoiceUnlock;->mVoiceUnlockView:Lcom/android/internal/policy/impl/FaceVoiceUnlock$VoiceUnlockView;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/FaceVoiceUnlock$VoiceUnlockView;->setErrorMsg()V

    .line 534
    iget-object v0, p0, Lcom/android/internal/policy/impl/FaceVoiceUnlock;->mKeyguardScreenCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    invoke-interface {v0, v2}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->pokeWakelock(I)V

    goto :goto_1

    .line 537
    :pswitch_e
    iget-object v0, p0, Lcom/android/internal/policy/impl/FaceVoiceUnlock;->mKeyguardScreenCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    invoke-interface {v0, v2}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->pokeWakelock(I)V

    .line 538
    iget-object v0, p0, Lcom/android/internal/policy/impl/FaceVoiceUnlock;->mVoiceUnlockView:Lcom/android/internal/policy/impl/FaceVoiceUnlock$VoiceUnlockView;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/FaceVoiceUnlock$VoiceUnlockView;->setSuccessMsg()V

    goto :goto_1

    .line 541
    :pswitch_f
    iget-object v0, p0, Lcom/android/internal/policy/impl/FaceVoiceUnlock;->mVoiceUnlockView:Lcom/android/internal/policy/impl/FaceVoiceUnlock$VoiceUnlockView;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/FaceVoiceUnlock$VoiceUnlockView;->updateVolumeBg(I)V

    goto/16 :goto_1

    .line 488
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_0
        :pswitch_a
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_b
        :pswitch_f
    .end packed-switch
.end method

.method handlePokeWakelock(I)V
    .locals 1
    .parameter "millis"

    .prologue
    .line 713
    iget-object v0, p0, Lcom/android/internal/policy/impl/FaceVoiceUnlock;->mKeyguardScreenCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    invoke-interface {v0, p1}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->pokeWakelock(I)V

    .line 714
    return-void
.end method

.method handleReportFailedAttempt()V
    .locals 1

    .prologue
    .line 692
    iget-object v0, p0, Lcom/android/internal/policy/impl/FaceVoiceUnlock;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->reportFailedBiometricUnlockAttempt()V

    .line 693
    return-void
.end method

.method handleServiceConnected()V
    .locals 8

    .prologue
    const/4 v4, 0x0

    .line 580
    const-string v0, "FULLockscreen"

    const-string v2, "handleServiceConnected()"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 587
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/FaceVoiceUnlock;->mBoundToService:Z

    if-nez v0, :cond_1

    .line 588
    const-string v0, "FULLockscreen"

    const-string v2, "Dropping startUi() in handleServiceConnected() because no longer bound"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 619
    :cond_0
    :goto_0
    return-void

    .line 593
    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/FaceVoiceUnlock;->mService:Lcom/android/internal/policy/IFaceLockInterface;

    iget-object v2, p0, Lcom/android/internal/policy/impl/FaceVoiceUnlock;->mFaceUnlockCallback:Lcom/android/internal/policy/IFaceLockCallback;

    invoke-interface {v0, v2}, Lcom/android/internal/policy/IFaceLockInterface;->registerCallback(Lcom/android/internal/policy/IFaceLockCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 602
    iget-object v0, p0, Lcom/android/internal/policy/impl/FaceVoiceUnlock;->mFaceUnlockView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 603
    iget-object v0, p0, Lcom/android/internal/policy/impl/FaceVoiceUnlock;->mFaceUnlockView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    .line 604
    .local v1, windowToken:Landroid/os/IBinder;
    if-eqz v1, :cond_2

    .line 608
    iget-object v0, p0, Lcom/android/internal/policy/impl/FaceVoiceUnlock;->mKeyguardScreenCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    invoke-interface {v0}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->pokeWakelock()V

    .line 611
    const/4 v0, 0x2

    new-array v7, v0, [I

    .line 612
    .local v7, position:[I
    iget-object v0, p0, Lcom/android/internal/policy/impl/FaceVoiceUnlock;->mFaceUnlockView:Landroid/view/View;

    invoke-virtual {v0, v7}, Landroid/view/View;->getLocationInWindow([I)V

    .line 613
    aget v2, v7, v4

    const/4 v0, 0x1

    aget v3, v7, v0

    iget-object v0, p0, Lcom/android/internal/policy/impl/FaceVoiceUnlock;->mFaceUnlockView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v4

    iget-object v0, p0, Lcom/android/internal/policy/impl/FaceVoiceUnlock;->mFaceUnlockView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v5

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/policy/impl/FaceVoiceUnlock;->startUi(Landroid/os/IBinder;IIII)V

    goto :goto_0

    .line 594
    .end local v1           #windowToken:Landroid/os/IBinder;
    .end local v7           #position:[I
    :catch_0
    move-exception v6

    .line 595
    .local v6, e:Landroid/os/RemoteException;
    const-string v0, "FULLockscreen"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Caught exception connecting to Face Unlock: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v6}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 596
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/policy/impl/FaceVoiceUnlock;->mService:Lcom/android/internal/policy/IFaceLockInterface;

    .line 597
    iput-boolean v4, p0, Lcom/android/internal/policy/impl/FaceVoiceUnlock;->mBoundToService:Z

    .line 598
    iput-boolean v4, p0, Lcom/android/internal/policy/impl/FaceVoiceUnlock;->mIsRunning:Z

    goto :goto_0

    .line 616
    .end local v6           #e:Landroid/os/RemoteException;
    .restart local v1       #windowToken:Landroid/os/IBinder;
    :cond_2
    const-string v0, "FULLockscreen"

    const-string v2, "windowToken is null in handleServiceConnected()"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method handleServiceDisconnected()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 626
    const-string v0, "FULLockscreen"

    const-string v1, "handleServiceDisconnected()"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 629
    iget-object v1, p0, Lcom/android/internal/policy/impl/FaceVoiceUnlock;->mServiceRunningLock:Ljava/lang/Object;

    monitor-enter v1

    .line 630
    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Lcom/android/internal/policy/impl/FaceVoiceUnlock;->mService:Lcom/android/internal/policy/IFaceLockInterface;

    .line 631
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/FaceVoiceUnlock;->mServiceRunning:Z

    .line 632
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 633
    iput-boolean v2, p0, Lcom/android/internal/policy/impl/FaceVoiceUnlock;->mBoundToService:Z

    .line 634
    iput-boolean v2, p0, Lcom/android/internal/policy/impl/FaceVoiceUnlock;->mIsRunning:Z

    .line 635
    return-void

    .line 632
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method handleShowFaceUnlockView()V
    .locals 2

    .prologue
    .line 556
    iget-object v0, p0, Lcom/android/internal/policy/impl/FaceVoiceUnlock;->mFaceUnlockView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 557
    iget-object v0, p0, Lcom/android/internal/policy/impl/FaceVoiceUnlock;->mFaceUnlockView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 561
    :goto_0
    return-void

    .line 559
    :cond_0
    const-string v0, "FULLockscreen"

    const-string v1, "mFaceUnlockView is null in handleShowFaceUnlockView()"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method handleUnlock()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 643
    invoke-direct {p0}, Lcom/android/internal/policy/impl/FaceVoiceUnlock;->removeDisplayMessages()V

    .line 644
    iget-object v0, p0, Lcom/android/internal/policy/impl/FaceVoiceUnlock;->mFaceUnlockView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 645
    iget-object v0, p0, Lcom/android/internal/policy/impl/FaceVoiceUnlock;->mFaceUnlockView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 650
    :goto_0
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/FaceVoiceUnlock;->mIsVoiceUnlockOn:Z

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/FaceVoiceUnlock;->mTalkbackEnabled:Z

    if-nez v0, :cond_3

    .line 651
    iput-boolean v2, p0, Lcom/android/internal/policy/impl/FaceVoiceUnlock;->mFaceUnlocked:Z

    .line 652
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/FaceVoiceUnlock;->mWakeUnlocked:Z

    if-nez v0, :cond_2

    .line 653
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/FaceVoiceUnlock;->stopFaceLock()Z

    .line 654
    iget-object v0, p0, Lcom/android/internal/policy/impl/FaceVoiceUnlock;->mFaceUnlockView:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 655
    iget-object v0, p0, Lcom/android/internal/policy/impl/FaceVoiceUnlock;->mFaceUnlockView:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 659
    :goto_1
    iget-object v0, p0, Lcom/android/internal/policy/impl/FaceVoiceUnlock;->mKeyguardScreenCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    const/16 v1, 0x1388

    invoke-interface {v0, v1}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->pokeWakelock(I)V

    .line 660
    invoke-direct {p0}, Lcom/android/internal/policy/impl/FaceVoiceUnlock;->displayPrepareMsg()V

    .line 671
    :goto_2
    return-void

    .line 647
    :cond_0
    const-string v0, "FULLockscreen"

    const-string v1, "mFaceUnlockView is null in handleUnlock()"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 657
    :cond_1
    const-string v0, "FULLockscreen"

    const-string v1, "mFaceUnlockView is null in handleUnlock()"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 663
    :cond_2
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/FaceVoiceUnlock;->stop()Z

    .line 669
    :goto_3
    iget-object v0, p0, Lcom/android/internal/policy/impl/FaceVoiceUnlock;->mKeyguardScreenCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    invoke-interface {v0, v2}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->keyguardDone(Z)V

    .line 670
    iget-object v0, p0, Lcom/android/internal/policy/impl/FaceVoiceUnlock;->mKeyguardScreenCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    invoke-interface {v0}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->reportSuccessfulUnlockAttempt()V

    goto :goto_2

    .line 666
    :cond_3
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/FaceVoiceUnlock;->stop()Z

    goto :goto_3
.end method

.method public hide()V
    .locals 2

    .prologue
    .line 333
    invoke-direct {p0}, Lcom/android/internal/policy/impl/FaceVoiceUnlock;->removeDisplayMessages()V

    .line 334
    iget-object v0, p0, Lcom/android/internal/policy/impl/FaceVoiceUnlock;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 335
    return-void
.end method

.method public initializeView(Landroid/view/View;)V
    .locals 2
    .parameter "biometricUnlockView"

    .prologue
    .line 297
    const-string v0, "FULLockscreen"

    const-string v1, "initializeView()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 298
    iput-object p1, p0, Lcom/android/internal/policy/impl/FaceVoiceUnlock;->mFaceUnlockView:Landroid/view/View;

    .line 299
    return-void
.end method

.method public isRunning()Z
    .locals 1

    .prologue
    .line 305
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/FaceVoiceUnlock;->mIsRunning:Z

    return v0
.end method

.method public show(J)V
    .locals 2
    .parameter "timeoutMillis"

    .prologue
    .line 314
    iget-object v0, p0, Lcom/android/internal/policy/impl/FaceVoiceUnlock;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 315
    const-string v0, "FULLockscreen"

    const-string v1, "show() called off of the UI thread"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 318
    :cond_0
    invoke-direct {p0}, Lcom/android/internal/policy/impl/FaceVoiceUnlock;->removeDisplayMessages()V

    .line 319
    iget-object v0, p0, Lcom/android/internal/policy/impl/FaceVoiceUnlock;->mFaceUnlockView:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 320
    iget-object v0, p0, Lcom/android/internal/policy/impl/FaceVoiceUnlock;->mFaceUnlockView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 322
    :cond_1
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-lez v0, :cond_2

    .line 323
    iget-object v0, p0, Lcom/android/internal/policy/impl/FaceVoiceUnlock;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 325
    :cond_2
    return-void
.end method

.method public start()Z
    .locals 5

    .prologue
    const/4 v2, 0x0

    const/4 v4, 0x1

    .line 344
    iget-object v0, p0, Lcom/android/internal/policy/impl/FaceVoiceUnlock;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 345
    const-string v0, "FULLockscreen"

    const-string v1, "start() called off of the UI thread"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 348
    :cond_0
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/FaceVoiceUnlock;->mIsRunning:Z

    if-eqz v0, :cond_1

    .line 349
    const-string v0, "FULLockscreen"

    const-string v1, "start() called when already running"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 352
    :cond_1
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/FaceVoiceUnlock;->mIsVoiceUnlockOn:Z

    if-eqz v0, :cond_2

    .line 353
    iput-boolean v2, p0, Lcom/android/internal/policy/impl/FaceVoiceUnlock;->mFaceUnlocked:Z

    .line 354
    iput-boolean v2, p0, Lcom/android/internal/policy/impl/FaceVoiceUnlock;->mWakeUnlocked:Z

    .line 360
    :cond_2
    const-wide/16 v0, 0xbb8

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/policy/impl/FaceVoiceUnlock;->show(J)V

    .line 361
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/FaceVoiceUnlock;->mBoundToService:Z

    if-nez v0, :cond_3

    .line 362
    const-string v0, "FULLockscreen"

    const-string v1, "Binding to Face Unlock service"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 363
    iget-object v0, p0, Lcom/android/internal/policy/impl/FaceVoiceUnlock;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/android/internal/policy/IFaceLockInterface;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/internal/policy/impl/FaceVoiceUnlock;->mConnection:Landroid/content/ServiceConnection;

    iget-object v3, p0, Lcom/android/internal/policy/impl/FaceVoiceUnlock;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v3}, Lcom/android/internal/widget/LockPatternUtils;->getCurrentUser()I

    move-result v3

    invoke-virtual {v0, v1, v2, v4, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;II)Z

    .line 367
    iput-boolean v4, p0, Lcom/android/internal/policy/impl/FaceVoiceUnlock;->mBoundToService:Z

    .line 372
    :goto_0
    iput-boolean v4, p0, Lcom/android/internal/policy/impl/FaceVoiceUnlock;->mIsRunning:Z

    .line 373
    return v4

    .line 369
    :cond_3
    const-string v0, "FULLockscreen"

    const-string v1, "Attempt to bind to Face Unlock when already bound"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public stop()Z
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 381
    iget-object v1, p0, Lcom/android/internal/policy/impl/FaceVoiceUnlock;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v2

    if-eq v1, v2, :cond_0

    .line 382
    const-string v1, "FULLockscreen"

    const-string v2, "stop() called off of the UI thread"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 385
    :cond_0
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/FaceVoiceUnlock;->mIsVoiceUnlockOn:Z

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/android/internal/policy/impl/FaceVoiceUnlock;->mTalkbackEnabled:Z

    if-nez v1, :cond_1

    .line 387
    iget-object v1, p0, Lcom/android/internal/policy/impl/FaceVoiceUnlock;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 388
    invoke-direct {p0}, Lcom/android/internal/policy/impl/FaceVoiceUnlock;->hideVoiceLayout()V

    .line 389
    iget-object v1, p0, Lcom/android/internal/policy/impl/FaceVoiceUnlock;->mWakeUpHandler:Landroid/os/Handler;

    const/16 v2, 0xc

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 394
    :cond_1
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/FaceVoiceUnlock;->mIsRunning:Z

    .line 395
    .local v0, mWasRunning:Z
    invoke-direct {p0}, Lcom/android/internal/policy/impl/FaceVoiceUnlock;->stopUi()V

    .line 397
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/FaceVoiceUnlock;->mBoundToService:Z

    if-eqz v1, :cond_3

    .line 398
    iget-object v1, p0, Lcom/android/internal/policy/impl/FaceVoiceUnlock;->mService:Lcom/android/internal/policy/IFaceLockInterface;

    if-eqz v1, :cond_2

    .line 400
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/FaceVoiceUnlock;->mService:Lcom/android/internal/policy/IFaceLockInterface;

    iget-object v2, p0, Lcom/android/internal/policy/impl/FaceVoiceUnlock;->mFaceUnlockCallback:Lcom/android/internal/policy/IFaceLockCallback;

    invoke-interface {v1, v2}, Lcom/android/internal/policy/IFaceLockInterface;->unregisterCallback(Lcom/android/internal/policy/IFaceLockCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 405
    :cond_2
    :goto_0
    const-string v1, "FULLockscreen"

    const-string v2, "Unbinding from Face Unlock service"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 406
    iget-object v1, p0, Lcom/android/internal/policy/impl/FaceVoiceUnlock;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/internal/policy/impl/FaceVoiceUnlock;->mConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 407
    iput-boolean v3, p0, Lcom/android/internal/policy/impl/FaceVoiceUnlock;->mBoundToService:Z

    .line 414
    :cond_3
    iput-boolean v3, p0, Lcom/android/internal/policy/impl/FaceVoiceUnlock;->mIsRunning:Z

    .line 415
    return v0

    .line 401
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public stopFaceLock()Z
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 423
    iget-object v1, p0, Lcom/android/internal/policy/impl/FaceVoiceUnlock;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v2

    if-eq v1, v2, :cond_0

    .line 424
    const-string v1, "FULLockscreen"

    const-string v2, "stop() called off of the UI thread"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 427
    :cond_0
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/FaceVoiceUnlock;->mIsRunning:Z

    .line 428
    .local v0, mWasRunning:Z
    invoke-direct {p0}, Lcom/android/internal/policy/impl/FaceVoiceUnlock;->stopUi()V

    .line 430
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/FaceVoiceUnlock;->mBoundToService:Z

    if-eqz v1, :cond_2

    .line 431
    iget-object v1, p0, Lcom/android/internal/policy/impl/FaceVoiceUnlock;->mService:Lcom/android/internal/policy/IFaceLockInterface;

    if-eqz v1, :cond_1

    .line 433
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/FaceVoiceUnlock;->mService:Lcom/android/internal/policy/IFaceLockInterface;

    iget-object v2, p0, Lcom/android/internal/policy/impl/FaceVoiceUnlock;->mFaceUnlockCallback:Lcom/android/internal/policy/IFaceLockCallback;

    invoke-interface {v1, v2}, Lcom/android/internal/policy/IFaceLockInterface;->unregisterCallback(Lcom/android/internal/policy/IFaceLockCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 438
    :cond_1
    :goto_0
    const-string v1, "FULLockscreen"

    const-string v2, "Unbinding from Face Unlock service"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 439
    iget-object v1, p0, Lcom/android/internal/policy/impl/FaceVoiceUnlock;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/internal/policy/impl/FaceVoiceUnlock;->mConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 440
    iput-boolean v3, p0, Lcom/android/internal/policy/impl/FaceVoiceUnlock;->mBoundToService:Z

    .line 447
    :cond_2
    iput-boolean v3, p0, Lcom/android/internal/policy/impl/FaceVoiceUnlock;->mIsRunning:Z

    .line 448
    return v0

    .line 434
    :catch_0
    move-exception v1

    goto :goto_0
.end method
