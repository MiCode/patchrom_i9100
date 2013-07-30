.class public Lcom/android/sec_settings/CryptKeeper;
.super Landroid/app/Activity;
.source "CryptKeeper.java"

# interfaces
.implements Landroid/text/TextWatcher;
.implements Landroid/view/View$OnKeyListener;
.implements Landroid/view/View$OnTouchListener;
.implements Landroid/widget/TextView$OnEditorActionListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/sec_settings/CryptKeeper$ValidationTask;,
        Lcom/android/sec_settings/CryptKeeper$DecryptTask;,
        Lcom/android/sec_settings/CryptKeeper$FadeToBlack;,
        Lcom/android/sec_settings/CryptKeeper$NonConfigurationInstanceState;
    }
.end annotation


# static fields
.field private static emergencyCallStatus:Z

.field private static failedAttemptsCount:I

.field private static mCooldown:I

.field private static mPasswordMaxLength:I

.field private static mSavedPassword:Ljava/lang/String;


# instance fields
.field private mAudioManager:Landroid/media/AudioManager;

.field private mCountdownTimer:Landroid/os/CountDownTimer;

.field private mDPM:Landroid/app/admin/DevicePolicyManager;

.field private mEncrypt:Z

.field private mEncryptionGoneBad:Z

.field private final mHandler:Landroid/os/Handler;

.field private mIgnoreBack:Z

.field private mNotificationCountdown:I

.field private mPasswordEntry:Landroid/widget/EditText;

.field private mValidationComplete:Z

.field private mValidationRequested:Z

.field mWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 117
    sput v1, Lcom/android/sec_settings/CryptKeeper;->mCooldown:I

    .line 120
    const-string v0, ""

    sput-object v0, Lcom/android/sec_settings/CryptKeeper;->mSavedPassword:Ljava/lang/String;

    .line 121
    sput-boolean v1, Lcom/android/sec_settings/CryptKeeper;->emergencyCallStatus:Z

    .line 124
    sput v1, Lcom/android/sec_settings/CryptKeeper;->failedAttemptsCount:I

    .line 129
    sput v1, Lcom/android/sec_settings/CryptKeeper;->mPasswordMaxLength:I

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 81
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 113
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/sec_settings/CryptKeeper;->mEncrypt:Z

    .line 116
    iput-boolean v1, p0, Lcom/android/sec_settings/CryptKeeper;->mIgnoreBack:Z

    .line 123
    iput v1, p0, Lcom/android/sec_settings/CryptKeeper;->mNotificationCountdown:I

    .line 237
    new-instance v0, Lcom/android/sec_settings/CryptKeeper$1;

    invoke-direct {v0, p0}, Lcom/android/sec_settings/CryptKeeper$1;-><init>(Lcom/android/sec_settings/CryptKeeper;)V

    iput-object v0, p0, Lcom/android/sec_settings/CryptKeeper;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/android/sec_settings/CryptKeeper;)Landroid/os/storage/IMountService;
    .locals 1
    .parameter "x0"

    .prologue
    .line 81
    invoke-direct {p0}, Lcom/android/sec_settings/CryptKeeper;->getMountService()Landroid/os/storage/IMountService;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100()I
    .locals 1

    .prologue
    .line 81
    sget v0, Lcom/android/sec_settings/CryptKeeper;->failedAttemptsCount:I

    return v0
.end method

.method static synthetic access$102(I)I
    .locals 0
    .parameter "x0"

    .prologue
    .line 81
    sput p0, Lcom/android/sec_settings/CryptKeeper;->failedAttemptsCount:I

    return p0
.end method

.method static synthetic access$1102(Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"

    .prologue
    .line 81
    sput-object p0, Lcom/android/sec_settings/CryptKeeper;->mSavedPassword:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1200()Z
    .locals 1

    .prologue
    .line 81
    sget-boolean v0, Lcom/android/sec_settings/CryptKeeper;->emergencyCallStatus:Z

    return v0
.end method

.method static synthetic access$1202(Z)Z
    .locals 0
    .parameter "x0"

    .prologue
    .line 81
    sput-boolean p0, Lcom/android/sec_settings/CryptKeeper;->emergencyCallStatus:Z

    return p0
.end method

.method static synthetic access$1400(Lcom/android/sec_settings/CryptKeeper;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 81
    invoke-direct {p0}, Lcom/android/sec_settings/CryptKeeper;->takeEmergencyCallAction()V

    return-void
.end method

.method static synthetic access$200()I
    .locals 1

    .prologue
    .line 81
    sget v0, Lcom/android/sec_settings/CryptKeeper;->mCooldown:I

    return v0
.end method

.method static synthetic access$202(I)I
    .locals 0
    .parameter "x0"

    .prologue
    .line 81
    sput p0, Lcom/android/sec_settings/CryptKeeper;->mCooldown:I

    return p0
.end method

.method static synthetic access$300(Lcom/android/sec_settings/CryptKeeper;J)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 81
    invoke-direct {p0, p1, p2}, Lcom/android/sec_settings/CryptKeeper;->handleAttemptLockout(J)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/sec_settings/CryptKeeper;)Landroid/widget/EditText;
    .locals 1
    .parameter "x0"

    .prologue
    .line 81
    iget-object v0, p0, Lcom/android/sec_settings/CryptKeeper;->mPasswordEntry:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$502(Lcom/android/sec_settings/CryptKeeper;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 81
    iput-boolean p1, p0, Lcom/android/sec_settings/CryptKeeper;->mValidationComplete:Z

    return p1
.end method

.method static synthetic access$602(Lcom/android/sec_settings/CryptKeeper;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 81
    iput-boolean p1, p0, Lcom/android/sec_settings/CryptKeeper;->mEncryptionGoneBad:Z

    return p1
.end method

.method static synthetic access$700(Lcom/android/sec_settings/CryptKeeper;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 81
    invoke-direct {p0}, Lcom/android/sec_settings/CryptKeeper;->setupUi()V

    return-void
.end method

.method static synthetic access$800(Lcom/android/sec_settings/CryptKeeper;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 81
    invoke-direct {p0}, Lcom/android/sec_settings/CryptKeeper;->updateProgress()V

    return-void
.end method

.method static synthetic access$900(Lcom/android/sec_settings/CryptKeeper;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 81
    invoke-direct {p0}, Lcom/android/sec_settings/CryptKeeper;->notifyUser()V

    return-void
.end method

.method private delayAudioNotification()V
    .locals 2

    .prologue
    .line 812
    const-string v0, "CryptKeeper"

    const-string v1, "User entering password: delay audio notification"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 813
    const/16 v0, 0x14

    iput v0, p0, Lcom/android/sec_settings/CryptKeeper;->mNotificationCountdown:I

    .line 814
    return-void
.end method

.method private encryptionProgressInit()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 429
    const-string v1, "CryptKeeper"

    const-string v2, "Encryption progress screen initializing."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 430
    iget-object v1, p0, Lcom/android/sec_settings/CryptKeeper;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-nez v1, :cond_0

    .line 431
    const-string v1, "CryptKeeper"

    const-string v2, "Acquiring wakelock."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 432
    const-string v1, "power"

    invoke-virtual {p0, v1}, Lcom/android/sec_settings/CryptKeeper;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 433
    .local v0, pm:Landroid/os/PowerManager;
    const/16 v1, 0x1a

    const-string v2, "CryptKeeper"

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    iput-object v1, p0, Lcom/android/sec_settings/CryptKeeper;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 434
    iget-object v1, p0, Lcom/android/sec_settings/CryptKeeper;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 437
    .end local v0           #pm:Landroid/os/PowerManager;
    :cond_0
    const v1, 0x7f0b005d

    invoke-virtual {p0, v1}, Lcom/android/sec_settings/CryptKeeper;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ProgressBar;

    invoke-virtual {v1, v3}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    .line 439
    iput-boolean v3, p0, Lcom/android/sec_settings/CryptKeeper;->mIgnoreBack:Z

    .line 442
    invoke-direct {p0}, Lcom/android/sec_settings/CryptKeeper;->updateProgress()V

    .line 443
    return-void
.end method

.method private getMountService()Landroid/os/storage/IMountService;
    .locals 2

    .prologue
    .line 674
    const-string v1, "mount"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 675
    .local v0, service:Landroid/os/IBinder;
    if-eqz v0, :cond_0

    .line 676
    invoke-static {v0}, Landroid/os/storage/IMountService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/storage/IMountService;

    move-result-object v1

    .line 678
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private handleAttemptLockout(J)V
    .locals 8
    .parameter "elapsedRealtimeDeadline"

    .prologue
    .line 849
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    .line 850
    .local v6, elapsedRealtime:J
    new-instance v0, Lcom/android/sec_settings/CryptKeeper$7;

    sub-long v2, p1, v6

    const-wide/16 v4, 0x3e8

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/sec_settings/CryptKeeper$7;-><init>(Lcom/android/sec_settings/CryptKeeper;JJ)V

    invoke-virtual {v0}, Lcom/android/sec_settings/CryptKeeper$7;->start()Landroid/os/CountDownTimer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/sec_settings/CryptKeeper;->mCountdownTimer:Landroid/os/CountDownTimer;

    .line 889
    return-void
.end method

.method private hasMultipleEnabledIMEsOrSubtypes(Landroid/view/inputmethod/InputMethodManager;Z)Z
    .locals 12
    .parameter "imm"
    .parameter "shouldIncludeAuxiliarySubtypes"

    .prologue
    const/4 v9, 0x0

    const/4 v10, 0x1

    .line 634
    invoke-virtual {p1}, Landroid/view/inputmethod/InputMethodManager;->getEnabledInputMethodList()Ljava/util/List;

    move-result-object v1

    .line 637
    .local v1, enabledImis:Ljava/util/List;,"Ljava/util/List<Landroid/view/inputmethod/InputMethodInfo;>;"
    const/4 v2, 0x0

    .line 639
    .local v2, filteredImisCount:I
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/inputmethod/InputMethodInfo;

    .line 641
    .local v5, imi:Landroid/view/inputmethod/InputMethodInfo;
    if-le v2, v10, :cond_1

    .line 667
    .end local v5           #imi:Landroid/view/inputmethod/InputMethodInfo;
    :goto_1
    return v10

    .line 642
    .restart local v5       #imi:Landroid/view/inputmethod/InputMethodInfo;
    :cond_1
    invoke-virtual {p1, v5, v10}, Landroid/view/inputmethod/InputMethodManager;->getEnabledInputMethodSubtypeList(Landroid/view/inputmethod/InputMethodInfo;Z)Ljava/util/List;

    move-result-object v8

    .line 645
    .local v8, subtypes:Ljava/util/List;,"Ljava/util/List<Landroid/view/inputmethod/InputMethodSubtype;>;"
    invoke-interface {v8}, Ljava/util/List;->isEmpty()Z

    move-result v11

    if-eqz v11, :cond_2

    .line 646
    add-int/lit8 v2, v2, 0x1

    .line 647
    goto :goto_0

    .line 650
    :cond_2
    const/4 v0, 0x0

    .line 651
    .local v0, auxCount:I
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, i$:Ljava/util/Iterator;
    :cond_3
    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/inputmethod/InputMethodSubtype;

    .line 652
    .local v7, subtype:Landroid/view/inputmethod/InputMethodSubtype;
    invoke-virtual {v7}, Landroid/view/inputmethod/InputMethodSubtype;->isAuxiliary()Z

    move-result v11

    if-eqz v11, :cond_3

    .line 653
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 656
    .end local v7           #subtype:Landroid/view/inputmethod/InputMethodSubtype;
    :cond_4
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v11

    sub-int v6, v11, v0

    .line 661
    .local v6, nonAuxCount:I
    if-gtz v6, :cond_5

    if-eqz p2, :cond_0

    if-le v0, v10, :cond_0

    .line 662
    :cond_5
    add-int/lit8 v2, v2, 0x1

    .line 663
    goto :goto_0

    .line 667
    .end local v0           #auxCount:I
    .end local v4           #i$:Ljava/util/Iterator;
    .end local v5           #imi:Landroid/view/inputmethod/InputMethodInfo;
    .end local v6           #nonAuxCount:I
    .end local v8           #subtypes:Ljava/util/List;,"Ljava/util/List<Landroid/view/inputmethod/InputMethodSubtype;>;"
    :cond_6
    if-gt v2, v10, :cond_7

    const/4 v11, 0x0

    invoke-virtual {p1, v11, v9}, Landroid/view/inputmethod/InputMethodManager;->getEnabledInputMethodSubtypeList(Landroid/view/inputmethod/InputMethodInfo;Z)Ljava/util/List;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v11

    if-le v11, v10, :cond_8

    :cond_7
    move v9, v10

    :cond_8
    move v10, v9

    goto :goto_1
.end method

.method private isDebugView()Z
    .locals 2

    .prologue
    .line 256
    invoke-virtual {p0}, Lcom/android/sec_settings/CryptKeeper;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "com.android.settings.CryptKeeper.DEBUG_FORCE_VIEW"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private isDebugView(Ljava/lang/String;)Z
    .locals 2
    .parameter "viewType"

    .prologue
    .line 261
    invoke-virtual {p0}, Lcom/android/sec_settings/CryptKeeper;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "com.android.settings.CryptKeeper.DEBUG_FORCE_VIEW"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private isEmergencyCallCapable()Z
    .locals 2

    .prologue
    .line 778
    invoke-virtual {p0}, Lcom/android/sec_settings/CryptKeeper;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x111002a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    return v0
.end method

.method private launchEmergencyDialer()V
    .locals 2

    .prologue
    .line 801
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.phone.EmergencyDialer.DIAL"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 802
    .local v0, intent:Landroid/content/Intent;
    const/high16 v1, 0x1080

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 804
    invoke-virtual {p0, v0}, Lcom/android/sec_settings/CryptKeeper;->startActivity(Landroid/content/Intent;)V

    .line 805
    const/4 v1, 0x1

    sput-boolean v1, Lcom/android/sec_settings/CryptKeeper;->emergencyCallStatus:Z

    .line 806
    return-void
.end method

.method private notifyUser()V
    .locals 5

    .prologue
    const/4 v4, 0x3

    .line 268
    iget v1, p0, Lcom/android/sec_settings/CryptKeeper;->mNotificationCountdown:I

    if-lez v1, :cond_1

    .line 269
    const-string v1, "CryptKeeper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Counting down to notify user..."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/sec_settings/CryptKeeper;->mNotificationCountdown:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 270
    iget v1, p0, Lcom/android/sec_settings/CryptKeeper;->mNotificationCountdown:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/android/sec_settings/CryptKeeper;->mNotificationCountdown:I

    .line 285
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/sec_settings/CryptKeeper;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 286
    iget-object v1, p0, Lcom/android/sec_settings/CryptKeeper;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x1388

    invoke-virtual {v1, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 287
    return-void

    .line 271
    :cond_1
    iget-object v1, p0, Lcom/android/sec_settings/CryptKeeper;->mAudioManager:Landroid/media/AudioManager;

    if-eqz v1, :cond_0

    .line 272
    const-string v1, "CryptKeeper"

    const-string v2, "Notifying user that we are waiting for input..."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 279
    :try_start_0
    iget-object v1, p0, Lcom/android/sec_settings/CryptKeeper;->mAudioManager:Landroid/media/AudioManager;

    const/4 v2, 0x5

    const/high16 v3, 0x42c8

    invoke-virtual {v1, v2, v3}, Landroid/media/AudioManager;->playSoundEffect(IF)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 280
    :catch_0
    move-exception v0

    .line 281
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "CryptKeeper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "notifyUser: Exception while playing sound: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private passwordEntryInit()V
    .locals 15

    .prologue
    .line 510
    const v10, 0x7f0b005b

    invoke-virtual {p0, v10}, Lcom/android/sec_settings/CryptKeeper;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/EditText;

    iput-object v10, p0, Lcom/android/sec_settings/CryptKeeper;->mPasswordEntry:Landroid/widget/EditText;

    .line 511
    iget-object v10, p0, Lcom/android/sec_settings/CryptKeeper;->mPasswordEntry:Landroid/widget/EditText;

    invoke-virtual {v10, p0}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 512
    iget-object v10, p0, Lcom/android/sec_settings/CryptKeeper;->mPasswordEntry:Landroid/widget/EditText;

    invoke-virtual {v10}, Landroid/widget/EditText;->requestFocus()Z

    .line 515
    sget v10, Lcom/android/sec_settings/CryptKeeper;->mPasswordMaxLength:I

    if-nez v10, :cond_0

    .line 516
    iget-object v10, p0, Lcom/android/sec_settings/CryptKeeper;->mDPM:Landroid/app/admin/DevicePolicyManager;

    const/high16 v11, 0x6

    invoke-virtual {v10, v11}, Landroid/app/admin/DevicePolicyManager;->getPasswordMaximumLength(I)I

    move-result v10

    sput v10, Lcom/android/sec_settings/CryptKeeper;->mPasswordMaxLength:I

    .line 517
    :cond_0
    iget-object v10, p0, Lcom/android/sec_settings/CryptKeeper;->mPasswordEntry:Landroid/widget/EditText;

    const/4 v11, 0x1

    new-array v11, v11, [Landroid/text/InputFilter;

    const/4 v12, 0x0

    new-instance v13, Landroid/text/InputFilter$LengthFilter;

    sget v14, Lcom/android/sec_settings/CryptKeeper;->mPasswordMaxLength:I

    invoke-direct {v13, v14}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v13, v11, v12

    invoke-virtual {v10, v11}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 519
    new-instance v9, Lcom/android/sec_settings/CryptKeeper$3;

    invoke-direct {v9, p0}, Lcom/android/sec_settings/CryptKeeper$3;-><init>(Lcom/android/sec_settings/CryptKeeper;)V

    .line 537
    .local v9, watcher:Landroid/text/TextWatcher;
    iget-object v10, p0, Lcom/android/sec_settings/CryptKeeper;->mPasswordEntry:Landroid/widget/EditText;

    invoke-virtual {v10, v9}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 540
    iget-object v10, p0, Lcom/android/sec_settings/CryptKeeper;->mPasswordEntry:Landroid/widget/EditText;

    invoke-virtual {v10, p0}, Landroid/widget/EditText;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 541
    iget-object v10, p0, Lcom/android/sec_settings/CryptKeeper;->mPasswordEntry:Landroid/widget/EditText;

    invoke-virtual {v10, p0}, Landroid/widget/EditText;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 542
    iget-object v10, p0, Lcom/android/sec_settings/CryptKeeper;->mPasswordEntry:Landroid/widget/EditText;

    invoke-virtual {v10, p0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 545
    const-string v10, "phone"

    invoke-virtual {p0, v10}, Lcom/android/sec_settings/CryptKeeper;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/telephony/TelephonyManager;

    .line 546
    .local v8, tm:Landroid/telephony/TelephonyManager;
    invoke-virtual {v8}, Landroid/telephony/TelephonyManager;->isVoiceCapable()Z

    move-result v10

    if-nez v10, :cond_1

    .line 547
    const v10, 0x7f0b0068

    invoke-virtual {p0, v10}, Lcom/android/sec_settings/CryptKeeper;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 548
    .local v2, emergencyCall:Landroid/view/View;
    if-eqz v2, :cond_1

    .line 549
    const-string v10, "CryptKeeper"

    const-string v11, "Removing the emergency Call button"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 550
    const/16 v10, 0x8

    invoke-virtual {v2, v10}, Landroid/view/View;->setVisibility(I)V

    .line 554
    .end local v2           #emergencyCall:Landroid/view/View;
    :cond_1
    const v10, 0x7f0b0069

    invoke-virtual {p0, v10}, Lcom/android/sec_settings/CryptKeeper;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 555
    .local v3, imeSwitcher:Landroid/view/View;
    const-string v10, "input_method"

    invoke-virtual {p0, v10}, Lcom/android/sec_settings/CryptKeeper;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/inputmethod/InputMethodManager;

    .line 557
    .local v4, imm:Landroid/view/inputmethod/InputMethodManager;
    if-eqz v3, :cond_2

    const/4 v10, 0x0

    invoke-direct {p0, v4, v10}, Lcom/android/sec_settings/CryptKeeper;->hasMultipleEnabledIMEsOrSubtypes(Landroid/view/inputmethod/InputMethodManager;Z)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 558
    const/4 v10, 0x0

    invoke-virtual {v3, v10}, Landroid/view/View;->setVisibility(I)V

    .line 559
    new-instance v10, Lcom/android/sec_settings/CryptKeeper$4;

    invoke-direct {v10, p0, v4}, Lcom/android/sec_settings/CryptKeeper$4;-><init>(Lcom/android/sec_settings/CryptKeeper;Landroid/view/inputmethod/InputMethodManager;)V

    invoke-virtual {v3, v10}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 570
    :cond_2
    iget-object v10, p0, Lcom/android/sec_settings/CryptKeeper;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-nez v10, :cond_3

    .line 571
    const-string v10, "CryptKeeper"

    const-string v11, "Acquiring wakelock."

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 572
    const-string v10, "power"

    invoke-virtual {p0, v10}, Lcom/android/sec_settings/CryptKeeper;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/PowerManager;

    .line 573
    .local v5, pm:Landroid/os/PowerManager;
    if-eqz v5, :cond_3

    .line 574
    const/16 v10, 0x1a

    const-string v11, "CryptKeeper"

    invoke-virtual {v5, v10, v11}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v10

    iput-object v10, p0, Lcom/android/sec_settings/CryptKeeper;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 575
    iget-object v10, p0, Lcom/android/sec_settings/CryptKeeper;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v10}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 580
    .end local v5           #pm:Landroid/os/PowerManager;
    :cond_3
    iget-object v10, p0, Lcom/android/sec_settings/CryptKeeper;->mHandler:Landroid/os/Handler;

    new-instance v11, Lcom/android/sec_settings/CryptKeeper$5;

    invoke-direct {v11, p0, v4}, Lcom/android/sec_settings/CryptKeeper$5;-><init>(Lcom/android/sec_settings/CryptKeeper;Landroid/view/inputmethod/InputMethodManager;)V

    const-wide/16 v12, 0x0

    invoke-virtual {v10, v11, v12, v13}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 592
    invoke-direct {p0}, Lcom/android/sec_settings/CryptKeeper;->updateEmergencyCallButtonState()V

    .line 594
    const v10, 0x7f0b0020

    invoke-virtual {p0, v10}, Lcom/android/sec_settings/CryptKeeper;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 595
    .local v6, status:Landroid/widget/TextView;
    const v10, 0x7f090960

    invoke-virtual {p0, v10}, Lcom/android/sec_settings/CryptKeeper;->getText(I)Ljava/lang/CharSequence;

    move-result-object v7

    .line 596
    .local v7, tempStatus:Ljava/lang/CharSequence;
    sget v10, Lcom/android/sec_settings/CryptKeeper;->failedAttemptsCount:I

    if-eqz v10, :cond_4

    .line 597
    sget v10, Lcom/android/sec_settings/CryptKeeper;->failedAttemptsCount:I

    const/16 v11, 0x14

    if-ge v10, v11, :cond_8

    .line 598
    const v10, 0x7f0907c3

    invoke-virtual {v6, v10}, Landroid/widget/TextView;->setText(I)V

    .line 604
    :cond_4
    :goto_0
    sget-object v10, Lcom/android/sec_settings/CryptKeeper;->mSavedPassword:Ljava/lang/String;

    const-string v11, ""

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_5

    .line 605
    iget-object v10, p0, Lcom/android/sec_settings/CryptKeeper;->mPasswordEntry:Landroid/widget/EditText;

    sget-object v11, Lcom/android/sec_settings/CryptKeeper;->mSavedPassword:Ljava/lang/String;

    invoke-virtual {v10, v11}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 606
    iget-object v10, p0, Lcom/android/sec_settings/CryptKeeper;->mPasswordEntry:Landroid/widget/EditText;

    iget-object v11, p0, Lcom/android/sec_settings/CryptKeeper;->mPasswordEntry:Landroid/widget/EditText;

    invoke-virtual {v11}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v11

    invoke-interface {v11}, Landroid/text/Editable;->length()I

    move-result v11

    invoke-virtual {v10, v11}, Landroid/widget/EditText;->setSelection(I)V

    .line 607
    iget-object v10, p0, Lcom/android/sec_settings/CryptKeeper;->mPasswordEntry:Landroid/widget/EditText;

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 610
    :cond_5
    iget-object v10, p0, Lcom/android/sec_settings/CryptKeeper;->mCountdownTimer:Landroid/os/CountDownTimer;

    if-eqz v10, :cond_6

    .line 611
    iget-object v10, p0, Lcom/android/sec_settings/CryptKeeper;->mCountdownTimer:Landroid/os/CountDownTimer;

    invoke-virtual {v10}, Landroid/os/CountDownTimer;->cancel()V

    .line 615
    :cond_6
    sget v10, Lcom/android/sec_settings/CryptKeeper;->mCooldown:I

    if-eqz v10, :cond_7

    .line 616
    sget v10, Lcom/android/sec_settings/CryptKeeper;->mCooldown:I

    invoke-virtual {p0, v10}, Lcom/android/sec_settings/CryptKeeper;->setLockoutAttemptDeadline(I)J

    move-result-wide v0

    .line 617
    .local v0, deadline:J
    invoke-direct {p0, v0, v1}, Lcom/android/sec_settings/CryptKeeper;->handleAttemptLockout(J)V

    .line 621
    .end local v0           #deadline:J
    :cond_7
    iget-object v10, p0, Lcom/android/sec_settings/CryptKeeper;->mHandler:Landroid/os/Handler;

    const/4 v11, 0x3

    invoke-virtual {v10, v11}, Landroid/os/Handler;->removeMessages(I)V

    .line 622
    iget-object v10, p0, Lcom/android/sec_settings/CryptKeeper;->mHandler:Landroid/os/Handler;

    const/4 v11, 0x3

    const-wide/32 v12, 0x1d4c0

    invoke-virtual {v10, v11, v12, v13}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 623
    return-void

    .line 600
    :cond_8
    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/CharSequence;

    const/4 v11, 0x0

    sget v12, Lcom/android/sec_settings/CryptKeeper;->failedAttemptsCount:I

    rsub-int/lit8 v12, v12, 0x1e

    invoke-static {v12}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-static {v7, v10}, Landroid/text/TextUtils;->expandTemplate(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v10

    invoke-virtual {v6, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private resumeCall()V
    .locals 5

    .prologue
    .line 790
    const-string v2, "phone"

    invoke-static {v2}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    .line 791
    .local v1, phone:Lcom/android/internal/telephony/ITelephony;
    if-eqz v1, :cond_0

    .line 793
    :try_start_0
    invoke-interface {v1}, Lcom/android/internal/telephony/ITelephony;->showCallScreen()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 798
    :cond_0
    :goto_0
    return-void

    .line 794
    :catch_0
    move-exception v0

    .line 795
    .local v0, e:Landroid/os/RemoteException;
    const-string v2, "CryptKeeper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error calling ITelephony service: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private final setAirplaneModeIfNecessary()V
    .locals 5

    .prologue
    const/4 v2, 0x1

    .line 725
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getLteOnCdmaMode()I

    move-result v3

    if-ne v3, v2, :cond_1

    move v1, v2

    .line 727
    .local v1, isLteDevice:Z
    :goto_0
    if-nez v1, :cond_0

    .line 728
    const-string v3, "CryptKeeper"

    const-string v4, "Going into airplane mode."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 729
    invoke-virtual {p0}, Lcom/android/sec_settings/CryptKeeper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "airplane_mode_on"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 730
    new-instance v0, Landroid/content/Intent;

    const-string v3, "android.intent.action.AIRPLANE_MODE"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 731
    .local v0, intent:Landroid/content/Intent;
    const-string v3, "state"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 732
    invoke-virtual {p0, v0}, Lcom/android/sec_settings/CryptKeeper;->sendBroadcast(Landroid/content/Intent;)V

    .line 734
    .end local v0           #intent:Landroid/content/Intent;
    :cond_0
    return-void

    .line 725
    .end local v1           #isLteDevice:Z
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private setupUi()V
    .locals 6

    .prologue
    const/4 v3, 0x0

    const v5, 0x7f040034

    .line 363
    iget-boolean v4, p0, Lcom/android/sec_settings/CryptKeeper;->mEncryptionGoneBad:Z

    if-nez v4, :cond_0

    const-string v4, "error"

    invoke-direct {p0, v4}, Lcom/android/sec_settings/CryptKeeper;->isDebugView(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 364
    :cond_0
    invoke-virtual {p0, v5}, Lcom/android/sec_settings/CryptKeeper;->setContentView(I)V

    .line 365
    invoke-direct {p0}, Lcom/android/sec_settings/CryptKeeper;->showFactoryReset()V

    .line 389
    :cond_1
    :goto_0
    return-void

    .line 369
    :cond_2
    const-string v4, "vold.encrypt_progress"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 370
    .local v0, progress:Ljava/lang/String;
    const-string v4, ""

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    const-string v4, "progress"

    invoke-direct {p0, v4}, Lcom/android/sec_settings/CryptKeeper;->isDebugView(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 371
    :cond_3
    invoke-virtual {p0, v5}, Lcom/android/sec_settings/CryptKeeper;->setContentView(I)V

    .line 373
    const-string v3, "vold.encrypt_type"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 374
    .local v2, type:Ljava/lang/String;
    const-string v3, "decrypt"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 375
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/android/sec_settings/CryptKeeper;->mEncrypt:Z

    .line 376
    const v3, 0x7f0b0035

    invoke-virtual {p0, v3}, Lcom/android/sec_settings/CryptKeeper;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 377
    .local v1, tv:Landroid/widget/TextView;
    const v3, 0x7f09095c

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(I)V

    .line 380
    .end local v1           #tv:Landroid/widget/TextView;
    :cond_4
    invoke-direct {p0}, Lcom/android/sec_settings/CryptKeeper;->encryptionProgressInit()V

    goto :goto_0

    .line 381
    .end local v2           #type:Ljava/lang/String;
    :cond_5
    iget-boolean v4, p0, Lcom/android/sec_settings/CryptKeeper;->mValidationComplete:Z

    if-nez v4, :cond_6

    const-string v4, "password"

    invoke-direct {p0, v4}, Lcom/android/sec_settings/CryptKeeper;->isDebugView(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 382
    :cond_6
    const v3, 0x7f040032

    invoke-virtual {p0, v3}, Lcom/android/sec_settings/CryptKeeper;->setContentView(I)V

    .line 383
    invoke-direct {p0}, Lcom/android/sec_settings/CryptKeeper;->passwordEntryInit()V

    goto :goto_0

    .line 384
    :cond_7
    iget-boolean v4, p0, Lcom/android/sec_settings/CryptKeeper;->mValidationRequested:Z

    if-nez v4, :cond_1

    .line 386
    new-instance v4, Lcom/android/sec_settings/CryptKeeper$ValidationTask;

    invoke-direct {v4, p0, v3}, Lcom/android/sec_settings/CryptKeeper$ValidationTask;-><init>(Lcom/android/sec_settings/CryptKeeper;Lcom/android/sec_settings/CryptKeeper$1;)V

    check-cast v3, [Ljava/lang/Void;

    invoke-virtual {v4, v3}, Lcom/android/sec_settings/CryptKeeper$ValidationTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 387
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/sec_settings/CryptKeeper;->mValidationRequested:Z

    goto :goto_0
.end method

.method private showFactoryReset()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 447
    const v2, 0x7f0b006a

    invoke-virtual {p0, v2}, Lcom/android/sec_settings/CryptKeeper;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 450
    const v2, 0x7f0b006b

    invoke-virtual {p0, v2}, Lcom/android/sec_settings/CryptKeeper;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 451
    .local v0, button:Landroid/widget/Button;
    invoke-virtual {v0, v4}, Landroid/widget/Button;->setVisibility(I)V

    .line 452
    new-instance v2, Lcom/android/sec_settings/CryptKeeper$2;

    invoke-direct {v2, p0}, Lcom/android/sec_settings/CryptKeeper$2;-><init>(Lcom/android/sec_settings/CryptKeeper;)V

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 461
    const v2, 0x7f0b0035

    invoke-virtual {p0, v2}, Lcom/android/sec_settings/CryptKeeper;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const v3, 0x7f090172

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 462
    const v2, 0x7f0b0020

    invoke-virtual {p0, v2}, Lcom/android/sec_settings/CryptKeeper;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const v3, 0x7f090173

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 465
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/sec_settings/CryptKeeper;->mIgnoreBack:Z

    .line 467
    const v2, 0x7f0b006c

    invoke-virtual {p0, v2}, Lcom/android/sec_settings/CryptKeeper;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 469
    .local v1, view:Landroid/view/View;
    if-eqz v1, :cond_0

    .line 470
    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 472
    :cond_0
    return-void
.end method

.method private takeEmergencyCallAction()V
    .locals 2

    .prologue
    .line 782
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 783
    invoke-direct {p0}, Lcom/android/sec_settings/CryptKeeper;->resumeCall()V

    .line 787
    :goto_0
    return-void

    .line 785
    :cond_0
    invoke-direct {p0}, Lcom/android/sec_settings/CryptKeeper;->launchEmergencyDialer()V

    goto :goto_0
.end method

.method private updateEmergencyCallButtonState()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 743
    const v5, 0x7f0b0068

    invoke-virtual {p0, v5}, Lcom/android/sec_settings/CryptKeeper;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 745
    .local v0, emergencyCall:Landroid/widget/Button;
    if-nez v0, :cond_0

    .line 775
    :goto_0
    return-void

    .line 748
    :cond_0
    invoke-direct {p0}, Lcom/android/sec_settings/CryptKeeper;->isEmergencyCallCapable()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 749
    invoke-virtual {v0, v6}, Landroid/widget/Button;->setVisibility(I)V

    .line 750
    new-instance v5, Lcom/android/sec_settings/CryptKeeper$6;

    invoke-direct {v5, p0}, Lcom/android/sec_settings/CryptKeeper$6;-><init>(Lcom/android/sec_settings/CryptKeeper;)V

    invoke-virtual {v0, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 762
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v5

    invoke-virtual {v5}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v2

    .line 764
    .local v2, newState:I
    const/4 v5, 0x2

    if-ne v2, v5, :cond_2

    .line 766
    const v4, 0x7f090843

    .line 767
    .local v4, textId:I
    const v3, 0x7f02035b

    .line 768
    .local v3, phoneCallIcon:I
    const v5, 0x7f02035b

    invoke-virtual {v0, v5, v6, v6, v6}, Landroid/widget/Button;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 774
    .end local v3           #phoneCallIcon:I
    :goto_1
    invoke-virtual {v0, v4}, Landroid/widget/Button;->setText(I)V

    goto :goto_0

    .line 758
    .end local v2           #newState:I
    .end local v4           #textId:I
    :cond_1
    const/16 v5, 0x8

    invoke-virtual {v0, v5}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0

    .line 770
    .restart local v2       #newState:I
    :cond_2
    const v4, 0x7f090842

    .line 771
    .restart local v4       #textId:I
    const v1, 0x7f020144

    .line 772
    .local v1, emergencyIcon:I
    const v5, 0x7f020144

    invoke-virtual {v0, v5, v6, v6, v6}, Landroid/widget/Button;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    goto :goto_1
.end method

.method private updateProgress()V
    .locals 10

    .prologue
    const v9, 0x7f09016f

    const/4 v8, 0x1

    .line 475
    const-string v5, "vold.encrypt_progress"

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 477
    .local v2, state:Ljava/lang/String;
    const-string v5, "error_partially_encrypted"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 478
    invoke-direct {p0}, Lcom/android/sec_settings/CryptKeeper;->showFactoryReset()V

    .line 507
    :goto_0
    return-void

    .line 482
    :cond_0
    const/4 v1, 0x0

    .line 485
    .local v1, progress:I
    :try_start_0
    invoke-direct {p0}, Lcom/android/sec_settings/CryptKeeper;->isDebugView()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    if-eqz v5, :cond_1

    const/16 v1, 0x32

    .line 490
    :goto_1
    invoke-virtual {p0, v9}, Lcom/android/sec_settings/CryptKeeper;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    .line 491
    .local v3, status:Ljava/lang/CharSequence;
    const-string v5, "CryptKeeper"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Encryption progress: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 494
    iget-boolean v5, p0, Lcom/android/sec_settings/CryptKeeper;->mEncrypt:Z

    if-ne v5, v8, :cond_2

    .line 495
    invoke-virtual {p0, v9}, Lcom/android/sec_settings/CryptKeeper;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    .line 500
    :goto_2
    const v5, 0x7f0b0020

    invoke-virtual {p0, v5}, Lcom/android/sec_settings/CryptKeeper;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 501
    .local v4, tv:Landroid/widget/TextView;
    new-array v5, v8, [Ljava/lang/CharSequence;

    const/4 v6, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v3, v5}, Landroid/text/TextUtils;->expandTemplate(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 505
    iget-object v5, p0, Lcom/android/sec_settings/CryptKeeper;->mHandler:Landroid/os/Handler;

    invoke-virtual {v5, v8}, Landroid/os/Handler;->removeMessages(I)V

    .line 506
    iget-object v5, p0, Lcom/android/sec_settings/CryptKeeper;->mHandler:Landroid/os/Handler;

    const-wide/16 v6, 0x1388

    invoke-virtual {v5, v8, v6, v7}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 485
    .end local v3           #status:Ljava/lang/CharSequence;
    .end local v4           #tv:Landroid/widget/TextView;
    :cond_1
    :try_start_1
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result v1

    goto :goto_1

    .line 486
    :catch_0
    move-exception v0

    .line 487
    .local v0, e:Ljava/lang/Exception;
    const-string v5, "CryptKeeper"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Error parsing progress: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 497
    .end local v0           #e:Ljava/lang/Exception;
    .restart local v3       #status:Ljava/lang/CharSequence;
    :cond_2
    const v5, 0x7f09095d

    invoke-virtual {p0, v5}, Lcom/android/sec_settings/CryptKeeper;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    goto :goto_2
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0
    .parameter "s"

    .prologue
    .line 840
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "s"
    .parameter "start"
    .parameter "count"
    .parameter "after"

    .prologue
    .line 830
    return-void
.end method

.method public onBackPressed()V
    .locals 1

    .prologue
    .line 295
    iget-boolean v0, p0, Lcom/android/sec_settings/CryptKeeper;->mIgnoreBack:Z

    if-eqz v0, :cond_0

    .line 298
    :goto_0
    return-void

    .line 297
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter

    .prologue
    .line 302
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 305
    const-string v0, "device_policy"

    invoke-virtual {p0, v0}, Lcom/android/sec_settings/CryptKeeper;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    iput-object v0, p0, Lcom/android/sec_settings/CryptKeeper;->mDPM:Landroid/app/admin/DevicePolicyManager;

    .line 308
    const-string v0, "vold.decrypt"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 309
    invoke-direct {p0}, Lcom/android/sec_settings/CryptKeeper;->isDebugView()Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, ""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "trigger_restart_framework"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 311
    :cond_0
    invoke-virtual {p0}, Lcom/android/sec_settings/CryptKeeper;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 312
    new-instance v1, Landroid/content/ComponentName;

    const-class v2, Lcom/android/sec_settings/CryptKeeper;

    invoke-direct {v1, p0, v2}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 313
    const/4 v2, 0x2

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    .line 322
    invoke-virtual {p0}, Lcom/android/sec_settings/CryptKeeper;->finish()V

    .line 345
    :cond_1
    :goto_0
    return-void

    .line 328
    :cond_2
    const-string v0, "statusbar"

    invoke-virtual {p0, v0}, Lcom/android/sec_settings/CryptKeeper;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/StatusBarManager;

    .line 329
    const/high16 v1, 0x137

    invoke-virtual {v0, v1}, Landroid/app/StatusBarManager;->disable(I)V

    .line 336
    invoke-direct {p0}, Lcom/android/sec_settings/CryptKeeper;->setAirplaneModeIfNecessary()V

    .line 337
    const-string v0, "audio"

    invoke-virtual {p0, v0}, Lcom/android/sec_settings/CryptKeeper;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/android/sec_settings/CryptKeeper;->mAudioManager:Landroid/media/AudioManager;

    .line 339
    invoke-virtual {p0}, Lcom/android/sec_settings/CryptKeeper;->getLastNonConfigurationInstance()Ljava/lang/Object;

    move-result-object v0

    .line 340
    instance-of v1, v0, Lcom/android/sec_settings/CryptKeeper$NonConfigurationInstanceState;

    if-eqz v1, :cond_1

    .line 341
    check-cast v0, Lcom/android/sec_settings/CryptKeeper$NonConfigurationInstanceState;

    .line 342
    iget-object v0, v0, Lcom/android/sec_settings/CryptKeeper$NonConfigurationInstanceState;->wakelock:Landroid/os/PowerManager$WakeLock;

    iput-object v0, p0, Lcom/android/sec_settings/CryptKeeper;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 343
    const-string v0, "CryptKeeper"

    const-string v1, "Restoring wakelock from NonConfigurationInstanceState"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 413
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 415
    iget-object v0, p0, Lcom/android/sec_settings/CryptKeeper;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_0

    .line 416
    const-string v0, "CryptKeeper"

    const-string v1, "Releasing and destroying wakelock"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 417
    iget-object v0, p0, Lcom/android/sec_settings/CryptKeeper;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 418
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/sec_settings/CryptKeeper;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 420
    :cond_0
    return-void
.end method

.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 6
    .parameter "v"
    .parameter "actionId"
    .parameter "event"

    .prologue
    const/4 v5, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 683
    if-eqz p2, :cond_0

    const/4 v3, 0x6

    if-ne p2, v3, :cond_1

    .line 685
    :cond_0
    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 687
    .local v0, password:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    move v1, v2

    .line 706
    .end local v0           #password:Ljava/lang/String;
    :cond_1
    :goto_0
    return v1

    .line 692
    .restart local v0       #password:Ljava/lang/String;
    :cond_2
    invoke-virtual {p1, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 694
    const-string v3, ""

    sput-object v3, Lcom/android/sec_settings/CryptKeeper;->mSavedPassword:Ljava/lang/String;

    .line 698
    iget-object v3, p0, Lcom/android/sec_settings/CryptKeeper;->mPasswordEntry:Landroid/widget/EditText;

    invoke-virtual {v3, v1}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 699
    iput-boolean v2, p0, Lcom/android/sec_settings/CryptKeeper;->mIgnoreBack:Z

    .line 701
    const-string v3, "CryptKeeper"

    const-string v4, "Attempting to send command to decrypt"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 702
    new-instance v3, Lcom/android/sec_settings/CryptKeeper$DecryptTask;

    invoke-direct {v3, p0, v5}, Lcom/android/sec_settings/CryptKeeper$DecryptTask;-><init>(Lcom/android/sec_settings/CryptKeeper;Lcom/android/sec_settings/CryptKeeper$1;)V

    new-array v4, v2, [Ljava/lang/String;

    aput-object v0, v4, v1

    invoke-virtual {v3, v4}, Lcom/android/sec_settings/CryptKeeper$DecryptTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    move v1, v2

    .line 704
    goto :goto_0
.end method

.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "v"
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 818
    invoke-direct {p0}, Lcom/android/sec_settings/CryptKeeper;->delayAudioNotification()V

    .line 819
    const/4 v0, 0x0

    return v0
.end method

.method public onRetainNonConfigurationInstance()Ljava/lang/Object;
    .locals 3

    .prologue
    .line 405
    new-instance v0, Lcom/android/sec_settings/CryptKeeper$NonConfigurationInstanceState;

    iget-object v1, p0, Lcom/android/sec_settings/CryptKeeper;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-direct {v0, v1}, Lcom/android/sec_settings/CryptKeeper$NonConfigurationInstanceState;-><init>(Landroid/os/PowerManager$WakeLock;)V

    .line 406
    .local v0, state:Lcom/android/sec_settings/CryptKeeper$NonConfigurationInstanceState;
    const-string v1, "CryptKeeper"

    const-string v2, "Handing wakelock off to NonConfigurationInstanceState"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 407
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/sec_settings/CryptKeeper;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 408
    return-object v0
.end method

.method public onStart()V
    .locals 0

    .prologue
    .line 354
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 355
    invoke-direct {p0}, Lcom/android/sec_settings/CryptKeeper;->setupUi()V

    .line 356
    return-void
.end method

.method public onStop()V
    .locals 2

    .prologue
    .line 393
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 394
    iget-object v0, p0, Lcom/android/sec_settings/CryptKeeper;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 395
    iget-object v0, p0, Lcom/android/sec_settings/CryptKeeper;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 396
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "s"
    .parameter "start"
    .parameter "before"
    .parameter "count"

    .prologue
    .line 835
    invoke-direct {p0}, Lcom/android/sec_settings/CryptKeeper;->delayAudioNotification()V

    .line 836
    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "v"
    .parameter "event"

    .prologue
    .line 824
    invoke-direct {p0}, Lcom/android/sec_settings/CryptKeeper;->delayAudioNotification()V

    .line 825
    const/4 v0, 0x0

    return v0
.end method

.method public setLockoutAttemptDeadline(I)J
    .locals 8
    .parameter "mLeftTime"

    .prologue
    .line 844
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    int-to-long v4, p1

    const-wide/16 v6, 0x3e8

    mul-long/2addr v4, v6

    add-long v0, v2, v4

    .line 845
    .local v0, deadline:J
    return-wide v0
.end method
