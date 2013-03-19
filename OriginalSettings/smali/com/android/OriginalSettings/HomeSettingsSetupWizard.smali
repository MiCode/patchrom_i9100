.class public Lcom/android/settings/HomeSettingsSetupWizard;
.super Landroid/app/Activity;
.source "HomeSettingsSetupWizard.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public RESULT_NEXT:I

.field private mFragment:Lcom/android/settings/HomeSettings;

.field private mNextButton:Landroid/widget/Button;

.field private mPrevButton:Landroid/widget/Button;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 20
    const/16 v0, 0xb

    iput v0, p0, Lcom/android/settings/HomeSettingsSetupWizard;->RESULT_NEXT:I

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .parameter "v"

    .prologue
    const/4 v4, -0x1

    .line 47
    iget-object v1, p0, Lcom/android/settings/HomeSettingsSetupWizard;->mFragment:Lcom/android/settings/HomeSettings;

    invoke-virtual {v1}, Lcom/android/settings/HomeSettings;->getCurrentHome()I

    move-result v0

    .line 48
    .local v0, mode:I
    const-string v1, "HomeSetup"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mode:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    if-eq v0, v4, :cond_0

    .line 51
    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 52
    iget v1, p0, Lcom/android/settings/HomeSettingsSetupWizard;->RESULT_NEXT:I

    invoke-virtual {p0, v1}, Lcom/android/settings/HomeSettingsSetupWizard;->setResult(I)V

    .line 57
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/HomeSettingsSetupWizard;->finish()V

    .line 58
    return-void

    .line 54
    :cond_1
    invoke-virtual {p0, v4}, Lcom/android/settings/HomeSettingsSetupWizard;->setResult(I)V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 25
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 26
    const-string v0, "HomeSettings"

    const-string v1, "HomeSettingsSetupWizard onCreate()"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 27
    const v0, 0x7f040070

    invoke-virtual {p0, v0}, Lcom/android/settings/HomeSettingsSetupWizard;->setContentView(I)V

    .line 29
    const v0, 0x7f0b0009

    invoke-virtual {p0, v0}, Lcom/android/settings/HomeSettingsSetupWizard;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/settings/HomeSettingsSetupWizard;->mNextButton:Landroid/widget/Button;

    .line 30
    iget-object v0, p0, Lcom/android/settings/HomeSettingsSetupWizard;->mNextButton:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 31
    iget-object v0, p0, Lcom/android/settings/HomeSettingsSetupWizard;->mNextButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 32
    const v0, 0x7f0b0112

    invoke-virtual {p0, v0}, Lcom/android/settings/HomeSettingsSetupWizard;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/settings/HomeSettingsSetupWizard;->mPrevButton:Landroid/widget/Button;

    .line 33
    iget-object v0, p0, Lcom/android/settings/HomeSettingsSetupWizard;->mPrevButton:Landroid/widget/Button;

    new-instance v1, Lcom/android/settings/HomeSettingsSetupWizard$1;

    invoke-direct {v1, p0}, Lcom/android/settings/HomeSettingsSetupWizard$1;-><init>(Lcom/android/settings/HomeSettingsSetupWizard;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 41
    invoke-virtual {p0}, Lcom/android/settings/HomeSettingsSetupWizard;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    const v1, 0x7f0b0110

    invoke-virtual {v0, v1}, Landroid/app/FragmentManager;->findFragmentById(I)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/android/settings/HomeSettings;

    iput-object v0, p0, Lcom/android/settings/HomeSettingsSetupWizard;->mFragment:Lcom/android/settings/HomeSettings;

    .line 42
    iget-object v0, p0, Lcom/android/settings/HomeSettingsSetupWizard;->mFragment:Lcom/android/settings/HomeSettings;

    iget-object v1, p0, Lcom/android/settings/HomeSettingsSetupWizard;->mNextButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Lcom/android/settings/HomeSettings;->setButton(Landroid/widget/Button;)V

    .line 43
    return-void
.end method
