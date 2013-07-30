.class public Lcom/android/sec_settings/DataUsageSummary$ConfirmDataRoamingFragment;
.super Landroid/app/DialogFragment;
.source "DataUsageSummary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/sec_settings/DataUsageSummary;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ConfirmDataRoamingFragment"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 2376
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    return-void
.end method

.method public static show(Lcom/android/sec_settings/DataUsageSummary;)V
    .locals 3
    .parameter "parent"

    .prologue
    .line 2378
    invoke-virtual {p0}, Lcom/android/sec_settings/DataUsageSummary;->isAdded()Z

    move-result v1

    if-nez v1, :cond_0

    .line 2383
    :goto_0
    return-void

    .line 2380
    :cond_0
    new-instance v0, Lcom/android/sec_settings/DataUsageSummary$ConfirmDataRoamingFragment;

    invoke-direct {v0}, Lcom/android/sec_settings/DataUsageSummary$ConfirmDataRoamingFragment;-><init>()V

    .line 2381
    .local v0, dialog:Lcom/android/sec_settings/DataUsageSummary$ConfirmDataRoamingFragment;
    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/android/sec_settings/DataUsageSummary$ConfirmDataRoamingFragment;->setTargetFragment(Landroid/app/Fragment;I)V

    .line 2382
    invoke-virtual {p0}, Lcom/android/sec_settings/DataUsageSummary;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string v2, "confirmDataRoaming"

    invoke-virtual {v0, v1, v2}, Lcom/android/sec_settings/DataUsageSummary$ConfirmDataRoamingFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 4
    .parameter "savedInstanceState"

    .prologue
    .line 2387
    invoke-virtual {p0}, Lcom/android/sec_settings/DataUsageSummary$ConfirmDataRoamingFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 2389
    .local v1, context:Landroid/content/Context;
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 2390
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    const v2, 0x7f09013b

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 2391
    const v2, 0x7f09013a

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 2392
    const v2, 0x1010355

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    .line 2394
    const v2, 0x104000a

    new-instance v3, Lcom/android/sec_settings/DataUsageSummary$ConfirmDataRoamingFragment$1;

    invoke-direct {v3, p0}, Lcom/android/sec_settings/DataUsageSummary$ConfirmDataRoamingFragment$1;-><init>(Lcom/android/sec_settings/DataUsageSummary$ConfirmDataRoamingFragment;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 2403
    const/high16 v2, 0x104

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 2405
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    return-object v2
.end method
