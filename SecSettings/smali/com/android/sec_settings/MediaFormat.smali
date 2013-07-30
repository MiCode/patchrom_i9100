.class public Lcom/android/sec_settings/MediaFormat;
.super Landroid/app/Activity;
.source "MediaFormat.java"


# instance fields
.field private mFinalButton:Landroid/widget/Button;

.field private mFinalClickListener:Landroid/view/View$OnClickListener;

.field private mFinalView:Landroid/view/View;

.field private mInflater:Landroid/view/LayoutInflater;

.field private mInitialView:Landroid/view/View;

.field private mInitiateButton:Landroid/widget/Button;

.field private mInitiateListener:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 37
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 53
    new-instance v0, Lcom/android/sec_settings/MediaFormat$1;

    invoke-direct {v0, p0}, Lcom/android/sec_settings/MediaFormat$1;-><init>(Lcom/android/sec_settings/MediaFormat;)V

    iput-object v0, p0, Lcom/android/sec_settings/MediaFormat;->mFinalClickListener:Landroid/view/View$OnClickListener;

    .line 105
    new-instance v0, Lcom/android/sec_settings/MediaFormat$2;

    invoke-direct {v0, p0}, Lcom/android/sec_settings/MediaFormat$2;-><init>(Lcom/android/sec_settings/MediaFormat;)V

    iput-object v0, p0, Lcom/android/sec_settings/MediaFormat;->mInitiateListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method static synthetic access$000(Lcom/android/sec_settings/MediaFormat;I)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 37
    invoke-direct {p0, p1}, Lcom/android/sec_settings/MediaFormat;->runKeyguardConfirmation(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lcom/android/sec_settings/MediaFormat;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/android/sec_settings/MediaFormat;->establishFinalConfirmationState()V

    return-void
.end method

.method private establishFinalConfirmationState()V
    .locals 3

    .prologue
    .line 117
    iget-object v0, p0, Lcom/android/sec_settings/MediaFormat;->mFinalView:Landroid/view/View;

    if-nez v0, :cond_0

    .line 118
    iget-object v0, p0, Lcom/android/sec_settings/MediaFormat;->mInflater:Landroid/view/LayoutInflater;

    const v1, 0x7f04008b

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/sec_settings/MediaFormat;->mFinalView:Landroid/view/View;

    .line 119
    iget-object v0, p0, Lcom/android/sec_settings/MediaFormat;->mFinalView:Landroid/view/View;

    const v1, 0x7f0b016c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/sec_settings/MediaFormat;->mFinalButton:Landroid/widget/Button;

    .line 121
    iget-object v0, p0, Lcom/android/sec_settings/MediaFormat;->mFinalButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/android/sec_settings/MediaFormat;->mFinalClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 124
    :cond_0
    iget-object v0, p0, Lcom/android/sec_settings/MediaFormat;->mFinalView:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/android/sec_settings/MediaFormat;->setContentView(Landroid/view/View;)V

    .line 125
    return-void
.end method

.method private establishInitialState()V
    .locals 3

    .prologue
    .line 140
    iget-object v0, p0, Lcom/android/sec_settings/MediaFormat;->mInitialView:Landroid/view/View;

    if-nez v0, :cond_0

    .line 141
    iget-object v0, p0, Lcom/android/sec_settings/MediaFormat;->mInflater:Landroid/view/LayoutInflater;

    const v1, 0x7f04008d

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/sec_settings/MediaFormat;->mInitialView:Landroid/view/View;

    .line 142
    iget-object v0, p0, Lcom/android/sec_settings/MediaFormat;->mInitialView:Landroid/view/View;

    const v1, 0x7f0b016e

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/sec_settings/MediaFormat;->mInitiateButton:Landroid/widget/Button;

    .line 144
    iget-object v0, p0, Lcom/android/sec_settings/MediaFormat;->mInitiateButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/android/sec_settings/MediaFormat;->mInitiateListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 147
    :cond_0
    iget-object v0, p0, Lcom/android/sec_settings/MediaFormat;->mInitialView:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/android/sec_settings/MediaFormat;->setContentView(Landroid/view/View;)V

    .line 148
    return-void
.end method

.method private runKeyguardConfirmation(I)Z
    .locals 3
    .parameter "request"

    .prologue
    .line 75
    new-instance v0, Lcom/android/sec_settings/ChooseLockSettingsHelper;

    invoke-direct {v0, p0}, Lcom/android/sec_settings/ChooseLockSettingsHelper;-><init>(Landroid/app/Activity;)V

    const v1, 0x7f090530

    invoke-virtual {p0, v1}, Lcom/android/sec_settings/MediaFormat;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    const v2, 0x7f090531

    invoke-virtual {p0, v2}, Lcom/android/sec_settings/MediaFormat;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0, p1, v1, v2}, Lcom/android/sec_settings/ChooseLockSettingsHelper;->launchConfirmationActivity(ILjava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 83
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    .line 85
    const/16 v0, 0x37

    if-eq p1, v0, :cond_0

    .line 98
    :goto_0
    return-void

    .line 91
    :cond_0
    const/4 v0, -0x1

    if-ne p2, v0, :cond_1

    .line 92
    invoke-direct {p0}, Lcom/android/sec_settings/MediaFormat;->establishFinalConfirmationState()V

    goto :goto_0

    .line 93
    :cond_1
    if-nez p2, :cond_2

    .line 94
    invoke-virtual {p0}, Lcom/android/sec_settings/MediaFormat;->finish()V

    goto :goto_0

    .line 96
    :cond_2
    invoke-direct {p0}, Lcom/android/sec_settings/MediaFormat;->establishInitialState()V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedState"

    .prologue
    const/4 v0, 0x0

    .line 152
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 154
    iput-object v0, p0, Lcom/android/sec_settings/MediaFormat;->mInitialView:Landroid/view/View;

    .line 155
    iput-object v0, p0, Lcom/android/sec_settings/MediaFormat;->mFinalView:Landroid/view/View;

    .line 156
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/android/sec_settings/MediaFormat;->mInflater:Landroid/view/LayoutInflater;

    .line 158
    invoke-direct {p0}, Lcom/android/sec_settings/MediaFormat;->establishInitialState()V

    .line 159
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 167
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 169
    invoke-virtual {p0}, Lcom/android/sec_settings/MediaFormat;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 170
    invoke-direct {p0}, Lcom/android/sec_settings/MediaFormat;->establishInitialState()V

    .line 172
    :cond_0
    return-void
.end method
