.class public Lcom/android/OriginalSettings/ChooseLockPattern$ChooseLockPatternFragment;
.super Landroid/app/Fragment;
.source "ChooseLockPattern.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/OriginalSettings/ChooseLockPattern;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ChooseLockPatternFragment"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/OriginalSettings/ChooseLockPattern$ChooseLockPatternFragment$Stage;,
        Lcom/android/OriginalSettings/ChooseLockPattern$ChooseLockPatternFragment$RightButtonMode;,
        Lcom/android/OriginalSettings/ChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;
    }
.end annotation


# instance fields
.field private final mAnimatePattern:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/widget/LockPatternView$Cell;",
            ">;"
        }
    .end annotation
.end field

.field private mChooseLockSettingsHelper:Lcom/android/OriginalSettings/ChooseLockSettingsHelper;

.field protected mChooseNewLockPatternListener:Lcom/android/internal/widget/LockPatternView$OnPatternListener;

.field protected mChosenPattern:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/widget/LockPatternView$Cell;",
            ">;"
        }
    .end annotation
.end field

.field private mClearPatternRunnable:Ljava/lang/Runnable;

.field private mFooterLeftButton:Landroid/widget/TextView;

.field private mFooterRightButton:Landroid/widget/TextView;

.field protected mFooterText:Landroid/widget/TextView;

.field protected mHeaderText:Landroid/widget/TextView;

.field protected mLockPatternView:Lcom/android/internal/widget/LockPatternView;

.field private mUiStage:Lcom/android/OriginalSettings/ChooseLockPattern$ChooseLockPatternFragment$Stage;


# direct methods
.method public constructor <init>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 86
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 104
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/OriginalSettings/ChooseLockPattern$ChooseLockPatternFragment;->mChosenPattern:Ljava/util/List;

    .line 109
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/android/internal/widget/LockPatternView$Cell;

    invoke-static {v3, v3}, Lcom/android/internal/widget/LockPatternView$Cell;->of(II)Lcom/android/internal/widget/LockPatternView$Cell;

    move-result-object v1

    aput-object v1, v0, v3

    invoke-static {v3, v2}, Lcom/android/internal/widget/LockPatternView$Cell;->of(II)Lcom/android/internal/widget/LockPatternView$Cell;

    move-result-object v1

    aput-object v1, v0, v2

    invoke-static {v2, v2}, Lcom/android/internal/widget/LockPatternView$Cell;->of(II)Lcom/android/internal/widget/LockPatternView$Cell;

    move-result-object v1

    aput-object v1, v0, v4

    const/4 v1, 0x3

    invoke-static {v4, v2}, Lcom/android/internal/widget/LockPatternView$Cell;->of(II)Lcom/android/internal/widget/LockPatternView$Cell;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/google/android/collect/Lists;->newArrayList([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/OriginalSettings/ChooseLockPattern$ChooseLockPatternFragment;->mAnimatePattern:Ljava/util/List;

    .line 136
    new-instance v0, Lcom/android/OriginalSettings/ChooseLockPattern$ChooseLockPatternFragment$1;

    invoke-direct {v0, p0}, Lcom/android/OriginalSettings/ChooseLockPattern$ChooseLockPatternFragment$1;-><init>(Lcom/android/OriginalSettings/ChooseLockPattern$ChooseLockPatternFragment;)V

    iput-object v0, p0, Lcom/android/OriginalSettings/ChooseLockPattern$ChooseLockPatternFragment;->mChooseNewLockPatternListener:Lcom/android/internal/widget/LockPatternView$OnPatternListener;

    .line 287
    sget-object v0, Lcom/android/OriginalSettings/ChooseLockPattern$ChooseLockPatternFragment$Stage;->Introduction:Lcom/android/OriginalSettings/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    iput-object v0, p0, Lcom/android/OriginalSettings/ChooseLockPattern$ChooseLockPatternFragment;->mUiStage:Lcom/android/OriginalSettings/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    .line 289
    new-instance v0, Lcom/android/OriginalSettings/ChooseLockPattern$ChooseLockPatternFragment$2;

    invoke-direct {v0, p0}, Lcom/android/OriginalSettings/ChooseLockPattern$ChooseLockPatternFragment$2;-><init>(Lcom/android/OriginalSettings/ChooseLockPattern$ChooseLockPatternFragment;)V

    iput-object v0, p0, Lcom/android/OriginalSettings/ChooseLockPattern$ChooseLockPatternFragment;->mClearPatternRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$000(Lcom/android/OriginalSettings/ChooseLockPattern$ChooseLockPatternFragment;)Ljava/lang/Runnable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 86
    iget-object v0, p0, Lcom/android/OriginalSettings/ChooseLockPattern$ChooseLockPatternFragment;->mClearPatternRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/OriginalSettings/ChooseLockPattern$ChooseLockPatternFragment;)Lcom/android/OriginalSettings/ChooseLockPattern$ChooseLockPatternFragment$Stage;
    .locals 1
    .parameter "x0"

    .prologue
    .line 86
    iget-object v0, p0, Lcom/android/OriginalSettings/ChooseLockPattern$ChooseLockPatternFragment;->mUiStage:Lcom/android/OriginalSettings/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/OriginalSettings/ChooseLockPattern$ChooseLockPatternFragment;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 86
    iget-object v0, p0, Lcom/android/OriginalSettings/ChooseLockPattern$ChooseLockPatternFragment;->mFooterLeftButton:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/OriginalSettings/ChooseLockPattern$ChooseLockPatternFragment;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 86
    iget-object v0, p0, Lcom/android/OriginalSettings/ChooseLockPattern$ChooseLockPatternFragment;->mFooterRightButton:Landroid/widget/TextView;

    return-object v0
.end method

.method private postClearPatternRunnable()V
    .locals 4

    .prologue
    .line 502
    iget-object v0, p0, Lcom/android/OriginalSettings/ChooseLockPattern$ChooseLockPatternFragment;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    iget-object v1, p0, Lcom/android/OriginalSettings/ChooseLockPattern$ChooseLockPatternFragment;->mClearPatternRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 503
    iget-object v0, p0, Lcom/android/OriginalSettings/ChooseLockPattern$ChooseLockPatternFragment;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    iget-object v1, p0, Lcom/android/OriginalSettings/ChooseLockPattern$ChooseLockPatternFragment;->mClearPatternRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/widget/LockPatternView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 504
    return-void
.end method

.method private saveChosenPatternAndFinish()V
    .locals 7

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 507
    iget-object v5, p0, Lcom/android/OriginalSettings/ChooseLockPattern$ChooseLockPatternFragment;->mChooseLockSettingsHelper:Lcom/android/OriginalSettings/ChooseLockSettingsHelper;

    invoke-virtual {v5}, Lcom/android/OriginalSettings/ChooseLockSettingsHelper;->utils()Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v2

    .line 508
    .local v2, utils:Lcom/android/internal/widget/LockPatternUtils;
    invoke-virtual {v2}, Lcom/android/internal/widget/LockPatternUtils;->isPatternEverChosen()Z

    move-result v5

    if-nez v5, :cond_1

    move v1, v3

    .line 510
    .local v1, lockVirgin:Z
    :goto_0
    invoke-virtual {p0}, Lcom/android/OriginalSettings/ChooseLockPattern$ChooseLockPatternFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v5

    const-string v6, "lockscreen.biometric_weak_fallback"

    invoke-virtual {v5, v6, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 512
    .local v0, isFallback:Z
    iget-object v5, p0, Lcom/android/OriginalSettings/ChooseLockPattern$ChooseLockPatternFragment;->mChosenPattern:Ljava/util/List;

    invoke-virtual {v2, v5, v0}, Lcom/android/internal/widget/LockPatternUtils;->saveLockPattern(Ljava/util/List;Z)V

    .line 513
    invoke-virtual {v2, v3}, Lcom/android/internal/widget/LockPatternUtils;->setLockPatternEnabled(Z)V

    .line 515
    if-eqz v1, :cond_0

    .line 516
    invoke-virtual {v2, v3}, Lcom/android/internal/widget/LockPatternUtils;->setVisiblePatternEnabled(Z)V

    .line 517
    invoke-virtual {v2, v4}, Lcom/android/internal/widget/LockPatternUtils;->setTactileFeedbackEnabled(Z)V

    .line 520
    :cond_0
    invoke-virtual {p0}, Lcom/android/OriginalSettings/ChooseLockPattern$ChooseLockPatternFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/app/Activity;->setResult(I)V

    .line 521
    invoke-virtual {p0}, Lcom/android/OriginalSettings/ChooseLockPattern$ChooseLockPatternFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->finish()V

    .line 522
    return-void

    .end local v0           #isFallback:Z
    .end local v1           #lockVirgin:Z
    :cond_1
    move v1, v4

    .line 508
    goto :goto_0
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 2
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 120
    invoke-super {p0, p1, p2, p3}, Landroid/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 121
    packed-switch p1, :pswitch_data_0

    .line 130
    :goto_0
    return-void

    .line 123
    :pswitch_0
    const/4 v0, -0x1

    if-eq p2, v0, :cond_0

    .line 124
    invoke-virtual {p0}, Lcom/android/OriginalSettings/ChooseLockPattern$ChooseLockPatternFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setResult(I)V

    .line 125
    invoke-virtual {p0}, Lcom/android/OriginalSettings/ChooseLockPattern$ChooseLockPatternFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 127
    :cond_0
    sget-object v0, Lcom/android/OriginalSettings/ChooseLockPattern$ChooseLockPatternFragment$Stage;->Introduction:Lcom/android/OriginalSettings/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    invoke-virtual {p0, v0}, Lcom/android/OriginalSettings/ChooseLockPattern$ChooseLockPatternFragment;->updateStage(Lcom/android/OriginalSettings/ChooseLockPattern$ChooseLockPatternFragment$Stage;)V

    goto :goto_0

    .line 121
    nop

    :pswitch_data_0
    .packed-switch 0x37
        :pswitch_0
    .end packed-switch
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 362
    iget-object v0, p0, Lcom/android/OriginalSettings/ChooseLockPattern$ChooseLockPatternFragment;->mFooterLeftButton:Landroid/widget/TextView;

    if-ne p1, v0, :cond_3

    .line 363
    iget-object v0, p0, Lcom/android/OriginalSettings/ChooseLockPattern$ChooseLockPatternFragment;->mUiStage:Lcom/android/OriginalSettings/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    iget-object v0, v0, Lcom/android/OriginalSettings/ChooseLockPattern$ChooseLockPatternFragment$Stage;->leftMode:Lcom/android/OriginalSettings/ChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;

    sget-object v1, Lcom/android/OriginalSettings/ChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;->Retry:Lcom/android/OriginalSettings/ChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;

    if-ne v0, v1, :cond_1

    .line 364
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/OriginalSettings/ChooseLockPattern$ChooseLockPatternFragment;->mChosenPattern:Ljava/util/List;

    .line 365
    iget-object v0, p0, Lcom/android/OriginalSettings/ChooseLockPattern$ChooseLockPatternFragment;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternView;->clearPattern()V

    .line 366
    sget-object v0, Lcom/android/OriginalSettings/ChooseLockPattern$ChooseLockPatternFragment$Stage;->Introduction:Lcom/android/OriginalSettings/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    invoke-virtual {p0, v0}, Lcom/android/OriginalSettings/ChooseLockPattern$ChooseLockPatternFragment;->updateStage(Lcom/android/OriginalSettings/ChooseLockPattern$ChooseLockPatternFragment$Stage;)V

    .line 399
    :cond_0
    :goto_0
    return-void

    .line 367
    :cond_1
    iget-object v0, p0, Lcom/android/OriginalSettings/ChooseLockPattern$ChooseLockPatternFragment;->mUiStage:Lcom/android/OriginalSettings/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    iget-object v0, v0, Lcom/android/OriginalSettings/ChooseLockPattern$ChooseLockPatternFragment$Stage;->leftMode:Lcom/android/OriginalSettings/ChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;

    sget-object v1, Lcom/android/OriginalSettings/ChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;->Cancel:Lcom/android/OriginalSettings/ChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;

    if-ne v0, v1, :cond_2

    .line 369
    invoke-virtual {p0}, Lcom/android/OriginalSettings/ChooseLockPattern$ChooseLockPatternFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setResult(I)V

    .line 370
    invoke-virtual {p0}, Lcom/android/OriginalSettings/ChooseLockPattern$ChooseLockPatternFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 372
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "left footer button pressed, but stage of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/OriginalSettings/ChooseLockPattern$ChooseLockPatternFragment;->mUiStage:Lcom/android/OriginalSettings/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " doesn\'t make sense"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 375
    :cond_3
    iget-object v0, p0, Lcom/android/OriginalSettings/ChooseLockPattern$ChooseLockPatternFragment;->mFooterRightButton:Landroid/widget/TextView;

    if-ne p1, v0, :cond_0

    .line 377
    iget-object v0, p0, Lcom/android/OriginalSettings/ChooseLockPattern$ChooseLockPatternFragment;->mUiStage:Lcom/android/OriginalSettings/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    iget-object v0, v0, Lcom/android/OriginalSettings/ChooseLockPattern$ChooseLockPatternFragment$Stage;->rightMode:Lcom/android/OriginalSettings/ChooseLockPattern$ChooseLockPatternFragment$RightButtonMode;

    sget-object v1, Lcom/android/OriginalSettings/ChooseLockPattern$ChooseLockPatternFragment$RightButtonMode;->Continue:Lcom/android/OriginalSettings/ChooseLockPattern$ChooseLockPatternFragment$RightButtonMode;

    if-ne v0, v1, :cond_5

    .line 378
    iget-object v0, p0, Lcom/android/OriginalSettings/ChooseLockPattern$ChooseLockPatternFragment;->mUiStage:Lcom/android/OriginalSettings/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    sget-object v1, Lcom/android/OriginalSettings/ChooseLockPattern$ChooseLockPatternFragment$Stage;->FirstChoiceValid:Lcom/android/OriginalSettings/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    if-eq v0, v1, :cond_4

    .line 379
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "expected ui stage "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/android/OriginalSettings/ChooseLockPattern$ChooseLockPatternFragment$Stage;->FirstChoiceValid:Lcom/android/OriginalSettings/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " when button is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/android/OriginalSettings/ChooseLockPattern$ChooseLockPatternFragment$RightButtonMode;->Continue:Lcom/android/OriginalSettings/ChooseLockPattern$ChooseLockPatternFragment$RightButtonMode;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 382
    :cond_4
    sget-object v0, Lcom/android/OriginalSettings/ChooseLockPattern$ChooseLockPatternFragment$Stage;->NeedToConfirm:Lcom/android/OriginalSettings/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    invoke-virtual {p0, v0}, Lcom/android/OriginalSettings/ChooseLockPattern$ChooseLockPatternFragment;->updateStage(Lcom/android/OriginalSettings/ChooseLockPattern$ChooseLockPatternFragment$Stage;)V

    goto :goto_0

    .line 383
    :cond_5
    iget-object v0, p0, Lcom/android/OriginalSettings/ChooseLockPattern$ChooseLockPatternFragment;->mUiStage:Lcom/android/OriginalSettings/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    iget-object v0, v0, Lcom/android/OriginalSettings/ChooseLockPattern$ChooseLockPatternFragment$Stage;->rightMode:Lcom/android/OriginalSettings/ChooseLockPattern$ChooseLockPatternFragment$RightButtonMode;

    sget-object v1, Lcom/android/OriginalSettings/ChooseLockPattern$ChooseLockPatternFragment$RightButtonMode;->Confirm:Lcom/android/OriginalSettings/ChooseLockPattern$ChooseLockPatternFragment$RightButtonMode;

    if-ne v0, v1, :cond_7

    .line 384
    iget-object v0, p0, Lcom/android/OriginalSettings/ChooseLockPattern$ChooseLockPatternFragment;->mUiStage:Lcom/android/OriginalSettings/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    sget-object v1, Lcom/android/OriginalSettings/ChooseLockPattern$ChooseLockPatternFragment$Stage;->ChoiceConfirmed:Lcom/android/OriginalSettings/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    if-eq v0, v1, :cond_6

    .line 385
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "expected ui stage "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/android/OriginalSettings/ChooseLockPattern$ChooseLockPatternFragment$Stage;->ChoiceConfirmed:Lcom/android/OriginalSettings/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " when button is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/android/OriginalSettings/ChooseLockPattern$ChooseLockPatternFragment$RightButtonMode;->Confirm:Lcom/android/OriginalSettings/ChooseLockPattern$ChooseLockPatternFragment$RightButtonMode;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 388
    :cond_6
    invoke-direct {p0}, Lcom/android/OriginalSettings/ChooseLockPattern$ChooseLockPatternFragment;->saveChosenPatternAndFinish()V

    goto/16 :goto_0

    .line 389
    :cond_7
    iget-object v0, p0, Lcom/android/OriginalSettings/ChooseLockPattern$ChooseLockPatternFragment;->mUiStage:Lcom/android/OriginalSettings/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    iget-object v0, v0, Lcom/android/OriginalSettings/ChooseLockPattern$ChooseLockPatternFragment$Stage;->rightMode:Lcom/android/OriginalSettings/ChooseLockPattern$ChooseLockPatternFragment$RightButtonMode;

    sget-object v1, Lcom/android/OriginalSettings/ChooseLockPattern$ChooseLockPatternFragment$RightButtonMode;->Ok:Lcom/android/OriginalSettings/ChooseLockPattern$ChooseLockPatternFragment$RightButtonMode;

    if-ne v0, v1, :cond_0

    .line 390
    iget-object v0, p0, Lcom/android/OriginalSettings/ChooseLockPattern$ChooseLockPatternFragment;->mUiStage:Lcom/android/OriginalSettings/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    sget-object v1, Lcom/android/OriginalSettings/ChooseLockPattern$ChooseLockPatternFragment$Stage;->HelpScreen:Lcom/android/OriginalSettings/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    if-eq v0, v1, :cond_8

    .line 391
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Help screen is only mode with ok button, but stage is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/OriginalSettings/ChooseLockPattern$ChooseLockPatternFragment;->mUiStage:Lcom/android/OriginalSettings/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 394
    :cond_8
    iget-object v0, p0, Lcom/android/OriginalSettings/ChooseLockPattern$ChooseLockPatternFragment;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternView;->clearPattern()V

    .line 395
    iget-object v0, p0, Lcom/android/OriginalSettings/ChooseLockPattern$ChooseLockPatternFragment;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    sget-object v1, Lcom/android/internal/widget/LockPatternView$DisplayMode;->Correct:Lcom/android/internal/widget/LockPatternView$DisplayMode;

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternView;->setDisplayMode(Lcom/android/internal/widget/LockPatternView$DisplayMode;)V

    .line 396
    sget-object v0, Lcom/android/OriginalSettings/ChooseLockPattern$ChooseLockPatternFragment$Stage;->Introduction:Lcom/android/OriginalSettings/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    invoke-virtual {p0, v0}, Lcom/android/OriginalSettings/ChooseLockPattern$ChooseLockPatternFragment;->updateStage(Lcom/android/OriginalSettings/ChooseLockPattern$ChooseLockPatternFragment$Stage;)V

    goto/16 :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 302
    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 303
    new-instance v0, Lcom/android/OriginalSettings/ChooseLockSettingsHelper;

    invoke-virtual {p0}, Lcom/android/OriginalSettings/ChooseLockPattern$ChooseLockPatternFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/OriginalSettings/ChooseLockSettingsHelper;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/android/OriginalSettings/ChooseLockPattern$ChooseLockPatternFragment;->mChooseLockSettingsHelper:Lcom/android/OriginalSettings/ChooseLockSettingsHelper;

    .line 304
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 9
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    const/4 v8, 0x0

    .line 311
    const v5, 0x7f04001a

    invoke-virtual {p1, v5, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    .line 312
    .local v4, view:Landroid/view/View;
    const v5, 0x7f080031

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lcom/android/OriginalSettings/ChooseLockPattern$ChooseLockPatternFragment;->mHeaderText:Landroid/widget/TextView;

    .line 313
    const v5, 0x7f080038

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/android/internal/widget/LockPatternView;

    iput-object v5, p0, Lcom/android/OriginalSettings/ChooseLockPattern$ChooseLockPatternFragment;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    .line 314
    iget-object v5, p0, Lcom/android/OriginalSettings/ChooseLockPattern$ChooseLockPatternFragment;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    iget-object v6, p0, Lcom/android/OriginalSettings/ChooseLockPattern$ChooseLockPatternFragment;->mChooseNewLockPatternListener:Lcom/android/internal/widget/LockPatternView$OnPatternListener;

    invoke-virtual {v5, v6}, Lcom/android/internal/widget/LockPatternView;->setOnPatternListener(Lcom/android/internal/widget/LockPatternView$OnPatternListener;)V

    .line 315
    iget-object v5, p0, Lcom/android/OriginalSettings/ChooseLockPattern$ChooseLockPatternFragment;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    iget-object v6, p0, Lcom/android/OriginalSettings/ChooseLockPattern$ChooseLockPatternFragment;->mChooseLockSettingsHelper:Lcom/android/OriginalSettings/ChooseLockSettingsHelper;

    invoke-virtual {v6}, Lcom/android/OriginalSettings/ChooseLockSettingsHelper;->utils()Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/internal/widget/LockPatternUtils;->isTactileFeedbackEnabled()Z

    move-result v6

    invoke-virtual {v5, v6}, Lcom/android/internal/widget/LockPatternView;->setTactileFeedbackEnabled(Z)V

    .line 318
    const v5, 0x7f080039

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lcom/android/OriginalSettings/ChooseLockPattern$ChooseLockPatternFragment;->mFooterText:Landroid/widget/TextView;

    .line 320
    const v5, 0x7f08003a

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lcom/android/OriginalSettings/ChooseLockPattern$ChooseLockPatternFragment;->mFooterLeftButton:Landroid/widget/TextView;

    .line 321
    const v5, 0x7f08003b

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lcom/android/OriginalSettings/ChooseLockPattern$ChooseLockPatternFragment;->mFooterRightButton:Landroid/widget/TextView;

    .line 323
    iget-object v5, p0, Lcom/android/OriginalSettings/ChooseLockPattern$ChooseLockPatternFragment;->mFooterLeftButton:Landroid/widget/TextView;

    invoke-virtual {v5, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 324
    iget-object v5, p0, Lcom/android/OriginalSettings/ChooseLockPattern$ChooseLockPatternFragment;->mFooterRightButton:Landroid/widget/TextView;

    invoke-virtual {v5, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 328
    const v5, 0x7f080037

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/internal/widget/LinearLayoutWithDefaultTouchRecepient;

    .line 331
    .local v3, topLayout:Lcom/android/internal/widget/LinearLayoutWithDefaultTouchRecepient;
    iget-object v5, p0, Lcom/android/OriginalSettings/ChooseLockPattern$ChooseLockPatternFragment;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    invoke-virtual {v3, v5}, Lcom/android/internal/widget/LinearLayoutWithDefaultTouchRecepient;->setDefaultTouchRecepient(Landroid/view/View;)V

    .line 333
    invoke-virtual {p0}, Lcom/android/OriginalSettings/ChooseLockPattern$ChooseLockPatternFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v5

    const-string v6, "confirm_credentials"

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 336
    .local v0, confirmCredentials:Z
    if-nez p3, :cond_2

    .line 337
    if-eqz v0, :cond_1

    .line 340
    sget-object v5, Lcom/android/OriginalSettings/ChooseLockPattern$ChooseLockPatternFragment$Stage;->NeedToConfirm:Lcom/android/OriginalSettings/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    invoke-virtual {p0, v5}, Lcom/android/OriginalSettings/ChooseLockPattern$ChooseLockPatternFragment;->updateStage(Lcom/android/OriginalSettings/ChooseLockPattern$ChooseLockPatternFragment$Stage;)V

    .line 341
    iget-object v5, p0, Lcom/android/OriginalSettings/ChooseLockPattern$ChooseLockPatternFragment;->mChooseLockSettingsHelper:Lcom/android/OriginalSettings/ChooseLockSettingsHelper;

    const/16 v6, 0x37

    invoke-virtual {v5, v6, v8, v8}, Lcom/android/OriginalSettings/ChooseLockSettingsHelper;->launchConfirmationActivity(ILjava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    .line 344
    .local v1, launchedConfirmationActivity:Z
    if-nez v1, :cond_0

    .line 345
    sget-object v5, Lcom/android/OriginalSettings/ChooseLockPattern$ChooseLockPatternFragment$Stage;->Introduction:Lcom/android/OriginalSettings/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    invoke-virtual {p0, v5}, Lcom/android/OriginalSettings/ChooseLockPattern$ChooseLockPatternFragment;->updateStage(Lcom/android/OriginalSettings/ChooseLockPattern$ChooseLockPatternFragment$Stage;)V

    .line 358
    .end local v1           #launchedConfirmationActivity:Z
    :cond_0
    :goto_0
    return-object v4

    .line 348
    :cond_1
    sget-object v5, Lcom/android/OriginalSettings/ChooseLockPattern$ChooseLockPatternFragment$Stage;->Introduction:Lcom/android/OriginalSettings/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    invoke-virtual {p0, v5}, Lcom/android/OriginalSettings/ChooseLockPattern$ChooseLockPatternFragment;->updateStage(Lcom/android/OriginalSettings/ChooseLockPattern$ChooseLockPatternFragment$Stage;)V

    goto :goto_0

    .line 352
    :cond_2
    const-string v5, "chosenPattern"

    invoke-virtual {p3, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 353
    .local v2, patternString:Ljava/lang/String;
    if-eqz v2, :cond_3

    .line 354
    invoke-static {v2}, Lcom/android/internal/widget/LockPatternUtils;->stringToPattern(Ljava/lang/String;)Ljava/util/List;

    move-result-object v5

    iput-object v5, p0, Lcom/android/OriginalSettings/ChooseLockPattern$ChooseLockPatternFragment;->mChosenPattern:Ljava/util/List;

    .line 356
    :cond_3
    invoke-static {}, Lcom/android/OriginalSettings/ChooseLockPattern$ChooseLockPatternFragment$Stage;->values()[Lcom/android/OriginalSettings/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    move-result-object v5

    const-string v6, "uiStage"

    invoke-virtual {p3, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v6

    aget-object v5, v5, v6

    invoke-virtual {p0, v5}, Lcom/android/OriginalSettings/ChooseLockPattern$ChooseLockPatternFragment;->updateStage(Lcom/android/OriginalSettings/ChooseLockPattern$ChooseLockPatternFragment$Stage;)V

    goto :goto_0
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "outState"

    .prologue
    .line 416
    invoke-super {p0, p1}, Landroid/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 418
    const-string v0, "uiStage"

    iget-object v1, p0, Lcom/android/OriginalSettings/ChooseLockPattern$ChooseLockPatternFragment;->mUiStage:Lcom/android/OriginalSettings/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    invoke-virtual {v1}, Lcom/android/OriginalSettings/ChooseLockPattern$ChooseLockPatternFragment$Stage;->ordinal()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 419
    iget-object v0, p0, Lcom/android/OriginalSettings/ChooseLockPattern$ChooseLockPatternFragment;->mChosenPattern:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 420
    const-string v0, "chosenPattern"

    iget-object v1, p0, Lcom/android/OriginalSettings/ChooseLockPattern$ChooseLockPatternFragment;->mChosenPattern:Ljava/util/List;

    invoke-static {v1}, Lcom/android/internal/widget/LockPatternUtils;->patternToString(Ljava/util/List;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 423
    :cond_0
    return-void
.end method

.method protected updateStage(Lcom/android/OriginalSettings/ChooseLockPattern$ChooseLockPatternFragment$Stage;)V
    .locals 6
    .parameter "stage"

    .prologue
    const/4 v5, 0x0

    .line 433
    iput-object p1, p0, Lcom/android/OriginalSettings/ChooseLockPattern$ChooseLockPatternFragment;->mUiStage:Lcom/android/OriginalSettings/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    .line 437
    sget-object v0, Lcom/android/OriginalSettings/ChooseLockPattern$ChooseLockPatternFragment$Stage;->ChoiceTooShort:Lcom/android/OriginalSettings/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    if-ne p1, v0, :cond_0

    .line 438
    iget-object v0, p0, Lcom/android/OriginalSettings/ChooseLockPattern$ChooseLockPatternFragment;->mHeaderText:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/OriginalSettings/ChooseLockPattern$ChooseLockPatternFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget v2, p1, Lcom/android/OriginalSettings/ChooseLockPattern$ChooseLockPatternFragment$Stage;->headerMessage:I

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 445
    :goto_0
    iget v0, p1, Lcom/android/OriginalSettings/ChooseLockPattern$ChooseLockPatternFragment$Stage;->footerMessage:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    .line 446
    iget-object v0, p0, Lcom/android/OriginalSettings/ChooseLockPattern$ChooseLockPatternFragment;->mFooterText:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 451
    :goto_1
    iget-object v0, p1, Lcom/android/OriginalSettings/ChooseLockPattern$ChooseLockPatternFragment$Stage;->leftMode:Lcom/android/OriginalSettings/ChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;

    sget-object v1, Lcom/android/OriginalSettings/ChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;->Gone:Lcom/android/OriginalSettings/ChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;

    if-ne v0, v1, :cond_2

    .line 452
    iget-object v0, p0, Lcom/android/OriginalSettings/ChooseLockPattern$ChooseLockPatternFragment;->mFooterLeftButton:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 459
    :goto_2
    iget-object v0, p0, Lcom/android/OriginalSettings/ChooseLockPattern$ChooseLockPatternFragment;->mFooterRightButton:Landroid/widget/TextView;

    iget-object v1, p1, Lcom/android/OriginalSettings/ChooseLockPattern$ChooseLockPatternFragment$Stage;->rightMode:Lcom/android/OriginalSettings/ChooseLockPattern$ChooseLockPatternFragment$RightButtonMode;

    iget v1, v1, Lcom/android/OriginalSettings/ChooseLockPattern$ChooseLockPatternFragment$RightButtonMode;->text:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 460
    iget-object v0, p0, Lcom/android/OriginalSettings/ChooseLockPattern$ChooseLockPatternFragment;->mFooterRightButton:Landroid/widget/TextView;

    iget-object v1, p1, Lcom/android/OriginalSettings/ChooseLockPattern$ChooseLockPatternFragment$Stage;->rightMode:Lcom/android/OriginalSettings/ChooseLockPattern$ChooseLockPatternFragment$RightButtonMode;

    iget-boolean v1, v1, Lcom/android/OriginalSettings/ChooseLockPattern$ChooseLockPatternFragment$RightButtonMode;->enabled:Z

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 463
    iget-boolean v0, p1, Lcom/android/OriginalSettings/ChooseLockPattern$ChooseLockPatternFragment$Stage;->patternEnabled:Z

    if-eqz v0, :cond_3

    .line 464
    iget-object v0, p0, Lcom/android/OriginalSettings/ChooseLockPattern$ChooseLockPatternFragment;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternView;->enableInput()V

    .line 471
    :goto_3
    iget-object v0, p0, Lcom/android/OriginalSettings/ChooseLockPattern$ChooseLockPatternFragment;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    sget-object v1, Lcom/android/internal/widget/LockPatternView$DisplayMode;->Correct:Lcom/android/internal/widget/LockPatternView$DisplayMode;

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternView;->setDisplayMode(Lcom/android/internal/widget/LockPatternView$DisplayMode;)V

    .line 473
    sget-object v0, Lcom/android/OriginalSettings/ChooseLockPattern$1;->$SwitchMap$com$android$settings$ChooseLockPattern$ChooseLockPatternFragment$Stage:[I

    iget-object v1, p0, Lcom/android/OriginalSettings/ChooseLockPattern$ChooseLockPatternFragment;->mUiStage:Lcom/android/OriginalSettings/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    invoke-virtual {v1}, Lcom/android/OriginalSettings/ChooseLockPattern$ChooseLockPatternFragment$Stage;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 496
    :goto_4
    :pswitch_0
    return-void

    .line 443
    :cond_0
    iget-object v0, p0, Lcom/android/OriginalSettings/ChooseLockPattern$ChooseLockPatternFragment;->mHeaderText:Landroid/widget/TextView;

    iget v1, p1, Lcom/android/OriginalSettings/ChooseLockPattern$ChooseLockPatternFragment$Stage;->headerMessage:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 448
    :cond_1
    iget-object v0, p0, Lcom/android/OriginalSettings/ChooseLockPattern$ChooseLockPatternFragment;->mFooterText:Landroid/widget/TextView;

    iget v1, p1, Lcom/android/OriginalSettings/ChooseLockPattern$ChooseLockPatternFragment$Stage;->footerMessage:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1

    .line 454
    :cond_2
    iget-object v0, p0, Lcom/android/OriginalSettings/ChooseLockPattern$ChooseLockPatternFragment;->mFooterLeftButton:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 455
    iget-object v0, p0, Lcom/android/OriginalSettings/ChooseLockPattern$ChooseLockPatternFragment;->mFooterLeftButton:Landroid/widget/TextView;

    iget-object v1, p1, Lcom/android/OriginalSettings/ChooseLockPattern$ChooseLockPatternFragment$Stage;->leftMode:Lcom/android/OriginalSettings/ChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;

    iget v1, v1, Lcom/android/OriginalSettings/ChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;->text:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 456
    iget-object v0, p0, Lcom/android/OriginalSettings/ChooseLockPattern$ChooseLockPatternFragment;->mFooterLeftButton:Landroid/widget/TextView;

    iget-object v1, p1, Lcom/android/OriginalSettings/ChooseLockPattern$ChooseLockPatternFragment$Stage;->leftMode:Lcom/android/OriginalSettings/ChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;

    iget-boolean v1, v1, Lcom/android/OriginalSettings/ChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;->enabled:Z

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    goto :goto_2

    .line 466
    :cond_3
    iget-object v0, p0, Lcom/android/OriginalSettings/ChooseLockPattern$ChooseLockPatternFragment;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternView;->disableInput()V

    goto :goto_3

    .line 475
    :pswitch_1
    iget-object v0, p0, Lcom/android/OriginalSettings/ChooseLockPattern$ChooseLockPatternFragment;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternView;->clearPattern()V

    goto :goto_4

    .line 478
    :pswitch_2
    iget-object v0, p0, Lcom/android/OriginalSettings/ChooseLockPattern$ChooseLockPatternFragment;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    sget-object v1, Lcom/android/internal/widget/LockPatternView$DisplayMode;->Animate:Lcom/android/internal/widget/LockPatternView$DisplayMode;

    iget-object v2, p0, Lcom/android/OriginalSettings/ChooseLockPattern$ChooseLockPatternFragment;->mAnimatePattern:Ljava/util/List;

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/widget/LockPatternView;->setPattern(Lcom/android/internal/widget/LockPatternView$DisplayMode;Ljava/util/List;)V

    goto :goto_4

    .line 481
    :pswitch_3
    iget-object v0, p0, Lcom/android/OriginalSettings/ChooseLockPattern$ChooseLockPatternFragment;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    sget-object v1, Lcom/android/internal/widget/LockPatternView$DisplayMode;->Wrong:Lcom/android/internal/widget/LockPatternView$DisplayMode;

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternView;->setDisplayMode(Lcom/android/internal/widget/LockPatternView$DisplayMode;)V

    .line 482
    invoke-direct {p0}, Lcom/android/OriginalSettings/ChooseLockPattern$ChooseLockPatternFragment;->postClearPatternRunnable()V

    goto :goto_4

    .line 487
    :pswitch_4
    iget-object v0, p0, Lcom/android/OriginalSettings/ChooseLockPattern$ChooseLockPatternFragment;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternView;->clearPattern()V

    goto :goto_4

    .line 490
    :pswitch_5
    iget-object v0, p0, Lcom/android/OriginalSettings/ChooseLockPattern$ChooseLockPatternFragment;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    sget-object v1, Lcom/android/internal/widget/LockPatternView$DisplayMode;->Wrong:Lcom/android/internal/widget/LockPatternView$DisplayMode;

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternView;->setDisplayMode(Lcom/android/internal/widget/LockPatternView$DisplayMode;)V

    .line 491
    invoke-direct {p0}, Lcom/android/OriginalSettings/ChooseLockPattern$ChooseLockPatternFragment;->postClearPatternRunnable()V

    goto :goto_4

    .line 473
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method
