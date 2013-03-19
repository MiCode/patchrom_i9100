.class public Lcom/android/settings/nearby/DownloadListPreference;
.super Landroid/preference/ListPreference;
.source "DownloadListPreference.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/nearby/DownloadListPreference$DownloadListAdapter;
    }
.end annotation


# instance fields
.field private context:Landroid/content/Context;

.field private isExtarnalMounted:Z

.field private mAdapter:Lcom/android/settings/nearby/DownloadListPreference$DownloadListAdapter;

.field private mDialog:Landroid/app/AlertDialog;

.field private mHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .parameter "context"
    .parameter "attrs"

    .prologue
    const v2, 0x7f090ba8

    const/4 v1, 0x0

    .line 44
    invoke-direct {p0, p1, p2}, Landroid/preference/ListPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 27
    iput-object v1, p0, Lcom/android/settings/nearby/DownloadListPreference;->context:Landroid/content/Context;

    .line 37
    iput-object v1, p0, Lcom/android/settings/nearby/DownloadListPreference;->mAdapter:Lcom/android/settings/nearby/DownloadListPreference$DownloadListAdapter;

    .line 39
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/nearby/DownloadListPreference;->isExtarnalMounted:Z

    .line 41
    iput-object v1, p0, Lcom/android/settings/nearby/DownloadListPreference;->mDialog:Landroid/app/AlertDialog;

    .line 119
    new-instance v0, Lcom/android/settings/nearby/DownloadListPreference$2;

    invoke-direct {v0, p0}, Lcom/android/settings/nearby/DownloadListPreference$2;-><init>(Lcom/android/settings/nearby/DownloadListPreference;)V

    iput-object v0, p0, Lcom/android/settings/nearby/DownloadListPreference;->mHandler:Landroid/os/Handler;

    .line 45
    iput-object p1, p0, Lcom/android/settings/nearby/DownloadListPreference;->context:Landroid/content/Context;

    .line 46
    const-string v0, "allshare_download_to"

    invoke-virtual {p0, v0}, Lcom/android/settings/nearby/DownloadListPreference;->setKey(Ljava/lang/String;)V

    .line 47
    invoke-virtual {p0, v2}, Lcom/android/settings/nearby/DownloadListPreference;->setTitle(I)V

    .line 48
    invoke-virtual {p0, v2}, Lcom/android/settings/nearby/DownloadListPreference;->setDialogTitle(I)V

    .line 49
    const v0, 0x7f090bab

    invoke-virtual {p0, v0}, Lcom/android/settings/nearby/DownloadListPreference;->setPositiveButtonText(I)V

    .line 50
    const v0, 0x7f090bac

    invoke-virtual {p0, v0}, Lcom/android/settings/nearby/DownloadListPreference;->setNegativeButtonText(I)V

    .line 51
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/nearby/DownloadListPreference;)Lcom/android/settings/nearby/DownloadListPreference$DownloadListAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 25
    iget-object v0, p0, Lcom/android/settings/nearby/DownloadListPreference;->mAdapter:Lcom/android/settings/nearby/DownloadListPreference$DownloadListAdapter;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings/nearby/DownloadListPreference;)Landroid/app/AlertDialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 25
    iget-object v0, p0, Lcom/android/settings/nearby/DownloadListPreference;->mDialog:Landroid/app/AlertDialog;

    return-object v0
.end method


# virtual methods
.method protected onPrepareDialogBuilder(Landroid/app/AlertDialog$Builder;)V
    .locals 2
    .parameter "builder"

    .prologue
    .line 55
    const-string v0, "AllshareSetting"

    const-string v1, "DownloadListPreference: onPrepareDialogBuilder"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    invoke-super {p0, p1}, Landroid/preference/ListPreference;->onPrepareDialogBuilder(Landroid/app/AlertDialog$Builder;)V

    .line 58
    iget-boolean v0, p0, Lcom/android/settings/nearby/DownloadListPreference;->isExtarnalMounted:Z

    if-nez v0, :cond_0

    .line 59
    iget-object v0, p0, Lcom/android/settings/nearby/DownloadListPreference;->mAdapter:Lcom/android/settings/nearby/DownloadListPreference$DownloadListAdapter;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1, p0}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems(Landroid/widget/ListAdapter;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 60
    :cond_0
    return-void
.end method

.method public setIsExternalMounted(Z)V
    .locals 4
    .parameter "value"

    .prologue
    .line 104
    iput-boolean p1, p0, Lcom/android/settings/nearby/DownloadListPreference;->isExtarnalMounted:Z

    .line 106
    iget-object v0, p0, Lcom/android/settings/nearby/DownloadListPreference;->mDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/nearby/DownloadListPreference;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 107
    const-string v0, "AllshareSetting"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DownloadListPreference: Change mDialog("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/nearby/DownloadListPreference;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/settings/nearby/DownloadListPreference;->isExtarnalMounted:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    iget-object v0, p0, Lcom/android/settings/nearby/DownloadListPreference;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->cancel()V

    .line 111
    iget-object v0, p0, Lcom/android/settings/nearby/DownloadListPreference;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xbb9

    const-wide/16 v2, 0x32

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 117
    :goto_0
    return-void

    .line 114
    :cond_0
    const-string v0, "AllshareSetting"

    const-string v1, "DownloadListPreference: No Dialog!!"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected showDialog(Landroid/os/Bundle;)V
    .locals 5
    .parameter "state"

    .prologue
    .line 64
    const-string v2, "AllshareSetting"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "DownloadListPreference: showDialog: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    iget-object v2, p0, Lcom/android/settings/nearby/DownloadListPreference;->mAdapter:Lcom/android/settings/nearby/DownloadListPreference$DownloadListAdapter;

    if-nez v2, :cond_0

    .line 67
    new-instance v2, Lcom/android/settings/nearby/DownloadListPreference$DownloadListAdapter;

    iget-object v3, p0, Lcom/android/settings/nearby/DownloadListPreference;->context:Landroid/content/Context;

    invoke-direct {v2, p0, v3}, Lcom/android/settings/nearby/DownloadListPreference$DownloadListAdapter;-><init>(Lcom/android/settings/nearby/DownloadListPreference;Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/settings/nearby/DownloadListPreference;->mAdapter:Lcom/android/settings/nearby/DownloadListPreference$DownloadListAdapter;

    .line 70
    :cond_0
    iget-object v2, p0, Lcom/android/settings/nearby/DownloadListPreference;->mAdapter:Lcom/android/settings/nearby/DownloadListPreference$DownloadListAdapter;

    iget-object v2, v2, Lcom/android/settings/nearby/DownloadListPreference$DownloadListAdapter;->mEntries:[Ljava/lang/String;

    invoke-virtual {p0, v2}, Lcom/android/settings/nearby/DownloadListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 71
    iget-object v2, p0, Lcom/android/settings/nearby/DownloadListPreference;->mAdapter:Lcom/android/settings/nearby/DownloadListPreference$DownloadListAdapter;

    iget-object v2, v2, Lcom/android/settings/nearby/DownloadListPreference$DownloadListAdapter;->mEntriesValues:[Ljava/lang/String;

    invoke-virtual {p0, v2}, Lcom/android/settings/nearby/DownloadListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 73
    invoke-super {p0, p1}, Landroid/preference/ListPreference;->showDialog(Landroid/os/Bundle;)V

    .line 75
    invoke-virtual {p0}, Lcom/android/settings/nearby/DownloadListPreference;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    check-cast v0, Landroid/app/AlertDialog;

    .line 76
    .local v0, dialog:Landroid/app/AlertDialog;
    iput-object v0, p0, Lcom/android/settings/nearby/DownloadListPreference;->mDialog:Landroid/app/AlertDialog;

    .line 78
    iget-boolean v2, p0, Lcom/android/settings/nearby/DownloadListPreference;->isExtarnalMounted:Z

    if-nez v2, :cond_1

    .line 79
    if-eqz v0, :cond_3

    .line 80
    invoke-virtual {v0}, Landroid/app/AlertDialog;->getListView()Landroid/widget/ListView;

    move-result-object v1

    .line 82
    .local v1, listView:Landroid/widget/ListView;
    if-eqz v1, :cond_2

    .line 83
    new-instance v2, Lcom/android/settings/nearby/DownloadListPreference$1;

    invoke-direct {v2, p0}, Lcom/android/settings/nearby/DownloadListPreference$1;-><init>(Lcom/android/settings/nearby/DownloadListPreference;)V

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 100
    .end local v1           #listView:Landroid/widget/ListView;
    :cond_1
    :goto_0
    return-void

    .line 94
    .restart local v1       #listView:Landroid/widget/ListView;
    :cond_2
    const-string v2, "AllshareSetting"

    const-string v3, "DownloadListPreference: listView is null"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 97
    .end local v1           #listView:Landroid/widget/ListView;
    :cond_3
    const-string v2, "AllshareSetting"

    const-string v3, "DownloadListPreference: dialog is null"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
