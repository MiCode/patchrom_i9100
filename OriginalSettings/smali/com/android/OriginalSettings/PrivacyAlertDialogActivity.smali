.class public Lcom/android/settings/PrivacyAlertDialogActivity;
.super Lcom/android/internal/app/AlertActivity;
.source "PrivacyAlertDialogActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/android/internal/app/AlertActivity;-><init>()V

    return-void
.end method

.method private createView()Landroid/view/View;
    .locals 5

    .prologue
    .line 57
    invoke-virtual {p0}, Lcom/android/settings/PrivacyAlertDialogActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f040025

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 58
    .local v1, view:Landroid/view/View;
    const v2, 0x7f0b004c

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 59
    .local v0, contentView:Landroid/widget/TextView;
    const v2, 0x7f090d85

    invoke-virtual {p0, v2}, Lcom/android/settings/PrivacyAlertDialogActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 61
    return-object v1
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 79
    packed-switch p2, :pswitch_data_0

    .line 93
    :goto_0
    return-void

    .line 82
    :pswitch_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 83
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "com.android.settings"

    const-string v2, "com.android.settings.PrivacyAlertProceedDialogActivity"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 84
    invoke-virtual {p0, v0}, Lcom/android/settings/PrivacyAlertDialogActivity;->startActivity(Landroid/content/Intent;)V

    .line 85
    invoke-virtual {p0}, Lcom/android/settings/PrivacyAlertDialogActivity;->finish()V

    goto :goto_0

    .line 90
    .end local v0           #intent:Landroid/content/Intent;
    :pswitch_1
    invoke-virtual {p0}, Lcom/android/settings/PrivacyAlertDialogActivity;->finish()V

    goto :goto_0

    .line 79
    nop

    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 42
    invoke-super {p0, p1}, Lcom/android/internal/app/AlertActivity;->onCreate(Landroid/os/Bundle;)V

    .line 45
    iget-object v0, p0, Lcom/android/settings/PrivacyAlertDialogActivity;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    .line 47
    .local v0, p:Lcom/android/internal/app/AlertController$AlertParams;
    const v1, 0x7f090d84

    invoke-virtual {p0, v1}, Lcom/android/settings/PrivacyAlertDialogActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    .line 48
    invoke-direct {p0}, Lcom/android/settings/PrivacyAlertDialogActivity;->createView()Landroid/view/View;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mView:Landroid/view/View;

    .line 49
    const v1, 0x7f090d86

    invoke-virtual {p0, v1}, Lcom/android/settings/PrivacyAlertDialogActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonText:Ljava/lang/CharSequence;

    .line 50
    iput-object p0, v0, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 51
    const v1, 0x7f09012d

    invoke-virtual {p0, v1}, Lcom/android/settings/PrivacyAlertDialogActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonText:Ljava/lang/CharSequence;

    .line 52
    iput-object p0, v0, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 53
    invoke-virtual {p0}, Lcom/android/settings/PrivacyAlertDialogActivity;->setupAlert()V

    .line 54
    return-void
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 66
    invoke-super {p0}, Lcom/android/internal/app/AlertActivity;->onResume()V

    .line 68
    return-void
.end method

.method protected onStart()V
    .locals 0

    .prologue
    .line 71
    invoke-super {p0}, Lcom/android/internal/app/AlertActivity;->onStart()V

    .line 72
    return-void
.end method

.method protected onStop()V
    .locals 0

    .prologue
    .line 75
    invoke-super {p0}, Lcom/android/internal/app/AlertActivity;->onStop()V

    .line 76
    return-void
.end method
