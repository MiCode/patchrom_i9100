.class public Lcom/android/OriginalSettings/ChooseLockPassword$ChooseLockPasswordFragment;
.super Landroid/app/Fragment;
.source "ChooseLockPassword.java"

# interfaces
.implements Landroid/text/TextWatcher;
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/TextView$OnEditorActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/OriginalSettings/ChooseLockPassword;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ChooseLockPasswordFragment"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/OriginalSettings/ChooseLockPassword$ChooseLockPasswordFragment$Stage;
    }
.end annotation


# static fields
.field private static mHandler:Landroid/os/Handler;


# instance fields
.field clickedEmergencyCall:Z

.field private hasPwdPatternRestriction:Z

.field private mAlarmManager:Landroid/app/AlarmManager;

.field private mCancelButton:Landroid/widget/Button;

.field private mChooseLockSettingsHelper:Lcom/android/OriginalSettings/ChooseLockSettingsHelper;

.field private mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

.field private mEmergencyCall:Landroid/widget/Button;

.field private mFirstPin:Ljava/lang/String;

.field private mHeaderText:Landroid/widget/TextView;

.field private mIsAlphaMode:Z

.field private mKeyboardHelper:Lcom/android/internal/widget/PasswordEntryKeyboardHelper;

.field private mKeyboardView:Landroid/inputmethodservice/KeyboardView;

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mNextButton:Landroid/widget/Button;

.field private mPasswordEntry:Landroid/widget/TextView;

.field private mPasswordMaxLength:I

.field private mPasswordMinLength:I

.field private mPasswordMinLetters:I

.field private mPasswordMinLowerCase:I

.field private mPasswordMinNonLetter:I

.field private mPasswordMinNumeric:I

.field private mPasswordMinSymbols:I

.field private mPasswordMinUpperCase:I

.field private mPowerManager:Landroid/os/PowerManager;

.field private mPwdPolicy:Landroid/app/enterprise/PasswordPolicy;

.field private mRequestedQuality:I

.field private mStatusBarDisableCount:I

.field private mStatusBarManager:Landroid/app/StatusBarManager;

.field private mTelMgr:Landroid/telephony/TelephonyManager;

.field private mUiStage:Lcom/android/OriginalSettings/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

.field private userCancelledPwdChange:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 143
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    sput-object v0, Lcom/android/OriginalSettings/ChooseLockPassword$ChooseLockPasswordFragment;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 194
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 124
    const/4 v0, 0x4

    iput v0, p0, Lcom/android/OriginalSettings/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinLength:I

    .line 125
    const/16 v0, 0x10

    iput v0, p0, Lcom/android/OriginalSettings/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMaxLength:I

    .line 126
    iput v1, p0, Lcom/android/OriginalSettings/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinLetters:I

    .line 127
    iput v1, p0, Lcom/android/OriginalSettings/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinUpperCase:I

    .line 128
    iput v1, p0, Lcom/android/OriginalSettings/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinLowerCase:I

    .line 129
    iput v1, p0, Lcom/android/OriginalSettings/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinSymbols:I

    .line 130
    iput v1, p0, Lcom/android/OriginalSettings/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinNumeric:I

    .line 131
    iput v1, p0, Lcom/android/OriginalSettings/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinNonLetter:I

    .line 133
    const/high16 v0, 0x2

    iput v0, p0, Lcom/android/OriginalSettings/ChooseLockPassword$ChooseLockPasswordFragment;->mRequestedQuality:I

    .line 135
    sget-object v0, Lcom/android/OriginalSettings/ChooseLockPassword$ChooseLockPasswordFragment$Stage;->Introduction:Lcom/android/OriginalSettings/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    iput-object v0, p0, Lcom/android/OriginalSettings/ChooseLockPassword$ChooseLockPasswordFragment;->mUiStage:Lcom/android/OriginalSettings/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    .line 153
    iput-boolean v1, p0, Lcom/android/OriginalSettings/ChooseLockPassword$ChooseLockPasswordFragment;->userCancelledPwdChange:Z

    .line 155
    iput-boolean v1, p0, Lcom/android/OriginalSettings/ChooseLockPassword$ChooseLockPasswordFragment;->clickedEmergencyCall:Z

    .line 156
    iput-boolean v1, p0, Lcom/android/OriginalSettings/ChooseLockPassword$ChooseLockPasswordFragment;->hasPwdPatternRestriction:Z

    .line 196
    return-void
.end method

.method private disableStatusBar()V
    .locals 2

    .prologue
    .line 727
    monitor-enter p0

    .line 728
    :try_start_0
    iget v0, p0, Lcom/android/OriginalSettings/ChooseLockPassword$ChooseLockPasswordFragment;->mStatusBarDisableCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/OriginalSettings/ChooseLockPassword$ChooseLockPasswordFragment;->mStatusBarDisableCount:I

    if-nez v0, :cond_0

    .line 729
    iget-object v0, p0, Lcom/android/OriginalSettings/ChooseLockPassword$ChooseLockPasswordFragment;->mStatusBarManager:Landroid/app/StatusBarManager;

    const/high16 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/StatusBarManager;->disable(I)V

    .line 731
    :cond_0
    monitor-exit p0

    .line 732
    return-void

    .line 731
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private handleNext()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 535
    iget-object v6, p0, Lcom/android/OriginalSettings/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordEntry:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 536
    .local v3, pin:Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 581
    :cond_0
    :goto_0
    return-void

    .line 539
    :cond_1
    const/4 v0, 0x0

    .line 540
    .local v0, errorMsg:Ljava/lang/String;
    iget-object v6, p0, Lcom/android/OriginalSettings/ChooseLockPassword$ChooseLockPasswordFragment;->mUiStage:Lcom/android/OriginalSettings/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    sget-object v7, Lcom/android/OriginalSettings/ChooseLockPassword$ChooseLockPasswordFragment$Stage;->Introduction:Lcom/android/OriginalSettings/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    if-ne v6, v7, :cond_3

    .line 541
    invoke-direct {p0, v3}, Lcom/android/OriginalSettings/ChooseLockPassword$ChooseLockPasswordFragment;->validatePassword(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 542
    if-nez v0, :cond_2

    .line 543
    iput-object v3, p0, Lcom/android/OriginalSettings/ChooseLockPassword$ChooseLockPasswordFragment;->mFirstPin:Ljava/lang/String;

    .line 544
    sget-object v6, Lcom/android/OriginalSettings/ChooseLockPassword$ChooseLockPasswordFragment$Stage;->NeedToConfirm:Lcom/android/OriginalSettings/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    invoke-virtual {p0, v6}, Lcom/android/OriginalSettings/ChooseLockPassword$ChooseLockPasswordFragment;->updateStage(Lcom/android/OriginalSettings/ChooseLockPassword$ChooseLockPasswordFragment$Stage;)V

    .line 545
    iget-object v6, p0, Lcom/android/OriginalSettings/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordEntry:Landroid/widget/TextView;

    const-string v7, ""

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 578
    :cond_2
    :goto_1
    if-eqz v0, :cond_0

    .line 579
    iget-object v6, p0, Lcom/android/OriginalSettings/ChooseLockPassword$ChooseLockPasswordFragment;->mUiStage:Lcom/android/OriginalSettings/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    invoke-direct {p0, v0, v6}, Lcom/android/OriginalSettings/ChooseLockPassword$ChooseLockPasswordFragment;->showError(Ljava/lang/String;Lcom/android/OriginalSettings/ChooseLockPassword$ChooseLockPasswordFragment$Stage;)V

    goto :goto_0

    .line 547
    :cond_3
    iget-object v6, p0, Lcom/android/OriginalSettings/ChooseLockPassword$ChooseLockPasswordFragment;->mUiStage:Lcom/android/OriginalSettings/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    sget-object v7, Lcom/android/OriginalSettings/ChooseLockPassword$ChooseLockPasswordFragment$Stage;->NeedToConfirm:Lcom/android/OriginalSettings/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    if-ne v6, v7, :cond_2

    .line 548
    iget-object v6, p0, Lcom/android/OriginalSettings/ChooseLockPassword$ChooseLockPasswordFragment;->mFirstPin:Ljava/lang/String;

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 549
    invoke-virtual {p0}, Lcom/android/OriginalSettings/ChooseLockPassword$ChooseLockPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v6

    const-string v7, "lockscreen.biometric_weak_fallback"

    invoke-virtual {v6, v7, v8}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    .line 554
    .local v2, isFallback:Z
    invoke-static {}, Landroid/dirEncryption/DirEncryptionManager;->isEncryptionFeatureEnabled()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 555
    iget-object v6, p0, Lcom/android/OriginalSettings/ChooseLockPassword$ChooseLockPasswordFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v6, v2}, Lcom/android/internal/widget/LockPatternUtils;->clearLockExceptPwd(Z)V

    .line 559
    :goto_2
    iget-object v6, p0, Lcom/android/OriginalSettings/ChooseLockPassword$ChooseLockPasswordFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v7, p0, Lcom/android/OriginalSettings/ChooseLockPassword$ChooseLockPasswordFragment;->mRequestedQuality:I

    invoke-virtual {v6, v3, v7, v2}, Lcom/android/internal/widget/LockPatternUtils;->saveLockPassword(Ljava/lang/String;IZ)V

    .line 563
    new-instance v1, Landroid/content/Intent;

    const-string v6, "com.android.server.enterprise.PWD_CHANGE_TIMEOUT"

    invoke-direct {v1, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 564
    .local v1, intent:Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/android/OriginalSettings/ChooseLockPassword$ChooseLockPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    const/high16 v7, 0x1000

    invoke-static {v6, v8, v1, v7}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v4

    .line 566
    .local v4, sender:Landroid/app/PendingIntent;
    iget-object v6, p0, Lcom/android/OriginalSettings/ChooseLockPassword$ChooseLockPasswordFragment;->mAlarmManager:Landroid/app/AlarmManager;

    invoke-virtual {v6, v4}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 567
    iget-object v6, p0, Lcom/android/OriginalSettings/ChooseLockPassword$ChooseLockPasswordFragment;->mPwdPolicy:Landroid/app/enterprise/PasswordPolicy;

    invoke-virtual {v6, v8}, Landroid/app/enterprise/PasswordPolicy;->setPwdChangeRequested(I)Z

    .line 569
    invoke-virtual {p0}, Lcom/android/OriginalSettings/ChooseLockPassword$ChooseLockPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Activity;->finish()V

    goto :goto_1

    .line 557
    .end local v1           #intent:Landroid/content/Intent;
    .end local v4           #sender:Landroid/app/PendingIntent;
    :cond_4
    iget-object v6, p0, Lcom/android/OriginalSettings/ChooseLockPassword$ChooseLockPasswordFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v6, v2}, Lcom/android/internal/widget/LockPatternUtils;->clearLock(Z)V

    goto :goto_2

    .line 571
    .end local v2           #isFallback:Z
    :cond_5
    sget-object v6, Lcom/android/OriginalSettings/ChooseLockPassword$ChooseLockPasswordFragment$Stage;->ConfirmWrong:Lcom/android/OriginalSettings/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    invoke-virtual {p0, v6}, Lcom/android/OriginalSettings/ChooseLockPassword$ChooseLockPasswordFragment;->updateStage(Lcom/android/OriginalSettings/ChooseLockPassword$ChooseLockPasswordFragment$Stage;)V

    .line 572
    iget-object v6, p0, Lcom/android/OriginalSettings/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordEntry:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    .line 573
    .local v5, tmp:Ljava/lang/CharSequence;
    if-eqz v5, :cond_2

    move-object v6, v5

    .line 574
    check-cast v6, Landroid/text/Spannable;

    invoke-interface {v5}, Ljava/lang/CharSequence;->length()I

    move-result v7

    invoke-static {v6, v8, v7}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    goto :goto_1
.end method

.method private reenableStatusBar()V
    .locals 2

    .prologue
    .line 735
    monitor-enter p0

    .line 736
    :try_start_0
    iget v0, p0, Lcom/android/OriginalSettings/ChooseLockPassword$ChooseLockPasswordFragment;->mStatusBarDisableCount:I

    if-lez v0, :cond_0

    .line 737
    iget v0, p0, Lcom/android/OriginalSettings/ChooseLockPassword$ChooseLockPasswordFragment;->mStatusBarDisableCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/OriginalSettings/ChooseLockPassword$ChooseLockPasswordFragment;->mStatusBarDisableCount:I

    if-nez v0, :cond_0

    .line 738
    iget-object v0, p0, Lcom/android/OriginalSettings/ChooseLockPassword$ChooseLockPasswordFragment;->mStatusBarManager:Landroid/app/StatusBarManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/StatusBarManager;->disable(I)V

    .line 741
    :cond_0
    monitor-exit p0

    .line 742
    return-void

    .line 741
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private showError(Ljava/lang/String;Lcom/android/OriginalSettings/ChooseLockPassword$ChooseLockPasswordFragment$Stage;)V
    .locals 4
    .parameter "msg"
    .parameter "next"

    .prologue
    .line 642
    iget-object v0, p0, Lcom/android/OriginalSettings/ChooseLockPassword$ChooseLockPasswordFragment;->mHeaderText:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 643
    sget-object v0, Lcom/android/OriginalSettings/ChooseLockPassword$ChooseLockPasswordFragment;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/OriginalSettings/ChooseLockPassword$ChooseLockPasswordFragment$1;

    invoke-direct {v1, p0, p2}, Lcom/android/OriginalSettings/ChooseLockPassword$ChooseLockPasswordFragment$1;-><init>(Lcom/android/OriginalSettings/ChooseLockPassword$ChooseLockPasswordFragment;Lcom/android/OriginalSettings/ChooseLockPassword$ChooseLockPasswordFragment$Stage;)V

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 648
    return-void
.end method

.method private updateUi()V
    .locals 8

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 665
    iget-object v4, p0, Lcom/android/OriginalSettings/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordEntry:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 666
    .local v3, password:Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v1

    .line 668
    .local v1, length:I
    iget-object v4, p0, Lcom/android/OriginalSettings/ChooseLockPassword$ChooseLockPasswordFragment;->mUiStage:Lcom/android/OriginalSettings/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    sget-object v7, Lcom/android/OriginalSettings/ChooseLockPassword$ChooseLockPasswordFragment$Stage;->Introduction:Lcom/android/OriginalSettings/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    if-ne v4, v7, :cond_2

    .line 669
    iget-object v4, p0, Lcom/android/OriginalSettings/ChooseLockPassword$ChooseLockPasswordFragment;->mPwdPolicy:Landroid/app/enterprise/PasswordPolicy;

    invoke-virtual {v4}, Landroid/app/enterprise/PasswordPolicy;->isChangeRequested()I

    move-result v4

    const/4 v7, 0x2

    if-ge v4, v7, :cond_0

    iget-object v4, p0, Lcom/android/OriginalSettings/ChooseLockPassword$ChooseLockPasswordFragment;->mPwdPolicy:Landroid/app/enterprise/PasswordPolicy;

    invoke-virtual {v4}, Landroid/app/enterprise/PasswordPolicy;->getPasswordChangeTimeout()I

    move-result v4

    if-gtz v4, :cond_1

    iget-object v4, p0, Lcom/android/OriginalSettings/ChooseLockPassword$ChooseLockPasswordFragment;->mPwdPolicy:Landroid/app/enterprise/PasswordPolicy;

    invoke-virtual {v4}, Landroid/app/enterprise/PasswordPolicy;->isChangeRequested()I

    move-result v4

    if-ne v4, v5, :cond_1

    .line 671
    :cond_0
    iget-object v4, p0, Lcom/android/OriginalSettings/ChooseLockPassword$ChooseLockPasswordFragment;->mCancelButton:Landroid/widget/Button;

    invoke-virtual {v4, v6}, Landroid/widget/Button;->setEnabled(Z)V

    .line 678
    :cond_1
    :goto_0
    iget-object v4, p0, Lcom/android/OriginalSettings/ChooseLockPassword$ChooseLockPasswordFragment;->mUiStage:Lcom/android/OriginalSettings/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    sget-object v7, Lcom/android/OriginalSettings/ChooseLockPassword$ChooseLockPasswordFragment$Stage;->Introduction:Lcom/android/OriginalSettings/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    if-ne v4, v7, :cond_7

    if-lez v1, :cond_7

    .line 680
    iget-boolean v4, p0, Lcom/android/OriginalSettings/ChooseLockPassword$ChooseLockPasswordFragment;->hasPwdPatternRestriction:Z

    if-eqz v4, :cond_3

    .line 681
    iget-object v4, p0, Lcom/android/OriginalSettings/ChooseLockPassword$ChooseLockPasswordFragment;->mNextButton:Landroid/widget/Button;

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setEnabled(Z)V

    .line 682
    iget-object v4, p0, Lcom/android/OriginalSettings/ChooseLockPassword$ChooseLockPasswordFragment;->mNextButton:Landroid/widget/Button;

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setClickable(Z)V

    .line 683
    iget-object v4, p0, Lcom/android/OriginalSettings/ChooseLockPassword$ChooseLockPasswordFragment;->mNextButton:Landroid/widget/Button;

    iget-object v5, p0, Lcom/android/OriginalSettings/ChooseLockPassword$ChooseLockPasswordFragment;->mUiStage:Lcom/android/OriginalSettings/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    iget v5, v5, Lcom/android/OriginalSettings/ChooseLockPassword$ChooseLockPasswordFragment$Stage;->buttonText:I

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setText(I)V

    .line 707
    :goto_1
    return-void

    .line 674
    :cond_2
    iget-object v4, p0, Lcom/android/OriginalSettings/ChooseLockPassword$ChooseLockPasswordFragment;->mCancelButton:Landroid/widget/Button;

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setEnabled(Z)V

    .line 675
    iget-object v4, p0, Lcom/android/OriginalSettings/ChooseLockPassword$ChooseLockPasswordFragment;->mCancelButton:Landroid/widget/Button;

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setClickable(Z)V

    goto :goto_0

    .line 687
    :cond_3
    iget v4, p0, Lcom/android/OriginalSettings/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinLength:I

    if-ge v1, v4, :cond_5

    .line 688
    iget-boolean v4, p0, Lcom/android/OriginalSettings/ChooseLockPassword$ChooseLockPasswordFragment;->mIsAlphaMode:Z

    if-eqz v4, :cond_4

    const v4, 0x7f0b01d6

    :goto_2
    new-array v5, v5, [Ljava/lang/Object;

    iget v7, p0, Lcom/android/OriginalSettings/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinLength:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {p0, v4, v5}, Lcom/android/OriginalSettings/ChooseLockPassword$ChooseLockPasswordFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 690
    .local v2, msg:Ljava/lang/String;
    iget-object v4, p0, Lcom/android/OriginalSettings/ChooseLockPassword$ChooseLockPasswordFragment;->mHeaderText:Landroid/widget/TextView;

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 691
    iget-object v4, p0, Lcom/android/OriginalSettings/ChooseLockPassword$ChooseLockPasswordFragment;->mNextButton:Landroid/widget/Button;

    invoke-virtual {v4, v6}, Landroid/widget/Button;->setEnabled(Z)V

    .line 706
    .end local v2           #msg:Ljava/lang/String;
    :goto_3
    iget-object v4, p0, Lcom/android/OriginalSettings/ChooseLockPassword$ChooseLockPasswordFragment;->mNextButton:Landroid/widget/Button;

    iget-object v5, p0, Lcom/android/OriginalSettings/ChooseLockPassword$ChooseLockPasswordFragment;->mUiStage:Lcom/android/OriginalSettings/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    iget v5, v5, Lcom/android/OriginalSettings/ChooseLockPassword$ChooseLockPasswordFragment$Stage;->buttonText:I

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setText(I)V

    goto :goto_1

    .line 688
    :cond_4
    const v4, 0x7f0b01d7

    goto :goto_2

    .line 693
    :cond_5
    invoke-direct {p0, v3}, Lcom/android/OriginalSettings/ChooseLockPassword$ChooseLockPasswordFragment;->validatePassword(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 694
    .local v0, error:Ljava/lang/String;
    if-eqz v0, :cond_6

    .line 695
    iget-object v4, p0, Lcom/android/OriginalSettings/ChooseLockPassword$ChooseLockPasswordFragment;->mHeaderText:Landroid/widget/TextView;

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 696
    iget-object v4, p0, Lcom/android/OriginalSettings/ChooseLockPassword$ChooseLockPasswordFragment;->mNextButton:Landroid/widget/Button;

    invoke-virtual {v4, v6}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_3

    .line 698
    :cond_6
    iget-object v4, p0, Lcom/android/OriginalSettings/ChooseLockPassword$ChooseLockPasswordFragment;->mHeaderText:Landroid/widget/TextView;

    const v6, 0x7f0b01d8

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setText(I)V

    .line 699
    iget-object v4, p0, Lcom/android/OriginalSettings/ChooseLockPassword$ChooseLockPasswordFragment;->mNextButton:Landroid/widget/Button;

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_3

    .line 703
    .end local v0           #error:Ljava/lang/String;
    :cond_7
    iget-object v7, p0, Lcom/android/OriginalSettings/ChooseLockPassword$ChooseLockPasswordFragment;->mHeaderText:Landroid/widget/TextView;

    iget-boolean v4, p0, Lcom/android/OriginalSettings/ChooseLockPassword$ChooseLockPasswordFragment;->mIsAlphaMode:Z

    if-eqz v4, :cond_8

    iget-object v4, p0, Lcom/android/OriginalSettings/ChooseLockPassword$ChooseLockPasswordFragment;->mUiStage:Lcom/android/OriginalSettings/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    iget v4, v4, Lcom/android/OriginalSettings/ChooseLockPassword$ChooseLockPasswordFragment$Stage;->alphaHint:I

    :goto_4
    invoke-virtual {v7, v4}, Landroid/widget/TextView;->setText(I)V

    .line 704
    iget-object v7, p0, Lcom/android/OriginalSettings/ChooseLockPassword$ChooseLockPasswordFragment;->mNextButton:Landroid/widget/Button;

    if-lez v1, :cond_9

    move v4, v5

    :goto_5
    invoke-virtual {v7, v4}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_3

    .line 703
    :cond_8
    iget-object v4, p0, Lcom/android/OriginalSettings/ChooseLockPassword$ChooseLockPasswordFragment;->mUiStage:Lcom/android/OriginalSettings/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    iget v4, v4, Lcom/android/OriginalSettings/ChooseLockPassword$ChooseLockPasswordFragment$Stage;->numericHint:I

    goto :goto_4

    :cond_9
    move v4, v6

    .line 704
    goto :goto_5
.end method

.method private validatePassword(Ljava/lang/String;)Ljava/lang/String;
    .locals 17
    .parameter "password"

    .prologue
    .line 426
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/android/OriginalSettings/ChooseLockPassword$ChooseLockPasswordFragment;->hasPwdPatternRestriction:Z

    if-eqz v13, :cond_2

    .line 427
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/OriginalSettings/ChooseLockPassword$ChooseLockPasswordFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    move-object/from16 v0, p1

    invoke-virtual {v13, v0}, Lcom/android/internal/widget/LockPatternUtils;->checkPasswordHistory(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_0

    .line 428
    const v13, 0x7f0b087b

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/OriginalSettings/ChooseLockPassword$ChooseLockPasswordFragment;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 531
    :goto_0
    return-object v5

    .line 429
    :cond_0
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/OriginalSettings/ChooseLockPassword$ChooseLockPasswordFragment;->mPwdPolicy:Landroid/app/enterprise/PasswordPolicy;

    move-object/from16 v0, p1

    invoke-virtual {v13, v0}, Landroid/app/enterprise/PasswordPolicy;->isPasswordPatternMatched(Ljava/lang/String;)Z

    move-result v13

    if-nez v13, :cond_1

    .line 430
    const v13, 0x7f0b01e2

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/OriginalSettings/ChooseLockPassword$ChooseLockPasswordFragment;->getString(I)Ljava/lang/String;

    move-result-object v5

    goto :goto_0

    .line 432
    :cond_1
    const/4 v5, 0x0

    goto :goto_0

    .line 435
    :cond_2
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v13

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/OriginalSettings/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinLength:I

    if-ge v13, v14, :cond_4

    .line 436
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/android/OriginalSettings/ChooseLockPassword$ChooseLockPasswordFragment;->mIsAlphaMode:Z

    if-eqz v13, :cond_3

    const v13, 0x7f0b01d6

    :goto_1
    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/OriginalSettings/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinLength:I

    move/from16 v16, v0

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    aput-object v16, v14, v15

    move-object/from16 v0, p0

    invoke-virtual {v0, v13, v14}, Lcom/android/OriginalSettings/ChooseLockPassword$ChooseLockPasswordFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    goto :goto_0

    :cond_3
    const v13, 0x7f0b01d7

    goto :goto_1

    .line 440
    :cond_4
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v13

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/OriginalSettings/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMaxLength:I

    if-le v13, v14, :cond_6

    .line 441
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/android/OriginalSettings/ChooseLockPassword$ChooseLockPasswordFragment;->mIsAlphaMode:Z

    if-eqz v13, :cond_5

    const v13, 0x7f0b01da

    :goto_2
    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/OriginalSettings/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMaxLength:I

    move/from16 v16, v0

    add-int/lit8 v16, v16, 0x1

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    aput-object v16, v14, v15

    move-object/from16 v0, p0

    invoke-virtual {v0, v13, v14}, Lcom/android/OriginalSettings/ChooseLockPassword$ChooseLockPasswordFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    goto :goto_0

    :cond_5
    const v13, 0x7f0b01db

    goto :goto_2

    .line 445
    :cond_6
    const/4 v7, 0x0

    .line 446
    .local v7, letters:I
    const/4 v10, 0x0

    .line 447
    .local v10, numbers:I
    const/4 v8, 0x0

    .line 448
    .local v8, lowercase:I
    const/4 v11, 0x0

    .line 449
    .local v11, symbols:I
    const/4 v12, 0x0

    .line 450
    .local v12, uppercase:I
    const/4 v9, 0x0

    .line 451
    .local v9, nonletter:I
    const/4 v6, 0x0

    .local v6, i:I
    :goto_3
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v13

    if-ge v6, v13, :cond_c

    .line 452
    move-object/from16 v0, p1

    invoke-virtual {v0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 456
    .local v3, c:C
    const/16 v13, 0x20

    if-le v3, v13, :cond_7

    const/16 v13, 0x7f

    if-le v3, v13, :cond_8

    .line 457
    :cond_7
    const v13, 0x7f0b01de

    :try_start_0
    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/OriginalSettings/ChooseLockPassword$ChooseLockPasswordFragment;->getString(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    goto/16 :goto_0

    .line 460
    :catch_0
    move-exception v4

    .line 461
    .local v4, e:Ljava/lang/Exception;
    const-string v5, "Password contains an illegal character"

    .line 462
    .local v5, errMsg:Ljava/lang/String;
    goto/16 :goto_0

    .line 465
    .end local v4           #e:Ljava/lang/Exception;
    .end local v5           #errMsg:Ljava/lang/String;
    :cond_8
    const/16 v13, 0x30

    if-lt v3, v13, :cond_9

    const/16 v13, 0x39

    if-gt v3, v13, :cond_9

    .line 466
    add-int/lit8 v10, v10, 0x1

    .line 467
    add-int/lit8 v9, v9, 0x1

    .line 451
    :goto_4
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 468
    :cond_9
    const/16 v13, 0x41

    if-lt v3, v13, :cond_a

    const/16 v13, 0x5a

    if-gt v3, v13, :cond_a

    .line 469
    add-int/lit8 v7, v7, 0x1

    .line 470
    add-int/lit8 v12, v12, 0x1

    goto :goto_4

    .line 471
    :cond_a
    const/16 v13, 0x61

    if-lt v3, v13, :cond_b

    const/16 v13, 0x7a

    if-gt v3, v13, :cond_b

    .line 472
    add-int/lit8 v7, v7, 0x1

    .line 473
    add-int/lit8 v8, v8, 0x1

    goto :goto_4

    .line 475
    :cond_b
    add-int/lit8 v11, v11, 0x1

    .line 476
    add-int/lit8 v9, v9, 0x1

    goto :goto_4

    .line 480
    .end local v3           #c:C
    :cond_c
    const/high16 v13, 0x2

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/OriginalSettings/ChooseLockPassword$ChooseLockPasswordFragment;->mRequestedQuality:I

    if-ne v13, v14, :cond_f

    if-gtz v7, :cond_d

    if-lez v11, :cond_f

    .line 482
    :cond_d
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/OriginalSettings/ChooseLockPassword$ChooseLockPasswordFragment;->mPwdPolicy:Landroid/app/enterprise/PasswordPolicy;

    if-eqz v13, :cond_e

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/OriginalSettings/ChooseLockPassword$ChooseLockPasswordFragment;->mPwdPolicy:Landroid/app/enterprise/PasswordPolicy;

    invoke-virtual {v13}, Landroid/app/enterprise/PasswordPolicy;->isChangeRequested()I

    move-result v13

    if-gtz v13, :cond_f

    .line 485
    :cond_e
    const v13, 0x7f0b01dc

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/OriginalSettings/ChooseLockPassword$ChooseLockPasswordFragment;->getString(I)Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_0

    .line 488
    :cond_f
    const/high16 v13, 0x6

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/OriginalSettings/ChooseLockPassword$ChooseLockPasswordFragment;->mRequestedQuality:I

    if-ne v13, v14, :cond_15

    .line 490
    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/OriginalSettings/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinLetters:I

    if-ge v7, v13, :cond_10

    .line 491
    invoke-virtual/range {p0 .. p0}, Lcom/android/OriginalSettings/ChooseLockPassword$ChooseLockPasswordFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const/high16 v14, 0x7f0d

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/OriginalSettings/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinLetters:I

    invoke-virtual {v13, v14, v15}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/OriginalSettings/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinLetters:I

    move/from16 v16, v0

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    aput-object v16, v14, v15

    invoke-static {v13, v14}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_0

    .line 494
    :cond_10
    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/OriginalSettings/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinNumeric:I

    if-ge v10, v13, :cond_11

    .line 495
    invoke-virtual/range {p0 .. p0}, Lcom/android/OriginalSettings/ChooseLockPassword$ChooseLockPasswordFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x7f0d0003

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/OriginalSettings/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinNumeric:I

    invoke-virtual {v13, v14, v15}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/OriginalSettings/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinNumeric:I

    move/from16 v16, v0

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    aput-object v16, v14, v15

    invoke-static {v13, v14}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_0

    .line 498
    :cond_11
    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/OriginalSettings/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinLowerCase:I

    if-ge v8, v13, :cond_12

    .line 499
    invoke-virtual/range {p0 .. p0}, Lcom/android/OriginalSettings/ChooseLockPassword$ChooseLockPasswordFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x7f0d0001

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/OriginalSettings/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinLowerCase:I

    invoke-virtual {v13, v14, v15}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/OriginalSettings/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinLowerCase:I

    move/from16 v16, v0

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    aput-object v16, v14, v15

    invoke-static {v13, v14}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_0

    .line 502
    :cond_12
    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/OriginalSettings/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinUpperCase:I

    if-ge v12, v13, :cond_13

    .line 503
    invoke-virtual/range {p0 .. p0}, Lcom/android/OriginalSettings/ChooseLockPassword$ChooseLockPasswordFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x7f0d0002

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/OriginalSettings/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinUpperCase:I

    invoke-virtual {v13, v14, v15}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/OriginalSettings/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinUpperCase:I

    move/from16 v16, v0

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    aput-object v16, v14, v15

    invoke-static {v13, v14}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_0

    .line 506
    :cond_13
    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/OriginalSettings/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinSymbols:I

    if-ge v11, v13, :cond_14

    .line 507
    invoke-virtual/range {p0 .. p0}, Lcom/android/OriginalSettings/ChooseLockPassword$ChooseLockPasswordFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x7f0d0004

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/OriginalSettings/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinSymbols:I

    invoke-virtual {v13, v14, v15}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/OriginalSettings/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinSymbols:I

    move/from16 v16, v0

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    aput-object v16, v14, v15

    invoke-static {v13, v14}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_0

    .line 510
    :cond_14
    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/OriginalSettings/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinNonLetter:I

    if-ge v9, v13, :cond_1a

    .line 511
    invoke-virtual/range {p0 .. p0}, Lcom/android/OriginalSettings/ChooseLockPassword$ChooseLockPasswordFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x7f0d0005

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/OriginalSettings/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinNonLetter:I

    invoke-virtual {v13, v14, v15}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/OriginalSettings/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinNonLetter:I

    move/from16 v16, v0

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    aput-object v16, v14, v15

    invoke-static {v13, v14}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_0

    .line 516
    :cond_15
    const/high16 v13, 0x4

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/OriginalSettings/ChooseLockPassword$ChooseLockPasswordFragment;->mRequestedQuality:I

    if-ne v13, v14, :cond_17

    const/4 v1, 0x1

    .line 518
    .local v1, alphabetic:Z
    :goto_5
    const/high16 v13, 0x5

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/OriginalSettings/ChooseLockPassword$ChooseLockPasswordFragment;->mRequestedQuality:I

    if-ne v13, v14, :cond_18

    const/4 v2, 0x1

    .line 520
    .local v2, alphanumeric:Z
    :goto_6
    if-nez v1, :cond_16

    if-eqz v2, :cond_19

    :cond_16
    if-nez v7, :cond_19

    .line 521
    const v13, 0x7f0b01df

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/OriginalSettings/ChooseLockPassword$ChooseLockPasswordFragment;->getString(I)Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_0

    .line 516
    .end local v1           #alphabetic:Z
    .end local v2           #alphanumeric:Z
    :cond_17
    const/4 v1, 0x0

    goto :goto_5

    .line 518
    .restart local v1       #alphabetic:Z
    :cond_18
    const/4 v2, 0x0

    goto :goto_6

    .line 523
    .restart local v2       #alphanumeric:Z
    :cond_19
    if-eqz v2, :cond_1a

    if-nez v10, :cond_1a

    .line 524
    const v13, 0x7f0b01e0

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/OriginalSettings/ChooseLockPassword$ChooseLockPasswordFragment;->getString(I)Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_0

    .line 527
    .end local v1           #alphabetic:Z
    .end local v2           #alphanumeric:Z
    :cond_1a
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/OriginalSettings/ChooseLockPassword$ChooseLockPasswordFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    move-object/from16 v0, p1

    invoke-virtual {v13, v0}, Lcom/android/internal/widget/LockPatternUtils;->checkPasswordHistory(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_1c

    .line 528
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/android/OriginalSettings/ChooseLockPassword$ChooseLockPasswordFragment;->mIsAlphaMode:Z

    if-eqz v13, :cond_1b

    const v13, 0x7f0b01e3

    :goto_7
    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/OriginalSettings/ChooseLockPassword$ChooseLockPasswordFragment;->getString(I)Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_0

    :cond_1b
    const v13, 0x7f0b01dd

    goto :goto_7

    .line 531
    :cond_1c
    const/4 v5, 0x0

    goto/16 :goto_0
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 2
    .parameter "s"

    .prologue
    .line 711
    iget-object v0, p0, Lcom/android/OriginalSettings/ChooseLockPassword$ChooseLockPasswordFragment;->mUiStage:Lcom/android/OriginalSettings/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    sget-object v1, Lcom/android/OriginalSettings/ChooseLockPassword$ChooseLockPasswordFragment$Stage;->ConfirmWrong:Lcom/android/OriginalSettings/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    if-ne v0, v1, :cond_0

    .line 712
    sget-object v0, Lcom/android/OriginalSettings/ChooseLockPassword$ChooseLockPasswordFragment$Stage;->NeedToConfirm:Lcom/android/OriginalSettings/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    iput-object v0, p0, Lcom/android/OriginalSettings/ChooseLockPassword$ChooseLockPasswordFragment;->mUiStage:Lcom/android/OriginalSettings/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    .line 714
    :cond_0
    invoke-direct {p0}, Lcom/android/OriginalSettings/ChooseLockPassword$ChooseLockPasswordFragment;->updateUi()V

    .line 715
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "s"
    .parameter "start"
    .parameter "count"
    .parameter "after"

    .prologue
    .line 719
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 2
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 403
    invoke-super {p0, p1, p2, p3}, Landroid/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 404
    packed-switch p1, :pswitch_data_0

    .line 412
    :cond_0
    :goto_0
    return-void

    .line 406
    :pswitch_0
    const/4 v0, -0x1

    if-eq p2, v0, :cond_0

    .line 407
    invoke-virtual {p0}, Lcom/android/OriginalSettings/ChooseLockPassword$ChooseLockPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setResult(I)V

    .line 408
    invoke-virtual {p0}, Lcom/android/OriginalSettings/ChooseLockPassword$ChooseLockPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 404
    :pswitch_data_0
    .packed-switch 0x3a
        :pswitch_0
    .end packed-switch
.end method

.method public onClick(Landroid/view/View;)V
    .locals 14
    .parameter "v"

    .prologue
    const/4 v12, 0x1

    .line 584
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v10

    sparse-switch v10, :sswitch_data_0

    .line 639
    :cond_0
    :goto_0
    return-void

    .line 586
    :sswitch_0
    invoke-direct {p0}, Lcom/android/OriginalSettings/ChooseLockPassword$ChooseLockPasswordFragment;->handleNext()V

    goto :goto_0

    .line 591
    :sswitch_1
    sget-boolean v10, Lcom/android/OriginalSettings/ChooseLockPassword;->isChangePwdRequired:Z

    if-eqz v10, :cond_3

    .line 593
    iget-object v10, p0, Lcom/android/OriginalSettings/ChooseLockPassword$ChooseLockPasswordFragment;->mUiStage:Lcom/android/OriginalSettings/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    sget-object v11, Lcom/android/OriginalSettings/ChooseLockPassword$ChooseLockPasswordFragment$Stage;->Introduction:Lcom/android/OriginalSettings/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    if-ne v10, v11, :cond_1

    iget-object v10, p0, Lcom/android/OriginalSettings/ChooseLockPassword$ChooseLockPasswordFragment;->mPwdPolicy:Landroid/app/enterprise/PasswordPolicy;

    invoke-virtual {v10}, Landroid/app/enterprise/PasswordPolicy;->isChangeRequested()I

    move-result v10

    if-ne v10, v12, :cond_1

    iget-object v10, p0, Lcom/android/OriginalSettings/ChooseLockPassword$ChooseLockPasswordFragment;->mPwdPolicy:Landroid/app/enterprise/PasswordPolicy;

    invoke-virtual {v10}, Landroid/app/enterprise/PasswordPolicy;->getPasswordChangeTimeout()I

    move-result v10

    if-lez v10, :cond_1

    .line 595
    iput-boolean v12, p0, Lcom/android/OriginalSettings/ChooseLockPassword$ChooseLockPasswordFragment;->userCancelledPwdChange:Z

    .line 596
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v10

    const v12, 0xea60

    iget-object v13, p0, Lcom/android/OriginalSettings/ChooseLockPassword$ChooseLockPasswordFragment;->mPwdPolicy:Landroid/app/enterprise/PasswordPolicy;

    invoke-virtual {v13}, Landroid/app/enterprise/PasswordPolicy;->getPasswordChangeTimeout()I

    move-result v13

    mul-int/2addr v12, v13

    int-to-long v12, v12

    add-long v8, v10, v12

    .line 597
    .local v8, when:J
    new-instance v4, Landroid/content/Intent;

    const-string v10, "com.android.server.enterprise.PWD_CHANGE_TIMEOUT"

    invoke-direct {v4, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 598
    .local v4, intent:Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/android/OriginalSettings/ChooseLockPassword$ChooseLockPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v10

    invoke-virtual {v10}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v10

    const/4 v11, 0x0

    const/high16 v12, 0x1000

    invoke-static {v10, v11, v4, v12}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v7

    .line 600
    .local v7, sender:Landroid/app/PendingIntent;
    iget-object v10, p0, Lcom/android/OriginalSettings/ChooseLockPassword$ChooseLockPasswordFragment;->mAlarmManager:Landroid/app/AlarmManager;

    const/4 v11, 0x2

    invoke-virtual {v10, v11, v8, v9, v7}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 601
    iget-object v10, p0, Lcom/android/OriginalSettings/ChooseLockPassword$ChooseLockPasswordFragment;->mPwdPolicy:Landroid/app/enterprise/PasswordPolicy;

    const/4 v11, -0x1

    invoke-virtual {v10, v11}, Landroid/app/enterprise/PasswordPolicy;->setPwdChangeRequested(I)Z

    .line 602
    invoke-virtual {p0}, Lcom/android/OriginalSettings/ChooseLockPassword$ChooseLockPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v10

    invoke-virtual {v10}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 604
    .end local v4           #intent:Landroid/content/Intent;
    .end local v7           #sender:Landroid/app/PendingIntent;
    .end local v8           #when:J
    :cond_1
    iget-object v10, p0, Lcom/android/OriginalSettings/ChooseLockPassword$ChooseLockPasswordFragment;->mUiStage:Lcom/android/OriginalSettings/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    sget-object v11, Lcom/android/OriginalSettings/ChooseLockPassword$ChooseLockPasswordFragment$Stage;->NeedToConfirm:Lcom/android/OriginalSettings/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    if-eq v10, v11, :cond_2

    iget-object v10, p0, Lcom/android/OriginalSettings/ChooseLockPassword$ChooseLockPasswordFragment;->mUiStage:Lcom/android/OriginalSettings/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    sget-object v11, Lcom/android/OriginalSettings/ChooseLockPassword$ChooseLockPasswordFragment$Stage;->ConfirmWrong:Lcom/android/OriginalSettings/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    if-ne v10, v11, :cond_0

    .line 605
    :cond_2
    sget-object v10, Lcom/android/OriginalSettings/ChooseLockPassword$ChooseLockPasswordFragment$Stage;->Introduction:Lcom/android/OriginalSettings/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    invoke-virtual {p0, v10}, Lcom/android/OriginalSettings/ChooseLockPassword$ChooseLockPasswordFragment;->updateStage(Lcom/android/OriginalSettings/ChooseLockPassword$ChooseLockPasswordFragment$Stage;)V

    .line 606
    iget-object v10, p0, Lcom/android/OriginalSettings/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordEntry:Landroid/widget/TextView;

    const-string v11, ""

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 612
    :cond_3
    invoke-virtual {p0}, Lcom/android/OriginalSettings/ChooseLockPassword$ChooseLockPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v10

    invoke-virtual {v10}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 616
    :sswitch_2
    iput-boolean v12, p0, Lcom/android/OriginalSettings/ChooseLockPassword$ChooseLockPasswordFragment;->clickedEmergencyCall:Z

    .line 617
    invoke-virtual {p0}, Lcom/android/OriginalSettings/ChooseLockPassword$ChooseLockPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v10

    const-string v11, "activity"

    invoke-virtual {v10, v11}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 618
    .local v0, activityManager:Landroid/app/ActivityManager;
    invoke-virtual {v0, v12}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v3

    .line 619
    .local v3, info:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 620
    .local v2, i:Ljava/util/Iterator;
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_4

    .line 621
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 622
    .local v6, runningTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;
    iget-object v10, v6, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v10}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    .line 623
    .local v5, pkgName:Ljava/lang/String;
    const-string v10, "com.android.phone"

    invoke-virtual {v5, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 625
    :try_start_0
    iget-object v1, v6, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    .line 626
    .local v1, component:Landroid/content/ComponentName;
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v10

    const/4 v11, 0x0

    invoke-interface {v10, v11, v1}, Landroid/app/IActivityManager;->finishOtherInstances(Landroid/os/IBinder;Landroid/content/ComponentName;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 632
    .end local v1           #component:Landroid/content/ComponentName;
    .end local v5           #pkgName:Ljava/lang/String;
    .end local v6           #runningTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;
    :cond_4
    :goto_1
    new-instance v4, Landroid/content/Intent;

    const-string v10, "com.android.phone.EmergencyDialer.DIAL"

    invoke-direct {v4, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 633
    .restart local v4       #intent:Landroid/content/Intent;
    const/high16 v10, 0x1080

    invoke-virtual {v4, v10}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 635
    invoke-virtual {p0}, Lcom/android/OriginalSettings/ChooseLockPassword$ChooseLockPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v10

    invoke-virtual {v10}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v10

    invoke-virtual {v10, v4}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 627
    .end local v4           #intent:Landroid/content/Intent;
    .restart local v5       #pkgName:Ljava/lang/String;
    .restart local v6       #runningTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;
    :catch_0
    move-exception v10

    goto :goto_1

    .line 584
    :sswitch_data_0
    .sparse-switch
        0x7f080009 -> :sswitch_0
        0x7f080034 -> :sswitch_1
        0x7f080036 -> :sswitch_2
    .end sparse-switch
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .parameter "newConfig"

    .prologue
    .line 378
    invoke-super {p0, p1}, Landroid/app/Fragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 379
    iget-object v1, p0, Lcom/android/OriginalSettings/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordEntry:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 380
    .local v0, pin:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/OriginalSettings/ChooseLockPassword$ChooseLockPasswordFragment;->onDestroyView()V

    .line 381
    iget-object v1, p0, Lcom/android/OriginalSettings/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordEntry:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 382
    iget-object v1, p0, Lcom/android/OriginalSettings/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordEntry:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->requestFocus()Z

    .line 383
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 7
    .parameter "savedInstanceState"

    .prologue
    const/16 v6, 0x10

    const/4 v5, 0x1

    const/4 v4, 0x4

    .line 200
    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 201
    new-instance v2, Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {p0}, Lcom/android/OriginalSettings/ChooseLockPassword$ChooseLockPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/OriginalSettings/ChooseLockPassword$ChooseLockPasswordFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 202
    invoke-virtual {p0}, Lcom/android/OriginalSettings/ChooseLockPassword$ChooseLockPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 204
    .local v1, intent:Landroid/content/Intent;
    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 205
    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const-string v3, "android.app.action.CHANGE_DEVICE_PASSWORD"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    sput-boolean v2, Lcom/android/OriginalSettings/ChooseLockPassword;->isChangePwdRequired:Z

    .line 209
    :cond_0
    const-string v2, "lockscreen.password_type"

    iget v3, p0, Lcom/android/OriginalSettings/ChooseLockPassword$ChooseLockPasswordFragment;->mRequestedQuality:I

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    iget-object v3, p0, Lcom/android/OriginalSettings/ChooseLockPassword$ChooseLockPasswordFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v3}, Lcom/android/internal/widget/LockPatternUtils;->getRequestedPasswordQuality()I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    iput v2, p0, Lcom/android/OriginalSettings/ChooseLockPassword$ChooseLockPasswordFragment;->mRequestedQuality:I

    .line 211
    const-string v2, "lockscreen.password_min"

    iget v3, p0, Lcom/android/OriginalSettings/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinLength:I

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    iget-object v3, p0, Lcom/android/OriginalSettings/ChooseLockPassword$ChooseLockPasswordFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v3}, Lcom/android/internal/widget/LockPatternUtils;->getRequestedMinimumPasswordLength()I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    iput v2, p0, Lcom/android/OriginalSettings/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinLength:I

    .line 214
    const-string v2, "lockscreen.password_max"

    iget v3, p0, Lcom/android/OriginalSettings/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMaxLength:I

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/android/OriginalSettings/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMaxLength:I

    .line 215
    const-string v2, "lockscreen.password_min_letters"

    iget v3, p0, Lcom/android/OriginalSettings/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinLetters:I

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    iget-object v3, p0, Lcom/android/OriginalSettings/ChooseLockPassword$ChooseLockPasswordFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v3}, Lcom/android/internal/widget/LockPatternUtils;->getRequestedPasswordMinimumLetters()I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    iput v2, p0, Lcom/android/OriginalSettings/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinLetters:I

    .line 217
    const-string v2, "lockscreen.password_min_uppercase"

    iget v3, p0, Lcom/android/OriginalSettings/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinUpperCase:I

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    iget-object v3, p0, Lcom/android/OriginalSettings/ChooseLockPassword$ChooseLockPasswordFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v3}, Lcom/android/internal/widget/LockPatternUtils;->getRequestedPasswordMinimumUpperCase()I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    iput v2, p0, Lcom/android/OriginalSettings/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinUpperCase:I

    .line 219
    const-string v2, "lockscreen.password_min_lowercase"

    iget v3, p0, Lcom/android/OriginalSettings/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinLowerCase:I

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    iget-object v3, p0, Lcom/android/OriginalSettings/ChooseLockPassword$ChooseLockPasswordFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v3}, Lcom/android/internal/widget/LockPatternUtils;->getRequestedPasswordMinimumLowerCase()I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    iput v2, p0, Lcom/android/OriginalSettings/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinLowerCase:I

    .line 221
    const-string v2, "lockscreen.password_min_numeric"

    iget v3, p0, Lcom/android/OriginalSettings/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinNumeric:I

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    iget-object v3, p0, Lcom/android/OriginalSettings/ChooseLockPassword$ChooseLockPasswordFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v3}, Lcom/android/internal/widget/LockPatternUtils;->getRequestedPasswordMinimumNumeric()I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    iput v2, p0, Lcom/android/OriginalSettings/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinNumeric:I

    .line 223
    const-string v2, "lockscreen.password_min_symbols"

    iget v3, p0, Lcom/android/OriginalSettings/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinSymbols:I

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    iget-object v3, p0, Lcom/android/OriginalSettings/ChooseLockPassword$ChooseLockPasswordFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v3}, Lcom/android/internal/widget/LockPatternUtils;->getRequestedPasswordMinimumSymbols()I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    iput v2, p0, Lcom/android/OriginalSettings/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinSymbols:I

    .line 225
    const-string v2, "lockscreen.password_min_nonletter"

    iget v3, p0, Lcom/android/OriginalSettings/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinNonLetter:I

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    iget-object v3, p0, Lcom/android/OriginalSettings/ChooseLockPassword$ChooseLockPasswordFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v3}, Lcom/android/internal/widget/LockPatternUtils;->getRequestedPasswordMinimumNonLetter()I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    iput v2, p0, Lcom/android/OriginalSettings/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinNonLetter:I

    .line 229
    const/4 v0, 0x4

    .line 230
    .local v0, MIN_PWD_LENGTH:I
    iget v2, p0, Lcom/android/OriginalSettings/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinLength:I

    if-lt v2, v4, :cond_7

    iget v2, p0, Lcom/android/OriginalSettings/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinLength:I

    iget v3, p0, Lcom/android/OriginalSettings/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMaxLength:I

    if-ge v2, v3, :cond_7

    .line 238
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/android/OriginalSettings/ChooseLockPassword$ChooseLockPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-string v3, "alarm"

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/AlarmManager;

    iput-object v2, p0, Lcom/android/OriginalSettings/ChooseLockPassword$ChooseLockPasswordFragment;->mAlarmManager:Landroid/app/AlarmManager;

    .line 239
    invoke-virtual {p0}, Lcom/android/OriginalSettings/ChooseLockPassword$ChooseLockPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-string v3, "power"

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/PowerManager;

    iput-object v2, p0, Lcom/android/OriginalSettings/ChooseLockPassword$ChooseLockPasswordFragment;->mPowerManager:Landroid/os/PowerManager;

    .line 240
    invoke-virtual {p0}, Lcom/android/OriginalSettings/ChooseLockPassword$ChooseLockPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-string v3, "enterprise_policy"

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/enterprise/EnterpriseDeviceManager;

    iput-object v2, p0, Lcom/android/OriginalSettings/ChooseLockPassword$ChooseLockPasswordFragment;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 242
    iget-object v2, p0, Lcom/android/OriginalSettings/ChooseLockPassword$ChooseLockPasswordFragment;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    if-eqz v2, :cond_2

    .line 243
    iget-object v2, p0, Lcom/android/OriginalSettings/ChooseLockPassword$ChooseLockPasswordFragment;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    invoke-virtual {v2}, Landroid/app/enterprise/EnterpriseDeviceManager;->getPasswordPolicy()Landroid/app/enterprise/PasswordPolicy;

    move-result-object v2

    iput-object v2, p0, Lcom/android/OriginalSettings/ChooseLockPassword$ChooseLockPasswordFragment;->mPwdPolicy:Landroid/app/enterprise/PasswordPolicy;

    .line 244
    :cond_2
    iget-object v2, p0, Lcom/android/OriginalSettings/ChooseLockPassword$ChooseLockPasswordFragment;->mPwdPolicy:Landroid/app/enterprise/PasswordPolicy;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/OriginalSettings/ChooseLockPassword$ChooseLockPasswordFragment;->mPwdPolicy:Landroid/app/enterprise/PasswordPolicy;

    invoke-virtual {v2, v5}, Landroid/app/enterprise/PasswordPolicy;->getRequiredPwdPatternRestrictions(Z)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 245
    iput-boolean v5, p0, Lcom/android/OriginalSettings/ChooseLockPassword$ChooseLockPasswordFragment;->hasPwdPatternRestriction:Z

    .line 247
    :cond_3
    invoke-virtual {p0}, Lcom/android/OriginalSettings/ChooseLockPassword$ChooseLockPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-string v3, "phone"

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    iput-object v2, p0, Lcom/android/OriginalSettings/ChooseLockPassword$ChooseLockPasswordFragment;->mTelMgr:Landroid/telephony/TelephonyManager;

    .line 248
    invoke-virtual {p0}, Lcom/android/OriginalSettings/ChooseLockPassword$ChooseLockPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-string v3, "statusbar"

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/StatusBarManager;

    iput-object v2, p0, Lcom/android/OriginalSettings/ChooseLockPassword$ChooseLockPasswordFragment;->mStatusBarManager:Landroid/app/StatusBarManager;

    .line 250
    iget-object v2, p0, Lcom/android/OriginalSettings/ChooseLockPassword$ChooseLockPasswordFragment;->mPwdPolicy:Landroid/app/enterprise/PasswordPolicy;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/android/OriginalSettings/ChooseLockPassword$ChooseLockPasswordFragment;->mPwdPolicy:Landroid/app/enterprise/PasswordPolicy;

    invoke-virtual {v2}, Landroid/app/enterprise/PasswordPolicy;->isChangeRequested()I

    move-result v2

    if-lez v2, :cond_4

    .line 251
    iget-object v2, p0, Lcom/android/OriginalSettings/ChooseLockPassword$ChooseLockPasswordFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v2}, Lcom/android/internal/widget/LockPatternUtils;->getRequestedPasswordQuality()I

    move-result v2

    const/high16 v3, 0x2

    if-lt v2, v3, :cond_4

    .line 252
    iget-object v2, p0, Lcom/android/OriginalSettings/ChooseLockPassword$ChooseLockPasswordFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v2}, Lcom/android/internal/widget/LockPatternUtils;->getRequestedPasswordQuality()I

    move-result v2

    iput v2, p0, Lcom/android/OriginalSettings/ChooseLockPassword$ChooseLockPasswordFragment;->mRequestedQuality:I

    .line 255
    :cond_4
    iget v2, p0, Lcom/android/OriginalSettings/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinLength:I

    if-ge v2, v4, :cond_5

    .line 256
    iput v4, p0, Lcom/android/OriginalSettings/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinLength:I

    .line 258
    :cond_5
    iget v2, p0, Lcom/android/OriginalSettings/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMaxLength:I

    if-le v2, v6, :cond_6

    .line 259
    iput v6, p0, Lcom/android/OriginalSettings/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMaxLength:I

    .line 263
    :cond_6
    new-instance v2, Lcom/android/OriginalSettings/ChooseLockSettingsHelper;

    invoke-virtual {p0}, Lcom/android/OriginalSettings/ChooseLockPassword$ChooseLockPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/android/OriginalSettings/ChooseLockSettingsHelper;-><init>(Landroid/app/Activity;)V

    iput-object v2, p0, Lcom/android/OriginalSettings/ChooseLockPassword$ChooseLockPasswordFragment;->mChooseLockSettingsHelper:Lcom/android/OriginalSettings/ChooseLockSettingsHelper;

    .line 264
    return-void

    .line 232
    :cond_7
    iget v2, p0, Lcom/android/OriginalSettings/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinLength:I

    if-ge v2, v4, :cond_8

    .line 233
    iput v4, p0, Lcom/android/OriginalSettings/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinLength:I

    goto/16 :goto_0

    .line 234
    :cond_8
    iget v2, p0, Lcom/android/OriginalSettings/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinLength:I

    iget v3, p0, Lcom/android/OriginalSettings/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMaxLength:I

    if-le v2, v3, :cond_1

    .line 235
    iget v2, p0, Lcom/android/OriginalSettings/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMaxLength:I

    iput v2, p0, Lcom/android/OriginalSettings/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinLength:I

    goto/16 :goto_0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 14
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    .line 271
    const/4 v9, 0x0

    .line 272
    .local v9, view:Landroid/view/View;
    iget-object v10, p0, Lcom/android/OriginalSettings/ChooseLockPassword$ChooseLockPasswordFragment;->mPwdPolicy:Landroid/app/enterprise/PasswordPolicy;

    if-eqz v10, :cond_7

    iget-object v10, p0, Lcom/android/OriginalSettings/ChooseLockPassword$ChooseLockPasswordFragment;->mPwdPolicy:Landroid/app/enterprise/PasswordPolicy;

    invoke-virtual {v10}, Landroid/app/enterprise/PasswordPolicy;->isChangeRequested()I

    move-result v10

    const/4 v11, 0x1

    if-ne v10, v11, :cond_0

    iget-object v10, p0, Lcom/android/OriginalSettings/ChooseLockPassword$ChooseLockPasswordFragment;->mPwdPolicy:Landroid/app/enterprise/PasswordPolicy;

    invoke-virtual {v10}, Landroid/app/enterprise/PasswordPolicy;->getPasswordChangeTimeout()I

    move-result v10

    if-eqz v10, :cond_1

    :cond_0
    iget-object v10, p0, Lcom/android/OriginalSettings/ChooseLockPassword$ChooseLockPasswordFragment;->mPwdPolicy:Landroid/app/enterprise/PasswordPolicy;

    invoke-virtual {v10}, Landroid/app/enterprise/PasswordPolicy;->isChangeRequested()I

    move-result v10

    const/4 v11, 0x2

    if-lt v10, v11, :cond_7

    :cond_1
    iget-object v10, p0, Lcom/android/OriginalSettings/ChooseLockPassword$ChooseLockPasswordFragment;->mTelMgr:Landroid/telephony/TelephonyManager;

    if-eqz v10, :cond_7

    iget-object v10, p0, Lcom/android/OriginalSettings/ChooseLockPassword$ChooseLockPasswordFragment;->mTelMgr:Landroid/telephony/TelephonyManager;

    invoke-virtual {v10}, Landroid/telephony/TelephonyManager;->isVoiceCapable()Z

    move-result v10

    if-eqz v10, :cond_7

    .line 276
    const v10, 0x7f040019

    const/4 v11, 0x0

    invoke-virtual {p1, v10, v11}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v9

    .line 277
    const v10, 0x7f080036

    invoke-virtual {v9, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/Button;

    iput-object v10, p0, Lcom/android/OriginalSettings/ChooseLockPassword$ChooseLockPasswordFragment;->mEmergencyCall:Landroid/widget/Button;

    .line 278
    iget-object v10, p0, Lcom/android/OriginalSettings/ChooseLockPassword$ChooseLockPasswordFragment;->mEmergencyCall:Landroid/widget/Button;

    invoke-virtual {v10, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 279
    iget-object v10, p0, Lcom/android/OriginalSettings/ChooseLockPassword$ChooseLockPasswordFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget-object v11, p0, Lcom/android/OriginalSettings/ChooseLockPassword$ChooseLockPasswordFragment;->mEmergencyCall:Landroid/widget/Button;

    iget-object v12, p0, Lcom/android/OriginalSettings/ChooseLockPassword$ChooseLockPasswordFragment;->mTelMgr:Landroid/telephony/TelephonyManager;

    invoke-virtual {v12}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v12

    const/4 v13, 0x1

    invoke-virtual {v10, v11, v12, v13}, Lcom/android/internal/widget/LockPatternUtils;->updateEmergencyCallButtonState(Landroid/widget/Button;IZ)V

    .line 285
    :goto_0
    const v10, 0x7f080034

    invoke-virtual {v9, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/Button;

    iput-object v10, p0, Lcom/android/OriginalSettings/ChooseLockPassword$ChooseLockPasswordFragment;->mCancelButton:Landroid/widget/Button;

    .line 286
    iget-object v10, p0, Lcom/android/OriginalSettings/ChooseLockPassword$ChooseLockPasswordFragment;->mCancelButton:Landroid/widget/Button;

    invoke-virtual {v10, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 288
    sget-boolean v10, Lcom/android/OriginalSettings/ChooseLockPassword;->isChangePwdRequired:Z

    if-eqz v10, :cond_2

    .line 289
    iget-object v10, p0, Lcom/android/OriginalSettings/ChooseLockPassword$ChooseLockPasswordFragment;->mCancelButton:Landroid/widget/Button;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/widget/Button;->setClickable(Z)V

    .line 290
    iget-object v10, p0, Lcom/android/OriginalSettings/ChooseLockPassword$ChooseLockPasswordFragment;->mCancelButton:Landroid/widget/Button;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/widget/Button;->setEnabled(Z)V

    .line 294
    :cond_2
    iget-object v10, p0, Lcom/android/OriginalSettings/ChooseLockPassword$ChooseLockPasswordFragment;->mPwdPolicy:Landroid/app/enterprise/PasswordPolicy;

    if-eqz v10, :cond_3

    iget-object v10, p0, Lcom/android/OriginalSettings/ChooseLockPassword$ChooseLockPasswordFragment;->mPwdPolicy:Landroid/app/enterprise/PasswordPolicy;

    invoke-virtual {v10}, Landroid/app/enterprise/PasswordPolicy;->getPasswordChangeTimeout()I

    move-result v10

    if-lez v10, :cond_3

    iget-object v10, p0, Lcom/android/OriginalSettings/ChooseLockPassword$ChooseLockPasswordFragment;->mPwdPolicy:Landroid/app/enterprise/PasswordPolicy;

    invoke-virtual {v10}, Landroid/app/enterprise/PasswordPolicy;->isChangeRequested()I

    move-result v10

    const/4 v11, 0x1

    if-ne v10, v11, :cond_3

    .line 296
    iget-object v10, p0, Lcom/android/OriginalSettings/ChooseLockPassword$ChooseLockPasswordFragment;->mCancelButton:Landroid/widget/Button;

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Landroid/widget/Button;->setClickable(Z)V

    .line 297
    iget-object v10, p0, Lcom/android/OriginalSettings/ChooseLockPassword$ChooseLockPasswordFragment;->mCancelButton:Landroid/widget/Button;

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Landroid/widget/Button;->setEnabled(Z)V

    .line 300
    :cond_3
    const v10, 0x7f080009

    invoke-virtual {v9, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/Button;

    iput-object v10, p0, Lcom/android/OriginalSettings/ChooseLockPassword$ChooseLockPasswordFragment;->mNextButton:Landroid/widget/Button;

    .line 301
    iget-object v10, p0, Lcom/android/OriginalSettings/ChooseLockPassword$ChooseLockPasswordFragment;->mNextButton:Landroid/widget/Button;

    invoke-virtual {v10, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 304
    const/high16 v10, 0x4

    iget v11, p0, Lcom/android/OriginalSettings/ChooseLockPassword$ChooseLockPasswordFragment;->mRequestedQuality:I

    if-eq v10, v11, :cond_4

    const/high16 v10, 0x5

    iget v11, p0, Lcom/android/OriginalSettings/ChooseLockPassword$ChooseLockPasswordFragment;->mRequestedQuality:I

    if-eq v10, v11, :cond_4

    const/high16 v10, 0x6

    iget v11, p0, Lcom/android/OriginalSettings/ChooseLockPassword$ChooseLockPasswordFragment;->mRequestedQuality:I

    if-eq v10, v11, :cond_4

    iget-boolean v10, p0, Lcom/android/OriginalSettings/ChooseLockPassword$ChooseLockPasswordFragment;->hasPwdPatternRestriction:Z

    if-nez v10, :cond_4

    iget-object v10, p0, Lcom/android/OriginalSettings/ChooseLockPassword$ChooseLockPasswordFragment;->mPwdPolicy:Landroid/app/enterprise/PasswordPolicy;

    if-eqz v10, :cond_8

    iget-object v10, p0, Lcom/android/OriginalSettings/ChooseLockPassword$ChooseLockPasswordFragment;->mPwdPolicy:Landroid/app/enterprise/PasswordPolicy;

    invoke-virtual {v10}, Landroid/app/enterprise/PasswordPolicy;->isChangeRequested()I

    move-result v10

    if-lez v10, :cond_8

    :cond_4
    const/4 v10, 0x1

    :goto_1
    iput-boolean v10, p0, Lcom/android/OriginalSettings/ChooseLockPassword$ChooseLockPasswordFragment;->mIsAlphaMode:Z

    .line 310
    const v10, 0x7f080035

    invoke-virtual {v9, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Lcom/android/internal/widget/PasswordEntryKeyboardView;

    iput-object v10, p0, Lcom/android/OriginalSettings/ChooseLockPassword$ChooseLockPasswordFragment;->mKeyboardView:Landroid/inputmethodservice/KeyboardView;

    .line 311
    const v10, 0x7f080033

    invoke-virtual {v9, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    iput-object v10, p0, Lcom/android/OriginalSettings/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordEntry:Landroid/widget/TextView;

    .line 312
    iget-object v10, p0, Lcom/android/OriginalSettings/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordEntry:Landroid/widget/TextView;

    invoke-virtual {v10, p0}, Landroid/widget/TextView;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 313
    iget-object v10, p0, Lcom/android/OriginalSettings/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordEntry:Landroid/widget/TextView;

    invoke-virtual {v10, p0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 315
    invoke-virtual {p0}, Lcom/android/OriginalSettings/ChooseLockPassword$ChooseLockPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 316
    .local v1, activity:Landroid/app/Activity;
    new-instance v10, Lcom/android/internal/widget/PasswordEntryKeyboardHelper;

    iget-object v11, p0, Lcom/android/OriginalSettings/ChooseLockPassword$ChooseLockPasswordFragment;->mKeyboardView:Landroid/inputmethodservice/KeyboardView;

    iget-object v12, p0, Lcom/android/OriginalSettings/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordEntry:Landroid/widget/TextView;

    invoke-direct {v10, v1, v11, v12}, Lcom/android/internal/widget/PasswordEntryKeyboardHelper;-><init>(Landroid/content/Context;Landroid/inputmethodservice/KeyboardView;Landroid/view/View;)V

    iput-object v10, p0, Lcom/android/OriginalSettings/ChooseLockPassword$ChooseLockPasswordFragment;->mKeyboardHelper:Lcom/android/internal/widget/PasswordEntryKeyboardHelper;

    .line 318
    iget-object v11, p0, Lcom/android/OriginalSettings/ChooseLockPassword$ChooseLockPasswordFragment;->mKeyboardHelper:Lcom/android/internal/widget/PasswordEntryKeyboardHelper;

    iget-boolean v10, p0, Lcom/android/OriginalSettings/ChooseLockPassword$ChooseLockPasswordFragment;->mIsAlphaMode:Z

    if-eqz v10, :cond_9

    const/4 v10, 0x0

    :goto_2
    invoke-virtual {v11, v10}, Lcom/android/internal/widget/PasswordEntryKeyboardHelper;->setKeyboardMode(I)V

    .line 322
    const v10, 0x7f080031

    invoke-virtual {v9, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    iput-object v10, p0, Lcom/android/OriginalSettings/ChooseLockPassword$ChooseLockPasswordFragment;->mHeaderText:Landroid/widget/TextView;

    .line 323
    iget-object v10, p0, Lcom/android/OriginalSettings/ChooseLockPassword$ChooseLockPasswordFragment;->mKeyboardView:Landroid/inputmethodservice/KeyboardView;

    invoke-virtual {v10}, Landroid/inputmethodservice/KeyboardView;->requestFocus()Z

    .line 325
    iget-object v10, p0, Lcom/android/OriginalSettings/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordEntry:Landroid/widget/TextView;

    invoke-virtual {v10}, Landroid/widget/TextView;->getInputType()I

    move-result v3

    .line 326
    .local v3, currentType:I
    iget-object v10, p0, Lcom/android/OriginalSettings/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordEntry:Landroid/widget/TextView;

    iget-boolean v11, p0, Lcom/android/OriginalSettings/ChooseLockPassword$ChooseLockPasswordFragment;->mIsAlphaMode:Z

    if-eqz v11, :cond_a

    .end local v3           #currentType:I
    :goto_3
    invoke-virtual {v10, v3}, Landroid/widget/TextView;->setInputType(I)V

    .line 328
    iget-object v10, p0, Lcom/android/OriginalSettings/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordEntry:Landroid/widget/TextView;

    const/4 v11, -0x1

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setCursorColor(I)V

    .line 330
    invoke-virtual {p0}, Lcom/android/OriginalSettings/ChooseLockPassword$ChooseLockPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v10

    invoke-virtual {v10}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v5

    .line 331
    .local v5, intent:Landroid/content/Intent;
    const-string v10, "confirm_credentials"

    const/4 v11, 0x1

    invoke-virtual {v5, v10, v11}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    .line 332
    .local v2, confirmCredentials:Z
    if-nez p3, :cond_b

    .line 333
    sget-object v10, Lcom/android/OriginalSettings/ChooseLockPassword$ChooseLockPasswordFragment$Stage;->Introduction:Lcom/android/OriginalSettings/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    invoke-virtual {p0, v10}, Lcom/android/OriginalSettings/ChooseLockPassword$ChooseLockPasswordFragment;->updateStage(Lcom/android/OriginalSettings/ChooseLockPassword$ChooseLockPasswordFragment$Stage;)V

    .line 334
    if-eqz v2, :cond_5

    .line 335
    iget-object v10, p0, Lcom/android/OriginalSettings/ChooseLockPassword$ChooseLockPasswordFragment;->mChooseLockSettingsHelper:Lcom/android/OriginalSettings/ChooseLockSettingsHelper;

    const/16 v11, 0x3a

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-virtual {v10, v11, v12, v13}, Lcom/android/OriginalSettings/ChooseLockSettingsHelper;->launchConfirmationActivity(ILjava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 347
    :cond_5
    :goto_4
    instance-of v10, v1, Lmiui/preference/BasePreferenceActivity;

    if-eqz v10, :cond_6

    move-object v6, v1

    .line 348
    check-cast v6, Lmiui/preference/BasePreferenceActivity;

    .line 349
    .local v6, preferenceActivity:Lmiui/preference/BasePreferenceActivity;
    iget-boolean v10, p0, Lcom/android/OriginalSettings/ChooseLockPassword$ChooseLockPasswordFragment;->mIsAlphaMode:Z

    if-eqz v10, :cond_c

    const v4, 0x7f0b0422

    .line 351
    .local v4, id:I
    :goto_5
    invoke-virtual {p0, v4}, Lcom/android/OriginalSettings/ChooseLockPassword$ChooseLockPasswordFragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object v8

    .line 352
    .local v8, title:Ljava/lang/CharSequence;
    invoke-virtual {v6, v8, v8}, Lmiui/preference/BasePreferenceActivity;->showBreadCrumbs(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 355
    .end local v4           #id:I
    .end local v6           #preferenceActivity:Lmiui/preference/BasePreferenceActivity;
    .end local v8           #title:Ljava/lang/CharSequence;
    :cond_6
    return-object v9

    .line 281
    .end local v1           #activity:Landroid/app/Activity;
    .end local v2           #confirmCredentials:Z
    .end local v5           #intent:Landroid/content/Intent;
    :cond_7
    const v10, 0x7f040018

    const/4 v11, 0x0

    invoke-virtual {p1, v10, v11}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v9

    goto/16 :goto_0

    .line 304
    :cond_8
    const/4 v10, 0x0

    goto/16 :goto_1

    .line 318
    .restart local v1       #activity:Landroid/app/Activity;
    :cond_9
    const/4 v10, 0x1

    goto :goto_2

    .line 326
    .restart local v3       #currentType:I
    :cond_a
    const/16 v3, 0x12

    goto :goto_3

    .line 339
    .end local v3           #currentType:I
    .restart local v2       #confirmCredentials:Z
    .restart local v5       #intent:Landroid/content/Intent;
    :cond_b
    const-string v10, "first_pin"

    move-object/from16 v0, p3

    invoke-virtual {v0, v10}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    iput-object v10, p0, Lcom/android/OriginalSettings/ChooseLockPassword$ChooseLockPasswordFragment;->mFirstPin:Ljava/lang/String;

    .line 340
    const-string v10, "ui_stage"

    move-object/from16 v0, p3

    invoke-virtual {v0, v10}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 341
    .local v7, state:Ljava/lang/String;
    if-eqz v7, :cond_5

    .line 342
    invoke-static {v7}, Lcom/android/OriginalSettings/ChooseLockPassword$ChooseLockPasswordFragment$Stage;->valueOf(Ljava/lang/String;)Lcom/android/OriginalSettings/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    move-result-object v10

    iput-object v10, p0, Lcom/android/OriginalSettings/ChooseLockPassword$ChooseLockPasswordFragment;->mUiStage:Lcom/android/OriginalSettings/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    .line 343
    iget-object v10, p0, Lcom/android/OriginalSettings/ChooseLockPassword$ChooseLockPasswordFragment;->mUiStage:Lcom/android/OriginalSettings/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    invoke-virtual {p0, v10}, Lcom/android/OriginalSettings/ChooseLockPassword$ChooseLockPasswordFragment;->updateStage(Lcom/android/OriginalSettings/ChooseLockPassword$ChooseLockPasswordFragment$Stage;)V

    goto :goto_4

    .line 349
    .end local v7           #state:Ljava/lang/String;
    .restart local v6       #preferenceActivity:Lmiui/preference/BasePreferenceActivity;
    :cond_c
    const v4, 0x7f0b0424

    goto :goto_5
.end method

.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "v"
    .parameter "actionId"
    .parameter "event"

    .prologue
    .line 652
    if-eqz p2, :cond_0

    const/4 v0, 0x6

    if-eq p2, v0, :cond_0

    const/4 v0, 0x5

    if-ne p2, v0, :cond_1

    .line 655
    :cond_0
    invoke-direct {p0}, Lcom/android/OriginalSettings/ChooseLockPassword$ChooseLockPasswordFragment;->handleNext()V

    .line 656
    const/4 v0, 0x1

    .line 658
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 386
    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    .line 387
    invoke-direct {p0}, Lcom/android/OriginalSettings/ChooseLockPassword$ChooseLockPasswordFragment;->reenableStatusBar()V

    .line 388
    iget-object v0, p0, Lcom/android/OriginalSettings/ChooseLockPassword$ChooseLockPasswordFragment;->mPwdPolicy:Landroid/app/enterprise/PasswordPolicy;

    invoke-virtual {v0}, Landroid/app/enterprise/PasswordPolicy;->isChangeRequested()I

    move-result v0

    if-lez v0, :cond_0

    .line 390
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 361
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/OriginalSettings/ChooseLockPassword$ChooseLockPasswordFragment;->clickedEmergencyCall:Z

    .line 362
    iget-object v0, p0, Lcom/android/OriginalSettings/ChooseLockPassword$ChooseLockPasswordFragment;->mPwdPolicy:Landroid/app/enterprise/PasswordPolicy;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/OriginalSettings/ChooseLockPassword$ChooseLockPasswordFragment;->mPwdPolicy:Landroid/app/enterprise/PasswordPolicy;

    invoke-virtual {v0}, Landroid/app/enterprise/PasswordPolicy;->isChangeRequested()I

    move-result v0

    if-lez v0, :cond_0

    .line 364
    invoke-direct {p0}, Lcom/android/OriginalSettings/ChooseLockPassword$ChooseLockPasswordFragment;->disableStatusBar()V

    .line 366
    :cond_0
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 367
    iget-object v0, p0, Lcom/android/OriginalSettings/ChooseLockPassword$ChooseLockPasswordFragment;->mUiStage:Lcom/android/OriginalSettings/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    invoke-virtual {p0, v0}, Lcom/android/OriginalSettings/ChooseLockPassword$ChooseLockPasswordFragment;->updateStage(Lcom/android/OriginalSettings/ChooseLockPassword$ChooseLockPasswordFragment$Stage;)V

    .line 368
    iget-object v0, p0, Lcom/android/OriginalSettings/ChooseLockPassword$ChooseLockPasswordFragment;->mKeyboardView:Landroid/inputmethodservice/KeyboardView;

    invoke-virtual {v0}, Landroid/inputmethodservice/KeyboardView;->requestFocus()Z

    .line 370
    sget-boolean v0, Lcom/android/OriginalSettings/ChooseLockPassword;->isChangePwdRequired:Z

    if-eqz v0, :cond_1

    .line 371
    iget-object v0, p0, Lcom/android/OriginalSettings/ChooseLockPassword$ChooseLockPasswordFragment;->mHeaderText:Landroid/widget/TextView;

    const v1, 0x7f0b0879

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 374
    :cond_1
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "outState"

    .prologue
    .line 395
    invoke-super {p0, p1}, Landroid/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 396
    const-string v0, "ui_stage"

    iget-object v1, p0, Lcom/android/OriginalSettings/ChooseLockPassword$ChooseLockPasswordFragment;->mUiStage:Lcom/android/OriginalSettings/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    invoke-virtual {v1}, Lcom/android/OriginalSettings/ChooseLockPassword$ChooseLockPasswordFragment$Stage;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 397
    const-string v0, "first_pin"

    iget-object v1, p0, Lcom/android/OriginalSettings/ChooseLockPassword$ChooseLockPasswordFragment;->mFirstPin:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 398
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "s"
    .parameter "start"
    .parameter "before"
    .parameter "count"

    .prologue
    .line 723
    return-void
.end method

.method protected updateStage(Lcom/android/OriginalSettings/ChooseLockPassword$ChooseLockPasswordFragment$Stage;)V
    .locals 0
    .parameter "stage"

    .prologue
    .line 415
    iput-object p1, p0, Lcom/android/OriginalSettings/ChooseLockPassword$ChooseLockPasswordFragment;->mUiStage:Lcom/android/OriginalSettings/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    .line 416
    invoke-direct {p0}, Lcom/android/OriginalSettings/ChooseLockPassword$ChooseLockPasswordFragment;->updateUi()V

    .line 417
    return-void
.end method
