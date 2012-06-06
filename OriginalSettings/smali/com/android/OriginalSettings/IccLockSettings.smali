.class public Lcom/android/OriginalSettings/IccLockSettings;
.super Lmiui/preference/BasePreferenceActivity;
.source "IccLockSettings.java"

# interfaces
.implements Lcom/android/OriginalSettings/EditPinPreference$OnPinEnteredListener;


# instance fields
.field private mDialogState:I

.field private mError:Ljava/lang/String;

.field private mHandler:Landroid/os/Handler;

.field private mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mNewPin:Ljava/lang/String;

.field private mOldPin:Ljava/lang/String;

.field private mPhone:Lcom/android/internal/telephony/Phone;

.field private mPin:Ljava/lang/String;

.field private mPinDialog:Lcom/android/OriginalSettings/EditPinPreference;

.field private mPinToggle:Landroid/preference/CheckBoxPreference;

.field private mRes:Landroid/content/res/Resources;

.field private mSimState:Ljava/lang/String;

.field private mToState:Z

.field private num_of_retry:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 57
    invoke-direct {p0}, Lmiui/preference/BasePreferenceActivity;-><init>()V

    .line 89
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/OriginalSettings/IccLockSettings;->mDialogState:I

    .line 110
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/OriginalSettings/IccLockSettings;->num_of_retry:I

    .line 114
    new-instance v0, Lcom/android/OriginalSettings/IccLockSettings$1;

    invoke-direct {v0, p0}, Lcom/android/OriginalSettings/IccLockSettings$1;-><init>(Lcom/android/OriginalSettings/IccLockSettings;)V

    iput-object v0, p0, Lcom/android/OriginalSettings/IccLockSettings;->mHandler:Landroid/os/Handler;

    .line 155
    new-instance v0, Lcom/android/OriginalSettings/IccLockSettings$2;

    invoke-direct {v0, p0}, Lcom/android/OriginalSettings/IccLockSettings$2;-><init>(Lcom/android/OriginalSettings/IccLockSettings;)V

    iput-object v0, p0, Lcom/android/OriginalSettings/IccLockSettings;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/android/OriginalSettings/IccLockSettings;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 57
    invoke-direct {p0}, Lcom/android/OriginalSettings/IccLockSettings;->iccLockNotAllowed()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/OriginalSettings/IccLockSettings;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 57
    invoke-direct {p0, p1}, Lcom/android/OriginalSettings/IccLockSettings;->iccLockChanged(Z)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/OriginalSettings/IccLockSettings;)Landroid/preference/CheckBoxPreference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 57
    iget-object v0, p0, Lcom/android/OriginalSettings/IccLockSettings;->mPinToggle:Landroid/preference/CheckBoxPreference;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/OriginalSettings/IccLockSettings;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 57
    invoke-direct {p0, p1}, Lcom/android/OriginalSettings/IccLockSettings;->iccPinChanged(Z)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/OriginalSettings/IccLockSettings;)Lcom/android/OriginalSettings/EditPinPreference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 57
    iget-object v0, p0, Lcom/android/OriginalSettings/IccLockSettings;->mPinDialog:Lcom/android/OriginalSettings/EditPinPreference;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/OriginalSettings/IccLockSettings;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 57
    iget-object v0, p0, Lcom/android/OriginalSettings/IccLockSettings;->mSimState:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$502(Lcom/android/OriginalSettings/IccLockSettings;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 57
    iput-object p1, p0, Lcom/android/OriginalSettings/IccLockSettings;->mSimState:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$600(Lcom/android/OriginalSettings/IccLockSettings;)Lcom/android/internal/telephony/Phone;
    .locals 1
    .parameter "x0"

    .prologue
    .line 57
    iget-object v0, p0, Lcom/android/OriginalSettings/IccLockSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/OriginalSettings/IccLockSettings;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 57
    iget v0, p0, Lcom/android/OriginalSettings/IccLockSettings;->mDialogState:I

    return v0
.end method

.method static synthetic access$800(Lcom/android/OriginalSettings/IccLockSettings;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 57
    invoke-direct {p0}, Lcom/android/OriginalSettings/IccLockSettings;->showPinDialog()V

    return-void
.end method

.method static synthetic access$900(Lcom/android/OriginalSettings/IccLockSettings;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 57
    invoke-direct {p0}, Lcom/android/OriginalSettings/IccLockSettings;->resetDialogState()V

    return-void
.end method

.method private getSimLockInfoResult()I
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 480
    const-string v1, "IccLockSettings"

    const-string v2, "getSimLockInfoResult()"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 481
    iget-object v1, p0, Lcom/android/OriginalSettings/IccLockSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/IccCard;->getSimLockInfoResult()Lcom/android/internal/telephony/SimLockInfoResult;

    move-result-object v1

    if-nez v1, :cond_0

    .line 482
    iget-object v1, p0, Lcom/android/OriginalSettings/IccLockSettings;->mRes:Landroid/content/res/Resources;

    const v2, 0x7f0b06e3

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 483
    invoke-virtual {p0}, Lcom/android/OriginalSettings/IccLockSettings;->finish()V

    .line 487
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/OriginalSettings/IccLockSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/IccCard;->getSimLockInfoResult()Lcom/android/internal/telephony/SimLockInfoResult;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/SimLockInfoResult;->getPinRetry()I

    move-result v0

    goto :goto_0
.end method

.method private iccLockChanged(Z)V
    .locals 2
    .parameter "success"

    .prologue
    .line 498
    if-eqz p1, :cond_0

    .line 499
    iget-object v0, p0, Lcom/android/OriginalSettings/IccLockSettings;->mPinToggle:Landroid/preference/CheckBoxPreference;

    iget-boolean v1, p0, Lcom/android/OriginalSettings/IccLockSettings;->mToState:Z

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 501
    iget-object v0, p0, Lcom/android/OriginalSettings/IccLockSettings;->mPinDialog:Lcom/android/OriginalSettings/EditPinPreference;

    iget-object v1, p0, Lcom/android/OriginalSettings/IccLockSettings;->mPinToggle:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/OriginalSettings/EditPinPreference;->setEnabled(Z)V

    .line 506
    :goto_0
    invoke-direct {p0}, Lcom/android/OriginalSettings/IccLockSettings;->resetDialogState()V

    .line 507
    return-void

    .line 503
    :cond_0
    iget-object v0, p0, Lcom/android/OriginalSettings/IccLockSettings;->mRes:Landroid/content/res/Resources;

    const v1, 0x7f0b035a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method private iccLockNotAllowed()V
    .locals 2

    .prologue
    .line 493
    iget-object v0, p0, Lcom/android/OriginalSettings/IccLockSettings;->mRes:Landroid/content/res/Resources;

    const v1, 0x7f0b06d5

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 494
    return-void
.end method

.method private iccPinChanged(Z)V
    .locals 3
    .parameter "success"

    .prologue
    const/4 v2, 0x0

    .line 510
    if-nez p1, :cond_0

    .line 511
    iget-object v0, p0, Lcom/android/OriginalSettings/IccLockSettings;->mRes:Landroid/content/res/Resources;

    const v1, 0x7f0b0358

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 520
    :goto_0
    invoke-direct {p0}, Lcom/android/OriginalSettings/IccLockSettings;->resetDialogState()V

    .line 521
    return-void

    .line 515
    :cond_0
    iget-object v0, p0, Lcom/android/OriginalSettings/IccLockSettings;->mRes:Landroid/content/res/Resources;

    const v1, 0x7f0b0359

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method private reasonablePin(Ljava/lang/String;)Z
    .locals 2
    .parameter "pin"

    .prologue
    .line 532
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x4

    if-lt v0, v1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x8

    if-le v0, v1, :cond_1

    .line 533
    :cond_0
    const/4 v0, 0x0

    .line 535
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private resetDialogState()V
    .locals 1

    .prologue
    .line 540
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/OriginalSettings/IccLockSettings;->mError:Ljava/lang/String;

    .line 541
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/OriginalSettings/IccLockSettings;->mDialogState:I

    .line 542
    const-string v0, ""

    iput-object v0, p0, Lcom/android/OriginalSettings/IccLockSettings;->mPin:Ljava/lang/String;

    .line 543
    invoke-direct {p0}, Lcom/android/OriginalSettings/IccLockSettings;->setDialogValues()V

    .line 544
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/OriginalSettings/IccLockSettings;->mDialogState:I

    .line 545
    return-void
.end method

.method private setDialogValues()V
    .locals 8

    .prologue
    const v7, 0x7f0b034e

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 351
    iget-object v2, p0, Lcom/android/OriginalSettings/IccLockSettings;->mPinDialog:Lcom/android/OriginalSettings/EditPinPreference;

    iget-object v3, p0, Lcom/android/OriginalSettings/IccLockSettings;->mPin:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/android/OriginalSettings/EditPinPreference;->setText(Ljava/lang/String;)V

    .line 352
    const-string v1, ""

    .line 354
    .local v1, message:Ljava/lang/String;
    const-string v2, "gsm.sim.state"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/OriginalSettings/IccLockSettings;->mSimState:Ljava/lang/String;

    .line 355
    const-string v2, "IccLockSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setDialogValues: num_of_retry "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/OriginalSettings/IccLockSettings;->num_of_retry:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", sim.state "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/OriginalSettings/IccLockSettings;->mSimState:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 356
    const-string v2, "ABSENT"

    iget-object v3, p0, Lcom/android/OriginalSettings/IccLockSettings;->mSimState:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "UNKNOWN"

    iget-object v3, p0, Lcom/android/OriginalSettings/IccLockSettings;->mSimState:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 357
    :cond_0
    iput v5, p0, Lcom/android/OriginalSettings/IccLockSettings;->num_of_retry:I

    .line 362
    :goto_0
    const-string v2, "IccLockSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setDialogValues: num_of_retry change to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/OriginalSettings/IccLockSettings;->num_of_retry:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 365
    iget v2, p0, Lcom/android/OriginalSettings/IccLockSettings;->num_of_retry:I

    if-ne v2, v6, :cond_3

    .line 366
    const v2, 0x7f0b06c5

    new-array v3, v6, [Ljava/lang/Object;

    iget v4, p0, Lcom/android/OriginalSettings/IccLockSettings;->num_of_retry:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {p0, v2, v3}, Lcom/android/OriginalSettings/IccLockSettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 370
    .local v0, Remain_Unblock_Count:Ljava/lang/String;
    :goto_1
    iget v2, p0, Lcom/android/OriginalSettings/IccLockSettings;->mDialogState:I

    packed-switch v2, :pswitch_data_0

    .line 394
    :goto_2
    iget-object v2, p0, Lcom/android/OriginalSettings/IccLockSettings;->mError:Ljava/lang/String;

    if-eqz v2, :cond_1

    .line 395
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/android/OriginalSettings/IccLockSettings;->mError:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 396
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/OriginalSettings/IccLockSettings;->mError:Ljava/lang/String;

    .line 398
    :cond_1
    iget-object v2, p0, Lcom/android/OriginalSettings/IccLockSettings;->mPinDialog:Lcom/android/OriginalSettings/EditPinPreference;

    invoke-virtual {v2, v1}, Lcom/android/OriginalSettings/EditPinPreference;->setDialogMessage(Ljava/lang/CharSequence;)V

    .line 399
    return-void

    .line 360
    .end local v0           #Remain_Unblock_Count:Ljava/lang/String;
    :cond_2
    invoke-direct {p0}, Lcom/android/OriginalSettings/IccLockSettings;->getSimLockInfoResult()I

    move-result v2

    iput v2, p0, Lcom/android/OriginalSettings/IccLockSettings;->num_of_retry:I

    goto :goto_0

    .line 368
    :cond_3
    const v2, 0x7f0b06d4

    new-array v3, v6, [Ljava/lang/Object;

    iget v4, p0, Lcom/android/OriginalSettings/IccLockSettings;->num_of_retry:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {p0, v2, v3}, Lcom/android/OriginalSettings/IccLockSettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .restart local v0       #Remain_Unblock_Count:Ljava/lang/String;
    goto :goto_1

    .line 372
    :pswitch_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/android/OriginalSettings/IccLockSettings;->mRes:Landroid/content/res/Resources;

    const v4, 0x7f0b034f

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 373
    iget-object v3, p0, Lcom/android/OriginalSettings/IccLockSettings;->mPinDialog:Lcom/android/OriginalSettings/EditPinPreference;

    iget-boolean v2, p0, Lcom/android/OriginalSettings/IccLockSettings;->mToState:Z

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/android/OriginalSettings/IccLockSettings;->mRes:Landroid/content/res/Resources;

    const v4, 0x7f0b0350

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    :goto_3
    invoke-virtual {v3, v2}, Lcom/android/OriginalSettings/EditPinPreference;->setDialogTitle(Ljava/lang/CharSequence;)V

    goto :goto_2

    :cond_4
    iget-object v2, p0, Lcom/android/OriginalSettings/IccLockSettings;->mRes:Landroid/content/res/Resources;

    const v4, 0x7f0b0351

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_3

    .line 378
    :pswitch_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/android/OriginalSettings/IccLockSettings;->mRes:Landroid/content/res/Resources;

    const v4, 0x7f0b0352

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 379
    iget-object v2, p0, Lcom/android/OriginalSettings/IccLockSettings;->mPinDialog:Lcom/android/OriginalSettings/EditPinPreference;

    iget-object v3, p0, Lcom/android/OriginalSettings/IccLockSettings;->mRes:Landroid/content/res/Resources;

    invoke-virtual {v3, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/OriginalSettings/EditPinPreference;->setDialogTitle(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 385
    :pswitch_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/android/OriginalSettings/IccLockSettings;->mRes:Landroid/content/res/Resources;

    const v4, 0x7f0b0353

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 387
    iget-object v2, p0, Lcom/android/OriginalSettings/IccLockSettings;->mPinDialog:Lcom/android/OriginalSettings/EditPinPreference;

    iget-object v3, p0, Lcom/android/OriginalSettings/IccLockSettings;->mRes:Landroid/content/res/Resources;

    invoke-virtual {v3, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/OriginalSettings/EditPinPreference;->setDialogTitle(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 390
    :pswitch_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/android/OriginalSettings/IccLockSettings;->mRes:Landroid/content/res/Resources;

    const v4, 0x7f0b0354

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 391
    iget-object v2, p0, Lcom/android/OriginalSettings/IccLockSettings;->mPinDialog:Lcom/android/OriginalSettings/EditPinPreference;

    iget-object v3, p0, Lcom/android/OriginalSettings/IccLockSettings;->mRes:Landroid/content/res/Resources;

    invoke-virtual {v3, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/OriginalSettings/EditPinPreference;->setDialogTitle(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 370
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private showPinDialog()V
    .locals 1

    .prologue
    .line 342
    iget v0, p0, Lcom/android/OriginalSettings/IccLockSettings;->mDialogState:I

    if-nez v0, :cond_0

    .line 348
    :goto_0
    return-void

    .line 345
    :cond_0
    invoke-direct {p0}, Lcom/android/OriginalSettings/IccLockSettings;->setDialogValues()V

    .line 347
    iget-object v0, p0, Lcom/android/OriginalSettings/IccLockSettings;->mPinDialog:Lcom/android/OriginalSettings/EditPinPreference;

    invoke-virtual {v0}, Lcom/android/OriginalSettings/EditPinPreference;->showPinDialog()V

    goto :goto_0
.end method

.method private tryChangeIccLockState()V
    .locals 4

    .prologue
    .line 468
    iget-object v1, p0, Lcom/android/OriginalSettings/IccLockSettings;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x64

    invoke-static {v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 469
    .local v0, callback:Landroid/os/Message;
    iget-object v1, p0, Lcom/android/OriginalSettings/IccLockSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/OriginalSettings/IccLockSettings;->mToState:Z

    iget-object v3, p0, Lcom/android/OriginalSettings/IccLockSettings;->mPin:Ljava/lang/String;

    invoke-virtual {v1, v2, v3, v0}, Lcom/android/internal/telephony/IccCard;->setIccLockEnabled(ZLjava/lang/String;Landroid/os/Message;)V

    .line 472
    iget-object v1, p0, Lcom/android/OriginalSettings/IccLockSettings;->mPinToggle:Landroid/preference/CheckBoxPreference;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 476
    invoke-direct {p0}, Lcom/android/OriginalSettings/IccLockSettings;->resetDialogState()V

    .line 477
    return-void
.end method

.method private tryChangePin()V
    .locals 4

    .prologue
    .line 524
    iget-object v1, p0, Lcom/android/OriginalSettings/IccLockSettings;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x65

    invoke-static {v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 525
    .local v0, callback:Landroid/os/Message;
    iget-object v1, p0, Lcom/android/OriginalSettings/IccLockSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v1

    iget-object v2, p0, Lcom/android/OriginalSettings/IccLockSettings;->mOldPin:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/OriginalSettings/IccLockSettings;->mNewPin:Ljava/lang/String;

    invoke-virtual {v1, v2, v3, v0}, Lcom/android/internal/telephony/IccCard;->changeIccLockPassword(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 528
    invoke-direct {p0}, Lcom/android/OriginalSettings/IccLockSettings;->resetDialogState()V

    .line 529
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 206
    invoke-super {p0, p1}, Lmiui/preference/BasePreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 208
    invoke-static {}, Lcom/android/OriginalSettings/Utils;->isMonkeyRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 209
    invoke-virtual {p0}, Lcom/android/OriginalSettings/IccLockSettings;->finish()V

    .line 248
    :goto_0
    return-void

    .line 213
    :cond_0
    const v0, 0x7f050037

    invoke-virtual {p0, v0}, Lcom/android/OriginalSettings/IccLockSettings;->addPreferencesFromResource(I)V

    .line 215
    const-string v0, "sim_pin"

    invoke-virtual {p0, v0}, Lcom/android/OriginalSettings/IccLockSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/OriginalSettings/EditPinPreference;

    iput-object v0, p0, Lcom/android/OriginalSettings/IccLockSettings;->mPinDialog:Lcom/android/OriginalSettings/EditPinPreference;

    .line 216
    const-string v0, "sim_toggle"

    invoke-virtual {p0, v0}, Lcom/android/OriginalSettings/IccLockSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/OriginalSettings/IccLockSettings;->mPinToggle:Landroid/preference/CheckBoxPreference;

    .line 217
    if-eqz p1, :cond_1

    const-string v0, "dialogState"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 218
    const-string v0, "dialogState"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/OriginalSettings/IccLockSettings;->mDialogState:I

    .line 219
    const-string v0, "dialogPin"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/OriginalSettings/IccLockSettings;->mPin:Ljava/lang/String;

    .line 220
    const-string v0, "dialogError"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/OriginalSettings/IccLockSettings;->mError:Ljava/lang/String;

    .line 221
    const-string v0, "enableState"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/OriginalSettings/IccLockSettings;->mToState:Z

    .line 224
    iget v0, p0, Lcom/android/OriginalSettings/IccLockSettings;->mDialogState:I

    packed-switch v0, :pswitch_data_0

    .line 241
    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/android/OriginalSettings/IccLockSettings;->mPinDialog:Lcom/android/OriginalSettings/EditPinPreference;

    invoke-virtual {v0, p0}, Lcom/android/OriginalSettings/EditPinPreference;->setOnPinEnteredListener(Lcom/android/OriginalSettings/EditPinPreference$OnPinEnteredListener;)V

    .line 244
    invoke-virtual {p0}, Lcom/android/OriginalSettings/IccLockSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->setPersistent(Z)V

    .line 246
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    iput-object v0, p0, Lcom/android/OriginalSettings/IccLockSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 247
    invoke-virtual {p0}, Lcom/android/OriginalSettings/IccLockSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/android/OriginalSettings/IccLockSettings;->mRes:Landroid/content/res/Resources;

    goto :goto_0

    .line 226
    :pswitch_0
    const-string v0, "oldPinCode"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/OriginalSettings/IccLockSettings;->mOldPin:Ljava/lang/String;

    goto :goto_1

    .line 230
    :pswitch_1
    const-string v0, "oldPinCode"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/OriginalSettings/IccLockSettings;->mOldPin:Ljava/lang/String;

    .line 231
    const-string v0, "newPinCode"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/OriginalSettings/IccLockSettings;->mNewPin:Ljava/lang/String;

    goto :goto_1

    .line 224
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 337
    invoke-super {p0}, Lmiui/preference/BasePreferenceActivity;->onPause()V

    .line 338
    iget-object v0, p0, Lcom/android/OriginalSettings/IccLockSettings;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/OriginalSettings/IccLockSettings;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 339
    return-void
.end method

.method public onPinEntered(Lcom/android/OriginalSettings/EditPinPreference;Z)V
    .locals 4
    .parameter "preference"
    .parameter "positiveResult"

    .prologue
    const/4 v3, 0x3

    const/4 v2, 0x0

    .line 402
    if-nez p2, :cond_0

    .line 403
    invoke-direct {p0}, Lcom/android/OriginalSettings/IccLockSettings;->resetDialogState()V

    .line 445
    :goto_0
    return-void

    .line 406
    :cond_0
    const-string v0, "IccLockSettings"

    const-string v1, "onPinEntered"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 408
    invoke-virtual {p1}, Lcom/android/OriginalSettings/EditPinPreference;->getText()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/OriginalSettings/IccLockSettings;->mPin:Ljava/lang/String;

    .line 409
    iget-object v0, p0, Lcom/android/OriginalSettings/IccLockSettings;->mPin:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/OriginalSettings/IccLockSettings;->reasonablePin(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 411
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/OriginalSettings/IccLockSettings;->mRes:Landroid/content/res/Resources;

    const v2, 0x7f0b06c6

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/OriginalSettings/IccLockSettings;->mError:Ljava/lang/String;

    .line 413
    invoke-direct {p0}, Lcom/android/OriginalSettings/IccLockSettings;->showPinDialog()V

    goto :goto_0

    .line 416
    :cond_1
    iget v0, p0, Lcom/android/OriginalSettings/IccLockSettings;->mDialogState:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 418
    :pswitch_0
    invoke-direct {p0}, Lcom/android/OriginalSettings/IccLockSettings;->tryChangeIccLockState()V

    goto :goto_0

    .line 421
    :pswitch_1
    iget-object v0, p0, Lcom/android/OriginalSettings/IccLockSettings;->mPin:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/OriginalSettings/IccLockSettings;->mOldPin:Ljava/lang/String;

    .line 422
    iput v3, p0, Lcom/android/OriginalSettings/IccLockSettings;->mDialogState:I

    .line 423
    iput-object v2, p0, Lcom/android/OriginalSettings/IccLockSettings;->mError:Ljava/lang/String;

    .line 424
    iput-object v2, p0, Lcom/android/OriginalSettings/IccLockSettings;->mPin:Ljava/lang/String;

    .line 425
    invoke-direct {p0}, Lcom/android/OriginalSettings/IccLockSettings;->showPinDialog()V

    goto :goto_0

    .line 428
    :pswitch_2
    iget-object v0, p0, Lcom/android/OriginalSettings/IccLockSettings;->mPin:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/OriginalSettings/IccLockSettings;->mNewPin:Ljava/lang/String;

    .line 429
    const/4 v0, 0x4

    iput v0, p0, Lcom/android/OriginalSettings/IccLockSettings;->mDialogState:I

    .line 430
    iput-object v2, p0, Lcom/android/OriginalSettings/IccLockSettings;->mPin:Ljava/lang/String;

    .line 431
    invoke-direct {p0}, Lcom/android/OriginalSettings/IccLockSettings;->showPinDialog()V

    goto :goto_0

    .line 434
    :pswitch_3
    iget-object v0, p0, Lcom/android/OriginalSettings/IccLockSettings;->mPin:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/OriginalSettings/IccLockSettings;->mNewPin:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 435
    iget-object v0, p0, Lcom/android/OriginalSettings/IccLockSettings;->mRes:Landroid/content/res/Resources;

    const v1, 0x7f0b0357

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/OriginalSettings/IccLockSettings;->mError:Ljava/lang/String;

    .line 436
    iput v3, p0, Lcom/android/OriginalSettings/IccLockSettings;->mDialogState:I

    .line 437
    iput-object v2, p0, Lcom/android/OriginalSettings/IccLockSettings;->mPin:Ljava/lang/String;

    .line 438
    invoke-direct {p0}, Lcom/android/OriginalSettings/IccLockSettings;->showPinDialog()V

    goto :goto_0

    .line 440
    :cond_2
    iput-object v2, p0, Lcom/android/OriginalSettings/IccLockSettings;->mError:Ljava/lang/String;

    .line 441
    invoke-direct {p0}, Lcom/android/OriginalSettings/IccLockSettings;->tryChangePin()V

    goto :goto_0

    .line 416
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
    .locals 4
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 448
    iget-object v2, p0, Lcom/android/OriginalSettings/IccLockSettings;->mPinToggle:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p2, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 449
    const-string v2, "IccLockSettings"

    const-string v3, "onPreferenceTreeClick"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 451
    iget-object v2, p0, Lcom/android/OriginalSettings/IccLockSettings;->mPinToggle:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/OriginalSettings/IccLockSettings;->mToState:Z

    .line 453
    iget-object v2, p0, Lcom/android/OriginalSettings/IccLockSettings;->mPinToggle:Landroid/preference/CheckBoxPreference;

    iget-boolean v3, p0, Lcom/android/OriginalSettings/IccLockSettings;->mToState:Z

    if-nez v3, :cond_0

    move v0, v1

    :cond_0
    invoke-virtual {v2, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 455
    iget-object v0, p0, Lcom/android/OriginalSettings/IccLockSettings;->mPinDialog:Lcom/android/OriginalSettings/EditPinPreference;

    iget-object v2, p0, Lcom/android/OriginalSettings/IccLockSettings;->mPinToggle:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v2

    invoke-virtual {v0, v2}, Lcom/android/OriginalSettings/EditPinPreference;->setEnabled(Z)V

    .line 456
    iput v1, p0, Lcom/android/OriginalSettings/IccLockSettings;->mDialogState:I

    .line 457
    invoke-direct {p0}, Lcom/android/OriginalSettings/IccLockSettings;->showPinDialog()V

    :cond_1
    move v0, v1

    .line 462
    :goto_0
    return v0

    .line 458
    :cond_2
    iget-object v2, p0, Lcom/android/OriginalSettings/IccLockSettings;->mPinDialog:Lcom/android/OriginalSettings/EditPinPreference;

    invoke-virtual {p2, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 459
    const/4 v1, 0x2

    iput v1, p0, Lcom/android/OriginalSettings/IccLockSettings;->mDialogState:I

    goto :goto_0
.end method

.method protected onResume()V
    .locals 8

    .prologue
    const/4 v4, 0x0

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 252
    invoke-super {p0}, Lmiui/preference/BasePreferenceActivity;->onResume()V

    .line 255
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 256
    .local v1, filter:Landroid/content/IntentFilter;
    const-string v3, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 257
    const-string v3, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 258
    iget-object v3, p0, Lcom/android/OriginalSettings/IccLockSettings;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v3, v1, v4, v4}, Lcom/android/OriginalSettings/IccLockSettings;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 262
    const-string v3, "gsm.sim.state"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/OriginalSettings/IccLockSettings;->mSimState:Ljava/lang/String;

    .line 263
    const-string v3, "IccLockSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onResume() sim.state : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/OriginalSettings/IccLockSettings;->mSimState:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 264
    const-string v3, "ABSENT"

    iget-object v4, p0, Lcom/android/OriginalSettings/IccLockSettings;->mSimState:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "UNKNOWN"

    iget-object v4, p0, Lcom/android/OriginalSettings/IccLockSettings;->mSimState:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 265
    :cond_0
    iget-object v3, p0, Lcom/android/OriginalSettings/IccLockSettings;->mPinToggle:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, v6}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 266
    iget-object v3, p0, Lcom/android/OriginalSettings/IccLockSettings;->mPinToggle:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, v6}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 273
    :goto_0
    iget-object v3, p0, Lcom/android/OriginalSettings/IccLockSettings;->mPinDialog:Lcom/android/OriginalSettings/EditPinPreference;

    iget-object v4, p0, Lcom/android/OriginalSettings/IccLockSettings;->mPinToggle:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v4

    invoke-virtual {v3, v4}, Lcom/android/OriginalSettings/EditPinPreference;->setEnabled(Z)V

    .line 275
    iget v3, p0, Lcom/android/OriginalSettings/IccLockSettings;->mDialogState:I

    if-eqz v3, :cond_3

    .line 276
    invoke-direct {p0}, Lcom/android/OriginalSettings/IccLockSettings;->showPinDialog()V

    .line 284
    :goto_1
    invoke-virtual {p0}, Lcom/android/OriginalSettings/IccLockSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "airplane_mode_on"

    invoke-static {v3, v4, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 285
    .local v2, mAirplaneMode:I
    if-ne v2, v7, :cond_1

    .line 287
    iget-object v3, p0, Lcom/android/OriginalSettings/IccLockSettings;->mPinToggle:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, v6}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 288
    iget-object v3, p0, Lcom/android/OriginalSettings/IccLockSettings;->mPinDialog:Lcom/android/OriginalSettings/EditPinPreference;

    invoke-virtual {v3, v6}, Lcom/android/OriginalSettings/EditPinPreference;->setEnabled(Z)V

    .line 290
    iget-object v3, p0, Lcom/android/OriginalSettings/IccLockSettings;->mPinDialog:Lcom/android/OriginalSettings/EditPinPreference;

    invoke-virtual {v3}, Lcom/android/OriginalSettings/EditPinPreference;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    .line 291
    .local v0, d:Landroid/app/Dialog;
    if-eqz v0, :cond_4

    .line 292
    const-string v3, "IccLockSettings"

    const-string v4, "onResume() PIN input dialog is shown. Dialog closed"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 293
    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 299
    .end local v0           #d:Landroid/app/Dialog;
    :cond_1
    :goto_2
    return-void

    .line 269
    .end local v2           #mAirplaneMode:I
    :cond_2
    iget-object v3, p0, Lcom/android/OriginalSettings/IccLockSettings;->mPinToggle:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, v7}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 270
    iget-object v3, p0, Lcom/android/OriginalSettings/IccLockSettings;->mPinToggle:Landroid/preference/CheckBoxPreference;

    iget-object v4, p0, Lcom/android/OriginalSettings/IccLockSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v4}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/telephony/IccCard;->getIccLockEnabled()Z

    move-result v4

    invoke-virtual {v3, v4}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    goto :goto_0

    .line 279
    :cond_3
    invoke-direct {p0}, Lcom/android/OriginalSettings/IccLockSettings;->resetDialogState()V

    goto :goto_1

    .line 295
    .restart local v0       #d:Landroid/app/Dialog;
    .restart local v2       #mAirplaneMode:I
    :cond_4
    const-string v3, "IccLockSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onResume() PIN input dialog is not shown : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "out"

    .prologue
    .line 308
    iget-object v0, p0, Lcom/android/OriginalSettings/IccLockSettings;->mPinDialog:Lcom/android/OriginalSettings/EditPinPreference;

    invoke-virtual {v0}, Lcom/android/OriginalSettings/EditPinPreference;->isDialogOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 309
    const-string v0, "dialogState"

    iget v1, p0, Lcom/android/OriginalSettings/IccLockSettings;->mDialogState:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 310
    const-string v0, "dialogPin"

    iget-object v1, p0, Lcom/android/OriginalSettings/IccLockSettings;->mPinDialog:Lcom/android/OriginalSettings/EditPinPreference;

    invoke-virtual {v1}, Lcom/android/OriginalSettings/EditPinPreference;->getEditText()Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 311
    const-string v0, "dialogError"

    iget-object v1, p0, Lcom/android/OriginalSettings/IccLockSettings;->mError:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 312
    const-string v0, "enableState"

    iget-boolean v1, p0, Lcom/android/OriginalSettings/IccLockSettings;->mToState:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 315
    iget v0, p0, Lcom/android/OriginalSettings/IccLockSettings;->mDialogState:I

    packed-switch v0, :pswitch_data_0

    .line 333
    :goto_0
    return-void

    .line 317
    :pswitch_0
    const-string v0, "oldPinCode"

    iget-object v1, p0, Lcom/android/OriginalSettings/IccLockSettings;->mOldPin:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 321
    :pswitch_1
    const-string v0, "oldPinCode"

    iget-object v1, p0, Lcom/android/OriginalSettings/IccLockSettings;->mOldPin:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 322
    const-string v0, "newPinCode"

    iget-object v1, p0, Lcom/android/OriginalSettings/IccLockSettings;->mNewPin:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 331
    :cond_0
    invoke-super {p0, p1}, Lmiui/preference/BasePreferenceActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    goto :goto_0

    .line 315
    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
