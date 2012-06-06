.class public Lcom/android/OriginalSettings/CryptKeeper;
.super Lcom/android/OriginalSettings/BaseActivity;
.source "CryptKeeper.java"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/OriginalSettings/CryptKeeper$ValidationTask;,
        Lcom/android/OriginalSettings/CryptKeeper$DecryptTask;,
        Lcom/android/OriginalSettings/CryptKeeper$Blank;,
        Lcom/android/OriginalSettings/CryptKeeper$NonConfigurationInstanceState;
    }
.end annotation


# static fields
.field private static emergencyCallStatus:Z

.field private static mCooldown:I

.field private static mSavedPassword:Ljava/lang/String;


# instance fields
.field private mEncrypt:Z

.field private mEncryptionGoneBad:Z

.field private final mHandler:Landroid/os/Handler;

.field private mPasswordEntry:Landroid/widget/EditText;

.field private mValidationComplete:Z

.field private mValidationRequested:Z

.field mWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 99
    sput v1, Lcom/android/OriginalSettings/CryptKeeper;->mCooldown:I

    .line 102
    const-string v0, ""

    sput-object v0, Lcom/android/OriginalSettings/CryptKeeper;->mSavedPassword:Ljava/lang/String;

    .line 103
    sput-boolean v1, Lcom/android/OriginalSettings/CryptKeeper;->emergencyCallStatus:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 69
    invoke-direct {p0}, Lcom/android/OriginalSettings/BaseActivity;-><init>()V

    .line 97
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/OriginalSettings/CryptKeeper;->mEncrypt:Z

    .line 197
    new-instance v0, Lcom/android/OriginalSettings/CryptKeeper$1;

    invoke-direct {v0, p0}, Lcom/android/OriginalSettings/CryptKeeper$1;-><init>(Lcom/android/OriginalSettings/CryptKeeper;)V

    iput-object v0, p0, Lcom/android/OriginalSettings/CryptKeeper;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/android/OriginalSettings/CryptKeeper;)Landroid/os/storage/IMountService;
    .locals 1
    .parameter "x0"

    .prologue
    .line 69
    invoke-direct {p0}, Lcom/android/OriginalSettings/CryptKeeper;->getMountService()Landroid/os/storage/IMountService;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100()I
    .locals 1

    .prologue
    .line 69
    sget v0, Lcom/android/OriginalSettings/CryptKeeper;->mCooldown:I

    return v0
.end method

.method static synthetic access$1000()Z
    .locals 1

    .prologue
    .line 69
    sget-boolean v0, Lcom/android/OriginalSettings/CryptKeeper;->emergencyCallStatus:Z

    return v0
.end method

.method static synthetic access$1002(Z)Z
    .locals 0
    .parameter "x0"

    .prologue
    .line 69
    sput-boolean p0, Lcom/android/OriginalSettings/CryptKeeper;->emergencyCallStatus:Z

    return p0
.end method

.method static synthetic access$102(I)I
    .locals 0
    .parameter "x0"

    .prologue
    .line 69
    sput p0, Lcom/android/OriginalSettings/CryptKeeper;->mCooldown:I

    return p0
.end method

.method static synthetic access$1200(Lcom/android/OriginalSettings/CryptKeeper;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 69
    invoke-direct {p0}, Lcom/android/OriginalSettings/CryptKeeper;->takeEmergencyCallAction()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/OriginalSettings/CryptKeeper;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 69
    invoke-direct {p0}, Lcom/android/OriginalSettings/CryptKeeper;->cooldown()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/OriginalSettings/CryptKeeper;)Landroid/widget/EditText;
    .locals 1
    .parameter "x0"

    .prologue
    .line 69
    iget-object v0, p0, Lcom/android/OriginalSettings/CryptKeeper;->mPasswordEntry:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$402(Lcom/android/OriginalSettings/CryptKeeper;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 69
    iput-boolean p1, p0, Lcom/android/OriginalSettings/CryptKeeper;->mValidationComplete:Z

    return p1
.end method

.method static synthetic access$502(Lcom/android/OriginalSettings/CryptKeeper;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 69
    iput-boolean p1, p0, Lcom/android/OriginalSettings/CryptKeeper;->mEncryptionGoneBad:Z

    return p1
.end method

.method static synthetic access$600(Lcom/android/OriginalSettings/CryptKeeper;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 69
    invoke-direct {p0}, Lcom/android/OriginalSettings/CryptKeeper;->setupUi()V

    return-void
.end method

.method static synthetic access$700(Lcom/android/OriginalSettings/CryptKeeper;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 69
    invoke-direct {p0}, Lcom/android/OriginalSettings/CryptKeeper;->updateProgress()V

    return-void
.end method

.method static synthetic access$902(Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"

    .prologue
    .line 69
    sput-object p0, Lcom/android/OriginalSettings/CryptKeeper;->mSavedPassword:Ljava/lang/String;

    return-object p0
.end method

.method private cooldown()V
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 428
    const v2, 0x7f08001e

    invoke-virtual {p0, v2}, Lcom/android/OriginalSettings/CryptKeeper;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 430
    .local v1, tv:Landroid/widget/TextView;
    sget v2, Lcom/android/OriginalSettings/CryptKeeper;->mCooldown:I

    if-gtz v2, :cond_0

    .line 432
    iget-object v2, p0, Lcom/android/OriginalSettings/CryptKeeper;->mPasswordEntry:Landroid/widget/EditText;

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 434
    const v2, 0x7f0b0626

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 435
    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 448
    :goto_0
    return-void

    .line 437
    :cond_0
    iget-object v2, p0, Lcom/android/OriginalSettings/CryptKeeper;->mPasswordEntry:Landroid/widget/EditText;

    invoke-virtual {v2, v4}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 439
    const v2, 0x7f0b01b1

    invoke-virtual {p0, v2}, Lcom/android/OriginalSettings/CryptKeeper;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 440
    .local v0, template:Ljava/lang/CharSequence;
    new-array v2, v3, [Ljava/lang/CharSequence;

    sget v3, Lcom/android/OriginalSettings/CryptKeeper;->mCooldown:I

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v0, v2}, Landroid/text/TextUtils;->expandTemplate(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 442
    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 444
    sget v2, Lcom/android/OriginalSettings/CryptKeeper;->mCooldown:I

    add-int/lit8 v2, v2, -0x1

    sput v2, Lcom/android/OriginalSettings/CryptKeeper;->mCooldown:I

    .line 445
    iget-object v2, p0, Lcom/android/OriginalSettings/CryptKeeper;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v5}, Landroid/os/Handler;->removeMessages(I)V

    .line 446
    iget-object v2, p0, Lcom/android/OriginalSettings/CryptKeeper;->mHandler:Landroid/os/Handler;

    const-wide/16 v3, 0x3e8

    invoke-virtual {v2, v5, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0
.end method

.method private encryptionProgressInit()V
    .locals 4

    .prologue
    .line 346
    const-string v2, "CryptKeeper"

    const-string v3, "Encryption progress screen initializing."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 347
    iget-object v2, p0, Lcom/android/OriginalSettings/CryptKeeper;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-nez v2, :cond_0

    .line 348
    const-string v2, "CryptKeeper"

    const-string v3, "Acquiring wakelock."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 349
    const-string v2, "power"

    invoke-virtual {p0, v2}, Lcom/android/OriginalSettings/CryptKeeper;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 350
    .local v0, pm:Landroid/os/PowerManager;
    const/16 v2, 0x1a

    const-string v3, "CryptKeeper"

    invoke-virtual {v0, v2, v3}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v2

    iput-object v2, p0, Lcom/android/OriginalSettings/CryptKeeper;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 351
    iget-object v2, p0, Lcom/android/OriginalSettings/CryptKeeper;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 354
    .end local v0           #pm:Landroid/os/PowerManager;
    :cond_0
    const v2, 0x7f080044

    invoke-virtual {p0, v2}, Lcom/android/OriginalSettings/CryptKeeper;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ProgressBar;

    .line 355
    .local v1, progressBar:Landroid/widget/ProgressBar;
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    .line 357
    invoke-direct {p0}, Lcom/android/OriginalSettings/CryptKeeper;->updateProgress()V

    .line 358
    return-void
.end method

.method private getMountService()Landroid/os/storage/IMountService;
    .locals 2

    .prologue
    .line 561
    const-string v1, "mount"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 562
    .local v0, service:Landroid/os/IBinder;
    if-eqz v0, :cond_0

    .line 563
    invoke-static {v0}, Landroid/os/storage/IMountService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/storage/IMountService;

    move-result-object v1

    .line 565
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private hasMultipleEnabledIMEsOrSubtypes(Landroid/view/inputmethod/InputMethodManager;Z)Z
    .locals 12
    .parameter "imm"
    .parameter "shouldIncludeAuxiliarySubtypes"

    .prologue
    const/4 v9, 0x0

    const/4 v10, 0x1

    .line 521
    invoke-virtual {p1}, Landroid/view/inputmethod/InputMethodManager;->getEnabledInputMethodList()Ljava/util/List;

    move-result-object v1

    .line 524
    .local v1, enabledImis:Ljava/util/List;,"Ljava/util/List<Landroid/view/inputmethod/InputMethodInfo;>;"
    const/4 v2, 0x0

    .line 526
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

    .line 528
    .local v5, imi:Landroid/view/inputmethod/InputMethodInfo;
    if-le v2, v10, :cond_1

    .line 554
    .end local v5           #imi:Landroid/view/inputmethod/InputMethodInfo;
    :goto_1
    return v10

    .line 529
    .restart local v5       #imi:Landroid/view/inputmethod/InputMethodInfo;
    :cond_1
    invoke-virtual {p1, v5, v10}, Landroid/view/inputmethod/InputMethodManager;->getEnabledInputMethodSubtypeList(Landroid/view/inputmethod/InputMethodInfo;Z)Ljava/util/List;

    move-result-object v8

    .line 532
    .local v8, subtypes:Ljava/util/List;,"Ljava/util/List<Landroid/view/inputmethod/InputMethodSubtype;>;"
    invoke-interface {v8}, Ljava/util/List;->isEmpty()Z

    move-result v11

    if-eqz v11, :cond_2

    .line 533
    add-int/lit8 v2, v2, 0x1

    .line 534
    goto :goto_0

    .line 537
    :cond_2
    const/4 v0, 0x0

    .line 538
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

    .line 539
    .local v7, subtype:Landroid/view/inputmethod/InputMethodSubtype;
    invoke-virtual {v7}, Landroid/view/inputmethod/InputMethodSubtype;->isAuxiliary()Z

    move-result v11

    if-eqz v11, :cond_3

    .line 540
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 543
    .end local v7           #subtype:Landroid/view/inputmethod/InputMethodSubtype;
    :cond_4
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v11

    sub-int v6, v11, v0

    .line 548
    .local v6, nonAuxCount:I
    if-gtz v6, :cond_5

    if-eqz p2, :cond_0

    if-le v0, v10, :cond_0

    .line 549
    :cond_5
    add-int/lit8 v2, v2, 0x1

    .line 550
    goto :goto_0

    .line 554
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
    .line 214
    invoke-virtual {p0}, Lcom/android/OriginalSettings/CryptKeeper;->getIntent()Landroid/content/Intent;

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
    .line 219
    invoke-virtual {p0}, Lcom/android/OriginalSettings/CryptKeeper;->getIntent()Landroid/content/Intent;

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
    .line 653
    invoke-virtual {p0}, Lcom/android/OriginalSettings/CryptKeeper;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1110029

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    return v0
.end method

.method private launchEmergencyDialer()V
    .locals 2

    .prologue
    .line 676
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.phone.EmergencyDialer.DIAL"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 677
    .local v0, intent:Landroid/content/Intent;
    const/high16 v1, 0x1080

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 679
    invoke-virtual {p0, v0}, Lcom/android/OriginalSettings/CryptKeeper;->startActivity(Landroid/content/Intent;)V

    .line 680
    const/4 v1, 0x1

    sput-boolean v1, Lcom/android/OriginalSettings/CryptKeeper;->emergencyCallStatus:Z

    .line 681
    return-void
.end method

.method private passwordEntryInit()V
    .locals 7

    .prologue
    const/4 v4, 0x0

    .line 451
    const v3, 0x7f080042

    invoke-virtual {p0, v3}, Lcom/android/OriginalSettings/CryptKeeper;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    iput-object v3, p0, Lcom/android/OriginalSettings/CryptKeeper;->mPasswordEntry:Landroid/widget/EditText;

    .line 452
    iget-object v3, p0, Lcom/android/OriginalSettings/CryptKeeper;->mPasswordEntry:Landroid/widget/EditText;

    invoke-virtual {v3, p0}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 453
    iget-object v3, p0, Lcom/android/OriginalSettings/CryptKeeper;->mPasswordEntry:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->requestFocus()Z

    .line 455
    new-instance v2, Lcom/android/OriginalSettings/CryptKeeper$3;

    invoke-direct {v2, p0}, Lcom/android/OriginalSettings/CryptKeeper$3;-><init>(Lcom/android/OriginalSettings/CryptKeeper;)V

    .line 473
    .local v2, watcher:Landroid/text/TextWatcher;
    iget-object v3, p0, Lcom/android/OriginalSettings/CryptKeeper;->mPasswordEntry:Landroid/widget/EditText;

    invoke-virtual {v3, v2}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 475
    const v3, 0x7f08004f

    invoke-virtual {p0, v3}, Lcom/android/OriginalSettings/CryptKeeper;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 476
    .local v0, imeSwitcher:Landroid/view/View;
    const-string v3, "input_method"

    invoke-virtual {p0, v3}, Lcom/android/OriginalSettings/CryptKeeper;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/InputMethodManager;

    .line 478
    .local v1, imm:Landroid/view/inputmethod/InputMethodManager;
    if-eqz v0, :cond_0

    invoke-direct {p0, v1, v4}, Lcom/android/OriginalSettings/CryptKeeper;->hasMultipleEnabledIMEsOrSubtypes(Landroid/view/inputmethod/InputMethodManager;Z)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 479
    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 480
    new-instance v3, Lcom/android/OriginalSettings/CryptKeeper$4;

    invoke-direct {v3, p0, v1}, Lcom/android/OriginalSettings/CryptKeeper$4;-><init>(Lcom/android/OriginalSettings/CryptKeeper;Landroid/view/inputmethod/InputMethodManager;)V

    invoke-virtual {v0, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 489
    :cond_0
    iget-object v3, p0, Lcom/android/OriginalSettings/CryptKeeper;->mHandler:Landroid/os/Handler;

    new-instance v4, Lcom/android/OriginalSettings/CryptKeeper$5;

    invoke-direct {v4, p0, v1}, Lcom/android/OriginalSettings/CryptKeeper$5;-><init>(Lcom/android/OriginalSettings/CryptKeeper;Landroid/view/inputmethod/InputMethodManager;)V

    const-wide/16 v5, 0x0

    invoke-virtual {v3, v4, v5, v6}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 501
    invoke-direct {p0}, Lcom/android/OriginalSettings/CryptKeeper;->updateEmergencyCallButtonState()V

    .line 502
    sget-object v3, Lcom/android/OriginalSettings/CryptKeeper;->mSavedPassword:Ljava/lang/String;

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 503
    iget-object v3, p0, Lcom/android/OriginalSettings/CryptKeeper;->mPasswordEntry:Landroid/widget/EditText;

    sget-object v4, Lcom/android/OriginalSettings/CryptKeeper;->mSavedPassword:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 504
    iget-object v3, p0, Lcom/android/OriginalSettings/CryptKeeper;->mPasswordEntry:Landroid/widget/EditText;

    iget-object v4, p0, Lcom/android/OriginalSettings/CryptKeeper;->mPasswordEntry:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-interface {v4}, Landroid/text/Editable;->length()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setSelection(I)V

    .line 507
    :cond_1
    sget v3, Lcom/android/OriginalSettings/CryptKeeper;->mCooldown:I

    if-eqz v3, :cond_2

    .line 508
    invoke-direct {p0}, Lcom/android/OriginalSettings/CryptKeeper;->cooldown()V

    .line 510
    :cond_2
    return-void
.end method

.method private replaceInvalidChar(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "in"

    .prologue
    .line 575
    if-nez p1, :cond_0

    .line 576
    const-string v0, ""

    .line 581
    :goto_0
    return-object v0

    .line 579
    :cond_0
    move-object v0, p1

    .line 580
    .local v0, out:Ljava/lang/String;
    const/16 v1, 0x20

    const/16 v2, 0x2e

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    .line 581
    goto :goto_0
.end method

.method private resumeCall()V
    .locals 5

    .prologue
    .line 665
    const-string v2, "phone"

    invoke-static {v2}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    .line 666
    .local v1, phone:Lcom/android/internal/telephony/ITelephony;
    if-eqz v1, :cond_0

    .line 668
    :try_start_0
    invoke-interface {v1}, Lcom/android/internal/telephony/ITelephony;->showCallScreen()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 673
    :cond_0
    :goto_0
    return-void

    .line 669
    :catch_0
    move-exception v0

    .line 670
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

.method private setupUi()V
    .locals 6

    .prologue
    const/4 v3, 0x0

    const v5, 0x7f04002a

    .line 281
    iget-boolean v4, p0, Lcom/android/OriginalSettings/CryptKeeper;->mEncryptionGoneBad:Z

    if-nez v4, :cond_0

    const-string v4, "error"

    invoke-direct {p0, v4}, Lcom/android/OriginalSettings/CryptKeeper;->isDebugView(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 282
    :cond_0
    invoke-virtual {p0, v5}, Lcom/android/OriginalSettings/CryptKeeper;->setContentView(I)V

    .line 283
    invoke-direct {p0}, Lcom/android/OriginalSettings/CryptKeeper;->showFactoryReset()V

    .line 307
    :cond_1
    :goto_0
    return-void

    .line 287
    :cond_2
    const-string v4, "vold.encrypt_progress"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 288
    .local v0, progress:Ljava/lang/String;
    const-string v4, ""

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    const-string v4, "progress"

    invoke-direct {p0, v4}, Lcom/android/OriginalSettings/CryptKeeper;->isDebugView(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 289
    :cond_3
    invoke-virtual {p0, v5}, Lcom/android/OriginalSettings/CryptKeeper;->setContentView(I)V

    .line 291
    const-string v3, "vold.encrypt_type"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 292
    .local v2, type:Ljava/lang/String;
    const-string v3, "decrypt"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 293
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/android/OriginalSettings/CryptKeeper;->mEncrypt:Z

    .line 294
    const v3, 0x7f08000b

    invoke-virtual {p0, v3}, Lcom/android/OriginalSettings/CryptKeeper;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 295
    .local v1, tv:Landroid/widget/TextView;
    const v3, 0x7f0b0812

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(I)V

    .line 298
    .end local v1           #tv:Landroid/widget/TextView;
    :cond_4
    invoke-direct {p0}, Lcom/android/OriginalSettings/CryptKeeper;->encryptionProgressInit()V

    goto :goto_0

    .line 299
    .end local v2           #type:Ljava/lang/String;
    :cond_5
    iget-boolean v4, p0, Lcom/android/OriginalSettings/CryptKeeper;->mValidationComplete:Z

    if-eqz v4, :cond_6

    .line 300
    const v3, 0x7f040028

    invoke-virtual {p0, v3}, Lcom/android/OriginalSettings/CryptKeeper;->setContentView(I)V

    .line 301
    invoke-direct {p0}, Lcom/android/OriginalSettings/CryptKeeper;->passwordEntryInit()V

    goto :goto_0

    .line 302
    :cond_6
    iget-boolean v4, p0, Lcom/android/OriginalSettings/CryptKeeper;->mValidationRequested:Z

    if-nez v4, :cond_1

    .line 304
    new-instance v4, Lcom/android/OriginalSettings/CryptKeeper$ValidationTask;

    invoke-direct {v4, p0, v3}, Lcom/android/OriginalSettings/CryptKeeper$ValidationTask;-><init>(Lcom/android/OriginalSettings/CryptKeeper;Lcom/android/OriginalSettings/CryptKeeper$1;)V

    check-cast v3, [Ljava/lang/Void;

    invoke-virtual {v4, v3}, Lcom/android/OriginalSettings/CryptKeeper$ValidationTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 305
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/OriginalSettings/CryptKeeper;->mValidationRequested:Z

    goto :goto_0
.end method

.method private showFactoryReset()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 362
    const v3, 0x7f08004d

    invoke-virtual {p0, v3}, Lcom/android/OriginalSettings/CryptKeeper;->findViewById(I)Landroid/view/View;

    move-result-object v3

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 365
    const v3, 0x7f080050

    invoke-virtual {p0, v3}, Lcom/android/OriginalSettings/CryptKeeper;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 366
    .local v0, button:Landroid/widget/Button;
    invoke-virtual {v0, v5}, Landroid/widget/Button;->setVisibility(I)V

    .line 367
    new-instance v3, Lcom/android/OriginalSettings/CryptKeeper$2;

    invoke-direct {v3, p0}, Lcom/android/OriginalSettings/CryptKeeper$2;-><init>(Lcom/android/OriginalSettings/CryptKeeper;)V

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 374
    const v3, 0x7f08000b

    invoke-virtual {p0, v3}, Lcom/android/OriginalSettings/CryptKeeper;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 375
    .local v1, tv:Landroid/widget/TextView;
    const v3, 0x7f0b01b3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(I)V

    .line 377
    const v3, 0x7f08001e

    invoke-virtual {p0, v3}, Lcom/android/OriginalSettings/CryptKeeper;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .end local v1           #tv:Landroid/widget/TextView;
    check-cast v1, Landroid/widget/TextView;

    .line 378
    .restart local v1       #tv:Landroid/widget/TextView;
    const v3, 0x7f0b01b4

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(I)V

    .line 380
    const v3, 0x7f080051

    invoke-virtual {p0, v3}, Lcom/android/OriginalSettings/CryptKeeper;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 381
    .local v2, view:Landroid/view/View;
    if-eqz v2, :cond_0

    .line 382
    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    .line 384
    :cond_0
    return-void
.end method

.method private takeEmergencyCallAction()V
    .locals 2

    .prologue
    .line 657
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 658
    invoke-direct {p0}, Lcom/android/OriginalSettings/CryptKeeper;->resumeCall()V

    .line 662
    :goto_0
    return-void

    .line 660
    :cond_0
    invoke-direct {p0}, Lcom/android/OriginalSettings/CryptKeeper;->launchEmergencyDialer()V

    goto :goto_0
.end method

.method private updateEmergencyCallButtonState()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 621
    const v5, 0x7f08004c

    invoke-virtual {p0, v5}, Lcom/android/OriginalSettings/CryptKeeper;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 623
    .local v0, button:Landroid/widget/Button;
    if-nez v0, :cond_0

    .line 650
    :goto_0
    return-void

    .line 625
    :cond_0
    invoke-direct {p0}, Lcom/android/OriginalSettings/CryptKeeper;->isEmergencyCallCapable()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 626
    invoke-virtual {v0, v6}, Landroid/widget/Button;->setVisibility(I)V

    .line 627
    new-instance v5, Lcom/android/OriginalSettings/CryptKeeper$6;

    invoke-direct {v5, p0}, Lcom/android/OriginalSettings/CryptKeeper$6;-><init>(Lcom/android/OriginalSettings/CryptKeeper;)V

    invoke-virtual {v0, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 637
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v5

    invoke-virtual {v5}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v2

    .line 639
    .local v2, newState:I
    const/4 v5, 0x2

    if-ne v2, v5, :cond_2

    .line 641
    const v4, 0x7f0b0678

    .line 642
    .local v4, textId:I
    const v3, 0x7f02012d

    .line 643
    .local v3, phoneCallIcon:I
    invoke-virtual {v0, v3, v6, v6, v6}, Landroid/widget/Button;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 649
    .end local v3           #phoneCallIcon:I
    :goto_1
    invoke-virtual {v0, v4}, Landroid/widget/Button;->setText(I)V

    goto :goto_0

    .line 633
    .end local v2           #newState:I
    .end local v4           #textId:I
    :cond_1
    const/16 v5, 0x8

    invoke-virtual {v0, v5}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0

    .line 645
    .restart local v2       #newState:I
    :cond_2
    const v4, 0x7f0b0677

    .line 646
    .restart local v4       #textId:I
    const v1, 0x7f02005e

    .line 647
    .local v1, emergencyIcon:I
    invoke-virtual {v0, v1, v6, v6, v6}, Landroid/widget/Button;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    goto :goto_1
.end method

.method private updateProgress()V
    .locals 12

    .prologue
    const v11, 0x7f0b01b0

    const v10, 0x7f08001e

    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 387
    const-string v5, "vold.encrypt_progress"

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 389
    .local v2, state:Ljava/lang/String;
    const-string v5, "error_partially_encrypted"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 390
    invoke-direct {p0}, Lcom/android/OriginalSettings/CryptKeeper;->showFactoryReset()V

    .line 425
    :goto_0
    return-void

    .line 394
    :cond_0
    const/4 v1, 0x0

    .line 397
    .local v1, progress:I
    :try_start_0
    invoke-direct {p0}, Lcom/android/OriginalSettings/CryptKeeper;->isDebugView()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    if-eqz v5, :cond_1

    const/16 v1, 0x32

    .line 402
    :goto_1
    invoke-virtual {p0, v11}, Lcom/android/OriginalSettings/CryptKeeper;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    .line 403
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

    .line 407
    if-nez v1, :cond_2

    .line 408
    invoke-virtual {p0, v10}, Lcom/android/OriginalSettings/CryptKeeper;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 409
    .local v4, tv:Landroid/widget/TextView;
    const v5, 0x7f0b080a

    invoke-virtual {p0, v5}, Lcom/android/OriginalSettings/CryptKeeper;->getString(I)Ljava/lang/String;

    move-result-object v5

    new-array v6, v8, [Ljava/lang/Object;

    const/16 v7, 0xa

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v9

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 423
    :goto_2
    iget-object v5, p0, Lcom/android/OriginalSettings/CryptKeeper;->mHandler:Landroid/os/Handler;

    invoke-virtual {v5, v8}, Landroid/os/Handler;->removeMessages(I)V

    .line 424
    iget-object v5, p0, Lcom/android/OriginalSettings/CryptKeeper;->mHandler:Landroid/os/Handler;

    const-wide/16 v6, 0x1388

    invoke-virtual {v5, v8, v6, v7}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 397
    .end local v3           #status:Ljava/lang/CharSequence;
    .end local v4           #tv:Landroid/widget/TextView;
    :cond_1
    :try_start_1
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result v1

    goto :goto_1

    .line 398
    :catch_0
    move-exception v0

    .line 399
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

    .line 412
    .end local v0           #e:Ljava/lang/Exception;
    .restart local v3       #status:Ljava/lang/CharSequence;
    :cond_2
    iget-boolean v5, p0, Lcom/android/OriginalSettings/CryptKeeper;->mEncrypt:Z

    if-ne v5, v8, :cond_3

    .line 413
    invoke-virtual {p0, v11}, Lcom/android/OriginalSettings/CryptKeeper;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    .line 418
    :goto_3
    invoke-virtual {p0, v10}, Lcom/android/OriginalSettings/CryptKeeper;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 419
    .restart local v4       #tv:Landroid/widget/TextView;
    new-array v5, v8, [Ljava/lang/CharSequence;

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v9

    invoke-static {v3, v5}, Landroid/text/TextUtils;->expandTemplate(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 415
    .end local v4           #tv:Landroid/widget/TextView;
    :cond_3
    const v5, 0x7f0b0813

    invoke-virtual {p0, v5}, Lcom/android/OriginalSettings/CryptKeeper;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    goto :goto_3
.end method


# virtual methods
.method public onBackPressed()V
    .locals 0

    .prologue
    .line 572
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter

    .prologue
    .line 224
    invoke-super {p0, p1}, Lcom/android/OriginalSettings/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 227
    const-string v0, "vold.decrypt"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 228
    invoke-direct {p0}, Lcom/android/OriginalSettings/CryptKeeper;->isDebugView()Z

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

    .line 230
    :cond_0
    invoke-virtual {p0}, Lcom/android/OriginalSettings/CryptKeeper;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 231
    new-instance v1, Landroid/content/ComponentName;

    const-class v2, Lcom/android/OriginalSettings/CryptKeeper;

    invoke-direct {v1, p0, v2}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 232
    const/4 v2, 0x2

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    .line 241
    invoke-virtual {p0}, Lcom/android/OriginalSettings/CryptKeeper;->finish()V

    .line 262
    :cond_1
    :goto_0
    return-void

    .line 246
    :cond_2
    const-string v0, "statusbar"

    invoke-virtual {p0, v0}, Lcom/android/OriginalSettings/CryptKeeper;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/StatusBarManager;

    .line 247
    const/high16 v1, 0x177

    invoke-virtual {v0, v1}, Landroid/app/StatusBarManager;->disable(I)V

    .line 256
    invoke-virtual {p0}, Lcom/android/OriginalSettings/CryptKeeper;->getLastNonConfigurationInstance()Ljava/lang/Object;

    move-result-object v0

    .line 257
    instance-of v1, v0, Lcom/android/OriginalSettings/CryptKeeper$NonConfigurationInstanceState;

    if-eqz v1, :cond_1

    .line 258
    check-cast v0, Lcom/android/OriginalSettings/CryptKeeper$NonConfigurationInstanceState;

    .line 259
    iget-object v0, v0, Lcom/android/OriginalSettings/CryptKeeper$NonConfigurationInstanceState;->wakelock:Landroid/os/PowerManager$WakeLock;

    iput-object v0, p0, Lcom/android/OriginalSettings/CryptKeeper;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 260
    const-string v0, "CryptKeeper"

    const-string v1, "Restoring wakelock from NonConfigurationInstanceState"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 332
    invoke-super {p0}, Lcom/android/OriginalSettings/BaseActivity;->onDestroy()V

    .line 334
    iget-object v0, p0, Lcom/android/OriginalSettings/CryptKeeper;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_0

    .line 335
    const-string v0, "CryptKeeper"

    const-string v1, "Releasing and destroying wakelock"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 336
    iget-object v0, p0, Lcom/android/OriginalSettings/CryptKeeper;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 337
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/OriginalSettings/CryptKeeper;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 339
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

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 586
    if-eqz p2, :cond_0

    const/4 v3, 0x6

    if-ne p2, v3, :cond_1

    .line 588
    :cond_0
    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 590
    .local v0, password:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    move v1, v2

    .line 610
    .end local v0           #password:Ljava/lang/String;
    :cond_1
    :goto_0
    return v1

    .line 595
    .restart local v0       #password:Ljava/lang/String;
    :cond_2
    invoke-virtual {p1, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 597
    const-string v3, ""

    sput-object v3, Lcom/android/OriginalSettings/CryptKeeper;->mSavedPassword:Ljava/lang/String;

    .line 602
    iget-object v3, p0, Lcom/android/OriginalSettings/CryptKeeper;->mPasswordEntry:Landroid/widget/EditText;

    invoke-virtual {v3, v1}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 603
    invoke-direct {p0, v0}, Lcom/android/OriginalSettings/CryptKeeper;->replaceInvalidChar(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 605
    const-string v3, "CryptKeeper"

    const-string v4, "Attempting to send command to decrypt"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 606
    new-instance v3, Lcom/android/OriginalSettings/CryptKeeper$DecryptTask;

    invoke-direct {v3, p0, v5}, Lcom/android/OriginalSettings/CryptKeeper$DecryptTask;-><init>(Lcom/android/OriginalSettings/CryptKeeper;Lcom/android/OriginalSettings/CryptKeeper$1;)V

    new-array v4, v2, [Ljava/lang/String;

    aput-object v0, v4, v1

    invoke-virtual {v3, v4}, Lcom/android/OriginalSettings/CryptKeeper$DecryptTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    move v1, v2

    .line 608
    goto :goto_0
.end method

.method public onRetainNonConfigurationInstance()Ljava/lang/Object;
    .locals 3

    .prologue
    .line 324
    new-instance v0, Lcom/android/OriginalSettings/CryptKeeper$NonConfigurationInstanceState;

    iget-object v1, p0, Lcom/android/OriginalSettings/CryptKeeper;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-direct {v0, v1}, Lcom/android/OriginalSettings/CryptKeeper$NonConfigurationInstanceState;-><init>(Landroid/os/PowerManager$WakeLock;)V

    .line 325
    .local v0, state:Lcom/android/OriginalSettings/CryptKeeper$NonConfigurationInstanceState;
    const-string v1, "CryptKeeper"

    const-string v2, "Handing wakelock off to NonConfigurationInstanceState"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 326
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/OriginalSettings/CryptKeeper;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 327
    return-object v0
.end method

.method public onStart()V
    .locals 0

    .prologue
    .line 271
    invoke-super {p0}, Lcom/android/OriginalSettings/BaseActivity;->onStart()V

    .line 273
    invoke-direct {p0}, Lcom/android/OriginalSettings/CryptKeeper;->setupUi()V

    .line 274
    return-void
.end method

.method public onStop()V
    .locals 2

    .prologue
    .line 311
    invoke-super {p0}, Lcom/android/OriginalSettings/BaseActivity;->onStop()V

    .line 313
    iget-object v0, p0, Lcom/android/OriginalSettings/CryptKeeper;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 314
    iget-object v0, p0, Lcom/android/OriginalSettings/CryptKeeper;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 315
    return-void
.end method
