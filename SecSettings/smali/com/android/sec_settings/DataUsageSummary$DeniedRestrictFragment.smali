.class public Lcom/android/sec_settings/DataUsageSummary$DeniedRestrictFragment;
.super Landroid/app/DialogFragment;
.source "DataUsageSummary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/sec_settings/DataUsageSummary;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DeniedRestrictFragment"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 2450
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    return-void
.end method

.method public static show(Lcom/android/sec_settings/DataUsageSummary;)V
    .locals 3
    .parameter "parent"

    .prologue
    .line 2452
    invoke-virtual {p0}, Lcom/android/sec_settings/DataUsageSummary;->isAdded()Z

    move-result v1

    if-nez v1, :cond_0

    .line 2457
    :goto_0
    return-void

    .line 2454
    :cond_0
    new-instance v0, Lcom/android/sec_settings/DataUsageSummary$DeniedRestrictFragment;

    invoke-direct {v0}, Lcom/android/sec_settings/DataUsageSummary$DeniedRestrictFragment;-><init>()V

    .line 2455
    .local v0, dialog:Lcom/android/sec_settings/DataUsageSummary$DeniedRestrictFragment;
    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/android/sec_settings/DataUsageSummary$DeniedRestrictFragment;->setTargetFragment(Landroid/app/Fragment;I)V

    .line 2456
    invoke-virtual {p0}, Lcom/android/sec_settings/DataUsageSummary;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string v2, "deniedRestrict"

    invoke-virtual {v0, v1, v2}, Lcom/android/sec_settings/DataUsageSummary$DeniedRestrictFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 4
    .parameter "savedInstanceState"

    .prologue
    .line 2461
    invoke-virtual {p0}, Lcom/android/sec_settings/DataUsageSummary$DeniedRestrictFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 2463
    .local v1, context:Landroid/content/Context;
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 2464
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    const v2, 0x7f090823

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 2465
    const v2, 0x7f090828

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 2466
    const v2, 0x104000a

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 2468
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    return-object v2
.end method
