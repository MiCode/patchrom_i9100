.class public Lcom/android/OriginalSettings/ChooseLockPatternTutorial$ChooseLockPatternTutorialFragment;
.super Landroid/app/Fragment;
.source "ChooseLockPatternTutorial.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/OriginalSettings/ChooseLockPatternTutorial;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ChooseLockPatternTutorialFragment"
.end annotation


# instance fields
.field private mNextButton:Landroid/view/View;

.field private mPatternView:Lcom/android/internal/widget/LockPatternView;

.field private mSkipButton:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 54
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 101
    iget-object v0, p0, Lcom/android/OriginalSettings/ChooseLockPatternTutorial$ChooseLockPatternTutorialFragment;->mSkipButton:Landroid/view/View;

    if-ne p1, v0, :cond_1

    .line 103
    invoke-virtual {p0}, Lcom/android/OriginalSettings/ChooseLockPatternTutorial$ChooseLockPatternTutorialFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setResult(I)V

    .line 104
    invoke-virtual {p0}, Lcom/android/OriginalSettings/ChooseLockPatternTutorial$ChooseLockPatternTutorialFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 116
    :cond_0
    :goto_0
    return-void

    .line 105
    :cond_1
    iget-object v0, p0, Lcom/android/OriginalSettings/ChooseLockPatternTutorial$ChooseLockPatternTutorialFragment;->mNextButton:Landroid/view/View;

    if-ne p1, v0, :cond_0

    .line 106
    invoke-virtual {p0}, Lcom/android/OriginalSettings/ChooseLockPatternTutorial$ChooseLockPatternTutorialFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "lockscreen.biometric_weak_fallback"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 108
    new-instance v1, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/android/OriginalSettings/ChooseLockPatternTutorial$ChooseLockPatternTutorialFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-class v3, Lcom/android/OriginalSettings/ChooseLockPattern;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 109
    const/high16 v2, 0x200

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 110
    const-string v2, "lockscreen.biometric_weak_fallback"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 112
    invoke-virtual {p0, v1}, Lcom/android/OriginalSettings/ChooseLockPatternTutorial$ChooseLockPatternTutorialFragment;->startActivity(Landroid/content/Intent;)V

    .line 113
    invoke-virtual {p0}, Lcom/android/OriginalSettings/ChooseLockPatternTutorial$ChooseLockPatternTutorialFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0, v4, v4}, Landroid/app/Activity;->overridePendingTransition(II)V

    .line 114
    invoke-virtual {p0}, Lcom/android/OriginalSettings/ChooseLockPatternTutorial$ChooseLockPatternTutorialFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 62
    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 64
    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {p0}, Lcom/android/OriginalSettings/ChooseLockPatternTutorial$ChooseLockPatternTutorialFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    .line 65
    if-nez p1, :cond_0

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternUtils;->isPatternEverChosen()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 66
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/android/OriginalSettings/ChooseLockPatternTutorial$ChooseLockPatternTutorialFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-class v2, Lcom/android/OriginalSettings/ChooseLockPattern;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 67
    const/high16 v1, 0x200

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 68
    const-string v1, "confirm_credentials"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 69
    invoke-virtual {p0}, Lcom/android/OriginalSettings/ChooseLockPatternTutorial$ChooseLockPatternTutorialFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "lockscreen.biometric_weak_fallback"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    .line 71
    const-string v2, "lockscreen.biometric_weak_fallback"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 73
    invoke-virtual {p0, v0}, Lcom/android/OriginalSettings/ChooseLockPatternTutorial$ChooseLockPatternTutorialFragment;->startActivity(Landroid/content/Intent;)V

    .line 74
    invoke-virtual {p0}, Lcom/android/OriginalSettings/ChooseLockPatternTutorial$ChooseLockPatternTutorialFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 76
    :cond_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 6
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 81
    const v2, 0x7f04001b

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 82
    .local v1, view:Landroid/view/View;
    const v2, 0x7f080009

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/OriginalSettings/ChooseLockPatternTutorial$ChooseLockPatternTutorialFragment;->mNextButton:Landroid/view/View;

    .line 83
    iget-object v2, p0, Lcom/android/OriginalSettings/ChooseLockPatternTutorial$ChooseLockPatternTutorialFragment;->mNextButton:Landroid/view/View;

    invoke-virtual {v2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 84
    const v2, 0x7f080007

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/OriginalSettings/ChooseLockPatternTutorial$ChooseLockPatternTutorialFragment;->mSkipButton:Landroid/view/View;

    .line 85
    iget-object v2, p0, Lcom/android/OriginalSettings/ChooseLockPatternTutorial$ChooseLockPatternTutorialFragment;->mSkipButton:Landroid/view/View;

    invoke-virtual {v2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 88
    const v2, 0x7f080038

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/internal/widget/LockPatternView;

    iput-object v2, p0, Lcom/android/OriginalSettings/ChooseLockPatternTutorial$ChooseLockPatternTutorialFragment;->mPatternView:Lcom/android/internal/widget/LockPatternView;

    .line 89
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 90
    .local v0, demoPattern:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/widget/LockPatternView$Cell;>;"
    invoke-static {v5, v5}, Lcom/android/internal/widget/LockPatternView$Cell;->of(II)Lcom/android/internal/widget/LockPatternView$Cell;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 91
    invoke-static {v5, v4}, Lcom/android/internal/widget/LockPatternView$Cell;->of(II)Lcom/android/internal/widget/LockPatternView$Cell;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 92
    invoke-static {v4, v4}, Lcom/android/internal/widget/LockPatternView$Cell;->of(II)Lcom/android/internal/widget/LockPatternView$Cell;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 93
    const/4 v2, 0x2

    invoke-static {v2, v4}, Lcom/android/internal/widget/LockPatternView$Cell;->of(II)Lcom/android/internal/widget/LockPatternView$Cell;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 94
    iget-object v2, p0, Lcom/android/OriginalSettings/ChooseLockPatternTutorial$ChooseLockPatternTutorialFragment;->mPatternView:Lcom/android/internal/widget/LockPatternView;

    sget-object v3, Lcom/android/internal/widget/LockPatternView$DisplayMode;->Animate:Lcom/android/internal/widget/LockPatternView$DisplayMode;

    invoke-virtual {v2, v3, v0}, Lcom/android/internal/widget/LockPatternView;->setPattern(Lcom/android/internal/widget/LockPatternView$DisplayMode;Ljava/util/List;)V

    .line 95
    iget-object v2, p0, Lcom/android/OriginalSettings/ChooseLockPatternTutorial$ChooseLockPatternTutorialFragment;->mPatternView:Lcom/android/internal/widget/LockPatternView;

    invoke-virtual {v2}, Lcom/android/internal/widget/LockPatternView;->disableInput()V

    .line 97
    return-object v1
.end method
