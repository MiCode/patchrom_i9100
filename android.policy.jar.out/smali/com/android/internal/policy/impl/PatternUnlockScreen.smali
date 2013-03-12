.class Lcom/android/internal/policy/impl/PatternUnlockScreen;
.super Lcom/android/internal/widget/LinearLayoutWithDefaultTouchRecepient;
.source "PatternUnlockScreen.java"

# interfaces
.implements Lcom/android/internal/policy/impl/KeyguardScreen;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/policy/impl/PatternUnlockScreen$4;,
        Lcom/android/internal/policy/impl/PatternUnlockScreen$UnlockPatternListener;,
        Lcom/android/internal/policy/impl/PatternUnlockScreen$FooterMode;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final MIN_PATTERN_BEFORE_POKE_WAKELOCK:I = 0x2

.field private static final PATTERN_CLEAR_TIMEOUT_MS:I = 0x7d0

.field private static final TAG:Ljava/lang/String; = "UnlockScreen"

.field private static final UNLOCK_PATTERN_WAKE_INTERVAL_FIRST_DOTS_MS:I = 0x7d0

.field private static final UNLOCK_PATTERN_WAKE_INTERVAL_MS:I = 0x1b58


# instance fields
.field private mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

.field private mCancelPatternRunnable:Ljava/lang/Runnable;

.field private mCountdownTimer:Landroid/os/CountDownTimer;

.field private mCreationOrientation:I

.field private mEnableFallback:Z

.field private mEnableSparePassword:Z

.field private mFailedPatternAttemptsSinceLastTimeout:I

.field private mForgotPatternButton:Landroid/widget/Button;

.field private final mForgotPatternClick:Landroid/view/View$OnClickListener;

.field private mIsOnehand:Z

.field private mKeyguardStatusViewManager:Lcom/android/internal/policy/impl/KeyguardStatusViewManager;

.field private mLastPokeTime:J

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mLockPatternView:Lcom/android/internal/widget/LockPatternView;

.field private mTotalFailedPatternAttempts:I

.field private mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/content/res/Configuration;Lcom/android/internal/widget/LockPatternUtils;Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;Lcom/android/internal/policy/impl/KeyguardScreenCallback;I)V
    .locals 9
    .parameter "context"
    .parameter "configuration"
    .parameter "lockPatternUtils"
    .parameter "updateMonitor"
    .parameter "callback"
    .parameter "totalFailedAttempts"

    .prologue
    const/4 v8, 0x0

    const v2, 0x1090151

    const/4 v7, 0x0

    const/4 v5, 0x1

    .line 172
    invoke-direct {p0, p1}, Lcom/android/internal/widget/LinearLayoutWithDefaultTouchRecepient;-><init>(Landroid/content/Context;)V

    .line 65
    iput v7, p0, Lcom/android/internal/policy/impl/PatternUnlockScreen;->mFailedPatternAttemptsSinceLastTimeout:I

    .line 66
    iput v7, p0, Lcom/android/internal/policy/impl/PatternUnlockScreen;->mTotalFailedPatternAttempts:I

    .line 67
    iput-object v8, p0, Lcom/android/internal/policy/impl/PatternUnlockScreen;->mCountdownTimer:Landroid/os/CountDownTimer;

    .line 77
    iput-boolean v7, p0, Lcom/android/internal/policy/impl/PatternUnlockScreen;->mEnableSparePassword:Z

    .line 78
    iput-boolean v7, p0, Lcom/android/internal/policy/impl/PatternUnlockScreen;->mIsOnehand:Z

    .line 89
    const-wide/16 v0, -0x1b58

    iput-wide v0, p0, Lcom/android/internal/policy/impl/PatternUnlockScreen;->mLastPokeTime:J

    .line 94
    new-instance v0, Lcom/android/internal/policy/impl/PatternUnlockScreen$1;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/PatternUnlockScreen$1;-><init>(Lcom/android/internal/policy/impl/PatternUnlockScreen;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/PatternUnlockScreen;->mCancelPatternRunnable:Ljava/lang/Runnable;

    .line 100
    new-instance v0, Lcom/android/internal/policy/impl/PatternUnlockScreen$2;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/PatternUnlockScreen$2;-><init>(Lcom/android/internal/policy/impl/PatternUnlockScreen;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/PatternUnlockScreen;->mForgotPatternClick:Landroid/view/View$OnClickListener;

    .line 173
    iput-object p3, p0, Lcom/android/internal/policy/impl/PatternUnlockScreen;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 174
    iput-object p4, p0, Lcom/android/internal/policy/impl/PatternUnlockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    .line 175
    iput-object p5, p0, Lcom/android/internal/policy/impl/PatternUnlockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    .line 176
    iput p6, p0, Lcom/android/internal/policy/impl/PatternUnlockScreen;->mTotalFailedPatternAttempts:I

    .line 177
    rem-int/lit8 v0, p6, 0x5

    iput v0, p0, Lcom/android/internal/policy/impl/PatternUnlockScreen;->mFailedPatternAttemptsSinceLastTimeout:I

    .line 186
    iget v0, p2, Landroid/content/res/Configuration;->orientation:I

    iput v0, p0, Lcom/android/internal/policy/impl/PatternUnlockScreen;->mCreationOrientation:I

    .line 188
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v6

    .line 189
    .local v6, inflater:Landroid/view/LayoutInflater;
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "onehand_pattern_enabled"

    invoke-static {v0, v1, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v5, :cond_2

    move v0, v5

    :goto_0
    iput-boolean v0, p0, Lcom/android/internal/policy/impl/PatternUnlockScreen;->mIsOnehand:Z

    .line 191
    iget v0, p0, Lcom/android/internal/policy/impl/PatternUnlockScreen;->mCreationOrientation:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_7

    .line 192
    invoke-static {}, Lcom/android/internal/policy/impl/sec/SamsungLockScreenProperties;->isEmergencyCircleEnable()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 193
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PatternUnlockScreen;->mIsOnehand:Z

    if-eqz v0, :cond_3

    .line 194
    const v0, 0x1090152

    invoke-virtual {v6, v0, p0, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 222
    :goto_1
    new-instance v0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;

    iget-object v2, p0, Lcom/android/internal/policy/impl/PatternUnlockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    iget-object v3, p0, Lcom/android/internal/policy/impl/PatternUnlockScreen;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget-object v4, p0, Lcom/android/internal/policy/impl/PatternUnlockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;-><init>(Landroid/view/View;Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;Lcom/android/internal/widget/LockPatternUtils;Lcom/android/internal/policy/impl/KeyguardScreenCallback;Z)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/PatternUnlockScreen;->mKeyguardStatusViewManager:Lcom/android/internal/policy/impl/KeyguardStatusViewManager;

    .line 225
    const v0, 0x1020382

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/PatternUnlockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/LockPatternView;

    iput-object v0, p0, Lcom/android/internal/policy/impl/PatternUnlockScreen;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    .line 227
    const v0, 0x1020381

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/PatternUnlockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/internal/policy/impl/PatternUnlockScreen;->mForgotPatternButton:Landroid/widget/Button;

    .line 228
    iget-object v0, p0, Lcom/android/internal/policy/impl/PatternUnlockScreen;->mForgotPatternButton:Landroid/widget/Button;

    const v1, 0x1040416

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 229
    iget-object v0, p0, Lcom/android/internal/policy/impl/PatternUnlockScreen;->mForgotPatternButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/android/internal/policy/impl/PatternUnlockScreen;->mForgotPatternClick:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 233
    iget-object v0, p0, Lcom/android/internal/policy/impl/PatternUnlockScreen;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/PatternUnlockScreen;->setDefaultTouchRecepient(Landroid/view/View;)V

    .line 235
    iget-object v0, p0, Lcom/android/internal/policy/impl/PatternUnlockScreen;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    invoke-virtual {v0, v7}, Lcom/android/internal/widget/LockPatternView;->setSaveEnabled(Z)V

    .line 236
    iget-object v0, p0, Lcom/android/internal/policy/impl/PatternUnlockScreen;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    invoke-virtual {v0, v7}, Lcom/android/internal/widget/LockPatternView;->setFocusable(Z)V

    .line 237
    iget-object v0, p0, Lcom/android/internal/policy/impl/PatternUnlockScreen;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    new-instance v1, Lcom/android/internal/policy/impl/PatternUnlockScreen$UnlockPatternListener;

    invoke-direct {v1, p0, v8}, Lcom/android/internal/policy/impl/PatternUnlockScreen$UnlockPatternListener;-><init>(Lcom/android/internal/policy/impl/PatternUnlockScreen;Lcom/android/internal/policy/impl/PatternUnlockScreen$1;)V

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternView;->setOnPatternListener(Lcom/android/internal/widget/LockPatternView$OnPatternListener;)V

    .line 240
    iget-object v0, p0, Lcom/android/internal/policy/impl/PatternUnlockScreen;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    iget-object v1, p0, Lcom/android/internal/policy/impl/PatternUnlockScreen;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v1}, Lcom/android/internal/widget/LockPatternUtils;->isVisiblePatternEnabled()Z

    move-result v1

    if-nez v1, :cond_0

    move v7, v5

    :cond_0
    invoke-virtual {v0, v7}, Lcom/android/internal/widget/LockPatternView;->setInStealthMode(Z)V

    .line 243
    iget-object v0, p0, Lcom/android/internal/policy/impl/PatternUnlockScreen;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    iget-object v1, p0, Lcom/android/internal/policy/impl/PatternUnlockScreen;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v1}, Lcom/android/internal/widget/LockPatternUtils;->isTactileFeedbackEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternView;->setTactileFeedbackEnabled(Z)V

    .line 246
    sget-object v0, Lcom/android/internal/policy/impl/PatternUnlockScreen$FooterMode;->Normal:Lcom/android/internal/policy/impl/PatternUnlockScreen$FooterMode;

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/PatternUnlockScreen;->updateFooter(Lcom/android/internal/policy/impl/PatternUnlockScreen$FooterMode;)V

    .line 248
    invoke-virtual {p0, v5}, Lcom/android/internal/policy/impl/PatternUnlockScreen;->setFocusableInTouchMode(Z)V

    .line 249
    const/high16 v0, 0x4c00

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/PatternUnlockScreen;->setBackgroundColor(I)V

    .line 252
    invoke-direct {p0}, Lcom/android/internal/policy/impl/PatternUnlockScreen;->isDeviceDisabledForMaxFailedAttempt()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 253
    invoke-direct {p0}, Lcom/android/internal/policy/impl/PatternUnlockScreen;->disableDevicePermanently()V

    .line 255
    :cond_1
    return-void

    :cond_2
    move v0, v7

    .line 189
    goto/16 :goto_0

    .line 196
    :cond_3
    invoke-virtual {v6, v2, p0, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    goto/16 :goto_1

    .line 198
    :cond_4
    invoke-static {}, Lcom/android/internal/policy/impl/sec/SamsungLockScreenProperties;->isDualClockTablet()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 199
    const v0, 0x1090149

    invoke-virtual {v6, v0, p0, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    goto/16 :goto_1

    .line 201
    :cond_5
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PatternUnlockScreen;->mIsOnehand:Z

    if-eqz v0, :cond_6

    .line 202
    const-string v0, "UnlockScreen"

    const-string v1, "portrait mode[apply One Hand Operation]"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    const v0, 0x109008c

    invoke-virtual {v6, v0, p0, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    goto/16 :goto_1

    .line 205
    :cond_6
    const-string v0, "UnlockScreen"

    const-string v1, "portrait mode"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    const v0, 0x109008b

    invoke-virtual {v6, v0, p0, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    goto/16 :goto_1

    .line 210
    :cond_7
    const-string v0, "UnlockScreen"

    const-string v1, "landscape mode"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    invoke-static {}, Lcom/android/internal/policy/impl/sec/SamsungLockScreenProperties;->isEmergencyCircleEnable()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-static {}, Lcom/android/internal/policy/impl/sec/SamsungLockScreenProperties;->isKoreaCameraModel()Z

    move-result v0

    if-nez v0, :cond_8

    .line 212
    invoke-virtual {v6, v2, p0, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    goto/16 :goto_1

    .line 213
    :cond_8
    invoke-static {}, Lcom/android/internal/policy/impl/sec/SamsungLockScreenProperties;->isKoreaCameraModel()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 214
    const v0, 0x1090150

    invoke-virtual {v6, v0, p0, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    goto/16 :goto_1

    .line 215
    :cond_9
    invoke-static {}, Lcom/android/internal/policy/impl/sec/SamsungLockScreenProperties;->isDualClockTablet()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 216
    const v0, 0x1090148

    invoke-virtual {v6, v0, p0, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    goto/16 :goto_1

    .line 218
    :cond_a
    const v0, 0x109008a

    invoke-virtual {v6, v0, p0, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    goto/16 :goto_1
.end method

.method static synthetic access$000(Lcom/android/internal/policy/impl/PatternUnlockScreen;)Lcom/android/internal/widget/LockPatternView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 47
    iget-object v0, p0, Lcom/android/internal/policy/impl/PatternUnlockScreen;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/internal/policy/impl/PatternUnlockScreen;)Lcom/android/internal/policy/impl/KeyguardScreenCallback;
    .locals 1
    .parameter "x0"

    .prologue
    .line 47
    iget-object v0, p0, Lcom/android/internal/policy/impl/PatternUnlockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/internal/policy/impl/PatternUnlockScreen;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/android/internal/policy/impl/PatternUnlockScreen;->disableDevicePermanently()V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/internal/policy/impl/PatternUnlockScreen;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 47
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PatternUnlockScreen;->mEnableFallback:Z

    return v0
.end method

.method static synthetic access$1200(Lcom/android/internal/policy/impl/PatternUnlockScreen;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 47
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PatternUnlockScreen;->mEnableSparePassword:Z

    return v0
.end method

.method static synthetic access$1300(Lcom/android/internal/policy/impl/PatternUnlockScreen;Lcom/android/internal/policy/impl/PatternUnlockScreen$FooterMode;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 47
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/PatternUnlockScreen;->updateFooter(Lcom/android/internal/policy/impl/PatternUnlockScreen$FooterMode;)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/internal/policy/impl/PatternUnlockScreen;)Ljava/lang/Runnable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 47
    iget-object v0, p0, Lcom/android/internal/policy/impl/PatternUnlockScreen;->mCancelPatternRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/internal/policy/impl/PatternUnlockScreen;)Lcom/android/internal/widget/LockPatternUtils;
    .locals 1
    .parameter "x0"

    .prologue
    .line 47
    iget-object v0, p0, Lcom/android/internal/policy/impl/PatternUnlockScreen;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/internal/policy/impl/PatternUnlockScreen;)Lcom/android/internal/policy/impl/KeyguardStatusViewManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 47
    iget-object v0, p0, Lcom/android/internal/policy/impl/PatternUnlockScreen;->mKeyguardStatusViewManager:Lcom/android/internal/policy/impl/KeyguardStatusViewManager;

    return-object v0
.end method

.method static synthetic access$608(Lcom/android/internal/policy/impl/PatternUnlockScreen;)I
    .locals 2
    .parameter "x0"

    .prologue
    .line 47
    iget v0, p0, Lcom/android/internal/policy/impl/PatternUnlockScreen;->mTotalFailedPatternAttempts:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/internal/policy/impl/PatternUnlockScreen;->mTotalFailedPatternAttempts:I

    return v0
.end method

.method static synthetic access$700(Lcom/android/internal/policy/impl/PatternUnlockScreen;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 47
    iget v0, p0, Lcom/android/internal/policy/impl/PatternUnlockScreen;->mFailedPatternAttemptsSinceLastTimeout:I

    return v0
.end method

.method static synthetic access$702(Lcom/android/internal/policy/impl/PatternUnlockScreen;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 47
    iput p1, p0, Lcom/android/internal/policy/impl/PatternUnlockScreen;->mFailedPatternAttemptsSinceLastTimeout:I

    return p1
.end method

.method static synthetic access$708(Lcom/android/internal/policy/impl/PatternUnlockScreen;)I
    .locals 2
    .parameter "x0"

    .prologue
    .line 47
    iget v0, p0, Lcom/android/internal/policy/impl/PatternUnlockScreen;->mFailedPatternAttemptsSinceLastTimeout:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/internal/policy/impl/PatternUnlockScreen;->mFailedPatternAttemptsSinceLastTimeout:I

    return v0
.end method

.method static synthetic access$800(Lcom/android/internal/policy/impl/PatternUnlockScreen;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/android/internal/policy/impl/PatternUnlockScreen;->isDeviceDisabledForMaxFailedAttempt()Z

    move-result v0

    return v0
.end method

.method static synthetic access$900(Lcom/android/internal/policy/impl/PatternUnlockScreen;J)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 47
    invoke-direct {p0, p1, p2}, Lcom/android/internal/policy/impl/PatternUnlockScreen;->handleAttemptLockout(J)V

    return-void
.end method

.method private disableDevicePermanently()V
    .locals 2

    .prologue
    .line 520
    const-string v0, "UnlockScreen"

    const-string v1, "disableDevicePermanently start"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 522
    iget-object v0, p0, Lcom/android/internal/policy/impl/PatternUnlockScreen;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternView;->clearPattern()V

    .line 523
    iget-object v0, p0, Lcom/android/internal/policy/impl/PatternUnlockScreen;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternView;->setEnabled(Z)V

    .line 525
    return-void
.end method

.method private handleAttemptLockout(J)V
    .locals 9
    .parameter "elapsedRealtimeDeadline"

    .prologue
    .line 465
    iget-object v0, p0, Lcom/android/internal/policy/impl/PatternUnlockScreen;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternView;->clearPattern()V

    .line 466
    iget-object v0, p0, Lcom/android/internal/policy/impl/PatternUnlockScreen;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternView;->setEnabled(Z)V

    .line 467
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v7

    .line 468
    .local v7, elapsedRealtime:J
    iget-object v0, p0, Lcom/android/internal/policy/impl/PatternUnlockScreen;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternUtils;->savedSparePasswordExists()Z

    move-result v6

    .line 469
    .local v6, IsSparePasswordExist:Z
    new-instance v0, Lcom/android/internal/policy/impl/PatternUnlockScreen$3;

    sub-long v2, p1, v7

    const-wide/16 v4, 0x3e8

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/policy/impl/PatternUnlockScreen$3;-><init>(Lcom/android/internal/policy/impl/PatternUnlockScreen;JJ)V

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/PatternUnlockScreen$3;->start()Landroid/os/CountDownTimer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/PatternUnlockScreen;->mCountdownTimer:Landroid/os/CountDownTimer;

    .line 496
    return-void
.end method

.method private hideForgotPatternButton()V
    .locals 3

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 116
    iget-object v0, p0, Lcom/android/internal/policy/impl/PatternUnlockScreen;->mForgotPatternButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 118
    invoke-static {}, Lcom/android/internal/policy/impl/sec/SamsungLockScreenProperties;->isEmergencyCircleEnable()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/internal/policy/impl/sec/SamsungLockScreenProperties;->isKoreaCameraModel()Z

    move-result v0

    if-nez v0, :cond_0

    .line 119
    iget-object v0, p0, Lcom/android/internal/policy/impl/PatternUnlockScreen;->mKeyguardStatusViewManager:Lcom/android/internal/policy/impl/KeyguardStatusViewManager;

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->setVisibilityEmergencyText(I)V

    .line 120
    iget-object v0, p0, Lcom/android/internal/policy/impl/PatternUnlockScreen;->mKeyguardStatusViewManager:Lcom/android/internal/policy/impl/KeyguardStatusViewManager;

    invoke-virtual {v0, v2}, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->setVisibilityEmergencyCallButton(I)V

    .line 125
    :goto_0
    return-void

    .line 122
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/PatternUnlockScreen;->mKeyguardStatusViewManager:Lcom/android/internal/policy/impl/KeyguardStatusViewManager;

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->updateICELayoutState(Z)V

    goto :goto_0
.end method

.method private isDeviceDisabledForMaxFailedAttempt()Z
    .locals 7

    .prologue
    .line 501
    const/4 v2, 0x0

    .line 502
    .local v2, lDeviceDisableForMaxFailedAttempt:Z
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PatternUnlockScreen;->getContext()Landroid/content/Context;

    move-result-object v4

    const-string v5, "enterprise_policy"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 504
    .local v0, edm:Landroid/app/enterprise/EnterpriseDeviceManager;
    invoke-virtual {v0}, Landroid/app/enterprise/EnterpriseDeviceManager;->getPasswordPolicy()Landroid/app/enterprise/PasswordPolicy;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/enterprise/PasswordPolicy;->getMaximumFailedPasswordsForDeviceDisable()I

    move-result v3

    .line 505
    .local v3, lMaxNumFailedAttemptForDisable:I
    const-string v4, "UnlockScreen"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "max failed attempt for device disable :"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 507
    if-lez v3, :cond_0

    .line 509
    invoke-virtual {v0}, Landroid/app/enterprise/EnterpriseDeviceManager;->getCurrentFailedPasswordAttempts()I

    move-result v1

    .line 510
    .local v1, lCurNumFailedAttempts:I
    const-string v4, "UnlockScreen"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "current failed attempt for device  :"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 511
    if-lt v1, v3, :cond_1

    const/4 v2, 0x1

    .line 514
    .end local v1           #lCurNumFailedAttempts:I
    :cond_0
    :goto_0
    const-string v4, "UnlockScreen"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "isDeviceDisabledForMaxFailedAttempt return :"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 515
    return v2

    .line 511
    .restart local v1       #lCurNumFailedAttempts:I
    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private showForgotPatternButton()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 128
    iget-object v0, p0, Lcom/android/internal/policy/impl/PatternUnlockScreen;->mForgotPatternButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 130
    invoke-static {}, Lcom/android/internal/policy/impl/sec/SamsungLockScreenProperties;->isEmergencyCircleEnable()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/android/internal/policy/impl/sec/SamsungLockScreenProperties;->isKoreaCameraModel()Z

    move-result v0

    if-nez v0, :cond_1

    .line 131
    iget-object v0, p0, Lcom/android/internal/policy/impl/PatternUnlockScreen;->mKeyguardStatusViewManager:Lcom/android/internal/policy/impl/KeyguardStatusViewManager;

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->setVisibilityEmergencyCallButton(I)V

    .line 132
    iget-object v0, p0, Lcom/android/internal/policy/impl/PatternUnlockScreen;->mKeyguardStatusViewManager:Lcom/android/internal/policy/impl/KeyguardStatusViewManager;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->setVisibilityEmergencyText(I)V

    .line 133
    iget-object v0, p0, Lcom/android/internal/policy/impl/PatternUnlockScreen;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/PatternUnlockScreen;->mKeyguardStatusViewManager:Lcom/android/internal/policy/impl/KeyguardStatusViewManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/PatternUnlockScreen;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget-object v1, p0, Lcom/android/internal/policy/impl/PatternUnlockScreen;->mKeyguardStatusViewManager:Lcom/android/internal/policy/impl/KeyguardStatusViewManager;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->getEmergencyCallButton()Landroid/widget/Button;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->updateEmergencyCallButtonState(Landroid/widget/Button;)V

    .line 138
    :cond_0
    :goto_0
    return-void

    .line 135
    :cond_1
    iget-object v0, p0, Lcom/android/internal/policy/impl/PatternUnlockScreen;->mKeyguardStatusViewManager:Lcom/android/internal/policy/impl/KeyguardStatusViewManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->updateICELayoutState(Z)V

    goto :goto_0
.end method

.method private updateFooter(Lcom/android/internal/policy/impl/PatternUnlockScreen$FooterMode;)V
    .locals 2
    .parameter "mode"

    .prologue
    .line 141
    sget-object v0, Lcom/android/internal/policy/impl/PatternUnlockScreen$4;->$SwitchMap$com$android$internal$policy$impl$PatternUnlockScreen$FooterMode:[I

    invoke-virtual {p1}, Lcom/android/internal/policy/impl/PatternUnlockScreen$FooterMode;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 154
    :goto_0
    return-void

    .line 144
    :pswitch_0
    invoke-direct {p0}, Lcom/android/internal/policy/impl/PatternUnlockScreen;->hideForgotPatternButton()V

    goto :goto_0

    .line 148
    :pswitch_1
    invoke-direct {p0}, Lcom/android/internal/policy/impl/PatternUnlockScreen;->showForgotPatternButton()V

    goto :goto_0

    .line 152
    :pswitch_2
    invoke-direct {p0}, Lcom/android/internal/policy/impl/PatternUnlockScreen;->hideForgotPatternButton()V

    goto :goto_0

    .line 141
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method public cleanUp()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 374
    iget-object v0, p0, Lcom/android/internal/policy/impl/PatternUnlockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v0, p0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->removeCallback(Ljava/lang/Object;)V

    .line 375
    iput-object v1, p0, Lcom/android/internal/policy/impl/PatternUnlockScreen;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 376
    iput-object v1, p0, Lcom/android/internal/policy/impl/PatternUnlockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    .line 377
    iput-object v1, p0, Lcom/android/internal/policy/impl/PatternUnlockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    .line 378
    iget-object v0, p0, Lcom/android/internal/policy/impl/PatternUnlockScreen;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternView;->setOnPatternListener(Lcom/android/internal/widget/LockPatternView$OnPatternListener;)V

    .line 379
    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5
    .parameter "ev"

    .prologue
    .line 272
    invoke-super {p0, p1}, Lcom/android/internal/widget/LinearLayoutWithDefaultTouchRecepient;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 273
    .local v0, result:Z
    if-eqz v0, :cond_0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/android/internal/policy/impl/PatternUnlockScreen;->mLastPokeTime:J

    sub-long/2addr v1, v3

    const-wide/16 v3, 0x1af4

    cmp-long v1, v1, v3

    if-lez v1, :cond_0

    .line 276
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/internal/policy/impl/PatternUnlockScreen;->mLastPokeTime:J

    .line 278
    :cond_0
    return v0
.end method

.method public needsInput()Z
    .locals 1

    .prologue
    .line 314
    const/4 v0, 0x0

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 2

    .prologue
    .line 283
    invoke-super {p0}, Lcom/android/internal/widget/LinearLayoutWithDefaultTouchRecepient;->onAttachedToWindow()V

    .line 289
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PatternUnlockScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    iget v1, p0, Lcom/android/internal/policy/impl/PatternUnlockScreen;->mCreationOrientation:I

    if-eq v0, v1, :cond_0

    .line 290
    iget-object v0, p0, Lcom/android/internal/policy/impl/PatternUnlockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PatternUnlockScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->recreateMe(Landroid/content/res/Configuration;)V

    .line 292
    :cond_0
    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .parameter "newConfig"

    .prologue
    .line 298
    invoke-super {p0, p1}, Lcom/android/internal/widget/LinearLayoutWithDefaultTouchRecepient;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 304
    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    iget v1, p0, Lcom/android/internal/policy/impl/PatternUnlockScreen;->mCreationOrientation:I

    if-eq v0, v1, :cond_0

    .line 305
    iget-object v0, p0, Lcom/android/internal/policy/impl/PatternUnlockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    invoke-interface {v0, p1}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->recreateMe(Landroid/content/res/Configuration;)V

    .line 307
    :cond_0
    return-void
.end method

.method public onKeyboardChange(Z)V
    .locals 0
    .parameter "isKeyboardOpen"

    .prologue
    .line 310
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 319
    iget-object v0, p0, Lcom/android/internal/policy/impl/PatternUnlockScreen;->mCountdownTimer:Landroid/os/CountDownTimer;

    if-eqz v0, :cond_0

    .line 320
    iget-object v0, p0, Lcom/android/internal/policy/impl/PatternUnlockScreen;->mCountdownTimer:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    .line 321
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/policy/impl/PatternUnlockScreen;->mCountdownTimer:Landroid/os/CountDownTimer;

    .line 323
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/PatternUnlockScreen;->mKeyguardStatusViewManager:Lcom/android/internal/policy/impl/KeyguardStatusViewManager;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->onPause()V

    .line 324
    return-void
.end method

.method public onResume()V
    .locals 5

    .prologue
    .line 329
    iget-object v3, p0, Lcom/android/internal/policy/impl/PatternUnlockScreen;->mKeyguardStatusViewManager:Lcom/android/internal/policy/impl/KeyguardStatusViewManager;

    invoke-virtual {v3}, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->onResume()V

    .line 332
    iget-object v3, p0, Lcom/android/internal/policy/impl/PatternUnlockScreen;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    invoke-virtual {v3}, Lcom/android/internal/widget/LockPatternView;->enableInput()V

    .line 333
    iget-object v3, p0, Lcom/android/internal/policy/impl/PatternUnlockScreen;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/android/internal/widget/LockPatternView;->setEnabled(Z)V

    .line 334
    iget-object v3, p0, Lcom/android/internal/policy/impl/PatternUnlockScreen;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    invoke-virtual {v3}, Lcom/android/internal/widget/LockPatternView;->clearPattern()V

    .line 337
    invoke-direct {p0}, Lcom/android/internal/policy/impl/PatternUnlockScreen;->isDeviceDisabledForMaxFailedAttempt()Z

    move-result v2

    .line 339
    .local v2, lDeviceDisableForMaxFailedAttempt:Z
    if-nez v2, :cond_5

    .line 342
    iget-object v3, p0, Lcom/android/internal/policy/impl/PatternUnlockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    invoke-interface {v3}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->doesFallbackUnlockScreenExist()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 343
    invoke-direct {p0}, Lcom/android/internal/policy/impl/PatternUnlockScreen;->showForgotPatternButton()V

    .line 349
    :goto_0
    iget-object v3, p0, Lcom/android/internal/policy/impl/PatternUnlockScreen;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v3}, Lcom/android/internal/widget/LockPatternUtils;->getLockoutAttemptDeadline()J

    move-result-wide v0

    .line 350
    .local v0, deadline:J
    const-wide/16 v3, 0x0

    cmp-long v3, v0, v3

    if-eqz v3, :cond_0

    .line 351
    invoke-direct {p0, v0, v1}, Lcom/android/internal/policy/impl/PatternUnlockScreen;->handleAttemptLockout(J)V

    .line 355
    :cond_0
    iget-object v3, p0, Lcom/android/internal/policy/impl/PatternUnlockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    invoke-interface {v3}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->isVerifyUnlockOnly()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 356
    sget-object v3, Lcom/android/internal/policy/impl/PatternUnlockScreen$FooterMode;->VerifyUnlocked:Lcom/android/internal/policy/impl/PatternUnlockScreen$FooterMode;

    invoke-direct {p0, v3}, Lcom/android/internal/policy/impl/PatternUnlockScreen;->updateFooter(Lcom/android/internal/policy/impl/PatternUnlockScreen$FooterMode;)V

    .line 369
    .end local v0           #deadline:J
    :goto_1
    return-void

    .line 345
    :cond_1
    invoke-direct {p0}, Lcom/android/internal/policy/impl/PatternUnlockScreen;->hideForgotPatternButton()V

    goto :goto_0

    .line 357
    .restart local v0       #deadline:J
    :cond_2
    iget-boolean v3, p0, Lcom/android/internal/policy/impl/PatternUnlockScreen;->mEnableFallback:Z

    if-nez v3, :cond_3

    iget-object v3, p0, Lcom/android/internal/policy/impl/PatternUnlockScreen;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v3}, Lcom/android/internal/widget/LockPatternUtils;->savedSparePasswordExists()Z

    move-result v3

    if-eqz v3, :cond_4

    :cond_3
    iget v3, p0, Lcom/android/internal/policy/impl/PatternUnlockScreen;->mTotalFailedPatternAttempts:I

    const/4 v4, 0x5

    if-lt v3, v4, :cond_4

    .line 359
    sget-object v3, Lcom/android/internal/policy/impl/PatternUnlockScreen$FooterMode;->ForgotLockPattern:Lcom/android/internal/policy/impl/PatternUnlockScreen$FooterMode;

    invoke-direct {p0, v3}, Lcom/android/internal/policy/impl/PatternUnlockScreen;->updateFooter(Lcom/android/internal/policy/impl/PatternUnlockScreen$FooterMode;)V

    goto :goto_1

    .line 361
    :cond_4
    sget-object v3, Lcom/android/internal/policy/impl/PatternUnlockScreen$FooterMode;->Normal:Lcom/android/internal/policy/impl/PatternUnlockScreen$FooterMode;

    invoke-direct {p0, v3}, Lcom/android/internal/policy/impl/PatternUnlockScreen;->updateFooter(Lcom/android/internal/policy/impl/PatternUnlockScreen$FooterMode;)V

    goto :goto_1

    .line 366
    .end local v0           #deadline:J
    :cond_5
    invoke-direct {p0}, Lcom/android/internal/policy/impl/PatternUnlockScreen;->disableDevicePermanently()V

    goto :goto_1
.end method

.method public onWindowFocusChanged(Z)V
    .locals 0
    .parameter "hasWindowFocus"

    .prologue
    .line 383
    invoke-super {p0, p1}, Lcom/android/internal/widget/LinearLayoutWithDefaultTouchRecepient;->onWindowFocusChanged(Z)V

    .line 384
    if-eqz p1, :cond_0

    .line 386
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PatternUnlockScreen;->onResume()V

    .line 388
    :cond_0
    return-void
.end method

.method public setEnableFallback(Z)V
    .locals 0
    .parameter "state"

    .prologue
    .line 259
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/PatternUnlockScreen;->mEnableFallback:Z

    .line 260
    return-void
.end method

.method public setEnableSparePasswordFallback(Z)V
    .locals 0
    .parameter "state"

    .prologue
    .line 264
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/PatternUnlockScreen;->mEnableSparePassword:Z

    .line 265
    return-void
.end method
