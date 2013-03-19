.class public Lcom/android/settings/nearby/RejectListPreference;
.super Landroid/preference/MultiSelectListPreference;
.source "RejectListPreference.java"


# instance fields
.field public final TAG:Ljava/lang/String;

.field public final TAGClass:Ljava/lang/String;

.field private context:Landroid/content/Context;

.field private mAccessDevice:Lcom/android/settings/nearby/AccessDeviceList;

.field private mDialog:Landroid/app/AlertDialog;

.field private mHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v1, 0x0

    .line 30
    invoke-direct {p0, p1, p2}, Landroid/preference/MultiSelectListPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 17
    iput-object v1, p0, Lcom/android/settings/nearby/RejectListPreference;->context:Landroid/content/Context;

    .line 19
    const-string v0, "AllshareSetting"

    iput-object v0, p0, Lcom/android/settings/nearby/RejectListPreference;->TAG:Ljava/lang/String;

    .line 21
    const-string v0, "RejectListPreference: "

    iput-object v0, p0, Lcom/android/settings/nearby/RejectListPreference;->TAGClass:Ljava/lang/String;

    .line 25
    iput-object v1, p0, Lcom/android/settings/nearby/RejectListPreference;->mAccessDevice:Lcom/android/settings/nearby/AccessDeviceList;

    .line 27
    iput-object v1, p0, Lcom/android/settings/nearby/RejectListPreference;->mDialog:Landroid/app/AlertDialog;

    .line 93
    new-instance v0, Lcom/android/settings/nearby/RejectListPreference$2;

    invoke-direct {v0, p0}, Lcom/android/settings/nearby/RejectListPreference$2;-><init>(Lcom/android/settings/nearby/RejectListPreference;)V

    iput-object v0, p0, Lcom/android/settings/nearby/RejectListPreference;->mHandler:Landroid/os/Handler;

    .line 32
    iput-object p1, p0, Lcom/android/settings/nearby/RejectListPreference;->context:Landroid/content/Context;

    .line 33
    const v0, 0x7f090bb3

    invoke-virtual {p0, v0}, Lcom/android/settings/nearby/RejectListPreference;->setPositiveButtonText(I)V

    .line 34
    const v0, 0x7f090bac

    invoke-virtual {p0, v0}, Lcom/android/settings/nearby/RejectListPreference;->setNegativeButtonText(I)V

    .line 36
    new-instance v0, Lcom/android/settings/nearby/AccessDeviceList;

    invoke-direct {v0, p1}, Lcom/android/settings/nearby/AccessDeviceList;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/nearby/RejectListPreference;->mAccessDevice:Lcom/android/settings/nearby/AccessDeviceList;

    .line 37
    iget-object v0, p0, Lcom/android/settings/nearby/RejectListPreference;->mAccessDevice:Lcom/android/settings/nearby/AccessDeviceList;

    invoke-virtual {v0}, Lcom/android/settings/nearby/AccessDeviceList;->loadPreference()V

    .line 38
    return-void
.end method


# virtual methods
.method protected onPrepareDialogBuilder(Landroid/app/AlertDialog$Builder;)V
    .locals 2
    .parameter "builder"

    .prologue
    .line 42
    const-string v0, "AllshareSetting"

    const-string v1, "RejectListPreference: onPrepareDialogBuilder"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 43
    invoke-super {p0, p1}, Landroid/preference/MultiSelectListPreference;->onPrepareDialogBuilder(Landroid/app/AlertDialog$Builder;)V

    .line 44
    return-void
.end method

.method protected showDialog(Landroid/os/Bundle;)V
    .locals 4
    .parameter "state"

    .prologue
    .line 48
    const-string v1, "AllshareSetting"

    const-string v2, "RejectListPreference: showDialog"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    iget-object v1, p0, Lcom/android/settings/nearby/RejectListPreference;->mAccessDevice:Lcom/android/settings/nearby/AccessDeviceList;

    if-nez v1, :cond_0

    .line 51
    new-instance v1, Lcom/android/settings/nearby/AccessDeviceList;

    iget-object v2, p0, Lcom/android/settings/nearby/RejectListPreference;->context:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/android/settings/nearby/AccessDeviceList;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/settings/nearby/RejectListPreference;->mAccessDevice:Lcom/android/settings/nearby/AccessDeviceList;

    .line 54
    :cond_0
    iget-object v1, p0, Lcom/android/settings/nearby/RejectListPreference;->mAccessDevice:Lcom/android/settings/nearby/AccessDeviceList;

    invoke-virtual {v1}, Lcom/android/settings/nearby/AccessDeviceList;->loadPreference()V

    .line 56
    iget-object v1, p0, Lcom/android/settings/nearby/RejectListPreference;->mAccessDevice:Lcom/android/settings/nearby/AccessDeviceList;

    invoke-virtual {v1}, Lcom/android/settings/nearby/AccessDeviceList;->getRejectSize()I

    move-result v1

    if-nez v1, :cond_1

    .line 57
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/android/settings/nearby/RejectListPreference;->context:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v2, p0, Lcom/android/settings/nearby/RejectListPreference;->context:Landroid/content/Context;

    const v3, 0x7f090bbd

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/nearby/RejectListPreference;->context:Landroid/content/Context;

    const v3, 0x7f090bbb

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f090bab

    new-instance v3, Lcom/android/settings/nearby/RejectListPreference$1;

    invoke-direct {v3, p0}, Lcom/android/settings/nearby/RejectListPreference$1;-><init>(Lcom/android/settings/nearby/RejectListPreference;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/nearby/RejectListPreference;->mDialog:Landroid/app/AlertDialog;

    .line 75
    :goto_0
    return-void

    .line 67
    :cond_1
    iget-object v1, p0, Lcom/android/settings/nearby/RejectListPreference;->mAccessDevice:Lcom/android/settings/nearby/AccessDeviceList;

    invoke-virtual {v1}, Lcom/android/settings/nearby/AccessDeviceList;->getRejectEntries()[Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/settings/nearby/RejectListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 68
    iget-object v1, p0, Lcom/android/settings/nearby/RejectListPreference;->mAccessDevice:Lcom/android/settings/nearby/AccessDeviceList;

    invoke-virtual {v1}, Lcom/android/settings/nearby/AccessDeviceList;->getRejectEntryValues()[Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/settings/nearby/RejectListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 70
    invoke-super {p0, p1}, Landroid/preference/MultiSelectListPreference;->showDialog(Landroid/os/Bundle;)V

    .line 72
    invoke-virtual {p0}, Lcom/android/settings/nearby/RejectListPreference;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    check-cast v0, Landroid/app/AlertDialog;

    .line 73
    .local v0, dialog:Landroid/app/AlertDialog;
    iput-object v0, p0, Lcom/android/settings/nearby/RejectListPreference;->mDialog:Landroid/app/AlertDialog;

    goto :goto_0
.end method

.method public updateDialog()Z
    .locals 4

    .prologue
    .line 78
    const-string v0, "AllshareSetting"

    const-string v1, "RejectListPreference: updateDialog"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    iget-object v0, p0, Lcom/android/settings/nearby/RejectListPreference;->mDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 81
    iget-object v0, p0, Lcom/android/settings/nearby/RejectListPreference;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 82
    const-string v0, "AllshareSetting"

    const-string v1, "RejectListPreference: refresh popup"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    iget-object v0, p0, Lcom/android/settings/nearby/RejectListPreference;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 85
    iget-object v0, p0, Lcom/android/settings/nearby/RejectListPreference;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xbb9

    const-wide/16 v2, 0x32

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 87
    const/4 v0, 0x1

    .line 90
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
