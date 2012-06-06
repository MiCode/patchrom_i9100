.class public Lcom/android/OriginalSettings/ConfirmLockPattern$ConfirmLockPatternFragment;
.super Landroid/app/Fragment;
.source "ConfirmLockPattern.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/OriginalSettings/ConfirmLockPattern;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ConfirmLockPatternFragment"
.end annotation


# instance fields
.field private mClearPatternRunnable:Ljava/lang/Runnable;

.field private mConfirmExistingLockPatternListener:Lcom/android/internal/widget/LockPatternView$OnPatternListener;

.field private mCountdownTimer:Landroid/os/CountDownTimer;

.field private mFooterText:Ljava/lang/CharSequence;

.field private mFooterTextView:Landroid/widget/TextView;

.field private mFooterWrongText:Ljava/lang/CharSequence;

.field private mHeaderText:Ljava/lang/CharSequence;

.field private mHeaderTextView:Landroid/widget/TextView;

.field private mHeaderWrongText:Ljava/lang/CharSequence;

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mLockPatternView:Lcom/android/internal/widget/LockPatternView;

.field private mNumWrongConfirmAttempts:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 101
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 225
    new-instance v0, Lcom/android/OriginalSettings/ConfirmLockPattern$ConfirmLockPatternFragment$1;

    invoke-direct {v0, p0}, Lcom/android/OriginalSettings/ConfirmLockPattern$ConfirmLockPatternFragment$1;-><init>(Lcom/android/OriginalSettings/ConfirmLockPattern$ConfirmLockPatternFragment;)V

    iput-object v0, p0, Lcom/android/OriginalSettings/ConfirmLockPattern$ConfirmLockPatternFragment;->mClearPatternRunnable:Ljava/lang/Runnable;

    .line 242
    new-instance v0, Lcom/android/OriginalSettings/ConfirmLockPattern$ConfirmLockPatternFragment$2;

    invoke-direct {v0, p0}, Lcom/android/OriginalSettings/ConfirmLockPattern$ConfirmLockPatternFragment$2;-><init>(Lcom/android/OriginalSettings/ConfirmLockPattern$ConfirmLockPatternFragment;)V

    iput-object v0, p0, Lcom/android/OriginalSettings/ConfirmLockPattern$ConfirmLockPatternFragment;->mConfirmExistingLockPatternListener:Lcom/android/internal/widget/LockPatternView$OnPatternListener;

    .line 103
    return-void
.end method

.method static synthetic access$000(Lcom/android/OriginalSettings/ConfirmLockPattern$ConfirmLockPatternFragment;)Lcom/android/internal/widget/LockPatternView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 79
    iget-object v0, p0, Lcom/android/OriginalSettings/ConfirmLockPattern$ConfirmLockPatternFragment;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/OriginalSettings/ConfirmLockPattern$ConfirmLockPatternFragment;)Ljava/lang/Runnable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 79
    iget-object v0, p0, Lcom/android/OriginalSettings/ConfirmLockPattern$ConfirmLockPatternFragment;->mClearPatternRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/OriginalSettings/ConfirmLockPattern$ConfirmLockPatternFragment;)Lcom/android/internal/widget/LockPatternUtils;
    .locals 1
    .parameter "x0"

    .prologue
    .line 79
    iget-object v0, p0, Lcom/android/OriginalSettings/ConfirmLockPattern$ConfirmLockPatternFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    return-object v0
.end method

.method static synthetic access$302(Lcom/android/OriginalSettings/ConfirmLockPattern$ConfirmLockPatternFragment;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 79
    iput p1, p0, Lcom/android/OriginalSettings/ConfirmLockPattern$ConfirmLockPatternFragment;->mNumWrongConfirmAttempts:I

    return p1
.end method

.method static synthetic access$304(Lcom/android/OriginalSettings/ConfirmLockPattern$ConfirmLockPatternFragment;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 79
    iget v0, p0, Lcom/android/OriginalSettings/ConfirmLockPattern$ConfirmLockPatternFragment;->mNumWrongConfirmAttempts:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/OriginalSettings/ConfirmLockPattern$ConfirmLockPatternFragment;->mNumWrongConfirmAttempts:I

    return v0
.end method

.method static synthetic access$400(Lcom/android/OriginalSettings/ConfirmLockPattern$ConfirmLockPatternFragment;J)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 79
    invoke-direct {p0, p1, p2}, Lcom/android/OriginalSettings/ConfirmLockPattern$ConfirmLockPatternFragment;->handleAttemptLockout(J)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/OriginalSettings/ConfirmLockPattern$ConfirmLockPatternFragment;Lcom/android/OriginalSettings/ConfirmLockPattern$Stage;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 79
    invoke-direct {p0, p1}, Lcom/android/OriginalSettings/ConfirmLockPattern$ConfirmLockPatternFragment;->updateStage(Lcom/android/OriginalSettings/ConfirmLockPattern$Stage;)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/OriginalSettings/ConfirmLockPattern$ConfirmLockPatternFragment;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 79
    invoke-direct {p0}, Lcom/android/OriginalSettings/ConfirmLockPattern$ConfirmLockPatternFragment;->postClearPatternRunnable()V

    return-void
.end method

.method static synthetic access$700(Lcom/android/OriginalSettings/ConfirmLockPattern$ConfirmLockPatternFragment;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 79
    iget-object v0, p0, Lcom/android/OriginalSettings/ConfirmLockPattern$ConfirmLockPatternFragment;->mHeaderTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/OriginalSettings/ConfirmLockPattern$ConfirmLockPatternFragment;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 79
    iget-object v0, p0, Lcom/android/OriginalSettings/ConfirmLockPattern$ConfirmLockPatternFragment;->mFooterTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method private handleAttemptLockout(J)V
    .locals 8
    .parameter "elapsedRealtimeDeadline"

    .prologue
    .line 282
    sget-object v0, Lcom/android/OriginalSettings/ConfirmLockPattern$Stage;->LockedOut:Lcom/android/OriginalSettings/ConfirmLockPattern$Stage;

    invoke-direct {p0, v0}, Lcom/android/OriginalSettings/ConfirmLockPattern$ConfirmLockPatternFragment;->updateStage(Lcom/android/OriginalSettings/ConfirmLockPattern$Stage;)V

    .line 283
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    .line 284
    .local v6, elapsedRealtime:J
    new-instance v0, Lcom/android/OriginalSettings/ConfirmLockPattern$ConfirmLockPatternFragment$3;

    sub-long v2, p1, v6

    const-wide/16 v4, 0x3e8

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/OriginalSettings/ConfirmLockPattern$ConfirmLockPatternFragment$3;-><init>(Lcom/android/OriginalSettings/ConfirmLockPattern$ConfirmLockPatternFragment;JJ)V

    invoke-virtual {v0}, Lcom/android/OriginalSettings/ConfirmLockPattern$ConfirmLockPatternFragment$3;->start()Landroid/os/CountDownTimer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/OriginalSettings/ConfirmLockPattern$ConfirmLockPatternFragment;->mCountdownTimer:Landroid/os/CountDownTimer;

    .line 303
    return-void
.end method

.method private postClearPatternRunnable()V
    .locals 4

    .prologue
    .line 234
    iget-object v0, p0, Lcom/android/OriginalSettings/ConfirmLockPattern$ConfirmLockPatternFragment;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    iget-object v1, p0, Lcom/android/OriginalSettings/ConfirmLockPattern$ConfirmLockPatternFragment;->mClearPatternRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 235
    iget-object v0, p0, Lcom/android/OriginalSettings/ConfirmLockPattern$ConfirmLockPatternFragment;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    iget-object v1, p0, Lcom/android/OriginalSettings/ConfirmLockPattern$ConfirmLockPatternFragment;->mClearPatternRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/widget/LockPatternView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 236
    return-void
.end method

.method private updateStage(Lcom/android/OriginalSettings/ConfirmLockPattern$Stage;)V
    .locals 3
    .parameter "stage"

    .prologue
    const/4 v2, 0x1

    .line 184
    sget-object v0, Lcom/android/OriginalSettings/ConfirmLockPattern$1;->$SwitchMap$com$android$settings$ConfirmLockPattern$Stage:[I

    invoke-virtual {p1}, Lcom/android/OriginalSettings/ConfirmLockPattern$Stage;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 223
    :goto_0
    return-void

    .line 186
    :pswitch_0
    iget-object v0, p0, Lcom/android/OriginalSettings/ConfirmLockPattern$ConfirmLockPatternFragment;->mHeaderText:Ljava/lang/CharSequence;

    if-eqz v0, :cond_0

    .line 187
    iget-object v0, p0, Lcom/android/OriginalSettings/ConfirmLockPattern$ConfirmLockPatternFragment;->mHeaderTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/OriginalSettings/ConfirmLockPattern$ConfirmLockPatternFragment;->mHeaderText:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 191
    :goto_1
    iget-object v0, p0, Lcom/android/OriginalSettings/ConfirmLockPattern$ConfirmLockPatternFragment;->mFooterText:Ljava/lang/CharSequence;

    if-eqz v0, :cond_1

    .line 192
    iget-object v0, p0, Lcom/android/OriginalSettings/ConfirmLockPattern$ConfirmLockPatternFragment;->mFooterTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/OriginalSettings/ConfirmLockPattern$ConfirmLockPatternFragment;->mFooterText:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 197
    :goto_2
    iget-object v0, p0, Lcom/android/OriginalSettings/ConfirmLockPattern$ConfirmLockPatternFragment;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    invoke-virtual {v0, v2}, Lcom/android/internal/widget/LockPatternView;->setEnabled(Z)V

    .line 198
    iget-object v0, p0, Lcom/android/OriginalSettings/ConfirmLockPattern$ConfirmLockPatternFragment;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternView;->enableInput()V

    goto :goto_0

    .line 189
    :cond_0
    iget-object v0, p0, Lcom/android/OriginalSettings/ConfirmLockPattern$ConfirmLockPatternFragment;->mHeaderTextView:Landroid/widget/TextView;

    const v1, 0x7f0b0431

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1

    .line 194
    :cond_1
    iget-object v0, p0, Lcom/android/OriginalSettings/ConfirmLockPattern$ConfirmLockPatternFragment;->mFooterTextView:Landroid/widget/TextView;

    const v1, 0x7f0b0432

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_2

    .line 201
    :pswitch_1
    iget-object v0, p0, Lcom/android/OriginalSettings/ConfirmLockPattern$ConfirmLockPatternFragment;->mHeaderWrongText:Ljava/lang/CharSequence;

    if-eqz v0, :cond_2

    .line 202
    iget-object v0, p0, Lcom/android/OriginalSettings/ConfirmLockPattern$ConfirmLockPatternFragment;->mHeaderTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/OriginalSettings/ConfirmLockPattern$ConfirmLockPatternFragment;->mHeaderWrongText:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 206
    :goto_3
    iget-object v0, p0, Lcom/android/OriginalSettings/ConfirmLockPattern$ConfirmLockPatternFragment;->mFooterWrongText:Ljava/lang/CharSequence;

    if-eqz v0, :cond_3

    .line 207
    iget-object v0, p0, Lcom/android/OriginalSettings/ConfirmLockPattern$ConfirmLockPatternFragment;->mFooterTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/OriginalSettings/ConfirmLockPattern$ConfirmLockPatternFragment;->mFooterWrongText:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 212
    :goto_4
    iget-object v0, p0, Lcom/android/OriginalSettings/ConfirmLockPattern$ConfirmLockPatternFragment;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    sget-object v1, Lcom/android/internal/widget/LockPatternView$DisplayMode;->Wrong:Lcom/android/internal/widget/LockPatternView$DisplayMode;

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternView;->setDisplayMode(Lcom/android/internal/widget/LockPatternView$DisplayMode;)V

    .line 213
    iget-object v0, p0, Lcom/android/OriginalSettings/ConfirmLockPattern$ConfirmLockPatternFragment;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    invoke-virtual {v0, v2}, Lcom/android/internal/widget/LockPatternView;->setEnabled(Z)V

    .line 214
    iget-object v0, p0, Lcom/android/OriginalSettings/ConfirmLockPattern$ConfirmLockPatternFragment;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternView;->enableInput()V

    goto :goto_0

    .line 204
    :cond_2
    iget-object v0, p0, Lcom/android/OriginalSettings/ConfirmLockPattern$ConfirmLockPatternFragment;->mHeaderTextView:Landroid/widget/TextView;

    const v1, 0x7f0b0433

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_3

    .line 209
    :cond_3
    iget-object v0, p0, Lcom/android/OriginalSettings/ConfirmLockPattern$ConfirmLockPatternFragment;->mFooterTextView:Landroid/widget/TextView;

    const v1, 0x7f0b0434

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_4

    .line 217
    :pswitch_2
    iget-object v0, p0, Lcom/android/OriginalSettings/ConfirmLockPattern$ConfirmLockPatternFragment;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternView;->clearPattern()V

    .line 220
    iget-object v0, p0, Lcom/android/OriginalSettings/ConfirmLockPattern$ConfirmLockPatternFragment;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternView;->setEnabled(Z)V

    goto :goto_0

    .line 184
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 107
    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 108
    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {p0}, Lcom/android/OriginalSettings/ConfirmLockPattern$ConfirmLockPatternFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/OriginalSettings/ConfirmLockPattern$ConfirmLockPatternFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 109
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 5
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    .line 114
    const v3, 0x7f04001e

    const/4 v4, 0x0

    invoke-virtual {p1, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 115
    .local v2, view:Landroid/view/View;
    const v3, 0x7f080031

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/OriginalSettings/ConfirmLockPattern$ConfirmLockPatternFragment;->mHeaderTextView:Landroid/widget/TextView;

    .line 116
    const v3, 0x7f080038

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/internal/widget/LockPatternView;

    iput-object v3, p0, Lcom/android/OriginalSettings/ConfirmLockPattern$ConfirmLockPatternFragment;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    .line 117
    const v3, 0x7f080039

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/OriginalSettings/ConfirmLockPattern$ConfirmLockPatternFragment;->mFooterTextView:Landroid/widget/TextView;

    .line 121
    const v3, 0x7f080037

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/internal/widget/LinearLayoutWithDefaultTouchRecepient;

    .line 123
    .local v1, topLayout:Lcom/android/internal/widget/LinearLayoutWithDefaultTouchRecepient;
    iget-object v3, p0, Lcom/android/OriginalSettings/ConfirmLockPattern$ConfirmLockPatternFragment;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    invoke-virtual {v1, v3}, Lcom/android/internal/widget/LinearLayoutWithDefaultTouchRecepient;->setDefaultTouchRecepient(Landroid/view/View;)V

    .line 125
    invoke-virtual {p0}, Lcom/android/OriginalSettings/ConfirmLockPattern$ConfirmLockPatternFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 126
    .local v0, intent:Landroid/content/Intent;
    if-eqz v0, :cond_0

    .line 127
    const-string v3, "com.android.settings.ConfirmLockPattern.header"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getCharSequenceExtra(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v3

    iput-object v3, p0, Lcom/android/OriginalSettings/ConfirmLockPattern$ConfirmLockPatternFragment;->mHeaderText:Ljava/lang/CharSequence;

    .line 128
    const-string v3, "com.android.settings.ConfirmLockPattern.footer"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getCharSequenceExtra(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v3

    iput-object v3, p0, Lcom/android/OriginalSettings/ConfirmLockPattern$ConfirmLockPatternFragment;->mFooterText:Ljava/lang/CharSequence;

    .line 129
    const-string v3, "com.android.settings.ConfirmLockPattern.header_wrong"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getCharSequenceExtra(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v3

    iput-object v3, p0, Lcom/android/OriginalSettings/ConfirmLockPattern$ConfirmLockPatternFragment;->mHeaderWrongText:Ljava/lang/CharSequence;

    .line 130
    const-string v3, "com.android.settings.ConfirmLockPattern.footer_wrong"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getCharSequenceExtra(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v3

    iput-object v3, p0, Lcom/android/OriginalSettings/ConfirmLockPattern$ConfirmLockPatternFragment;->mFooterWrongText:Ljava/lang/CharSequence;

    .line 133
    :cond_0
    iget-object v3, p0, Lcom/android/OriginalSettings/ConfirmLockPattern$ConfirmLockPatternFragment;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    iget-object v4, p0, Lcom/android/OriginalSettings/ConfirmLockPattern$ConfirmLockPatternFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v4}, Lcom/android/internal/widget/LockPatternUtils;->isTactileFeedbackEnabled()Z

    move-result v4

    invoke-virtual {v3, v4}, Lcom/android/internal/widget/LockPatternView;->setTactileFeedbackEnabled(Z)V

    .line 134
    iget-object v3, p0, Lcom/android/OriginalSettings/ConfirmLockPattern$ConfirmLockPatternFragment;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    iget-object v4, p0, Lcom/android/OriginalSettings/ConfirmLockPattern$ConfirmLockPatternFragment;->mConfirmExistingLockPatternListener:Lcom/android/internal/widget/LockPatternView$OnPatternListener;

    invoke-virtual {v3, v4}, Lcom/android/internal/widget/LockPatternView;->setOnPatternListener(Lcom/android/internal/widget/LockPatternView$OnPatternListener;)V

    .line 135
    sget-object v3, Lcom/android/OriginalSettings/ConfirmLockPattern$Stage;->NeedToUnlock:Lcom/android/OriginalSettings/ConfirmLockPattern$Stage;

    invoke-direct {p0, v3}, Lcom/android/OriginalSettings/ConfirmLockPattern$ConfirmLockPatternFragment;->updateStage(Lcom/android/OriginalSettings/ConfirmLockPattern$Stage;)V

    .line 137
    if-eqz p3, :cond_2

    .line 138
    const-string v3, "num_wrong_attempts"

    invoke-virtual {p3, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/android/OriginalSettings/ConfirmLockPattern$ConfirmLockPatternFragment;->mNumWrongConfirmAttempts:I

    .line 148
    :cond_1
    :goto_0
    return-object v2

    .line 143
    :cond_2
    iget-object v3, p0, Lcom/android/OriginalSettings/ConfirmLockPattern$ConfirmLockPatternFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v3}, Lcom/android/internal/widget/LockPatternUtils;->savedPatternExists()Z

    move-result v3

    if-nez v3, :cond_1

    .line 144
    invoke-virtual {p0}, Lcom/android/OriginalSettings/ConfirmLockPattern$ConfirmLockPatternFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const/4 v4, -0x1

    invoke-virtual {v3, v4}, Landroid/app/Activity;->setResult(I)V

    .line 145
    invoke-virtual {p0}, Lcom/android/OriginalSettings/ConfirmLockPattern$ConfirmLockPatternFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->finish()V

    goto :goto_0
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 159
    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    .line 161
    iget-object v0, p0, Lcom/android/OriginalSettings/ConfirmLockPattern$ConfirmLockPatternFragment;->mCountdownTimer:Landroid/os/CountDownTimer;

    if-eqz v0, :cond_0

    .line 162
    iget-object v0, p0, Lcom/android/OriginalSettings/ConfirmLockPattern$ConfirmLockPatternFragment;->mCountdownTimer:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    .line 164
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 4

    .prologue
    .line 168
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 171
    iget-object v2, p0, Lcom/android/OriginalSettings/ConfirmLockPattern$ConfirmLockPatternFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v2}, Lcom/android/internal/widget/LockPatternUtils;->getLockoutAttemptDeadline()J

    move-result-wide v0

    .line 172
    .local v0, deadline:J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_1

    .line 173
    invoke-direct {p0, v0, v1}, Lcom/android/OriginalSettings/ConfirmLockPattern$ConfirmLockPatternFragment;->handleAttemptLockout(J)V

    .line 180
    :cond_0
    :goto_0
    return-void

    .line 174
    :cond_1
    iget-object v2, p0, Lcom/android/OriginalSettings/ConfirmLockPattern$ConfirmLockPatternFragment;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    invoke-virtual {v2}, Lcom/android/internal/widget/LockPatternView;->isEnabled()Z

    move-result v2

    if-nez v2, :cond_0

    .line 177
    const/4 v2, 0x0

    iput v2, p0, Lcom/android/OriginalSettings/ConfirmLockPattern$ConfirmLockPatternFragment;->mNumWrongConfirmAttempts:I

    .line 178
    sget-object v2, Lcom/android/OriginalSettings/ConfirmLockPattern$Stage;->NeedToUnlock:Lcom/android/OriginalSettings/ConfirmLockPattern$Stage;

    invoke-direct {p0, v2}, Lcom/android/OriginalSettings/ConfirmLockPattern$ConfirmLockPatternFragment;->updateStage(Lcom/android/OriginalSettings/ConfirmLockPattern$Stage;)V

    goto :goto_0
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "outState"

    .prologue
    .line 154
    const-string v0, "num_wrong_attempts"

    iget v1, p0, Lcom/android/OriginalSettings/ConfirmLockPattern$ConfirmLockPatternFragment;->mNumWrongConfirmAttempts:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 155
    return-void
.end method
