.class public Lcom/android/internal/policy/impl/sec/LawmoLockScreen;
.super Lcom/android/internal/widget/LinearLayoutWithDefaultTouchRecepient;
.source "LawmoLockScreen.java"

# interfaces
.implements Lcom/android/internal/policy/impl/KeyguardScreen;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/policy/impl/sec/LawmoLockScreen$4;,
        Lcom/android/internal/policy/impl/sec/LawmoLockScreen$FooterMode;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = true

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

.field private mFailedPatternAttemptsSinceLastTimeout:I

.field private final mForgotPatternClick:Landroid/view/View$OnClickListener;

.field private mKeyguardStatusViewManager:Lcom/android/internal/policy/impl/KeyguardStatusViewManager;

.field private mLastPokeTime:J

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mTotalFailedPatternAttempts:I

.field private mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/res/Configuration;Lcom/android/internal/widget/LockPatternUtils;Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;Lcom/android/internal/policy/impl/KeyguardScreenCallback;I)V
    .locals 7
    .parameter "context"
    .parameter "configuration"
    .parameter "lockPatternUtils"
    .parameter "updateMonitor"
    .parameter "callback"
    .parameter "totalFailedAttempts"

    .prologue
    const/4 v0, 0x0

    const/4 v5, 0x1

    .line 158
    invoke-direct {p0, p1}, Lcom/android/internal/widget/LinearLayoutWithDefaultTouchRecepient;-><init>(Landroid/content/Context;)V

    .line 69
    iput v0, p0, Lcom/android/internal/policy/impl/sec/LawmoLockScreen;->mFailedPatternAttemptsSinceLastTimeout:I

    .line 70
    iput v0, p0, Lcom/android/internal/policy/impl/sec/LawmoLockScreen;->mTotalFailedPatternAttempts:I

    .line 71
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/policy/impl/sec/LawmoLockScreen;->mCountdownTimer:Landroid/os/CountDownTimer;

    .line 91
    const-wide/16 v0, -0x1b58

    iput-wide v0, p0, Lcom/android/internal/policy/impl/sec/LawmoLockScreen;->mLastPokeTime:J

    .line 96
    new-instance v0, Lcom/android/internal/policy/impl/sec/LawmoLockScreen$1;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/sec/LawmoLockScreen$1;-><init>(Lcom/android/internal/policy/impl/sec/LawmoLockScreen;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/sec/LawmoLockScreen;->mCancelPatternRunnable:Ljava/lang/Runnable;

    .line 102
    new-instance v0, Lcom/android/internal/policy/impl/sec/LawmoLockScreen$2;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/sec/LawmoLockScreen$2;-><init>(Lcom/android/internal/policy/impl/sec/LawmoLockScreen;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/sec/LawmoLockScreen;->mForgotPatternClick:Landroid/view/View$OnClickListener;

    .line 159
    iput-object p3, p0, Lcom/android/internal/policy/impl/sec/LawmoLockScreen;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 160
    iput-object p4, p0, Lcom/android/internal/policy/impl/sec/LawmoLockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    .line 161
    iput-object p5, p0, Lcom/android/internal/policy/impl/sec/LawmoLockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    .line 162
    iput p6, p0, Lcom/android/internal/policy/impl/sec/LawmoLockScreen;->mTotalFailedPatternAttempts:I

    .line 163
    rem-int/lit8 v0, p6, 0x5

    iput v0, p0, Lcom/android/internal/policy/impl/sec/LawmoLockScreen;->mFailedPatternAttemptsSinceLastTimeout:I

    .line 166
    const-string v0, "UnlockScreen"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "UnlockScreen() ctor: totalFailedAttempts="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mFailedPat...="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/policy/impl/sec/LawmoLockScreen;->mFailedPatternAttemptsSinceLastTimeout:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    iget v0, p2, Landroid/content/res/Configuration;->orientation:I

    iput v0, p0, Lcom/android/internal/policy/impl/sec/LawmoLockScreen;->mCreationOrientation:I

    .line 174
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v6

    .line 176
    .local v6, inflater:Landroid/view/LayoutInflater;
    iget v0, p0, Lcom/android/internal/policy/impl/sec/LawmoLockScreen;->mCreationOrientation:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 177
    const-string v0, "UnlockScreen"

    const-string v1, "portrait mode"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    const v0, 0x1090075

    invoke-virtual {v6, v0, p0, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 184
    :goto_0
    new-instance v0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;

    iget-object v2, p0, Lcom/android/internal/policy/impl/sec/LawmoLockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    iget-object v3, p0, Lcom/android/internal/policy/impl/sec/LawmoLockScreen;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget-object v4, p0, Lcom/android/internal/policy/impl/sec/LawmoLockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;-><init>(Landroid/view/View;Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;Lcom/android/internal/widget/LockPatternUtils;Lcom/android/internal/policy/impl/KeyguardScreenCallback;Z)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/sec/LawmoLockScreen;->mKeyguardStatusViewManager:Lcom/android/internal/policy/impl/KeyguardStatusViewManager;

    .line 208
    sget-object v0, Lcom/android/internal/policy/impl/sec/LawmoLockScreen$FooterMode;->Normal:Lcom/android/internal/policy/impl/sec/LawmoLockScreen$FooterMode;

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/sec/LawmoLockScreen;->updateFooter(Lcom/android/internal/policy/impl/sec/LawmoLockScreen$FooterMode;)V

    .line 210
    invoke-virtual {p0, v5}, Lcom/android/internal/policy/impl/sec/LawmoLockScreen;->setFocusableInTouchMode(Z)V

    .line 217
    const/high16 v0, 0x4c00

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/sec/LawmoLockScreen;->setBackgroundColor(I)V

    .line 218
    return-void

    .line 180
    :cond_0
    const-string v0, "UnlockScreen"

    const-string v1, "landscape mode"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    const v0, 0x1090074

    invoke-virtual {v6, v0, p0, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/android/internal/policy/impl/sec/LawmoLockScreen;)Lcom/android/internal/policy/impl/KeyguardScreenCallback;
    .locals 1
    .parameter "x0"

    .prologue
    .line 51
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/LawmoLockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/internal/policy/impl/sec/LawmoLockScreen;)Lcom/android/internal/policy/impl/KeyguardStatusViewManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 51
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/LawmoLockScreen;->mKeyguardStatusViewManager:Lcom/android/internal/policy/impl/KeyguardStatusViewManager;

    return-object v0
.end method

.method static synthetic access$202(Lcom/android/internal/policy/impl/sec/LawmoLockScreen;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 51
    iput p1, p0, Lcom/android/internal/policy/impl/sec/LawmoLockScreen;->mFailedPatternAttemptsSinceLastTimeout:I

    return p1
.end method

.method static synthetic access$300(Lcom/android/internal/policy/impl/sec/LawmoLockScreen;Lcom/android/internal/policy/impl/sec/LawmoLockScreen$FooterMode;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 51
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/sec/LawmoLockScreen;->updateFooter(Lcom/android/internal/policy/impl/sec/LawmoLockScreen$FooterMode;)V

    return-void
.end method

.method private handleAttemptLockout(J)V
    .locals 8
    .parameter "elapsedRealtimeDeadline"

    .prologue
    .line 430
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    .line 431
    .local v6, elapsedRealtime:J
    new-instance v0, Lcom/android/internal/policy/impl/sec/LawmoLockScreen$3;

    sub-long v2, p1, v6

    const-wide/16 v4, 0x3e8

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/policy/impl/sec/LawmoLockScreen$3;-><init>(Lcom/android/internal/policy/impl/sec/LawmoLockScreen;JJ)V

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/sec/LawmoLockScreen$3;->start()Landroid/os/CountDownTimer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/sec/LawmoLockScreen;->mCountdownTimer:Landroid/os/CountDownTimer;

    .line 460
    return-void
.end method

.method private hideForgotPatternButton()V
    .locals 0

    .prologue
    .line 120
    return-void
.end method

.method private showForgotPatternButton()V
    .locals 0

    .prologue
    .line 124
    return-void
.end method

.method private updateFooter(Lcom/android/internal/policy/impl/sec/LawmoLockScreen$FooterMode;)V
    .locals 2
    .parameter "mode"

    .prologue
    .line 127
    sget-object v0, Lcom/android/internal/policy/impl/sec/LawmoLockScreen$4;->$SwitchMap$com$android$internal$policy$impl$sec$LawmoLockScreen$FooterMode:[I

    invoke-virtual {p1}, Lcom/android/internal/policy/impl/sec/LawmoLockScreen$FooterMode;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 140
    :goto_0
    return-void

    .line 129
    :pswitch_0
    const-string v0, "UnlockScreen"

    const-string v1, "mode normal"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    invoke-direct {p0}, Lcom/android/internal/policy/impl/sec/LawmoLockScreen;->hideForgotPatternButton()V

    goto :goto_0

    .line 133
    :pswitch_1
    const-string v0, "UnlockScreen"

    const-string v1, "mode ForgotLockPattern"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    invoke-direct {p0}, Lcom/android/internal/policy/impl/sec/LawmoLockScreen;->showForgotPatternButton()V

    goto :goto_0

    .line 137
    :pswitch_2
    const-string v0, "UnlockScreen"

    const-string v1, "mode VerifyUnlocked"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    invoke-direct {p0}, Lcom/android/internal/policy/impl/sec/LawmoLockScreen;->hideForgotPatternButton()V

    goto :goto_0

    .line 127
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method public cleanUp()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 336
    const-string v0, "UnlockScreen"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cleanup() called on "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 337
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/LawmoLockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v0, p0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->removeCallback(Ljava/lang/Object;)V

    .line 338
    iput-object v3, p0, Lcom/android/internal/policy/impl/sec/LawmoLockScreen;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 339
    iput-object v3, p0, Lcom/android/internal/policy/impl/sec/LawmoLockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    .line 340
    iput-object v3, p0, Lcom/android/internal/policy/impl/sec/LawmoLockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    .line 342
    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5
    .parameter "ev"

    .prologue
    .line 230
    invoke-super {p0, p1}, Lcom/android/internal/widget/LinearLayoutWithDefaultTouchRecepient;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 231
    .local v0, result:Z
    if-eqz v0, :cond_0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/android/internal/policy/impl/sec/LawmoLockScreen;->mLastPokeTime:J

    sub-long/2addr v1, v3

    const-wide/16 v3, 0x1af4

    cmp-long v1, v1, v3

    if-lez v1, :cond_0

    .line 234
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/internal/policy/impl/sec/LawmoLockScreen;->mLastPokeTime:J

    .line 236
    :cond_0
    return v0
.end method

.method public needsInput()Z
    .locals 1

    .prologue
    .line 276
    const/4 v0, 0x0

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 3

    .prologue
    .line 241
    invoke-super {p0}, Lcom/android/internal/widget/LinearLayoutWithDefaultTouchRecepient;->onAttachedToWindow()V

    .line 243
    const-string v0, "UnlockScreen"

    const-string v1, "***** PATTERN ATTACHED TO WINDOW"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 244
    const-string v0, "UnlockScreen"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cur orient="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/policy/impl/sec/LawmoLockScreen;->mCreationOrientation:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", new config="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/sec/LawmoLockScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 247
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/sec/LawmoLockScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    iget v1, p0, Lcom/android/internal/policy/impl/sec/LawmoLockScreen;->mCreationOrientation:I

    if-eq v0, v1, :cond_0

    .line 248
    iget v0, p0, Lcom/android/internal/policy/impl/sec/LawmoLockScreen;->mCreationOrientation:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 249
    const-string v0, "UnlockScreen"

    const-string v1, "Layout issue break out condition, but execute workaround code"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 254
    :cond_0
    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3
    .parameter "newConfig"

    .prologue
    .line 260
    invoke-super {p0, p1}, Lcom/android/internal/widget/LinearLayoutWithDefaultTouchRecepient;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 262
    const-string v0, "UnlockScreen"

    const-string v1, "***** PATTERN CONFIGURATION CHANGED"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 263
    const-string v0, "UnlockScreen"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cur orient="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/policy/impl/sec/LawmoLockScreen;->mCreationOrientation:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", new config="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/sec/LawmoLockScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 266
    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    iget v1, p0, Lcom/android/internal/policy/impl/sec/LawmoLockScreen;->mCreationOrientation:I

    if-eq v0, v1, :cond_0

    .line 267
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/LawmoLockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    invoke-interface {v0, p1}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->recreateMe(Landroid/content/res/Configuration;)V

    .line 269
    :cond_0
    return-void
.end method

.method public onKeyboardChange(Z)V
    .locals 0
    .parameter "isKeyboardOpen"

    .prologue
    .line 272
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 281
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/LawmoLockScreen;->mCountdownTimer:Landroid/os/CountDownTimer;

    if-eqz v0, :cond_0

    .line 282
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/LawmoLockScreen;->mCountdownTimer:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    .line 283
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/policy/impl/sec/LawmoLockScreen;->mCountdownTimer:Landroid/os/CountDownTimer;

    .line 285
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/LawmoLockScreen;->mKeyguardStatusViewManager:Lcom/android/internal/policy/impl/KeyguardStatusViewManager;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->onPause()V

    .line 286
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 291
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/LawmoLockScreen;->mKeyguardStatusViewManager:Lcom/android/internal/policy/impl/KeyguardStatusViewManager;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->onResume()V

    .line 332
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 0
    .parameter "hasWindowFocus"

    .prologue
    .line 346
    invoke-super {p0, p1}, Lcom/android/internal/widget/LinearLayoutWithDefaultTouchRecepient;->onWindowFocusChanged(Z)V

    .line 347
    if-eqz p1, :cond_0

    .line 349
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/sec/LawmoLockScreen;->onResume()V

    .line 351
    :cond_0
    return-void
.end method

.method public setEnableFallback(Z)V
    .locals 3
    .parameter "state"

    .prologue
    .line 221
    const-string v0, "UnlockScreen"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setEnableFallback("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 222
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/sec/LawmoLockScreen;->mEnableFallback:Z

    .line 223
    return-void
.end method
