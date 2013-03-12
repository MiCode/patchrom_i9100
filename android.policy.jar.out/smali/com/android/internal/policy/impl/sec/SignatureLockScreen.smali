.class public Lcom/android/internal/policy/impl/sec/SignatureLockScreen;
.super Landroid/widget/FrameLayout;
.source "SignatureLockScreen.java"

# interfaces
.implements Lcom/android/internal/policy/impl/KeyguardScreen;
.implements Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$InfoCallback;
.implements Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$SimStateCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/policy/impl/sec/SignatureLockScreen$ReorderLayout;,
        Lcom/android/internal/policy/impl/sec/SignatureLockScreen$UnlockSignatureLister;,
        Lcom/android/internal/policy/impl/sec/SignatureLockScreen$IdentifyState;
    }
.end annotation


# static fields
.field private static final DBG:Z = true

#the value of this static final field might be set in the static constructor
.field private static final DBG_TOUCH:Z = false

.field private static final MAX_SIGNATURE_ATTEMPTS:I = 0x2

.field private static final REGISTRED_SIGNATURE_NUM:I = 0x3

.field private static final TAG:Ljava/lang/String; = "SignatureLockScreen"

.field private static mState:Lcom/android/internal/policy/impl/sec/SignatureLockScreen$IdentifyState;


# instance fields
.field private mBoundToSignService:Z

.field private mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

.field private mClockWidget:Lcom/android/internal/policy/impl/sec/ClockWidget;

.field private mContext:Landroid/content/Context;

.field private mCreationOrientation:I

.field private mEngineStarted:Z

.field private mFailedAttempts:I

.field private mGuideText:Ljava/lang/String;

.field private mHelpText:Landroid/widget/TextView;

.field private mKeyguardStatusViewManager:Lcom/android/internal/policy/impl/KeyguardStatusViewManager;

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mRootLayout:Landroid/widget/FrameLayout;

.field private mServiceConnection:Landroid/content/ServiceConnection;

.field private mSignService:Lcom/android/internal/policy/ISignServiceInterface;

.field private final mSignServiceRunningLock:Ljava/lang/Object;

.field private mSignView:Lcom/android/internal/widget/SignView;

.field private mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

.field private mVerificationLevel:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 53
    invoke-static {}, Landroid/os/Debug;->isProductShip()I

    move-result v1

    if-ne v1, v0, :cond_0

    const/4 v0, 0x0

    :cond_0
    sput-boolean v0, Lcom/android/internal/policy/impl/sec/SignatureLockScreen;->DBG_TOUCH:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/content/res/Configuration;Lcom/android/internal/widget/LockPatternUtils;Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;Lcom/android/internal/policy/impl/KeyguardScreenCallback;)V
    .locals 10
    .parameter "context"
    .parameter "configuration"
    .parameter "lockPatternUtils"
    .parameter "updateMonitor"
    .parameter "callback"

    .prologue
    const/16 v9, 0x30

    const/4 v8, 0x0

    const/4 v5, 0x1

    .line 95
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 77
    iput-boolean v8, p0, Lcom/android/internal/policy/impl/sec/SignatureLockScreen;->mBoundToSignService:Z

    .line 78
    iput-boolean v8, p0, Lcom/android/internal/policy/impl/sec/SignatureLockScreen;->mEngineStarted:Z

    .line 79
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/internal/policy/impl/sec/SignatureLockScreen;->mSignServiceRunningLock:Ljava/lang/Object;

    .line 386
    new-instance v0, Lcom/android/internal/policy/impl/sec/SignatureLockScreen$1;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/sec/SignatureLockScreen$1;-><init>(Lcom/android/internal/policy/impl/sec/SignatureLockScreen;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/sec/SignatureLockScreen;->mServiceConnection:Landroid/content/ServiceConnection;

    .line 97
    iput-object p1, p0, Lcom/android/internal/policy/impl/sec/SignatureLockScreen;->mContext:Landroid/content/Context;

    .line 98
    iput-object p4, p0, Lcom/android/internal/policy/impl/sec/SignatureLockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    .line 99
    iput-object p5, p0, Lcom/android/internal/policy/impl/sec/SignatureLockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    .line 100
    iput-object p3, p0, Lcom/android/internal/policy/impl/sec/SignatureLockScreen;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 101
    iget v0, p2, Landroid/content/res/Configuration;->orientation:I

    iput v0, p0, Lcom/android/internal/policy/impl/sec/SignatureLockScreen;->mCreationOrientation:I

    .line 103
    invoke-virtual {p0, v5}, Lcom/android/internal/policy/impl/sec/SignatureLockScreen;->setFocusable(Z)V

    .line 104
    invoke-virtual {p0, v5}, Lcom/android/internal/policy/impl/sec/SignatureLockScreen;->setFocusableInTouchMode(Z)V

    .line 105
    const/high16 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/sec/SignatureLockScreen;->setDescendantFocusability(I)V

    .line 107
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v7

    .line 108
    .local v7, inflater:Landroid/view/LayoutInflater;
    iget v0, p0, Lcom/android/internal/policy/impl/sec/SignatureLockScreen;->mCreationOrientation:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    .line 110
    const v0, 0x109008d

    invoke-virtual {v7, v0, p0, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 120
    :goto_0
    const v0, 0x1020383

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/sec/SignatureLockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/android/internal/policy/impl/sec/SignatureLockScreen;->mRootLayout:Landroid/widget/FrameLayout;

    .line 123
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/SignatureLockScreen;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "unlock_text"

    invoke-static {v0, v1, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v5, :cond_2

    move v6, v5

    .line 125
    .local v6, helpTextEnabled:Z
    :goto_1
    if-eqz v6, :cond_3

    .line 126
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/SignatureLockScreen;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10406e9

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/sec/SignatureLockScreen;->mGuideText:Ljava/lang/String;

    .line 130
    :goto_2
    const v0, 0x1020387

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/sec/SignatureLockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/internal/policy/impl/sec/SignatureLockScreen;->mHelpText:Landroid/widget/TextView;

    .line 131
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/SignatureLockScreen;->mHelpText:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/SignatureLockScreen;->mGuideText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 134
    new-instance v0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;

    move-object v1, p0

    move-object v2, p4

    move-object v3, p3

    move-object v4, p5

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;-><init>(Landroid/view/View;Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;Lcom/android/internal/widget/LockPatternUtils;Lcom/android/internal/policy/impl/KeyguardScreenCallback;Z)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/sec/SignatureLockScreen;->mKeyguardStatusViewManager:Lcom/android/internal/policy/impl/KeyguardStatusViewManager;

    .line 138
    new-instance v0, Lcom/android/internal/policy/impl/sec/ClockWidget;

    invoke-direct {v0, p1, p4, p2, p5}, Lcom/android/internal/policy/impl/sec/ClockWidget;-><init>(Landroid/content/Context;Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;Landroid/content/res/Configuration;Lcom/android/internal/policy/impl/KeyguardScreenCallback;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/sec/SignatureLockScreen;->mClockWidget:Lcom/android/internal/policy/impl/sec/ClockWidget;

    .line 139
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/SignatureLockScreen;->mClockWidget:Lcom/android/internal/policy/impl/sec/ClockWidget;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/sec/ClockWidget;->getRootLayout()Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v9}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 140
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/SignatureLockScreen;->mClockWidget:Lcom/android/internal/policy/impl/sec/ClockWidget;

    invoke-virtual {v0, v9}, Lcom/android/internal/policy/impl/sec/ClockWidget;->setGravity(I)V

    .line 143
    const v0, 0x1020384

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/sec/SignatureLockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/SignatureLockScreen;->mClockWidget:Lcom/android/internal/policy/impl/sec/ClockWidget;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 146
    invoke-virtual {p4, p0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->registerInfoCallback(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$InfoCallback;)V

    .line 149
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/SignatureLockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v0, v5}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->reportClockVisible(Z)V

    .line 153
    iput v8, p0, Lcom/android/internal/policy/impl/sec/SignatureLockScreen;->mFailedAttempts:I

    .line 155
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/sec/SignatureLockScreen;->initSignView(Landroid/content/Context;)V

    .line 158
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/sec/SignatureLockScreen;->mBoundToSignService:Z

    if-nez v0, :cond_0

    .line 159
    const-string v0, "SignatureLockScreen"

    const-string v1, "sign service is called from constructor"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/sec/SignatureLockScreen;->bindToSignatureLock()V

    .line 161
    iput-boolean v5, p0, Lcom/android/internal/policy/impl/sec/SignatureLockScreen;->mBoundToSignService:Z

    .line 163
    :cond_0
    return-void

    .line 113
    .end local v6           #helpTextEnabled:Z
    :cond_1
    const v0, 0x109008e

    invoke-virtual {v7, v0, p0, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    goto/16 :goto_0

    :cond_2
    move v6, v8

    .line 123
    goto :goto_1

    .line 128
    .restart local v6       #helpTextEnabled:Z
    :cond_3
    const-string v0, ""

    iput-object v0, p0, Lcom/android/internal/policy/impl/sec/SignatureLockScreen;->mGuideText:Ljava/lang/String;

    goto :goto_2
.end method

.method static synthetic access$100(Lcom/android/internal/policy/impl/sec/SignatureLockScreen;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 48
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/SignatureLockScreen;->mSignServiceRunningLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/internal/policy/impl/sec/SignatureLockScreen;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 48
    iget v0, p0, Lcom/android/internal/policy/impl/sec/SignatureLockScreen;->mFailedAttempts:I

    return v0
.end method

.method static synthetic access$1008(Lcom/android/internal/policy/impl/sec/SignatureLockScreen;)I
    .locals 2
    .parameter "x0"

    .prologue
    .line 48
    iget v0, p0, Lcom/android/internal/policy/impl/sec/SignatureLockScreen;->mFailedAttempts:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/internal/policy/impl/sec/SignatureLockScreen;->mFailedAttempts:I

    return v0
.end method

.method static synthetic access$1100(Lcom/android/internal/policy/impl/sec/SignatureLockScreen;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 48
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/SignatureLockScreen;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/internal/policy/impl/sec/SignatureLockScreen;)Landroid/content/ServiceConnection;
    .locals 1
    .parameter "x0"

    .prologue
    .line 48
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/SignatureLockScreen;->mServiceConnection:Landroid/content/ServiceConnection;

    return-object v0
.end method

.method static synthetic access$1302(Lcom/android/internal/policy/impl/sec/SignatureLockScreen;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 48
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/sec/SignatureLockScreen;->mBoundToSignService:Z

    return p1
.end method

.method static synthetic access$200(Lcom/android/internal/policy/impl/sec/SignatureLockScreen;)Lcom/android/internal/policy/ISignServiceInterface;
    .locals 1
    .parameter "x0"

    .prologue
    .line 48
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/SignatureLockScreen;->mSignService:Lcom/android/internal/policy/ISignServiceInterface;

    return-object v0
.end method

.method static synthetic access$202(Lcom/android/internal/policy/impl/sec/SignatureLockScreen;Lcom/android/internal/policy/ISignServiceInterface;)Lcom/android/internal/policy/ISignServiceInterface;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 48
    iput-object p1, p0, Lcom/android/internal/policy/impl/sec/SignatureLockScreen;->mSignService:Lcom/android/internal/policy/ISignServiceInterface;

    return-object p1
.end method

.method static synthetic access$300(Lcom/android/internal/policy/impl/sec/SignatureLockScreen;)Lcom/android/internal/widget/SignView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 48
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/SignatureLockScreen;->mSignView:Lcom/android/internal/widget/SignView;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/internal/policy/impl/sec/SignatureLockScreen;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 48
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/sec/SignatureLockScreen;->mEngineStarted:Z

    return v0
.end method

.method static synthetic access$402(Lcom/android/internal/policy/impl/sec/SignatureLockScreen;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 48
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/sec/SignatureLockScreen;->mEngineStarted:Z

    return p1
.end method

.method static synthetic access$500(Lcom/android/internal/policy/impl/sec/SignatureLockScreen;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 48
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/SignatureLockScreen;->mGuideText:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/internal/policy/impl/sec/SignatureLockScreen;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 48
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/SignatureLockScreen;->mHelpText:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$700()Lcom/android/internal/policy/impl/sec/SignatureLockScreen$IdentifyState;
    .locals 1

    .prologue
    .line 48
    sget-object v0, Lcom/android/internal/policy/impl/sec/SignatureLockScreen;->mState:Lcom/android/internal/policy/impl/sec/SignatureLockScreen$IdentifyState;

    return-object v0
.end method

.method static synthetic access$702(Lcom/android/internal/policy/impl/sec/SignatureLockScreen$IdentifyState;)Lcom/android/internal/policy/impl/sec/SignatureLockScreen$IdentifyState;
    .locals 0
    .parameter "x0"

    .prologue
    .line 48
    sput-object p0, Lcom/android/internal/policy/impl/sec/SignatureLockScreen;->mState:Lcom/android/internal/policy/impl/sec/SignatureLockScreen$IdentifyState;

    return-object p0
.end method

.method static synthetic access$800()Z
    .locals 1

    .prologue
    .line 48
    sget-boolean v0, Lcom/android/internal/policy/impl/sec/SignatureLockScreen;->DBG_TOUCH:Z

    return v0
.end method

.method static synthetic access$900(Lcom/android/internal/policy/impl/sec/SignatureLockScreen;)Lcom/android/internal/policy/impl/KeyguardScreenCallback;
    .locals 1
    .parameter "x0"

    .prologue
    .line 48
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/SignatureLockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    return-object v0
.end method

.method private initSignView(Landroid/content/Context;)V
    .locals 17
    .parameter "context"

    .prologue
    .line 166
    sget-object v1, Lcom/android/internal/policy/impl/sec/SignatureLockScreen$IdentifyState;->INIT:Lcom/android/internal/policy/impl/sec/SignatureLockScreen$IdentifyState;

    sput-object v1, Lcom/android/internal/policy/impl/sec/SignatureLockScreen;->mState:Lcom/android/internal/policy/impl/sec/SignatureLockScreen$IdentifyState;

    .line 168
    const v1, 0x1020385

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/sec/SignatureLockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/internal/widget/SignView;

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/internal/policy/impl/sec/SignatureLockScreen;->mSignView:Lcom/android/internal/widget/SignView;

    .line 170
    const/16 v1, 0x16

    new-array v15, v1, [I

    .line 171
    .local v15, properties:[I
    const/16 v1, 0x58

    new-array v0, v1, [B

    move-object/from16 v16, v0

    .line 173
    .local v16, stored:[B
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/policy/impl/sec/SignatureLockScreen;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v1}, Lcom/android/internal/widget/LockPatternUtils;->getSignatureLockInfo()[B

    move-result-object v16

    .line 176
    if-eqz v16, :cond_0

    .line 177
    const/4 v14, 0x0

    .local v14, index:I
    :goto_0
    const/16 v1, 0x16

    if-ge v14, v1, :cond_0

    .line 178
    mul-int/lit8 v1, v14, 0x4

    aget-byte v1, v16, v1

    shl-int/lit8 v1, v1, 0x18

    mul-int/lit8 v2, v14, 0x4

    add-int/lit8 v2, v2, 0x1

    aget-byte v2, v16, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x10

    add-int/2addr v1, v2

    mul-int/lit8 v2, v14, 0x4

    add-int/lit8 v2, v2, 0x2

    aget-byte v2, v16, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x8

    add-int/2addr v1, v2

    mul-int/lit8 v2, v14, 0x4

    add-int/lit8 v2, v2, 0x3

    aget-byte v2, v16, v2

    and-int/lit16 v2, v2, 0xff

    add-int/2addr v1, v2

    aput v1, v15, v14

    .line 177
    add-int/lit8 v14, v14, 0x1

    goto :goto_0

    .line 184
    .end local v14           #index:I
    :cond_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/policy/impl/sec/SignatureLockScreen;->mSignView:Lcom/android/internal/widget/SignView;

    invoke-virtual {v1}, Lcom/android/internal/widget/SignView;->setVerifySign()V

    .line 187
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/policy/impl/sec/SignatureLockScreen;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "lock_signature_verification_level"

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    move-object/from16 v0, p0

    iput v1, v0, Lcom/android/internal/policy/impl/sec/SignatureLockScreen;->mVerificationLevel:I

    .line 189
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/policy/impl/sec/SignatureLockScreen;->mSignView:Lcom/android/internal/widget/SignView;

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/sec/SignatureLockScreen;->mVerificationLevel:I

    invoke-virtual {v1, v2}, Lcom/android/internal/widget/SignView;->setVerificationLevel(I)V

    .line 192
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/policy/impl/sec/SignatureLockScreen;->mSignView:Lcom/android/internal/widget/SignView;

    const/4 v2, 0x7

    aget v2, v15, v2

    invoke-virtual {v1, v2}, Lcom/android/internal/widget/SignView;->setSettingInputType(I)V

    .line 195
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/policy/impl/sec/SignatureLockScreen;->mSignView:Lcom/android/internal/widget/SignView;

    const/4 v2, 0x6

    aget v2, v15, v2

    invoke-virtual {v1, v2}, Lcom/android/internal/widget/SignView;->setStrokeCount(I)V

    .line 196
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/policy/impl/sec/SignatureLockScreen;->mSignView:Lcom/android/internal/widget/SignView;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/sec/SignatureLockScreen;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v2}, Lcom/android/internal/widget/LockPatternUtils;->isVisibleSignatureEnabled()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/internal/widget/SignView;->setSignatureVisible(Z)V

    .line 197
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/policy/impl/sec/SignatureLockScreen;->mSignView:Lcom/android/internal/widget/SignView;

    new-instance v2, Lcom/android/internal/policy/impl/sec/SignatureLockScreen$UnlockSignatureLister;

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-direct {v2, v0, v3}, Lcom/android/internal/policy/impl/sec/SignatureLockScreen$UnlockSignatureLister;-><init>(Lcom/android/internal/policy/impl/sec/SignatureLockScreen;Lcom/android/internal/policy/impl/sec/SignatureLockScreen$1;)V

    invoke-virtual {v1, v2}, Lcom/android/internal/widget/SignView;->setOnSignatureListener(Lcom/android/internal/widget/SignView$OnSignatureListener;)V

    .line 200
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/sec/SignatureLockScreen;->mSignView:Lcom/android/internal/widget/SignView;

    const/16 v1, 0x8

    aget v1, v15, v1

    const/4 v3, 0x1

    if-ne v1, v3, :cond_1

    const/4 v1, 0x1

    :goto_1
    invoke-virtual {v2, v1}, Lcom/android/internal/widget/SignView;->enableBezierCurve(Z)V

    .line 203
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/sec/SignatureLockScreen;->mSignView:Lcom/android/internal/widget/SignView;

    const/16 v1, 0x9

    aget v1, v15, v1

    const/4 v3, 0x1

    if-ne v1, v3, :cond_2

    const/4 v1, 0x1

    :goto_2
    invoke-virtual {v2, v1}, Lcom/android/internal/widget/SignView;->enableBezierCurve(Z)V

    .line 206
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/policy/impl/sec/SignatureLockScreen;->mSignView:Lcom/android/internal/widget/SignView;

    const/16 v2, 0xa

    aget v2, v15, v2

    const/16 v3, 0xb

    aget v3, v15, v3

    const/16 v4, 0xc

    aget v4, v15, v4

    const/16 v5, 0xd

    aget v5, v15, v5

    const/16 v6, 0xe

    aget v6, v15, v6

    const/16 v7, 0xf

    aget v7, v15, v7

    const/16 v8, 0x10

    aget v8, v15, v8

    const/16 v9, 0x11

    aget v9, v15, v9

    const/16 v10, 0x12

    aget v10, v15, v10

    const/16 v11, 0x13

    aget v11, v15, v11

    const/16 v12, 0x14

    aget v12, v15, v12

    const/16 v13, 0x15

    aget v13, v15, v13

    invoke-virtual/range {v1 .. v13}, Lcom/android/internal/widget/SignView;->setThresholdValues(IIIIIIIIIIII)V

    .line 210
    return-void

    .line 200
    :cond_1
    const/4 v1, 0x0

    goto :goto_1

    .line 203
    :cond_2
    const/4 v1, 0x0

    goto :goto_2
.end method


# virtual methods
.method public bindToSignatureLock()V
    .locals 4

    .prologue
    .line 382
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/SignatureLockScreen;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/android/internal/policy/ISignServiceInterface;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/internal/policy/impl/sec/SignatureLockScreen;->mServiceConnection:Landroid/content/ServiceConnection;

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 384
    return-void
.end method

.method public cleanUp()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 286
    const-string v0, "SignatureLockScreen"

    const-string v1, "cleanUp()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 288
    iput-object v2, p0, Lcom/android/internal/policy/impl/sec/SignatureLockScreen;->mContext:Landroid/content/Context;

    .line 289
    iput-object v2, p0, Lcom/android/internal/policy/impl/sec/SignatureLockScreen;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 291
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/SignatureLockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->reportClockVisible(Z)V

    .line 292
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/SignatureLockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v0, p0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->removeCallback(Ljava/lang/Object;)V

    .line 293
    iput-object v2, p0, Lcom/android/internal/policy/impl/sec/SignatureLockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    .line 294
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/SignatureLockScreen;->mClockWidget:Lcom/android/internal/policy/impl/sec/ClockWidget;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/sec/ClockWidget;->cleanUp()V

    .line 296
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/SignatureLockScreen;->mSignView:Lcom/android/internal/widget/SignView;

    if-eqz v0, :cond_0

    .line 297
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/SignatureLockScreen;->mSignView:Lcom/android/internal/widget/SignView;

    invoke-virtual {v0, v2}, Lcom/android/internal/widget/SignView;->setOnSignatureListener(Lcom/android/internal/widget/SignView$OnSignatureListener;)V

    .line 299
    :cond_0
    return-void
.end method

.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 5
    .parameter "event"

    .prologue
    const/16 v4, 0x1f4

    const/4 v1, 0x0

    .line 214
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z

    .line 215
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/sec/SignatureLockScreen;->isShown()Z

    move-result v2

    if-nez v2, :cond_0

    .line 227
    :goto_0
    return v1

    .line 219
    :cond_0
    const-string v0, ""

    .line 220
    .local v0, text:Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/policy/impl/sec/SignatureLockScreen;->mClockWidget:Lcom/android/internal/policy/impl/sec/ClockWidget;

    invoke-virtual {v3}, Lcom/android/internal/policy/impl/sec/ClockWidget;->getTTSMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 223
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-le v2, v4, :cond_1

    .line 224
    invoke-virtual {v0, v1, v4}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    .line 226
    :cond_1
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 227
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public isSignatureRecognitionFailed()Z
    .locals 2

    .prologue
    .line 430
    sget-object v0, Lcom/android/internal/policy/impl/sec/SignatureLockScreen$IdentifyState;->FAIL:Lcom/android/internal/policy/impl/sec/SignatureLockScreen$IdentifyState;

    sget-object v1, Lcom/android/internal/policy/impl/sec/SignatureLockScreen;->mState:Lcom/android/internal/policy/impl/sec/SignatureLockScreen$IdentifyState;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public needsInput()Z
    .locals 1

    .prologue
    .line 341
    const/4 v0, 0x0

    return v0
.end method

.method public onClockVisibilityChanged()V
    .locals 0

    .prologue
    .line 354
    return-void
.end method

.method public onCsSimStateChanged(I)V
    .locals 0
    .parameter "simId"

    .prologue
    .line 377
    return-void
.end method

.method public onDevicePolicyManagerStateChanged()V
    .locals 0

    .prologue
    .line 365
    return-void
.end method

.method public onDeviceProvisioned()V
    .locals 0

    .prologue
    .line 359
    return-void
.end method

.method public onPause()V
    .locals 3

    .prologue
    .line 256
    const-string v0, "SignatureLockScreen"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPause(), mBoundToSignService("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/internal/policy/impl/sec/SignatureLockScreen;->mBoundToSignService:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") mSignService("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/policy/impl/sec/SignatureLockScreen;->mSignService:Lcom/android/internal/policy/ISignServiceInterface;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 259
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/SignatureLockScreen;->mClockWidget:Lcom/android/internal/policy/impl/sec/ClockWidget;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/sec/ClockWidget;->onPause()V

    .line 260
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/SignatureLockScreen;->mKeyguardStatusViewManager:Lcom/android/internal/policy/impl/KeyguardStatusViewManager;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->onPause()V

    .line 262
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/sec/SignatureLockScreen;->mBoundToSignService:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 263
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/SignatureLockScreen;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/SignatureLockScreen;->mServiceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 264
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/sec/SignatureLockScreen;->mBoundToSignService:Z

    .line 266
    :cond_0
    return-void
.end method

.method public onPhoneStateChanged(I)V
    .locals 0
    .parameter "phoneState"

    .prologue
    .line 348
    return-void
.end method

.method public onRefreshBatteryInfo(ZZI)V
    .locals 3
    .parameter "showBatteryInfo"
    .parameter "pluggedIn"
    .parameter "batteryLevel"

    .prologue
    .line 305
    const-string v0, "SignatureLockScreen"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onRefreshBatteryInfo() showPatteryInfo: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " pluggedIn: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " batteryLevel: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 307
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/SignatureLockScreen;->mClockWidget:Lcom/android/internal/policy/impl/sec/ClockWidget;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/policy/impl/sec/ClockWidget;->refreshBatteryInfo(ZZI)V

    .line 308
    return-void
.end method

.method public onRefreshCarrierInfo(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V
    .locals 1
    .parameter "plmn"
    .parameter "spn"

    .prologue
    .line 318
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/SignatureLockScreen;->mClockWidget:Lcom/android/internal/policy/impl/sec/ClockWidget;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/policy/impl/sec/ClockWidget;->onRefreshCarrierInfo(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 319
    return-void
.end method

.method public onRefreshCarrierInfo(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)V
    .locals 0
    .parameter "plmn"
    .parameter "spn"
    .parameter "subscription"

    .prologue
    .line 323
    return-void
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 271
    const-string v0, "SignatureLockScreen"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onResume(), mBoundToSignService("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/internal/policy/impl/sec/SignatureLockScreen;->mBoundToSignService:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") mSignService("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/policy/impl/sec/SignatureLockScreen;->mSignService:Lcom/android/internal/policy/ISignServiceInterface;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 274
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/SignatureLockScreen;->mClockWidget:Lcom/android/internal/policy/impl/sec/ClockWidget;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/sec/ClockWidget;->onResume()V

    .line 275
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/SignatureLockScreen;->mKeyguardStatusViewManager:Lcom/android/internal/policy/impl/KeyguardStatusViewManager;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->onResume()V

    .line 277
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/sec/SignatureLockScreen;->mBoundToSignService:Z

    if-nez v0, :cond_0

    .line 278
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/sec/SignatureLockScreen;->bindToSignatureLock()V

    .line 279
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/sec/SignatureLockScreen;->mBoundToSignService:Z

    .line 281
    :cond_0
    return-void
.end method

.method public onRingerModeChanged(I)V
    .locals 0
    .parameter "state"

    .prologue
    .line 337
    return-void
.end method

.method public onSimStateChanged(Lcom/android/internal/telephony/IccCard$State;)V
    .locals 1
    .parameter "simState"

    .prologue
    .line 327
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/SignatureLockScreen;->mClockWidget:Lcom/android/internal/policy/impl/sec/ClockWidget;

    invoke-virtual {v0, p1}, Lcom/android/internal/policy/impl/sec/ClockWidget;->onSimStateChanged(Lcom/android/internal/telephony/IccCard$State;)V

    .line 328
    return-void
.end method

.method public onSimStateChanged(Lcom/android/internal/telephony/IccCard$State;I)V
    .locals 0
    .parameter "simState"
    .parameter "subscription"

    .prologue
    .line 332
    return-void
.end method

.method public onTimeChanged()V
    .locals 0

    .prologue
    .line 314
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3
    .parameter "event"

    .prologue
    .line 235
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 250
    :cond_0
    :goto_0
    :pswitch_0
    const/4 v0, 0x1

    return v0

    .line 237
    :pswitch_1
    sget-boolean v0, Lcom/android/internal/policy/impl/sec/SignatureLockScreen;->DBG_TOUCH:Z

    if-eqz v0, :cond_1

    const-string v0, "SignatureLockScreen"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ACTION_DOWN, ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/android/internal/policy/impl/sec/SignatureLockScreen;->mState:Lcom/android/internal/policy/impl/sec/SignatureLockScreen$IdentifyState;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 239
    :cond_1
    sget-object v0, Lcom/android/internal/policy/impl/sec/SignatureLockScreen$IdentifyState;->FAIL:Lcom/android/internal/policy/impl/sec/SignatureLockScreen$IdentifyState;

    sget-object v1, Lcom/android/internal/policy/impl/sec/SignatureLockScreen;->mState:Lcom/android/internal/policy/impl/sec/SignatureLockScreen$IdentifyState;

    if-ne v0, v1, :cond_0

    .line 240
    sget-object v0, Lcom/android/internal/policy/impl/sec/SignatureLockScreen$IdentifyState;->INIT:Lcom/android/internal/policy/impl/sec/SignatureLockScreen$IdentifyState;

    sput-object v0, Lcom/android/internal/policy/impl/sec/SignatureLockScreen;->mState:Lcom/android/internal/policy/impl/sec/SignatureLockScreen$IdentifyState;

    goto :goto_0

    .line 246
    :pswitch_2
    sget-boolean v0, Lcom/android/internal/policy/impl/sec/SignatureLockScreen;->DBG_TOUCH:Z

    if-eqz v0, :cond_0

    const-string v0, "SignatureLockScreen"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ACTION_UP, mState: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/android/internal/policy/impl/sec/SignatureLockScreen;->mState:Lcom/android/internal/policy/impl/sec/SignatureLockScreen$IdentifyState;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 235
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public onUserChanged(I)V
    .locals 0
    .parameter "userId"

    .prologue
    .line 371
    return-void
.end method
