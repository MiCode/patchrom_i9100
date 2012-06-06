.class public Lcom/android/OriginalSettings/DataUsageSummary$ConfirmDataRoamingFragment;
.super Landroid/app/DialogFragment;
.source "DataUsageSummary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/OriginalSettings/DataUsageSummary;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ConfirmDataRoamingFragment"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 1874
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    return-void
.end method

.method public static show(Lcom/android/OriginalSettings/DataUsageSummary;)V
    .locals 3
    .parameter "parent"

    .prologue
    .line 1876
    invoke-virtual {p0}, Lcom/android/OriginalSettings/DataUsageSummary;->isAdded()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1881
    :goto_0
    return-void

    .line 1878
    :cond_0
    new-instance v0, Lcom/android/OriginalSettings/DataUsageSummary$ConfirmDataRoamingFragment;

    invoke-direct {v0}, Lcom/android/OriginalSettings/DataUsageSummary$ConfirmDataRoamingFragment;-><init>()V

    .line 1879
    .local v0, dialog:Lcom/android/OriginalSettings/DataUsageSummary$ConfirmDataRoamingFragment;
    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/android/OriginalSettings/DataUsageSummary$ConfirmDataRoamingFragment;->setTargetFragment(Landroid/app/Fragment;I)V

    .line 1880
    invoke-virtual {p0}, Lcom/android/OriginalSettings/DataUsageSummary;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string v2, "confirmDataRoaming"

    invoke-virtual {v0, v1, v2}, Lcom/android/OriginalSettings/DataUsageSummary$ConfirmDataRoamingFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 4
    .parameter "savedInstanceState"

    .prologue
    .line 1885
    invoke-virtual {p0}, Lcom/android/OriginalSettings/DataUsageSummary$ConfirmDataRoamingFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 1887
    .local v1, context:Landroid/content/Context;
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1888
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    const v2, 0x7f0b0183

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 1889
    const v2, 0x7f0b0182

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 1891
    const v2, 0x104000a

    new-instance v3, Lcom/android/OriginalSettings/DataUsageSummary$ConfirmDataRoamingFragment$1;

    invoke-direct {v3, p0}, Lcom/android/OriginalSettings/DataUsageSummary$ConfirmDataRoamingFragment$1;-><init>(Lcom/android/OriginalSettings/DataUsageSummary$ConfirmDataRoamingFragment;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1899
    const/high16 v2, 0x104

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1901
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    return-object v2
.end method
